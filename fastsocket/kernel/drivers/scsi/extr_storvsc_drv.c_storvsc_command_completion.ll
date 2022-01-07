; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_storvsc_drv.c_storvsc_command_completion.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_storvsc_drv.c_storvsc_command_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.storvsc_cmd_request = type { %struct.TYPE_6__, i64, i32, %struct.TYPE_5__, %struct.scsi_cmnd* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.vmscsi_request }
%struct.vmscsi_request = type { i64, i64, i64, i64 }
%struct.scsi_cmnd = type { void (%struct.scsi_cmnd*)*, i32*, i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.stor_mem_pools*, i32 }
%struct.stor_mem_pools = type { i32 }
%struct.hv_host_device = type { %struct.hv_device* }
%struct.hv_device = type { i32 }
%struct.scsi_sense_hdr = type { i32, i32 }
%struct.Scsi_Host = type { i32 }
%struct.storvsc_device = type { %struct.Scsi_Host* }

@READ_TYPE = common dso_local global i64 0, align 8
@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"storvsc\00", align 1
@SRB_STATUS_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.storvsc_cmd_request*)* @storvsc_command_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @storvsc_command_completion(%struct.storvsc_cmd_request* %0) #0 {
  %2 = alloca %struct.storvsc_cmd_request*, align 8
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.hv_host_device*, align 8
  %5 = alloca void (%struct.scsi_cmnd*)*, align 8
  %6 = alloca %struct.scsi_sense_hdr, align 4
  %7 = alloca %struct.vmscsi_request*, align 8
  %8 = alloca %struct.stor_mem_pools*, align 8
  %9 = alloca %struct.Scsi_Host*, align 8
  %10 = alloca %struct.storvsc_device*, align 8
  %11 = alloca %struct.hv_device*, align 8
  store %struct.storvsc_cmd_request* %0, %struct.storvsc_cmd_request** %2, align 8
  %12 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %2, align 8
  %13 = getelementptr inbounds %struct.storvsc_cmd_request, %struct.storvsc_cmd_request* %12, i32 0, i32 4
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %13, align 8
  store %struct.scsi_cmnd* %14, %struct.scsi_cmnd** %3, align 8
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %16 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %15, i32 0, i32 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.hv_host_device* @shost_priv(i32 %19)
  store %struct.hv_host_device* %20, %struct.hv_host_device** %4, align 8
  %21 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %22 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %21, i32 0, i32 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.stor_mem_pools*, %struct.stor_mem_pools** %24, align 8
  store %struct.stor_mem_pools* %25, %struct.stor_mem_pools** %8, align 8
  %26 = load %struct.hv_host_device*, %struct.hv_host_device** %4, align 8
  %27 = getelementptr inbounds %struct.hv_host_device, %struct.hv_host_device* %26, i32 0, i32 0
  %28 = load %struct.hv_device*, %struct.hv_device** %27, align 8
  store %struct.hv_device* %28, %struct.hv_device** %11, align 8
  %29 = load %struct.hv_device*, %struct.hv_device** %11, align 8
  %30 = call %struct.storvsc_device* @get_in_stor_device(%struct.hv_device* %29)
  store %struct.storvsc_device* %30, %struct.storvsc_device** %10, align 8
  %31 = load %struct.storvsc_device*, %struct.storvsc_device** %10, align 8
  %32 = getelementptr inbounds %struct.storvsc_device, %struct.storvsc_device* %31, i32 0, i32 0
  %33 = load %struct.Scsi_Host*, %struct.Scsi_Host** %32, align 8
  store %struct.Scsi_Host* %33, %struct.Scsi_Host** %9, align 8
  %34 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %2, align 8
  %35 = getelementptr inbounds %struct.storvsc_cmd_request, %struct.storvsc_cmd_request* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store %struct.vmscsi_request* %36, %struct.vmscsi_request** %7, align 8
  %37 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %2, align 8
  %38 = getelementptr inbounds %struct.storvsc_cmd_request, %struct.storvsc_cmd_request* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %67

41:                                               ; preds = %1
  %42 = load %struct.vmscsi_request*, %struct.vmscsi_request** %7, align 8
  %43 = getelementptr inbounds %struct.vmscsi_request, %struct.vmscsi_request* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @READ_TYPE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %41
  %48 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %49 = call i32 @scsi_sglist(%struct.scsi_cmnd* %48)
  %50 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %2, align 8
  %51 = getelementptr inbounds %struct.storvsc_cmd_request, %struct.storvsc_cmd_request* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %54 = call i32 @scsi_sg_count(%struct.scsi_cmnd* %53)
  %55 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %2, align 8
  %56 = getelementptr inbounds %struct.storvsc_cmd_request, %struct.storvsc_cmd_request* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @copy_from_bounce_buffer(i32 %49, i32 %52, i32 %54, i64 %57)
  br label %59

