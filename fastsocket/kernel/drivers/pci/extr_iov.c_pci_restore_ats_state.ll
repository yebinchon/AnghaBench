; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_iov.c_pci_restore_ats_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_iov.c_pci_restore_ats_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@PCI_EXT_CAP_ID_ATS = common dso_local global i32 0, align 4
@PCI_ATS_CTRL_ENABLE = common dso_local global i32 0, align 4
@PCI_ATS_MIN_STU = common dso_local global i64 0, align 8
@PCI_ATS_CTRL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_restore_ats_state(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call i32 @pci_ats_enabled(%struct.pci_dev* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %43

8:                                                ; preds = %1
  %9 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %10 = load i32, i32* @PCI_EXT_CAP_ID_ATS, align 4
  %11 = call i32 @pci_find_ext_capability(%struct.pci_dev* %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = call i32 (...) @BUG()
  br label %15

15:                                               ; preds = %13, %8
  %16 = load i32, i32* @PCI_ATS_CTRL_ENABLE, align 4
  store i32 %16, i32* %3, align 4
  %17 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %15
  %22 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PCI_ATS_MIN_STU, align 8
  %28 = sub nsw i64 %26, %27
  %29 = call i32 @PCI_ATS_CTRL_STU(i64 %28)
  %30 = load i32, i32* %3, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %21, %15
  %33 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %34 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %35 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PCI_ATS_CTRL, align 8
  %40 = add nsw i64 %38, %39
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @pci_write_config_word(%struct.pci_dev* %33, i64 %40, i32 %41)
  br label %43

43:                                               ; preds = %32, %7
  ret void
}

declare dso_local i32 @pci_ats_enabled(%struct.pci_dev*) #1

declare dso_local i32 @pci_find_ext_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @PCI_ATS_CTRL_STU(i64) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
