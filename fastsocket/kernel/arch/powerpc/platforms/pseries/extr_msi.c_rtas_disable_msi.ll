; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_msi.c_rtas_disable_msi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_msi.c_rtas_disable_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_dn = type { i32 }

@RTAS_CHANGE_MSI_FN = common dso_local global i32 0, align 4
@RTAS_CHANGE_FN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"rtas_msi: Setting MSIs to 0 failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @rtas_disable_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtas_disable_msi(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.pci_dn*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.pci_dn* @get_pdn(%struct.pci_dev* %4)
  store %struct.pci_dn* %5, %struct.pci_dn** %3, align 8
  %6 = load %struct.pci_dn*, %struct.pci_dn** %3, align 8
  %7 = icmp ne %struct.pci_dn* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %22

9:                                                ; preds = %1
  %10 = load %struct.pci_dn*, %struct.pci_dn** %3, align 8
  %11 = load i32, i32* @RTAS_CHANGE_MSI_FN, align 4
  %12 = call i64 @rtas_change_msi(%struct.pci_dn* %10, i32 %11, i32 0)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %9
  %15 = load %struct.pci_dn*, %struct.pci_dn** %3, align 8
  %16 = load i32, i32* @RTAS_CHANGE_FN, align 4
  %17 = call i64 @rtas_change_msi(%struct.pci_dn* %15, i32 %16, i32 0)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = call i32 @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %14
  br label %22

22:                                               ; preds = %8, %21, %9
  ret void
}

declare dso_local %struct.pci_dn* @get_pdn(%struct.pci_dev*) #1

declare dso_local i64 @rtas_change_msi(%struct.pci_dn*, i32, i32) #1

declare dso_local i32 @pr_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
