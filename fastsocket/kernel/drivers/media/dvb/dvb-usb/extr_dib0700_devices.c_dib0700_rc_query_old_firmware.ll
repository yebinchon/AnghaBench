; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dib0700_devices.c_dib0700_rc_query_old_firmware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dib0700_devices.c_dib0700_rc_query_old_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32, i64, %struct.TYPE_4__, %struct.dib0700_state* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.dib0700_state = type { i32 }

@rc_request = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"RC Query Failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*)* @dib0700_rc_query_old_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib0700_rc_query_old_firmware(%struct.dvb_usb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_device*, align 8
  %4 = alloca [4 x i64], align 16
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dib0700_state*, align 8
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %3, align 8
  %9 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %10 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %9, i32 0, i32 3
  %11 = load %struct.dib0700_state*, %struct.dib0700_state** %10, align 8
  store %struct.dib0700_state* %11, %struct.dib0700_state** %8, align 8
  %12 = load %struct.dib0700_state*, %struct.dib0700_state** %8, align 8
  %13 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp sge i32 %14, 66048
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %101

17:                                               ; preds = %1
  %18 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %19 = load i32, i32* @rc_request, align 4
  %20 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0
  %21 = call i32 @dib0700_ctrl_rd(%struct.dvb_usb_device* %18, i32 %19, i32 2, i64* %20, i32 4)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = call i32 @err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %101

26:                                               ; preds = %17
  %27 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0
  %28 = load i64, i64* %27, align 16
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %26
  %31 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 2
  %36 = load i64, i64* %35, align 16
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %101

43:                                               ; preds = %38, %34, %30, %26
  %44 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %45 = call i32 @dib0700_rc_setup(%struct.dvb_usb_device* %44)
  %46 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %47 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %49 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  switch i32 %52, label %85 [
    i32 128, label %53
  ]

53:                                               ; preds = %43
  %54 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %53
  %58 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0
  %59 = load i64, i64* %58, align 16
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %57
  %62 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, 255
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %67 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %5, align 8
  br label %79

69:                                               ; preds = %61, %57, %53
  %70 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 1
  %71 = load i64, i64* %70, align 8
  %72 = shl i64 %71, 8
  %73 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0
  %74 = load i64, i64* %73, align 16
  %75 = or i64 %72, %74
  store i64 %75, i64* %5, align 8
  %76 = load i64, i64* %5, align 8
  %77 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %78 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %77, i32 0, i32 1
  store i64 %76, i64* %78, align 8
  br label %79

79:                                               ; preds = %69, %65
  %80 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %81 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i64, i64* %5, align 8
  %84 = call i32 @rc_keydown(i32 %82, i64 %83, i64 0)
  br label %100

85:                                               ; preds = %43
  %86 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 1
  %87 = load i64, i64* %86, align 8
  %88 = shl i64 %87, 8
  %89 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0
  %90 = load i64, i64* %89, align 16
  %91 = or i64 %88, %90
  store i64 %91, i64* %5, align 8
  %92 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 2
  %93 = load i64, i64* %92, align 16
  store i64 %93, i64* %6, align 8
  %94 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %95 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i64, i64* %5, align 8
  %98 = load i64, i64* %6, align 8
  %99 = call i32 @rc_keydown(i32 %96, i64 %97, i64 %98)
  br label %100

100:                                              ; preds = %85, %79
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %100, %42, %24, %16
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @dib0700_ctrl_rd(%struct.dvb_usb_device*, i32, i32, i64*, i32) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @dib0700_rc_setup(%struct.dvb_usb_device*) #1

declare dso_local i32 @rc_keydown(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
