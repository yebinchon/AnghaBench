; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r8169.c_rtl_disable_msi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r8169.c_rtl_disable_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.rtl8169_private = type { i32 }

@RTL_FEATURE_MSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, %struct.rtl8169_private*)* @rtl_disable_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_disable_msi(%struct.pci_dev* %0, %struct.rtl8169_private* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.rtl8169_private*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.rtl8169_private* %1, %struct.rtl8169_private** %4, align 8
  %5 = load %struct.rtl8169_private*, %struct.rtl8169_private** %4, align 8
  %6 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @RTL_FEATURE_MSI, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %13 = call i32 @pci_disable_msi(%struct.pci_dev* %12)
  %14 = load i32, i32* @RTL_FEATURE_MSI, align 4
  %15 = xor i32 %14, -1
  %16 = load %struct.rtl8169_private*, %struct.rtl8169_private** %4, align 8
  %17 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, %15
  store i32 %19, i32* %17, align 4
  br label %20

20:                                               ; preds = %11, %2
  ret void
}

declare dso_local i32 @pci_disable_msi(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
