; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_storvsc_drv.c_storvsc_on_io_completion.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_storvsc_drv.c_storvsc_on_io_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_device = type { i32 }
%struct.vstor_packet = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64*, i32, i32, i32, i32, i32 }
%struct.storvsc_cmd_request = type { i32, %struct.vstor_packet }
%struct.storvsc_device = type { i32, i64, i32 }

@INQUIRY = common dso_local global i64 0, align 8
@MODE_SENSE = common dso_local global i64 0, align 8
@SRB_STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"cmd 0x%x scsi status 0x%x srb status 0x%x\0A\00", align 1
@SRB_STATUS_AUTOSENSE_VALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"stor pkt %p autosense data valid - len %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hv_device*, %struct.vstor_packet*, %struct.storvsc_cmd_request*)* @storvsc_on_io_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @storvsc_on_io_completion(%struct.hv_device* %0, %struct.vstor_packet* %1, %struct.storvsc_cmd_request* %2) #0 {
  %4 = alloca %struct.hv_device*, align 8
  %5 = alloca %struct.vstor_packet*, align 8
  %6 = alloca %struct.storvsc_cmd_request*, align 8
  %7 = alloca %struct.storvsc_device*, align 8
  %8 = alloca %struct.vstor_packet*, align 8
  store %struct.hv_device* %0, %struct.hv_device** %4, align 8
  store %struct.vstor_packet* %1, %struct.vstor_packet** %5, align 8
  store %struct.storvsc_cmd_request* %2, %struct.storvsc_cmd_request** %6, align 8
  %9 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %10 = call %struct.storvsc_device* @hv_get_drvdata(%struct.hv_device* %9)
  store %struct.storvsc_device* %10, %struct.storvsc_device** %7, align 8
  %11 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %6, align 8
  %12 = getelementptr inbounds %struct.storvsc_cmd_request, %struct.storvsc_cmd_request* %11, i32 0, i32 1
  store %struct.vstor_packet* %12, %struct.vstor_packet** %8, align 8
  %13 = load %struct.vstor_packet*, %struct.vstor_packet** %8, align 8
  %14 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @INQUIRY, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %30, label %21

21:                                               ; preds = %3
  %22 = load %struct.vstor_packet*, %struct.vstor_packet** %8, align 8
  %23 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @MODE_SENSE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %21, %3
  %31 = load %struct.vstor_packet*, %struct.vstor_packet** %5, align 8
  %32 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i32 0, i32* %33, align 8
  %34 = load i32, i32* @SRB_STATUS_SUCCESS, align 4
  %35 = load %struct.vstor_packet*, %struct.vstor_packet** %5, align 8
  %36 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  store i32 %34, i32* %37, align 4
  br label %38

38:                                               ; preds = %30, %21
  %39 = load %struct.vstor_packet*, %struct.vstor_packet** %5, align 8
  %40 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.vstor_packet*, %struct.vstor_packet** %8, align 8
  %44 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 8
  %46 = load %struct.vstor_packet*, %struct.vstor_packet** %5, align 8
  %47 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.vstor_packet*, %struct.vstor_packet** %8, align 8
  %51 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  store i32 %49, i32* %52, align 4
  %53 = load %struct.vstor_packet*, %struct.vstor_packet** %5, align 8
  %54 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.vstor_packet*, %struct.vstor_packet** %8, align 8
  %58 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 4
  store i32 %56, i32* %59, align 4
  %60 = load %struct.vstor_packet*, %struct.vstor_packet** %5, align 8
  %61 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %38
  %66 = load %struct.vstor_packet*, %struct.vstor_packet** %5, align 8
  %67 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @SRB_STATUS_SUCCESS, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %91

72:                                               ; preds = %65, %38
  %73 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %74 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %73, i32 0, i32 0
  %75 = load %struct.vstor_packet*, %struct.vstor_packet** %8, align 8
  %76 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i64*, i64** %77, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 0
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to %struct.storvsc_cmd_request*
  %82 = load %struct.vstor_packet*, %struct.vstor_packet** %5, align 8
  %83 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.vstor_packet*, %struct.vstor_packet** %5, align 8
  %87 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (i32*, i8*, %struct.storvsc_cmd_request*, i32, ...) @dev_warn(i32* %74, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), %struct.storvsc_cmd_request* %81, i32 %85, i32 %89)
  br label %91

91:                                               ; preds = %72, %65
  %92 = load %struct.vstor_packet*, %struct.vstor_packet** %5, align 8
  %93 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = and i32 %95, 255
  %97 = icmp eq i32 %96, 2
  br i1 %97, label %98, label %128

98:                                               ; preds = %91
  %99 = load %struct.vstor_packet*, %struct.vstor_packet** %5, align 8
  %100 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @SRB_STATUS_AUTOSENSE_VALID, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %127

106:                                              ; preds = %98
  %107 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %108 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %107, i32 0, i32 0
  %109 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %6, align 8
  %110 = load %struct.vstor_packet*, %struct.vstor_packet** %5, align 8
  %111 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = call i32 (i32*, i8*, %struct.storvsc_cmd_request*, i32, ...) @dev_warn(i32* %108, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), %struct.storvsc_cmd_request* %109, i32 %113)
  %115 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %6, align 8
  %116 = getelementptr inbounds %struct.storvsc_cmd_request, %struct.storvsc_cmd_request* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.vstor_packet*, %struct.vstor_packet** %5, align 8
  %119 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.vstor_packet*, %struct.vstor_packet** %5, align 8
  %123 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @memcpy(i32 %117, i32 %121, i32 %125)
  br label %127

127:                                              ; preds = %106, %98
  br label %128

128:                                              ; preds = %127, %91
  %129 = load %struct.vstor_packet*, %struct.vstor_packet** %5, align 8
  %130 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.vstor_packet*, %struct.vstor_packet** %8, align 8
  %134 = getelementptr inbounds %struct.vstor_packet, %struct.vstor_packet* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 3
  store i32 %132, i32* %135, align 8
  %136 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %6, align 8
  %137 = call i32 @storvsc_command_completion(%struct.storvsc_cmd_request* %136)
  %138 = load %struct.storvsc_device*, %struct.storvsc_device** %7, align 8
  %139 = getelementptr inbounds %struct.storvsc_device, %struct.storvsc_device* %138, i32 0, i32 2
  %140 = call i64 @atomic_dec_and_test(i32* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %151

142:                                              ; preds = %128
  %143 = load %struct.storvsc_device*, %struct.storvsc_device** %7, align 8
  %144 = getelementptr inbounds %struct.storvsc_device, %struct.storvsc_device* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %142
  %148 = load %struct.storvsc_device*, %struct.storvsc_device** %7, align 8
  %149 = getelementptr inbounds %struct.storvsc_device, %struct.storvsc_device* %148, i32 0, i32 0
  %150 = call i32 @wake_up(i32* %149)
  br label %151

151:                                              ; preds = %147, %142, %128
  ret void
}

declare dso_local %struct.storvsc_device* @hv_get_drvdata(%struct.hv_device*) #1

declare dso_local i32 @dev_warn(i32*, i8*, %struct.storvsc_cmd_request*, i32, ...) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @storvsc_command_completion(%struct.storvsc_cmd_request*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
