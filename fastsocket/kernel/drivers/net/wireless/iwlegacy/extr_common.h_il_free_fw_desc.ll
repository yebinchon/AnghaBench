; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.h_il_free_fw_desc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.h_il_free_fw_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.fw_desc = type { i64, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, %struct.fw_desc*)* @il_free_fw_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il_free_fw_desc(%struct.pci_dev* %0, %struct.fw_desc* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.fw_desc*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.fw_desc* %1, %struct.fw_desc** %4, align 8
  %5 = load %struct.fw_desc*, %struct.fw_desc** %4, align 8
  %6 = getelementptr inbounds %struct.fw_desc, %struct.fw_desc* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %22

9:                                                ; preds = %2
  %10 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 0
  %12 = load %struct.fw_desc*, %struct.fw_desc** %4, align 8
  %13 = getelementptr inbounds %struct.fw_desc, %struct.fw_desc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.fw_desc*, %struct.fw_desc** %4, align 8
  %16 = getelementptr inbounds %struct.fw_desc, %struct.fw_desc* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.fw_desc*, %struct.fw_desc** %4, align 8
  %19 = getelementptr inbounds %struct.fw_desc, %struct.fw_desc* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @dma_free_coherent(i32* %11, i64 %14, i32* %17, i32 %20)
  br label %22

22:                                               ; preds = %9, %2
  %23 = load %struct.fw_desc*, %struct.fw_desc** %4, align 8
  %24 = getelementptr inbounds %struct.fw_desc, %struct.fw_desc* %23, i32 0, i32 1
  store i32* null, i32** %24, align 8
  %25 = load %struct.fw_desc*, %struct.fw_desc** %4, align 8
  %26 = getelementptr inbounds %struct.fw_desc, %struct.fw_desc* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
