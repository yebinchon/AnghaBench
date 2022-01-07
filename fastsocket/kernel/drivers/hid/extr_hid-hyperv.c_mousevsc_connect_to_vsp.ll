; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-hyperv.c_mousevsc_connect_to_vsp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-hyperv.c_mousevsc_connect_to_vsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_device = type { i32 }
%struct.mousevsc_dev = type { i32, i32, %struct.mousevsc_prt_msg, %struct.mousevsc_prt_msg }
%struct.mousevsc_prt_msg = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@PIPE_MESSAGE_DATA = common dso_local global i32 0, align 4
@SYNTH_HID_PROTOCOL_REQUEST = common dso_local global i32 0, align 4
@SYNTHHID_INPUT_VERSION = common dso_local global i32 0, align 4
@VM_PKT_DATA_INBAND = common dso_local global i32 0, align 4
@VMBUS_DATA_PACKET_FLAG_COMPLETION_REQUESTED = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"synthhid protocol request failed (version %d)\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hv_device*)* @mousevsc_connect_to_vsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mousevsc_connect_to_vsp(%struct.hv_device* %0) #0 {
  %2 = alloca %struct.hv_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.mousevsc_dev*, align 8
  %6 = alloca %struct.mousevsc_prt_msg*, align 8
  %7 = alloca %struct.mousevsc_prt_msg*, align 8
  store %struct.hv_device* %0, %struct.hv_device** %2, align 8
  store i32 0, i32* %3, align 4
  %8 = load %struct.hv_device*, %struct.hv_device** %2, align 8
  %9 = call %struct.mousevsc_dev* @hv_get_drvdata(%struct.hv_device* %8)
  store %struct.mousevsc_dev* %9, %struct.mousevsc_dev** %5, align 8
  %10 = load %struct.mousevsc_dev*, %struct.mousevsc_dev** %5, align 8
  %11 = getelementptr inbounds %struct.mousevsc_dev, %struct.mousevsc_dev* %10, i32 0, i32 3
  store %struct.mousevsc_prt_msg* %11, %struct.mousevsc_prt_msg** %6, align 8
  %12 = load %struct.mousevsc_prt_msg*, %struct.mousevsc_prt_msg** %6, align 8
  %13 = call i32 @memset(%struct.mousevsc_prt_msg* %12, i32 0, i32 24)
  %14 = load i32, i32* @PIPE_MESSAGE_DATA, align 4
  %15 = load %struct.mousevsc_prt_msg*, %struct.mousevsc_prt_msg** %6, align 8
  %16 = getelementptr inbounds %struct.mousevsc_prt_msg, %struct.mousevsc_prt_msg* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 4
  %17 = load %struct.mousevsc_prt_msg*, %struct.mousevsc_prt_msg** %6, align 8
  %18 = getelementptr inbounds %struct.mousevsc_prt_msg, %struct.mousevsc_prt_msg* %17, i32 0, i32 0
  store i32 4, i32* %18, align 4
  %19 = load i32, i32* @SYNTH_HID_PROTOCOL_REQUEST, align 4
  %20 = load %struct.mousevsc_prt_msg*, %struct.mousevsc_prt_msg** %6, align 8
  %21 = getelementptr inbounds %struct.mousevsc_prt_msg, %struct.mousevsc_prt_msg* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  store i32 %19, i32* %23, align 4
  %24 = load %struct.mousevsc_prt_msg*, %struct.mousevsc_prt_msg** %6, align 8
  %25 = getelementptr inbounds %struct.mousevsc_prt_msg, %struct.mousevsc_prt_msg* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i32 4, i32* %27, align 4
  %28 = load i32, i32* @SYNTHHID_INPUT_VERSION, align 4
  %29 = load %struct.mousevsc_prt_msg*, %struct.mousevsc_prt_msg** %6, align 8
  %30 = getelementptr inbounds %struct.mousevsc_prt_msg, %struct.mousevsc_prt_msg* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i32 %28, i32* %32, align 4
  %33 = load %struct.hv_device*, %struct.hv_device** %2, align 8
  %34 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mousevsc_prt_msg*, %struct.mousevsc_prt_msg** %6, align 8
  %37 = load %struct.mousevsc_prt_msg*, %struct.mousevsc_prt_msg** %6, align 8
  %38 = ptrtoint %struct.mousevsc_prt_msg* %37 to i64
  %39 = load i32, i32* @VM_PKT_DATA_INBAND, align 4
  %40 = load i32, i32* @VMBUS_DATA_PACKET_FLAG_COMPLETION_REQUESTED, align 4
  %41 = call i32 @vmbus_sendpacket(i32 %35, %struct.mousevsc_prt_msg* %36, i32 7, i64 %38, i32 %39, i32 %40)
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* %3, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %1
  br label %84

45:                                               ; preds = %1
  %46 = load %struct.mousevsc_dev*, %struct.mousevsc_dev** %5, align 8
  %47 = getelementptr inbounds %struct.mousevsc_dev, %struct.mousevsc_dev* %46, i32 0, i32 1
  %48 = load i32, i32* @HZ, align 4
  %49 = mul nsw i32 5, %48
  %50 = call i32 @wait_for_completion_timeout(i32* %47, i32 %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %45
  %54 = load i32, i32* @ETIMEDOUT, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %84

56:                                               ; preds = %45
  %57 = load %struct.mousevsc_dev*, %struct.mousevsc_dev** %5, align 8
  %58 = getelementptr inbounds %struct.mousevsc_dev, %struct.mousevsc_dev* %57, i32 0, i32 2
  store %struct.mousevsc_prt_msg* %58, %struct.mousevsc_prt_msg** %7, align 8
  %59 = load %struct.mousevsc_prt_msg*, %struct.mousevsc_prt_msg** %7, align 8
  %60 = getelementptr inbounds %struct.mousevsc_prt_msg, %struct.mousevsc_prt_msg* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %56
  %65 = load i32, i32* @SYNTHHID_INPUT_VERSION, align 4
  %66 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @ENODEV, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %84

69:                                               ; preds = %56
  %70 = load %struct.mousevsc_dev*, %struct.mousevsc_dev** %5, align 8
  %71 = getelementptr inbounds %struct.mousevsc_dev, %struct.mousevsc_dev* %70, i32 0, i32 1
  %72 = load i32, i32* @HZ, align 4
  %73 = mul nsw i32 5, %72
  %74 = call i32 @wait_for_completion_timeout(i32* %71, i32 %73)
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %69
  %78 = load i32, i32* @ETIMEDOUT, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %84

80:                                               ; preds = %69
  %81 = load %struct.mousevsc_dev*, %struct.mousevsc_dev** %5, align 8
  %82 = getelementptr inbounds %struct.mousevsc_dev, %struct.mousevsc_dev* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %80, %77, %64, %53, %44
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local %struct.mousevsc_dev* @hv_get_drvdata(%struct.hv_device*) #1

declare dso_local i32 @memset(%struct.mousevsc_prt_msg*, i32, i32) #1

declare dso_local i32 @vmbus_sendpacket(i32, %struct.mousevsc_prt_msg*, i32, i64, i32, i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
