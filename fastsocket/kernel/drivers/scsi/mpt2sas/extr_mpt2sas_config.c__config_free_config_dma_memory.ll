; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt2sas/extr_mpt2sas_config.c__config_free_config_dma_memory.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt2sas/extr_mpt2sas_config.c__config_free_config_dma_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT2SAS_ADAPTER = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.config_request = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPT2SAS_ADAPTER*, %struct.config_request*)* @_config_free_config_dma_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_config_free_config_dma_memory(%struct.MPT2SAS_ADAPTER* %0, %struct.config_request* %1) #0 {
  %3 = alloca %struct.MPT2SAS_ADAPTER*, align 8
  %4 = alloca %struct.config_request*, align 8
  store %struct.MPT2SAS_ADAPTER* %0, %struct.MPT2SAS_ADAPTER** %3, align 8
  store %struct.config_request* %1, %struct.config_request** %4, align 8
  %5 = load %struct.config_request*, %struct.config_request** %4, align 8
  %6 = getelementptr inbounds %struct.config_request, %struct.config_request* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %3, align 8
  %9 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sgt i64 %7, %10
  br i1 %11, label %12, label %27

12:                                               ; preds = %2
  %13 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %3, align 8
  %14 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.config_request*, %struct.config_request** %4, align 8
  %18 = getelementptr inbounds %struct.config_request, %struct.config_request* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.config_request*, %struct.config_request** %4, align 8
  %21 = getelementptr inbounds %struct.config_request, %struct.config_request* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.config_request*, %struct.config_request** %4, align 8
  %24 = getelementptr inbounds %struct.config_request, %struct.config_request* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dma_free_coherent(i32* %16, i64 %19, i32 %22, i32 %25)
  br label %27

27:                                               ; preds = %12, %2
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
