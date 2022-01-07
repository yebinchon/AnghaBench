; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_request.c_scu_atapi_construct_task_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_request.c_scu_atapi_construct_task_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_request = type { %struct.TYPE_8__, %struct.scu_task_context*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.scu_task_context = type { i32, i32, i32, i32, i64, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_10__ }
%struct.TYPE_6__ = type { i32 }
%struct.ata_device = type { i32 }
%struct.sas_task = type { i64, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@DMA_TO_DEVICE = common dso_local global i64 0, align 8
@SCU_TASK_TYPE_PACKET_DMA_OUT = common dso_local global i32 0, align 4
@SCU_TASK_TYPE_PACKET_DMA_IN = common dso_local global i32 0, align 4
@FIS_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isci_request*)* @scu_atapi_construct_task_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scu_atapi_construct_task_context(%struct.isci_request* %0) #0 {
  %2 = alloca %struct.isci_request*, align 8
  %3 = alloca %struct.ata_device*, align 8
  %4 = alloca %struct.sas_task*, align 8
  %5 = alloca %struct.scu_task_context*, align 8
  %6 = alloca i32, align 4
  store %struct.isci_request* %0, %struct.isci_request** %2, align 8
  %7 = load %struct.isci_request*, %struct.isci_request** %2, align 8
  %8 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %7, i32 0, i32 2
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.ata_device* @sas_to_ata_dev(i32 %11)
  store %struct.ata_device* %12, %struct.ata_device** %3, align 8
  %13 = load %struct.isci_request*, %struct.isci_request** %2, align 8
  %14 = call %struct.sas_task* @isci_request_access_task(%struct.isci_request* %13)
  store %struct.sas_task* %14, %struct.sas_task** %4, align 8
  %15 = load %struct.isci_request*, %struct.isci_request** %2, align 8
  %16 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %15, i32 0, i32 1
  %17 = load %struct.scu_task_context*, %struct.scu_task_context** %16, align 8
  store %struct.scu_task_context* %17, %struct.scu_task_context** %5, align 8
  %18 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %19 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  %21 = load %struct.sas_task*, %struct.sas_task** %4, align 8
  %22 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @DMA_TO_DEVICE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %1
  %27 = load i32, i32* @SCU_TASK_TYPE_PACKET_DMA_OUT, align 4
  %28 = load %struct.scu_task_context*, %struct.scu_task_context** %5, align 8
  %29 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %28, i32 0, i32 6
  store i32 %27, i32* %29, align 8
  %30 = load %struct.scu_task_context*, %struct.scu_task_context** %5, align 8
  %31 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  br label %38

32:                                               ; preds = %1
  %33 = load i32, i32* @SCU_TASK_TYPE_PACKET_DMA_IN, align 4
  %34 = load %struct.scu_task_context*, %struct.scu_task_context** %5, align 8
  %35 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %34, i32 0, i32 6
  store i32 %33, i32* %35, align 8
  %36 = load %struct.scu_task_context*, %struct.scu_task_context** %5, align 8
  %37 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  br label %38

38:                                               ; preds = %32, %26
  %39 = load %struct.scu_task_context*, %struct.scu_task_context** %5, align 8
  %40 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = call i32 @memset(%struct.TYPE_10__* %41, i32 0, i32 8)
  %43 = load i32, i32* @FIS_DATA, align 4
  %44 = load %struct.scu_task_context*, %struct.scu_task_context** %5, align 8
  %45 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  store i32 %43, i32* %47, align 4
  %48 = load %struct.isci_request*, %struct.isci_request** %2, align 8
  %49 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = call i32 @memset(%struct.TYPE_10__* %50, i32 0, i32 8)
  %52 = load %struct.isci_request*, %struct.isci_request** %2, align 8
  %53 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load %struct.sas_task*, %struct.sas_task** %4, align 8
  %57 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @memcpy(i32* %55, i32 %59, i32 %60)
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = udiv i64 %63, 4
  %65 = trunc i64 %64 to i32
  %66 = load %struct.scu_task_context*, %struct.scu_task_context** %5, align 8
  %67 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.scu_task_context*, %struct.scu_task_context** %5, align 8
  %69 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %68, i32 0, i32 2
  store i32 1, i32* %69, align 8
  %70 = load %struct.scu_task_context*, %struct.scu_task_context** %5, align 8
  %71 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %70, i32 0, i32 4
  store i64 0, i64* %71, align 8
  %72 = load %struct.sas_task*, %struct.sas_task** %4, align 8
  %73 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.scu_task_context*, %struct.scu_task_context** %5, align 8
  %76 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 4
  %77 = load %struct.isci_request*, %struct.isci_request** %2, align 8
  %78 = call i32 @sci_request_build_sgl(%struct.isci_request* %77)
  ret void
}

declare dso_local %struct.ata_device* @sas_to_ata_dev(i32) #1

declare dso_local %struct.sas_task* @isci_request_access_task(%struct.isci_request*) #1

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @sci_request_build_sgl(%struct.isci_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
