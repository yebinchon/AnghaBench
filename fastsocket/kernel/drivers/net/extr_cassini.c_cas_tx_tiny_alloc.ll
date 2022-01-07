; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cassini.c_cas_tx_tiny_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cassini.c_cas_tx_tiny_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cas = type { i32*, i32*, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@N_TX_RINGS = common dso_local global i32 0, align 4
@TX_TINY_BUF_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cas*)* @cas_tx_tiny_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cas_tx_tiny_alloc(%struct.cas* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cas*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.cas* %0, %struct.cas** %3, align 8
  %6 = load %struct.cas*, %struct.cas** %3, align 8
  %7 = getelementptr inbounds %struct.cas, %struct.cas* %6, i32 0, i32 2
  %8 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  store %struct.pci_dev* %8, %struct.pci_dev** %4, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %41, %1
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @N_TX_RINGS, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %44

13:                                               ; preds = %9
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = load i32, i32* @TX_TINY_BUF_BLOCK, align 4
  %16 = load %struct.cas*, %struct.cas** %3, align 8
  %17 = getelementptr inbounds %struct.cas, %struct.cas* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = call i32 @pci_alloc_consistent(%struct.pci_dev* %14, i32 %15, i32* %21)
  %23 = load %struct.cas*, %struct.cas** %3, align 8
  %24 = getelementptr inbounds %struct.cas, %struct.cas* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32 %22, i32* %28, align 4
  %29 = load %struct.cas*, %struct.cas** %3, align 8
  %30 = getelementptr inbounds %struct.cas, %struct.cas* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %13
  %38 = load %struct.cas*, %struct.cas** %3, align 8
  %39 = call i32 @cas_tx_tiny_free(%struct.cas* %38)
  store i32 -1, i32* %2, align 4
  br label %45

40:                                               ; preds = %13
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %9

44:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %37
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @pci_alloc_consistent(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @cas_tx_tiny_free(%struct.cas*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
