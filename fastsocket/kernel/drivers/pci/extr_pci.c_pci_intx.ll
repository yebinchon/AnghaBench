; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_pci.c_pci_intx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_pci.c_pci_intx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_devres = type { i32, i32 }

@PCI_COMMAND = common dso_local global i32 0, align 4
@PCI_COMMAND_INTX_DISABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_intx(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_devres*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %9 = load i32, i32* @PCI_COMMAND, align 4
  %10 = call i32 @pci_read_config_word(%struct.pci_dev* %8, i32 %9, i32* %5)
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @PCI_COMMAND_INTX_DISABLE, align 4
  %16 = xor i32 %15, -1
  %17 = and i32 %14, %16
  store i32 %17, i32* %6, align 4
  br label %22

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @PCI_COMMAND_INTX_DISABLE, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %18, %13
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %50

26:                                               ; preds = %22
  %27 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %28 = load i32, i32* @PCI_COMMAND, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @pci_write_config_word(%struct.pci_dev* %27, i32 %28, i32 %29)
  %31 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %32 = call %struct.pci_devres* @find_pci_dr(%struct.pci_dev* %31)
  store %struct.pci_devres* %32, %struct.pci_devres** %7, align 8
  %33 = load %struct.pci_devres*, %struct.pci_devres** %7, align 8
  %34 = icmp ne %struct.pci_devres* %33, null
  br i1 %34, label %35, label %49

35:                                               ; preds = %26
  %36 = load %struct.pci_devres*, %struct.pci_devres** %7, align 8
  %37 = getelementptr inbounds %struct.pci_devres, %struct.pci_devres* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %35
  %41 = load %struct.pci_devres*, %struct.pci_devres** %7, align 8
  %42 = getelementptr inbounds %struct.pci_devres, %struct.pci_devres* %41, i32 0, i32 0
  store i32 1, i32* %42, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = load %struct.pci_devres*, %struct.pci_devres** %7, align 8
  %48 = getelementptr inbounds %struct.pci_devres, %struct.pci_devres* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %40, %35, %26
  br label %50

50:                                               ; preds = %49, %22
  ret void
}

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local %struct.pci_devres* @find_pci_dr(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
