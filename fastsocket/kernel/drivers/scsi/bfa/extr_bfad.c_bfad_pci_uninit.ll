; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad.c_bfad_pci_uninit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad.c_bfad_pci_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.bfad_s = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfad_pci_uninit(%struct.pci_dev* %0, %struct.bfad_s* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.bfad_s*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.bfad_s* %1, %struct.bfad_s** %4, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %6 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %7 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @pci_iounmap(%struct.pci_dev* %5, i32 %8)
  %10 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %11 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %12 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @pci_iounmap(%struct.pci_dev* %10, i32 %13)
  %15 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %16 = call i32 @pci_release_regions(%struct.pci_dev* %15)
  %17 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %18 = call i32 @pci_disable_pcie_error_reporting(%struct.pci_dev* %17)
  %19 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %20 = call i32 @pci_disable_device(%struct.pci_dev* %19)
  %21 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %22 = call i32 @pci_set_drvdata(%struct.pci_dev* %21, i32* null)
  ret void
}

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_pcie_error_reporting(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
