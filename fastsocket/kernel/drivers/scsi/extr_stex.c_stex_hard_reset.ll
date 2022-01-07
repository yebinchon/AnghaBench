; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_stex.c_stex_hard_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_stex.c_stex_hard_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_hba = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32*, %struct.pci_bus* }
%struct.pci_bus = type { i32 }

@PCI_BRIDGE_CONTROL = common dso_local global i32 0, align 4
@PCI_BRIDGE_CTL_BUS_RESET = common dso_local global i32 0, align 4
@MU_HARD_RESET_WAIT = common dso_local global i32 0, align 4
@PCI_COMMAND = common dso_local global i32 0, align 4
@PCI_COMMAND_MASTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_hba*)* @stex_hard_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stex_hard_reset(%struct.st_hba* %0) #0 {
  %2 = alloca %struct.st_hba*, align 8
  %3 = alloca %struct.pci_bus*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.st_hba* %0, %struct.st_hba** %2, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %25, %1
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 16
  br i1 %9, label %10, label %28

10:                                               ; preds = %7
  %11 = load %struct.st_hba*, %struct.st_hba** %2, align 8
  %12 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = mul nsw i32 %14, 4
  %16 = load %struct.st_hba*, %struct.st_hba** %2, align 8
  %17 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = call i32 @pci_read_config_dword(%struct.TYPE_4__* %13, i32 %15, i32* %23)
  br label %25

25:                                               ; preds = %10
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %7

28:                                               ; preds = %7
  %29 = load %struct.st_hba*, %struct.st_hba** %2, align 8
  %30 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load %struct.pci_bus*, %struct.pci_bus** %32, align 8
  store %struct.pci_bus* %33, %struct.pci_bus** %3, align 8
  %34 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %35 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @PCI_BRIDGE_CONTROL, align 4
  %38 = call i32 @pci_read_config_byte(i32 %36, i32 %37, i32* %6)
  %39 = load i32, i32* @PCI_BRIDGE_CTL_BUS_RESET, align 4
  %40 = load i32, i32* %6, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %6, align 4
  %42 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %43 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @PCI_BRIDGE_CONTROL, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @pci_write_config_byte(i32 %44, i32 %45, i32 %46)
  %48 = call i32 @msleep(i32 100)
  %49 = load i32, i32* @PCI_BRIDGE_CTL_BUS_RESET, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %6, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %6, align 4
  %53 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %54 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @PCI_BRIDGE_CONTROL, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @pci_write_config_byte(i32 %55, i32 %56, i32 %57)
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %79, %28
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @MU_HARD_RESET_WAIT, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %82

63:                                               ; preds = %59
  %64 = load %struct.st_hba*, %struct.st_hba** %2, align 8
  %65 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load i32, i32* @PCI_COMMAND, align 4
  %68 = call i32 @pci_read_config_word(%struct.TYPE_4__* %66, i32 %67, i32* %5)
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 65535
  br i1 %70, label %71, label %77

71:                                               ; preds = %63
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @PCI_COMMAND_MASTER, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %82

77:                                               ; preds = %71, %63
  %78 = call i32 @msleep(i32 1)
  br label %79

79:                                               ; preds = %77
  %80 = load i32, i32* %4, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %4, align 4
  br label %59

82:                                               ; preds = %76, %59
  %83 = call i32 @ssleep(i32 5)
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %103, %82
  %85 = load i32, i32* %4, align 4
  %86 = icmp slt i32 %85, 16
  br i1 %86, label %87, label %106

87:                                               ; preds = %84
  %88 = load %struct.st_hba*, %struct.st_hba** %2, align 8
  %89 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %88, i32 0, i32 0
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = load i32, i32* %4, align 4
  %92 = mul nsw i32 %91, 4
  %93 = load %struct.st_hba*, %struct.st_hba** %2, align 8
  %94 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %93, i32 0, i32 0
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %4, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @pci_write_config_dword(%struct.TYPE_4__* %90, i32 %92, i32 %101)
  br label %103

103:                                              ; preds = %87
  %104 = load i32, i32* %4, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %4, align 4
  br label %84

106:                                              ; preds = %84
  ret void
}

declare dso_local i32 @pci_read_config_dword(%struct.TYPE_4__*, i32, i32*) #1

declare dso_local i32 @pci_read_config_byte(i32, i32, i32*) #1

declare dso_local i32 @pci_write_config_byte(i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @pci_read_config_word(%struct.TYPE_4__*, i32, i32*) #1

declare dso_local i32 @ssleep(i32) #1

declare dso_local i32 @pci_write_config_dword(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
