; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_free_tx_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_free_tx_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32 }
%struct.tx_ring = type { i32*, i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ql_adapter*, %struct.tx_ring*)* @ql_free_tx_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ql_free_tx_resources(%struct.ql_adapter* %0, %struct.tx_ring* %1) #0 {
  %3 = alloca %struct.ql_adapter*, align 8
  %4 = alloca %struct.tx_ring*, align 8
  store %struct.ql_adapter* %0, %struct.ql_adapter** %3, align 8
  store %struct.tx_ring* %1, %struct.tx_ring** %4, align 8
  %5 = load %struct.tx_ring*, %struct.tx_ring** %4, align 8
  %6 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %25

9:                                                ; preds = %2
  %10 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.tx_ring*, %struct.tx_ring** %4, align 8
  %14 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.tx_ring*, %struct.tx_ring** %4, align 8
  %17 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.tx_ring*, %struct.tx_ring** %4, align 8
  %20 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @pci_free_consistent(i32 %12, i32 %15, i32* %18, i32 %21)
  %23 = load %struct.tx_ring*, %struct.tx_ring** %4, align 8
  %24 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %23, i32 0, i32 1
  store i32* null, i32** %24, align 8
  br label %25

25:                                               ; preds = %9, %2
  %26 = load %struct.tx_ring*, %struct.tx_ring** %4, align 8
  %27 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @kfree(i32* %28)
  %30 = load %struct.tx_ring*, %struct.tx_ring** %4, align 8
  %31 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %30, i32 0, i32 0
  store i32* null, i32** %31, align 8
  ret void
}

declare dso_local i32 @pci_free_consistent(i32, i32, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
