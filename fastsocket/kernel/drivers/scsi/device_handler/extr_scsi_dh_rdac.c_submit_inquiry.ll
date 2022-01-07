; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_rdac.c_submit_inquiry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_rdac.c_submit_inquiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { %struct.request_queue* }
%struct.request_queue = type { i32 }
%struct.rdac_dh_data = type { i32, i32 }
%struct.request = type { i32*, i64, i32, i32 }

@SCSI_DH_RES_TEMP_UNAVAIL = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@INQUIRY = common dso_local global i32 0, align 4
@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@SCSI_DH_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, i32, i32, %struct.rdac_dh_data*)* @submit_inquiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @submit_inquiry(%struct.scsi_device* %0, i32 %1, i32 %2, %struct.rdac_dh_data* %3) #0 {
  %5 = alloca %struct.scsi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rdac_dh_data*, align 8
  %9 = alloca %struct.request*, align 8
  %10 = alloca %struct.request_queue*, align 8
  %11 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.rdac_dh_data* %3, %struct.rdac_dh_data** %8, align 8
  %12 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %13 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %12, i32 0, i32 0
  %14 = load %struct.request_queue*, %struct.request_queue** %13, align 8
  store %struct.request_queue* %14, %struct.request_queue** %10, align 8
  %15 = load i32, i32* @SCSI_DH_RES_TEMP_UNAVAIL, align 4
  store i32 %15, i32* %11, align 4
  %16 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %17 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %8, align 8
  %18 = getelementptr inbounds %struct.rdac_dh_data, %struct.rdac_dh_data* %17, i32 0, i32 1
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @READ, align 4
  %21 = call %struct.request* @get_rdac_req(%struct.scsi_device* %16, i32* %18, i32 %19, i32 %20)
  store %struct.request* %21, %struct.request** %9, align 8
  %22 = load %struct.request*, %struct.request** %9, align 8
  %23 = icmp ne %struct.request* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %4
  br label %73

25:                                               ; preds = %4
  %26 = load i32, i32* @INQUIRY, align 4
  %27 = load %struct.request*, %struct.request** %9, align 8
  %28 = getelementptr inbounds %struct.request, %struct.request* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 %26, i32* %30, align 4
  %31 = load %struct.request*, %struct.request** %9, align 8
  %32 = getelementptr inbounds %struct.request, %struct.request* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  store i32 1, i32* %34, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.request*, %struct.request** %9, align 8
  %37 = getelementptr inbounds %struct.request, %struct.request* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  store i32 %35, i32* %39, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.request*, %struct.request** %9, align 8
  %42 = getelementptr inbounds %struct.request, %struct.request* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 4
  store i32 %40, i32* %44, align 4
  %45 = load i32, i32* @INQUIRY, align 4
  %46 = call i32 @COMMAND_SIZE(i32 %45)
  %47 = load %struct.request*, %struct.request** %9, align 8
  %48 = getelementptr inbounds %struct.request, %struct.request* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %8, align 8
  %50 = getelementptr inbounds %struct.rdac_dh_data, %struct.rdac_dh_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.request*, %struct.request** %9, align 8
  %53 = getelementptr inbounds %struct.request, %struct.request* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load %struct.request*, %struct.request** %9, align 8
  %55 = getelementptr inbounds %struct.request, %struct.request* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %58 = call i32 @memset(i32 %56, i32 0, i32 %57)
  %59 = load %struct.request*, %struct.request** %9, align 8
  %60 = getelementptr inbounds %struct.request, %struct.request* %59, i32 0, i32 1
  store i64 0, i64* %60, align 8
  %61 = load %struct.request_queue*, %struct.request_queue** %10, align 8
  %62 = load %struct.request*, %struct.request** %9, align 8
  %63 = call i32 @blk_execute_rq(%struct.request_queue* %61, i32* null, %struct.request* %62, i32 1)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @EIO, align 4
  %66 = sub nsw i32 0, %65
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %25
  %69 = load i32, i32* @SCSI_DH_IO, align 4
  store i32 %69, i32* %11, align 4
  br label %70

70:                                               ; preds = %68, %25
  %71 = load %struct.request*, %struct.request** %9, align 8
  %72 = call i32 @blk_put_request(%struct.request* %71)
  br label %73

73:                                               ; preds = %70, %24
  %74 = load i32, i32* %11, align 4
  ret i32 %74
}

declare dso_local %struct.request* @get_rdac_req(%struct.scsi_device*, i32*, i32, i32) #1

declare dso_local i32 @COMMAND_SIZE(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @blk_execute_rq(%struct.request_queue*, i32*, %struct.request*, i32) #1

declare dso_local i32 @blk_put_request(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
