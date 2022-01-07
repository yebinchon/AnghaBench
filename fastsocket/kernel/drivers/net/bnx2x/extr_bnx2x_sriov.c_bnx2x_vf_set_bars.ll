; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_vf_set_bars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_vf_set_bars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { %struct.TYPE_3__*, %struct.pci_dev* }
%struct.TYPE_3__ = type { %struct.bnx2x_sriov }
%struct.bnx2x_sriov = type { i32 }
%struct.pci_dev = type { i32 }
%struct.bnx2x_virtf = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64 }

@PCI_SRIOV_NUM_BARS = common dso_local global i32 0, align 4
@PCI_IOV_RESOURCES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_virtf*)* @bnx2x_vf_set_bars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_vf_set_bars(%struct.bnx2x* %0, %struct.bnx2x_virtf* %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.bnx2x_virtf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca %struct.bnx2x_sriov*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store %struct.bnx2x_virtf* %1, %struct.bnx2x_virtf** %4, align 8
  %11 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %12 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %11, i32 0, i32 1
  %13 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  store %struct.pci_dev* %13, %struct.pci_dev** %7, align 8
  %14 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %15 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store %struct.bnx2x_sriov* %17, %struct.bnx2x_sriov** %8, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %63, %2
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @PCI_SRIOV_NUM_BARS, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %68

22:                                               ; preds = %18
  %23 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %24 = load i64, i64* @PCI_IOV_RESOURCES, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %24, %26
  %28 = call i64 @pci_resource_start(%struct.pci_dev* %23, i64 %27)
  store i64 %28, i64* %9, align 8
  %29 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %30 = load i64, i64* @PCI_IOV_RESOURCES, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %30, %32
  %34 = call i32 @pci_resource_len(%struct.pci_dev* %29, i64 %33)
  store i32 %34, i32* %10, align 4
  %35 = load %struct.bnx2x_sriov*, %struct.bnx2x_sriov** %8, align 8
  %36 = getelementptr inbounds %struct.bnx2x_sriov, %struct.bnx2x_sriov* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %10, align 4
  %39 = sdiv i32 %38, %37
  store i32 %39, i32* %10, align 4
  %40 = load i64, i64* %9, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %43 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = mul nsw i32 %41, %44
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %40, %46
  %48 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %49 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  store i64 %47, i64* %54, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %57 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i32 %55, i32* %62, align 8
  br label %63

63:                                               ; preds = %22
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 2
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %18

68:                                               ; preds = %18
  ret void
}

declare dso_local i64 @pci_resource_start(%struct.pci_dev*, i64) #1

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
