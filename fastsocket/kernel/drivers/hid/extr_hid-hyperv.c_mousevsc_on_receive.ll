; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-hyperv.c_mousevsc_on_receive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-hyperv.c_mousevsc_on_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_device = type { i32 }
%struct.vmpacket_descriptor = type { i32 }
%struct.pipe_prt_msg = type { i64, i32, i64 }
%struct.synthhid_msg = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.mousevsc_dev = type { i32, i32, i32, i32 }
%struct.synthhid_input_report = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.synthhid_device_info = type { i32 }

@PIPE_MESSAGE_DATA = common dso_local global i64 0, align 8
@HID_INPUT_REPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"unsupported hid msg type - type %d len %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hv_device*, %struct.vmpacket_descriptor*)* @mousevsc_on_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mousevsc_on_receive(%struct.hv_device* %0, %struct.vmpacket_descriptor* %1) #0 {
  %3 = alloca %struct.hv_device*, align 8
  %4 = alloca %struct.vmpacket_descriptor*, align 8
  %5 = alloca %struct.pipe_prt_msg*, align 8
  %6 = alloca %struct.synthhid_msg*, align 8
  %7 = alloca %struct.mousevsc_dev*, align 8
  %8 = alloca %struct.synthhid_input_report*, align 8
  store %struct.hv_device* %0, %struct.hv_device** %3, align 8
  store %struct.vmpacket_descriptor* %1, %struct.vmpacket_descriptor** %4, align 8
  %9 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %10 = call %struct.mousevsc_dev* @hv_get_drvdata(%struct.hv_device* %9)
  store %struct.mousevsc_dev* %10, %struct.mousevsc_dev** %7, align 8
  %11 = load %struct.vmpacket_descriptor*, %struct.vmpacket_descriptor** %4, align 8
  %12 = ptrtoint %struct.vmpacket_descriptor* %11 to i64
  %13 = load %struct.vmpacket_descriptor*, %struct.vmpacket_descriptor** %4, align 8
  %14 = getelementptr inbounds %struct.vmpacket_descriptor, %struct.vmpacket_descriptor* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = shl i32 %15, 3
  %17 = sext i32 %16 to i64
  %18 = add i64 %12, %17
  %19 = inttoptr i64 %18 to %struct.pipe_prt_msg*
  store %struct.pipe_prt_msg* %19, %struct.pipe_prt_msg** %5, align 8
  %20 = load %struct.pipe_prt_msg*, %struct.pipe_prt_msg** %5, align 8
  %21 = getelementptr inbounds %struct.pipe_prt_msg, %struct.pipe_prt_msg* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PIPE_MESSAGE_DATA, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %107

26:                                               ; preds = %2
  %27 = load %struct.pipe_prt_msg*, %struct.pipe_prt_msg** %5, align 8
  %28 = getelementptr inbounds %struct.pipe_prt_msg, %struct.pipe_prt_msg* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.synthhid_msg*
  store %struct.synthhid_msg* %30, %struct.synthhid_msg** %6, align 8
  %31 = load %struct.synthhid_msg*, %struct.synthhid_msg** %6, align 8
  %32 = getelementptr inbounds %struct.synthhid_msg, %struct.synthhid_msg* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %97 [
    i32 128, label %35
    i32 130, label %60
    i32 129, label %74
  ]

35:                                               ; preds = %26
  %36 = load %struct.pipe_prt_msg*, %struct.pipe_prt_msg** %5, align 8
  %37 = getelementptr inbounds %struct.pipe_prt_msg, %struct.pipe_prt_msg* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = add i64 %39, 24
  %41 = sub i64 %40, 1
  %42 = icmp ugt i64 %41, 4
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = call i32 @WARN_ON(i32 1)
  br label %107

