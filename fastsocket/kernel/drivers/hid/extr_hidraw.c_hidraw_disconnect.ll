; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hidraw.c_hidraw_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hidraw.c_hidraw_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { %struct.TYPE_2__*, %struct.hidraw* }
%struct.TYPE_2__ = type { i32 (%struct.hid_device*)* }
%struct.hidraw = type { i64, i32, i64, i64 }

@minors_lock = common dso_local global i32 0, align 4
@hidraw_class = common dso_local global i32 0, align 4
@hidraw_major = common dso_local global i32 0, align 4
@hidraw_table = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hidraw_disconnect(%struct.hid_device* %0) #0 {
  %2 = alloca %struct.hid_device*, align 8
  %3 = alloca %struct.hidraw*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %2, align 8
  %4 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %5 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %4, i32 0, i32 1
  %6 = load %struct.hidraw*, %struct.hidraw** %5, align 8
  store %struct.hidraw* %6, %struct.hidraw** %3, align 8
  %7 = call i32 @mutex_lock(i32* @minors_lock)
  %8 = load %struct.hidraw*, %struct.hidraw** %3, align 8
  %9 = getelementptr inbounds %struct.hidraw, %struct.hidraw* %8, i32 0, i32 3
  store i64 0, i64* %9, align 8
  %10 = load i32, i32* @hidraw_class, align 4
  %11 = load i32, i32* @hidraw_major, align 4
  %12 = load %struct.hidraw*, %struct.hidraw** %3, align 8
  %13 = getelementptr inbounds %struct.hidraw, %struct.hidraw* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @MKDEV(i32 %11, i64 %14)
  %16 = call i32 @device_destroy(i32 %10, i32 %15)
  %17 = load i32**, i32*** @hidraw_table, align 8
  %18 = load %struct.hidraw*, %struct.hidraw** %3, align 8
  %19 = getelementptr inbounds %struct.hidraw, %struct.hidraw* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i32*, i32** %17, i64 %20
  store i32* null, i32** %21, align 8
  %22 = load %struct.hidraw*, %struct.hidraw** %3, align 8
  %23 = getelementptr inbounds %struct.hidraw, %struct.hidraw* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %1
  %27 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %28 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (%struct.hid_device*)*, i32 (%struct.hid_device*)** %30, align 8
  %32 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %33 = call i32 %31(%struct.hid_device* %32)
  %34 = load %struct.hidraw*, %struct.hidraw** %3, align 8
  %35 = getelementptr inbounds %struct.hidraw, %struct.hidraw* %34, i32 0, i32 1
  %36 = call i32 @wake_up_interruptible(i32* %35)
  br label %40

37:                                               ; preds = %1
  %38 = load %struct.hidraw*, %struct.hidraw** %3, align 8
  %39 = call i32 @kfree(%struct.hidraw* %38)
  br label %40

40:                                               ; preds = %37, %26
  %41 = call i32 @mutex_unlock(i32* @minors_lock)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i32 @MKDEV(i32, i64) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @kfree(%struct.hidraw*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