59:                                               ; preds = %47, %41
  %60 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %2, align 8
  %61 = getelementptr inbounds %struct.storvsc_cmd_request, %struct.storvsc_cmd_request* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %2, align 8
  %64 = getelementptr inbounds %struct.storvsc_cmd_request, %struct.storvsc_cmd_request* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @destroy_bounce_buffer(i32 %62, i64 %65)
  br label %67

67:                                               ; preds = %59, %1
  %68 = load %struct.vmscsi_request*, %struct.vmscsi_request** %7, align 8
  %69 = getelementptr inbounds %struct.vmscsi_request, %struct.vmscsi_request* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %72 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %71, i32 0, i32 3
  store i64 %70, i64* %72, align 8
  %73 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %74 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %67
  %78 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %79 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %82 = call i64 @scsi_normalize_sense(i32 %80, i32 %81, %struct.scsi_sense_hdr* %6)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %77
  %85 = call i32 @scsi_print_sense_hdr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.scsi_sense_hdr* %6)
  br label %86

86:                                               ; preds = %84, %77
  br label %87

87:                                               ; preds = %86, %67
  %88 = load %struct.vmscsi_request*, %struct.vmscsi_request** %7, align 8
  %89 = getelementptr inbounds %struct.vmscsi_request, %struct.vmscsi_request* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @SRB_STATUS_SUCCESS, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %102

93:                                               ; preds = %87
  %94 = load %struct.vmscsi_request*, %struct.vmscsi_request** %7, align 8
  %95 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %96 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %97 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %6, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %6, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @storvsc_handle_error(%struct.vmscsi_request* %94, %struct.scsi_cmnd* %95, %struct.Scsi_Host* %96, i32 %98, i32 %100)
  br label %102

102:                                              ; preds = %93, %87
  %103 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %104 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %2, align 8
  %105 = getelementptr inbounds %struct.storvsc_cmd_request, %struct.storvsc_cmd_request* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.vmscsi_request*, %struct.vmscsi_request** %7, align 8
  %109 = getelementptr inbounds %struct.vmscsi_request, %struct.vmscsi_request* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = sub nsw i64 %107, %110
  %112 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %103, i64 %111)
  %113 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %114 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %113, i32 0, i32 0
  %115 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %114, align 8
  store void (%struct.scsi_cmnd*)* %115, void (%struct.scsi_cmnd*)** %5, align 8
  %116 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %117 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %116, i32 0, i32 1
  store i32* null, i32** %117, align 8
  %118 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %119 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %118, i32 0, i32 0
  store void (%struct.scsi_cmnd*)* null, void (%struct.scsi_cmnd*)** %119, align 8
  %120 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %5, align 8
  %121 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  call void %120(%struct.scsi_cmnd* %121)
  %122 = load %struct.storvsc_cmd_request*, %struct.storvsc_cmd_request** %2, align 8
  %123 = load %struct.stor_mem_pools*, %struct.stor_mem_pools** %8, align 8
  %124 = getelementptr inbounds %struct.stor_mem_pools, %struct.stor_mem_pools* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @mempool_free(%struct.storvsc_cmd_request* %122, i32 %125)
  ret void
}

declare dso_local %struct.hv_host_device* @shost_priv(i32) #1

declare dso_local %struct.storvsc_device* @get_in_stor_device(%struct.hv_device*) #1

declare dso_local i32 @copy_from_bounce_buffer(i32, i32, i32, i64) #1

declare dso_local i32 @scsi_sglist(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i32 @destroy_bounce_buffer(i32, i64) #1

declare dso_local i64 @scsi_normalize_sense(i32, i32, %struct.scsi_sense_hdr*) #1

declare dso_local i32 @scsi_print_sense_hdr(i8*, %struct.scsi_sense_hdr*) #1

declare dso_local i32 @storvsc_handle_error(%struct.vmscsi_request*, %struct.scsi_cmnd*, %struct.Scsi_Host*, i32, i32) #1

declare dso_local i32 @scsi_set_resid(%struct.scsi_cmnd*, i64) #1

declare dso_local i32 @mempool_free(%struct.storvsc_cmd_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