45:                                               ; preds = %35
  %46 = load %struct.mousevsc_dev*, %struct.mousevsc_dev** %7, align 8
  %47 = getelementptr inbounds %struct.mousevsc_dev, %struct.mousevsc_dev* %46, i32 0, i32 3
  %48 = load %struct.pipe_prt_msg*, %struct.pipe_prt_msg** %5, align 8
  %49 = load %struct.pipe_prt_msg*, %struct.pipe_prt_msg** %5, align 8
  %50 = getelementptr inbounds %struct.pipe_prt_msg, %struct.pipe_prt_msg* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = add i64 %52, 24
  %54 = sub i64 %53, 1
  %55 = trunc i64 %54 to i32
  %56 = call i32 @memcpy(i32* %47, %struct.pipe_prt_msg* %48, i32 %55)
  %57 = load %struct.mousevsc_dev*, %struct.mousevsc_dev** %7, align 8
  %58 = getelementptr inbounds %struct.mousevsc_dev, %struct.mousevsc_dev* %57, i32 0, i32 2
  %59 = call i32 @complete(i32* %58)
  br label %107

60:                                               ; preds = %26
  %61 = load %struct.pipe_prt_msg*, %struct.pipe_prt_msg** %5, align 8
  %62 = getelementptr inbounds %struct.pipe_prt_msg, %struct.pipe_prt_msg* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = icmp ult i64 %64, 4
  %66 = zext i1 %65 to i32
  %67 = call i32 @WARN_ON(i32 %66)
  %68 = load %struct.mousevsc_dev*, %struct.mousevsc_dev** %7, align 8
  %69 = load %struct.pipe_prt_msg*, %struct.pipe_prt_msg** %5, align 8
  %70 = getelementptr inbounds %struct.pipe_prt_msg, %struct.pipe_prt_msg* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to %struct.synthhid_device_info*
  %73 = call i32 @mousevsc_on_receive_device_info(%struct.mousevsc_dev* %68, %struct.synthhid_device_info* %72)
  br label %107

74:                                               ; preds = %26
  %75 = load %struct.pipe_prt_msg*, %struct.pipe_prt_msg** %5, align 8
  %76 = getelementptr inbounds %struct.pipe_prt_msg, %struct.pipe_prt_msg* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to %struct.synthhid_input_report*
  store %struct.synthhid_input_report* %78, %struct.synthhid_input_report** %8, align 8
  %79 = load %struct.mousevsc_dev*, %struct.mousevsc_dev** %7, align 8
  %80 = getelementptr inbounds %struct.mousevsc_dev, %struct.mousevsc_dev* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %74
  br label %107

84:                                               ; preds = %74
  %85 = load %struct.mousevsc_dev*, %struct.mousevsc_dev** %7, align 8
  %86 = getelementptr inbounds %struct.mousevsc_dev, %struct.mousevsc_dev* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @HID_INPUT_REPORT, align 4
  %89 = load %struct.synthhid_input_report*, %struct.synthhid_input_report** %8, align 8
  %90 = getelementptr inbounds %struct.synthhid_input_report, %struct.synthhid_input_report* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.synthhid_input_report*, %struct.synthhid_input_report** %8, align 8
  %93 = getelementptr inbounds %struct.synthhid_input_report, %struct.synthhid_input_report* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @hid_input_report(i32 %87, i32 %88, i32 %91, i32 %95, i32 1)
  br label %107

97:                                               ; preds = %26
  %98 = load %struct.synthhid_msg*, %struct.synthhid_msg** %6, align 8
  %99 = getelementptr inbounds %struct.synthhid_msg, %struct.synthhid_msg* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.synthhid_msg*, %struct.synthhid_msg** %6, align 8
  %103 = getelementptr inbounds %struct.synthhid_msg, %struct.synthhid_msg* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %101, i32 %105)
  br label %107

107:                                              ; preds = %25, %97, %84, %83, %60, %45, %43
  ret void
}

declare dso_local %struct.mousevsc_dev* @hv_get_drvdata(%struct.hv_device*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.pipe_prt_msg*, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @mousevsc_on_receive_device_info(%struct.mousevsc_dev*, %struct.synthhid_device_info*) #1

declare dso_local i32 @hid_input_report(i32, i32, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
