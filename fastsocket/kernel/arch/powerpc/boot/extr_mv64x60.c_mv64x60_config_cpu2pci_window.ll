; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_mv64x60.c_mv64x60_config_cpu2pci_window.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_mv64x60.c_mv64x60_config_cpu2pci_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv64x60_cpu2pci_win = type { i32, i64, i32, i32 }

@MV64x60_CPU2PCI_SWAP_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mv64x60_config_cpu2pci_window(i64* %0, i64 %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.mv64x60_cpu2pci_win* %6) #0 {
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.mv64x60_cpu2pci_win*, align 8
  store i64* %0, i64** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.mv64x60_cpu2pci_win* %6, %struct.mv64x60_cpu2pci_win** %14, align 8
  %15 = load i32, i32* %12, align 4
  %16 = ashr i32 %15, 16
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* @MV64x60_CPU2PCI_SWAP_NONE, align 4
  %18 = load i32, i32* %12, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %12, align 4
  %20 = load i64*, i64** %8, align 8
  %21 = load %struct.mv64x60_cpu2pci_win*, %struct.mv64x60_cpu2pci_win** %14, align 8
  %22 = load i64, i64* %9, align 8
  %23 = getelementptr inbounds %struct.mv64x60_cpu2pci_win, %struct.mv64x60_cpu2pci_win* %21, i64 %22
  %24 = getelementptr inbounds %struct.mv64x60_cpu2pci_win, %struct.mv64x60_cpu2pci_win* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %20, i64 %26
  %28 = bitcast i64* %27 to i32*
  %29 = load i32, i32* %12, align 4
  %30 = call i32 @out_le32(i32* %28, i32 %29)
  %31 = load %struct.mv64x60_cpu2pci_win*, %struct.mv64x60_cpu2pci_win** %14, align 8
  %32 = load i64, i64* %9, align 8
  %33 = getelementptr inbounds %struct.mv64x60_cpu2pci_win, %struct.mv64x60_cpu2pci_win* %31, i64 %32
  %34 = getelementptr inbounds %struct.mv64x60_cpu2pci_win, %struct.mv64x60_cpu2pci_win* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %7
  %38 = load i64*, i64** %8, align 8
  %39 = load %struct.mv64x60_cpu2pci_win*, %struct.mv64x60_cpu2pci_win** %14, align 8
  %40 = load i64, i64* %9, align 8
  %41 = getelementptr inbounds %struct.mv64x60_cpu2pci_win, %struct.mv64x60_cpu2pci_win* %39, i64 %40
  %42 = getelementptr inbounds %struct.mv64x60_cpu2pci_win, %struct.mv64x60_cpu2pci_win* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i64, i64* %38, i64 %43
  %45 = bitcast i64* %44 to i32*
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @out_le32(i32* %45, i32 %46)
  br label %48

48:                                               ; preds = %37, %7
  %49 = load i64*, i64** %8, align 8
  %50 = load %struct.mv64x60_cpu2pci_win*, %struct.mv64x60_cpu2pci_win** %14, align 8
  %51 = load i64, i64* %9, align 8
  %52 = getelementptr inbounds %struct.mv64x60_cpu2pci_win, %struct.mv64x60_cpu2pci_win* %50, i64 %51
  %53 = getelementptr inbounds %struct.mv64x60_cpu2pci_win, %struct.mv64x60_cpu2pci_win* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %49, i64 %55
  %57 = bitcast i64* %56 to i32*
  %58 = load i32, i32* %11, align 4
  %59 = ashr i32 %58, 16
  %60 = call i32 @out_le32(i32* %57, i32 %59)
  %61 = load i32, i32* %13, align 4
  %62 = sub nsw i32 %61, 1
  %63 = ashr i32 %62, 16
  store i32 %63, i32* %13, align 4
  %64 = load i64*, i64** %8, align 8
  %65 = load %struct.mv64x60_cpu2pci_win*, %struct.mv64x60_cpu2pci_win** %14, align 8
  %66 = load i64, i64* %9, align 8
  %67 = getelementptr inbounds %struct.mv64x60_cpu2pci_win, %struct.mv64x60_cpu2pci_win* %65, i64 %66
  %68 = getelementptr inbounds %struct.mv64x60_cpu2pci_win, %struct.mv64x60_cpu2pci_win* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %64, i64 %70
  %72 = bitcast i64* %71 to i32*
  %73 = load i32, i32* %13, align 4
  %74 = call i32 @out_le32(i32* %72, i32 %73)
  ret void
}

declare dso_local i32 @out_le32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
