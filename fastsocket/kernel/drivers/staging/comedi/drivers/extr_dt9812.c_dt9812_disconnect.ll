; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dt9812.c_dt9812_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dt9812.c_dt9812_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, i32 }
%struct.usb_dt9812 = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32* }

@dt9812_mutex = common dso_local global i32 0, align 4
@dt9812_delete = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"USB Dt9812 #%d now disconnected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @dt9812_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt9812_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.usb_dt9812*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %5 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %6 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %4, align 4
  %8 = call i32 @down(i32* @dt9812_mutex)
  %9 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %10 = call %struct.usb_dt9812* @usb_get_intfdata(%struct.usb_interface* %9)
  store %struct.usb_dt9812* %10, %struct.usb_dt9812** %3, align 8
  %11 = load %struct.usb_dt9812*, %struct.usb_dt9812** %3, align 8
  %12 = getelementptr inbounds %struct.usb_dt9812, %struct.usb_dt9812* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %15, label %32

15:                                               ; preds = %1
  %16 = load %struct.usb_dt9812*, %struct.usb_dt9812** %3, align 8
  %17 = getelementptr inbounds %struct.usb_dt9812, %struct.usb_dt9812* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @down(i32* %19)
  %21 = load %struct.usb_dt9812*, %struct.usb_dt9812** %3, align 8
  %22 = getelementptr inbounds %struct.usb_dt9812, %struct.usb_dt9812* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store i32* null, i32** %24, align 8
  %25 = load %struct.usb_dt9812*, %struct.usb_dt9812** %3, align 8
  %26 = getelementptr inbounds %struct.usb_dt9812, %struct.usb_dt9812* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i32 @up(i32* %28)
  %30 = load %struct.usb_dt9812*, %struct.usb_dt9812** %3, align 8
  %31 = getelementptr inbounds %struct.usb_dt9812, %struct.usb_dt9812* %30, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %31, align 8
  br label %32

32:                                               ; preds = %15, %1
  %33 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %34 = call i32 @usb_set_intfdata(%struct.usb_interface* %33, i32* null)
  %35 = call i32 @up(i32* @dt9812_mutex)
  %36 = load %struct.usb_dt9812*, %struct.usb_dt9812** %3, align 8
  %37 = getelementptr inbounds %struct.usb_dt9812, %struct.usb_dt9812* %36, i32 0, i32 0
  %38 = load i32, i32* @dt9812_delete, align 4
  %39 = call i32 @kref_put(i32* %37, i32 %38)
  %40 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %41 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %40, i32 0, i32 1
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @dev_info(i32* %41, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %42)
  ret void
}

declare dso_local i32 @down(i32*) #1

declare dso_local %struct.usb_dt9812* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
