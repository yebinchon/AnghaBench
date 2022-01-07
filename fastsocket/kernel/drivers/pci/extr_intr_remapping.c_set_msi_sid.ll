; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intr_remapping.c_set_msi_sid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intr_remapping.c_set_msi_sid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irte = type { i32 }
%struct.pci_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@SVT_VERIFY_SID_SQ = common dso_local global i32 0, align 4
@SQ_ALL_16 = common dso_local global i32 0, align 4
@SVT_VERIFY_BUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_msi_sid(%struct.irte* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irte*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  store %struct.irte* %0, %struct.irte** %4, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %5, align 8
  %7 = load %struct.irte*, %struct.irte** %4, align 8
  %8 = icmp ne %struct.irte* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %11 = icmp ne %struct.pci_dev* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9, %2
  store i32 -1, i32* %3, align 4
  br label %82

13:                                               ; preds = %9
  %14 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %15 = call i64 @pci_is_pcie(%struct.pci_dev* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %13
  %18 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %39, label %24

24:                                               ; preds = %17, %13
  %25 = load %struct.irte*, %struct.irte** %4, align 8
  %26 = load i32, i32* @SVT_VERIFY_SID_SQ, align 4
  %27 = load i32, i32* @SQ_ALL_16, align 4
  %28 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %29 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 8
  %34 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %35 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %33, %36
  %38 = call i32 @set_irte_sid(%struct.irte* %25, i32 %26, i32 %27, i32 %37)
  store i32 0, i32* %3, align 4
  br label %82

39:                                               ; preds = %17
  %40 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %41 = call %struct.pci_dev* @pci_find_upstream_pcie_bridge(%struct.pci_dev* %40)
  store %struct.pci_dev* %41, %struct.pci_dev** %6, align 8
  %42 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %43 = icmp ne %struct.pci_dev* %42, null
  br i1 %43, label %44, label %81

44:                                               ; preds = %39
  %45 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %46 = call i64 @pci_is_pcie(%struct.pci_dev* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %65

48:                                               ; preds = %44
  %49 = load %struct.irte*, %struct.irte** %4, align 8
  %50 = load i32, i32* @SVT_VERIFY_BUS, align 4
  %51 = load i32, i32* @SQ_ALL_16, align 4
  %52 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %53 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %56, 8
  %58 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %59 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %57, %62
  %64 = call i32 @set_irte_sid(%struct.irte* %49, i32 %50, i32 %51, i32 %63)
  br label %80

65:                                               ; preds = %44
  %66 = load %struct.irte*, %struct.irte** %4, align 8
  %67 = load i32, i32* @SVT_VERIFY_SID_SQ, align 4
  %68 = load i32, i32* @SQ_ALL_16, align 4
  %69 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %70 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = shl i32 %73, 8
  %75 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %76 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %74, %77
  %79 = call i32 @set_irte_sid(%struct.irte* %66, i32 %67, i32 %68, i32 %78)
  br label %80

80:                                               ; preds = %65, %48
  br label %81

81:                                               ; preds = %80, %39
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %24, %12
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i64 @pci_is_pcie(%struct.pci_dev*) #1

declare dso_local i32 @set_irte_sid(%struct.irte*, i32, i32, i32) #1

declare dso_local %struct.pci_dev* @pci_find_upstream_pcie_bridge(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
