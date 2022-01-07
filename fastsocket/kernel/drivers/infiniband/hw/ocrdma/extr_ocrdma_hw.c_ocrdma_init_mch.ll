; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_init_mch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_init_mch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_mbx_hdr = type { i32, i32, i64 }

@OCRDMA_MCH_SUBSYS_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocrdma_mbx_hdr*, i32, i32, i64)* @ocrdma_init_mch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocrdma_init_mch(%struct.ocrdma_mbx_hdr* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.ocrdma_mbx_hdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.ocrdma_mbx_hdr* %0, %struct.ocrdma_mbx_hdr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @OCRDMA_MCH_SUBSYS_SHIFT, align 4
  %12 = shl i32 %10, %11
  %13 = or i32 %9, %12
  %14 = load %struct.ocrdma_mbx_hdr*, %struct.ocrdma_mbx_hdr** %5, align 8
  %15 = getelementptr inbounds %struct.ocrdma_mbx_hdr, %struct.ocrdma_mbx_hdr* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.ocrdma_mbx_hdr*, %struct.ocrdma_mbx_hdr** %5, align 8
  %17 = getelementptr inbounds %struct.ocrdma_mbx_hdr, %struct.ocrdma_mbx_hdr* %16, i32 0, i32 1
  store i32 20, i32* %17, align 4
  %18 = load i64, i64* %8, align 8
  %19 = sub i64 %18, 16
  %20 = load %struct.ocrdma_mbx_hdr*, %struct.ocrdma_mbx_hdr** %5, align 8
  %21 = getelementptr inbounds %struct.ocrdma_mbx_hdr, %struct.ocrdma_mbx_hdr* %20, i32 0, i32 2
  store i64 %19, i64* %21, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
