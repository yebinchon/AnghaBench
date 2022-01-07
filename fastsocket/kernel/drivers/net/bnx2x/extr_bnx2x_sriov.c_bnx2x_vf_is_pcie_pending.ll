; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_vf_is_pcie_pending.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_vf_is_pcie_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.pci_dev = type { i32 }
%struct.bnx2x_virtf = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, i32)* @bnx2x_vf_is_pcie_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_vf_is_pcie_pending(%struct.bnx2x* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.bnx2x_virtf*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.bnx2x_virtf* @bnx2x_vf_by_abs_fid(%struct.bnx2x* %8, i32 %9)
  store %struct.bnx2x_virtf* %10, %struct.bnx2x_virtf** %7, align 8
  %11 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %7, align 8
  %12 = icmp ne %struct.bnx2x_virtf* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %28

14:                                               ; preds = %2
  %15 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %7, align 8
  %16 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %7, align 8
  %19 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.pci_dev* @pci_get_bus_and_slot(i32 %17, i32 %20)
  store %struct.pci_dev* %21, %struct.pci_dev** %6, align 8
  %22 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %23 = icmp ne %struct.pci_dev* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %14
  %25 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %26 = call i32 @bnx2x_is_pcie_pending(%struct.pci_dev* %25)
  store i32 %26, i32* %3, align 4
  br label %28

27:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %24, %13
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local %struct.bnx2x_virtf* @bnx2x_vf_by_abs_fid(%struct.bnx2x*, i32) #1

declare dso_local %struct.pci_dev* @pci_get_bus_and_slot(i32, i32) #1

declare dso_local i32 @bnx2x_is_pcie_pending(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
