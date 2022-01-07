; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_pciehp_hpc.c_pcie_enable_notification.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_pciehp_hpc.c_pcie_enable_notification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.controller = type { i32 }

@PCI_EXP_SLTCTL_PDCE = common dso_local global i32 0, align 4
@PCI_EXP_SLTCTL_ABPE = common dso_local global i32 0, align 4
@PCI_EXP_SLTCTL_PFDE = common dso_local global i32 0, align 4
@PCI_EXP_SLTCTL_MRLSCE = common dso_local global i32 0, align 4
@pciehp_poll_mode = common dso_local global i32 0, align 4
@PCI_EXP_SLTCTL_HPIE = common dso_local global i32 0, align 4
@PCI_EXP_SLTCTL_CCIE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Cannot enable software notification\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcie_enable_notification(%struct.controller* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.controller*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.controller* %0, %struct.controller** %3, align 8
  %6 = load i32, i32* @PCI_EXP_SLTCTL_PDCE, align 4
  store i32 %6, i32* %4, align 4
  %7 = load %struct.controller*, %struct.controller** %3, align 8
  %8 = call i64 @ATTN_BUTTN(%struct.controller* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* @PCI_EXP_SLTCTL_ABPE, align 4
  %12 = load i32, i32* %4, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %4, align 4
  br label %14

14:                                               ; preds = %10, %1
  %15 = load %struct.controller*, %struct.controller** %3, align 8
  %16 = call i64 @POWER_CTRL(%struct.controller* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32, i32* @PCI_EXP_SLTCTL_PFDE, align 4
  %20 = load i32, i32* %4, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %18, %14
  %23 = load %struct.controller*, %struct.controller** %3, align 8
  %24 = call i64 @MRL_SENS(%struct.controller* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32, i32* @PCI_EXP_SLTCTL_MRLSCE, align 4
  %28 = load i32, i32* %4, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %26, %22
  %31 = load i32, i32* @pciehp_poll_mode, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* @PCI_EXP_SLTCTL_HPIE, align 4
  %35 = load i32, i32* @PCI_EXP_SLTCTL_CCIE, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %4, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %33, %30
  %40 = load i32, i32* @PCI_EXP_SLTCTL_PDCE, align 4
  %41 = load i32, i32* @PCI_EXP_SLTCTL_ABPE, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @PCI_EXP_SLTCTL_MRLSCE, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @PCI_EXP_SLTCTL_PFDE, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @PCI_EXP_SLTCTL_HPIE, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @PCI_EXP_SLTCTL_CCIE, align 4
  %50 = or i32 %48, %49
  store i32 %50, i32* %5, align 4
  %51 = load %struct.controller*, %struct.controller** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i64 @pcie_write_cmd(%struct.controller* %51, i32 %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %39
  %57 = load %struct.controller*, %struct.controller** %3, align 8
  %58 = call i32 @ctrl_err(%struct.controller* %57, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %60

59:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %56
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i64 @ATTN_BUTTN(%struct.controller*) #1

declare dso_local i64 @POWER_CTRL(%struct.controller*) #1

declare dso_local i64 @MRL_SENS(%struct.controller*) #1

declare dso_local i64 @pcie_write_cmd(%struct.controller*, i32, i32) #1

declare dso_local i32 @ctrl_err(%struct.controller*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
