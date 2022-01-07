; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_solos-pci.c_fpga_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_solos-pci.c_fpga_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.solos_card = type { i64, i64, i32 }

@IRQ_EN_ADDR = common dso_local global i64 0, align 8
@FPGA_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @fpga_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fpga_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.solos_card*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.solos_card* @pci_get_drvdata(%struct.pci_dev* %4)
  store %struct.solos_card* %5, %struct.solos_card** %3, align 8
  %6 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %7 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @IRQ_EN_ADDR, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @iowrite32(i32 0, i64 %10)
  %12 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %13 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @FPGA_MODE, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @iowrite32(i32 1, i64 %16)
  %18 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %19 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @FPGA_MODE, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @ioread32(i64 %22)
  %24 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %25 = call i32 @atm_remove(%struct.solos_card* %24)
  %26 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %27 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %30 = call i32 @free_irq(i32 %28, %struct.solos_card* %29)
  %31 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %32 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %31, i32 0, i32 2
  %33 = call i32 @tasklet_kill(i32* %32)
  %34 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %35 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @FPGA_MODE, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @iowrite32(i32 0, i64 %38)
  %40 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %41 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @FPGA_MODE, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @ioread32(i64 %44)
  %46 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %47 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %48 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @pci_iounmap(%struct.pci_dev* %46, i64 %49)
  %51 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %52 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %53 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @pci_iounmap(%struct.pci_dev* %51, i64 %54)
  %56 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %57 = call i32 @pci_release_regions(%struct.pci_dev* %56)
  %58 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %59 = call i32 @pci_disable_device(%struct.pci_dev* %58)
  %60 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %61 = call i32 @pci_set_drvdata(%struct.pci_dev* %60, i32* null)
  %62 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %63 = call i32 @kfree(%struct.solos_card* %62)
  ret void
}

declare dso_local %struct.solos_card* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @atm_remove(%struct.solos_card*) #1

declare dso_local i32 @free_irq(i32, %struct.solos_card*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i64) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, i32*) #1

declare dso_local i32 @kfree(%struct.solos_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
