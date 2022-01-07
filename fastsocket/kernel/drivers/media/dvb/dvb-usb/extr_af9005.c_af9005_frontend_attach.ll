; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_af9005.c_af9005_frontend_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_af9005.c_af9005_frontend_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.usb_device* }
%struct.usb_device = type { i32 }

@dvb_usb_af9005_dump_eeprom = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"EEPROM DUMP\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"ADDR %x \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @af9005_frontend_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9005_frontend_attach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca %struct.dvb_usb_adapter*, align 8
  %3 = alloca [8 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_device*, align 8
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %2, align 8
  %6 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  store %struct.usb_device* %10, %struct.usb_device** %5, align 8
  %11 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %12 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %13 = call i32 @usb_sndbulkpipe(%struct.usb_device* %12, i32 2)
  %14 = call i32 @usb_clear_halt(%struct.usb_device* %11, i32 %13)
  %15 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %16 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %17 = call i32 @usb_rcvbulkpipe(%struct.usb_device* %16, i32 1)
  %18 = call i32 @usb_clear_halt(%struct.usb_device* %15, i32 %17)
  %19 = load i64, i64* @dvb_usb_af9005_dump_eeprom, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %1
  %22 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %37, %21
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 255
  br i1 %25, label %26, label %40

26:                                               ; preds = %23
  %27 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %28 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 0
  %32 = call i32 @af9005_read_eeprom(%struct.TYPE_3__* %29, i32 %30, i32* %31, i32 8)
  %33 = load i32, i32* %4, align 4
  %34 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 0
  %36 = call i32 @debug_dump(i32* %35, i32 8, i32 (i8*, i32)* bitcast (i32 (i8*, ...)* @printk to i32 (i8*, i32)*))
  br label %37

37:                                               ; preds = %26
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 8
  store i32 %39, i32* %4, align 4
  br label %23

40:                                               ; preds = %23
  br label %41

41:                                               ; preds = %40, %1
  %42 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %43 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = call i32 @af9005_fe_attach(%struct.TYPE_3__* %44)
  %46 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %47 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  ret i32 0
}

declare dso_local i32 @usb_clear_halt(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_rcvbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @af9005_read_eeprom(%struct.TYPE_3__*, i32, i32*, i32) #1

declare dso_local i32 @debug_dump(i32*, i32, i32 (i8*, i32)*) #1

declare dso_local i32 @af9005_fe_attach(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
