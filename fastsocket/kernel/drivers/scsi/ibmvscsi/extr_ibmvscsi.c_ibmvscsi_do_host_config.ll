; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvscsi.c_ibmvscsi_do_host_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvscsi.c_ibmvscsi_do_host_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvscsi_host_data = type { i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.viosrp_host_config = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.srp_event_struct = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.viosrp_host_config }

@.str = private unnamed_addr constant [42 x i8] c"couldn't allocate event for HOST_CONFIG!\0A\00", align 1
@sync_completion = common dso_local global i32 0, align 4
@VIOSRP_MAD_FORMAT = common dso_local global i32 0, align 4
@info_timeout = common dso_local global i32 0, align 4
@VIOSRP_HOST_CONFIG_TYPE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@FW_FEATURE_CMO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"dma_mapping error getting host config\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibmvscsi_host_data*, i8*, i32)* @ibmvscsi_do_host_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvscsi_do_host_config(%struct.ibmvscsi_host_data* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ibmvscsi_host_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.viosrp_host_config*, align 8
  %9 = alloca %struct.srp_event_struct*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ibmvscsi_host_data* %0, %struct.ibmvscsi_host_data** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %5, align 8
  %14 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %13, i32 0, i32 2
  %15 = call %struct.srp_event_struct* @get_event_struct(i32* %14)
  store %struct.srp_event_struct* %15, %struct.srp_event_struct** %9, align 8
  %16 = load %struct.srp_event_struct*, %struct.srp_event_struct** %9, align 8
  %17 = icmp ne %struct.srp_event_struct* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %3
  %19 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %5, align 8
  %20 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %112

23:                                               ; preds = %3
  %24 = load %struct.srp_event_struct*, %struct.srp_event_struct** %9, align 8
  %25 = load i32, i32* @sync_completion, align 4
  %26 = load i32, i32* @VIOSRP_MAD_FORMAT, align 4
  %27 = load i32, i32* @info_timeout, align 4
  %28 = call i32 @init_event_struct(%struct.srp_event_struct* %24, i32 %25, i32 %26, i32 %27)
  %29 = load %struct.srp_event_struct*, %struct.srp_event_struct** %9, align 8
  %30 = getelementptr inbounds %struct.srp_event_struct, %struct.srp_event_struct* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store %struct.viosrp_host_config* %32, %struct.viosrp_host_config** %8, align 8
  %33 = load %struct.viosrp_host_config*, %struct.viosrp_host_config** %8, align 8
  %34 = call i32 @memset(%struct.viosrp_host_config* %33, i32 0, i32 12)
  %35 = load i32, i32* @VIOSRP_HOST_CONFIG_TYPE, align 4
  %36 = load %struct.viosrp_host_config*, %struct.viosrp_host_config** %8, align 8
  %37 = getelementptr inbounds %struct.viosrp_host_config, %struct.viosrp_host_config* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.viosrp_host_config*, %struct.viosrp_host_config** %8, align 8
  %41 = getelementptr inbounds %struct.viosrp_host_config, %struct.viosrp_host_config* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  %43 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %5, align 8
  %44 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %49 = call i32 @dma_map_single(i32 %45, i8* %46, i32 %47, i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load %struct.viosrp_host_config*, %struct.viosrp_host_config** %8, align 8
  %51 = getelementptr inbounds %struct.viosrp_host_config, %struct.viosrp_host_config* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %5, align 8
  %53 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.viosrp_host_config*, %struct.viosrp_host_config** %8, align 8
  %56 = getelementptr inbounds %struct.viosrp_host_config, %struct.viosrp_host_config* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @dma_mapping_error(i32 %54, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %23
  %61 = load i32, i32* @FW_FEATURE_CMO, align 4
  %62 = call i32 @firmware_has_feature(i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %60
  %65 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %5, align 8
  %66 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @dev_err(i32 %67, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %69

69:                                               ; preds = %64, %60
  %70 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %5, align 8
  %71 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %70, i32 0, i32 2
  %72 = load %struct.srp_event_struct*, %struct.srp_event_struct** %9, align 8
  %73 = call i32 @free_event_struct(i32* %71, %struct.srp_event_struct* %72)
  store i32 -1, i32* %4, align 4
  br label %112

74:                                               ; preds = %23
  %75 = load %struct.srp_event_struct*, %struct.srp_event_struct** %9, align 8
  %76 = getelementptr inbounds %struct.srp_event_struct, %struct.srp_event_struct* %75, i32 0, i32 0
  %77 = call i32 @init_completion(i32* %76)
  %78 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %5, align 8
  %79 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %78, i32 0, i32 1
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i64, i64* %10, align 8
  %84 = call i32 @spin_lock_irqsave(i32 %82, i64 %83)
  %85 = load %struct.srp_event_struct*, %struct.srp_event_struct** %9, align 8
  %86 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %5, align 8
  %87 = load i32, i32* @info_timeout, align 4
  %88 = mul nsw i32 %87, 2
  %89 = call i32 @ibmvscsi_send_srp_event(%struct.srp_event_struct* %85, %struct.ibmvscsi_host_data* %86, i32 %88)
  store i32 %89, i32* %12, align 4
  %90 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %5, align 8
  %91 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %90, i32 0, i32 1
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i64, i64* %10, align 8
  %96 = call i32 @spin_unlock_irqrestore(i32 %94, i64 %95)
  %97 = load i32, i32* %12, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %74
  %100 = load %struct.srp_event_struct*, %struct.srp_event_struct** %9, align 8
  %101 = getelementptr inbounds %struct.srp_event_struct, %struct.srp_event_struct* %100, i32 0, i32 0
  %102 = call i32 @wait_for_completion(i32* %101)
  br label %103

103:                                              ; preds = %99, %74
  %104 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %5, align 8
  %105 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %110 = call i32 @dma_unmap_single(i32 %106, i32 %107, i32 %108, i32 %109)
  %111 = load i32, i32* %12, align 4
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %103, %69, %18
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local %struct.srp_event_struct* @get_event_struct(i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @init_event_struct(%struct.srp_event_struct*, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.viosrp_host_config*, i32, i32) #1

declare dso_local i32 @dma_map_single(i32, i8*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @firmware_has_feature(i32) #1

declare dso_local i32 @free_event_struct(i32*, %struct.srp_event_struct*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @ibmvscsi_send_srp_event(%struct.srp_event_struct*, %struct.ibmvscsi_host_data*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
