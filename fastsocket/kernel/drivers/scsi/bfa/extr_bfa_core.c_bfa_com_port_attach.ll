; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_core.c_bfa_com_port_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_core.c_bfa_com_port_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_s = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.bfa_port_s }
%struct.bfa_port_s = type { i32 }
%struct.bfa_mem_dma_s = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_s*)* @bfa_com_port_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_com_port_attach(%struct.bfa_s* %0) #0 {
  %2 = alloca %struct.bfa_s*, align 8
  %3 = alloca %struct.bfa_port_s*, align 8
  %4 = alloca %struct.bfa_mem_dma_s*, align 8
  store %struct.bfa_s* %0, %struct.bfa_s** %2, align 8
  %5 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %6 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store %struct.bfa_port_s* %7, %struct.bfa_port_s** %3, align 8
  %8 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %9 = call %struct.bfa_mem_dma_s* @BFA_MEM_PORT_DMA(%struct.bfa_s* %8)
  store %struct.bfa_mem_dma_s* %9, %struct.bfa_mem_dma_s** %4, align 8
  %10 = load %struct.bfa_port_s*, %struct.bfa_port_s** %3, align 8
  %11 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %12 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %11, i32 0, i32 1
  %13 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %14 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %15 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @bfa_port_attach(%struct.bfa_port_s* %10, i32* %12, %struct.bfa_s* %13, i32 %16)
  %18 = load %struct.bfa_port_s*, %struct.bfa_port_s** %3, align 8
  %19 = load %struct.bfa_mem_dma_s*, %struct.bfa_mem_dma_s** %4, align 8
  %20 = getelementptr inbounds %struct.bfa_mem_dma_s, %struct.bfa_mem_dma_s* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.bfa_mem_dma_s*, %struct.bfa_mem_dma_s** %4, align 8
  %23 = getelementptr inbounds %struct.bfa_mem_dma_s, %struct.bfa_mem_dma_s* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @bfa_port_mem_claim(%struct.bfa_port_s* %18, i32 %21, i32 %24)
  ret void
}

declare dso_local %struct.bfa_mem_dma_s* @BFA_MEM_PORT_DMA(%struct.bfa_s*) #1

declare dso_local i32 @bfa_port_attach(%struct.bfa_port_s*, i32*, %struct.bfa_s*, i32) #1

declare dso_local i32 @bfa_port_mem_claim(%struct.bfa_port_s*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
