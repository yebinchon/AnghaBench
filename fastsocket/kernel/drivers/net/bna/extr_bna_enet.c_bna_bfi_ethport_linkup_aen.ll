; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_enet.c_bna_bfi_ethport_linkup_aen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_enet.c_bna_bfi_ethport_linkup_aen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_ethport = type { i32, %struct.TYPE_2__*, i32 (i32, i32)* }
%struct.TYPE_2__ = type { i32 }
%struct.bfi_msgq_mhdr = type { i32 }

@BNA_LINK_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bna_ethport*, %struct.bfi_msgq_mhdr*)* @bna_bfi_ethport_linkup_aen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bna_bfi_ethport_linkup_aen(%struct.bna_ethport* %0, %struct.bfi_msgq_mhdr* %1) #0 {
  %3 = alloca %struct.bna_ethport*, align 8
  %4 = alloca %struct.bfi_msgq_mhdr*, align 8
  store %struct.bna_ethport* %0, %struct.bna_ethport** %3, align 8
  store %struct.bfi_msgq_mhdr* %1, %struct.bfi_msgq_mhdr** %4, align 8
  %5 = load i32, i32* @BNA_LINK_UP, align 4
  %6 = load %struct.bna_ethport*, %struct.bna_ethport** %3, align 8
  %7 = getelementptr inbounds %struct.bna_ethport, %struct.bna_ethport* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 8
  %8 = load %struct.bna_ethport*, %struct.bna_ethport** %3, align 8
  %9 = getelementptr inbounds %struct.bna_ethport, %struct.bna_ethport* %8, i32 0, i32 2
  %10 = load i32 (i32, i32)*, i32 (i32, i32)** %9, align 8
  %11 = load %struct.bna_ethport*, %struct.bna_ethport** %3, align 8
  %12 = getelementptr inbounds %struct.bna_ethport, %struct.bna_ethport* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.bna_ethport*, %struct.bna_ethport** %3, align 8
  %17 = getelementptr inbounds %struct.bna_ethport, %struct.bna_ethport* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 %10(i32 %15, i32 %18)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
