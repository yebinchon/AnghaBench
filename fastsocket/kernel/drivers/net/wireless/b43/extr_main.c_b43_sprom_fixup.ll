; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_sprom_fixup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_sprom_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_bus = type { i32, i64, %struct.TYPE_4__, %struct.pci_dev*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.pci_dev = type { i32 }
%struct.TYPE_3__ = type { i64, i32 }

@SSB_BOARDVENDOR_DELL = common dso_local global i64 0, align 8
@B43_BFL_BTCOEXIST = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_APPLE = common dso_local global i64 0, align 8
@B43_BFL_PACTRL = common dso_local global i32 0, align 4
@SSB_BUSTYPE_PCI = common dso_local global i64 0, align 8
@BROADCOM = common dso_local global i32 0, align 4
@ASUSTEK = common dso_local global i32 0, align 4
@DELL = common dso_local global i32 0, align 4
@HP = common dso_local global i32 0, align 4
@LINKSYS = common dso_local global i32 0, align 4
@MOTOROLA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssb_bus*)* @b43_sprom_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_sprom_fixup(%struct.ssb_bus* %0) #0 {
  %2 = alloca %struct.ssb_bus*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  store %struct.ssb_bus* %0, %struct.ssb_bus** %2, align 8
  %4 = load %struct.ssb_bus*, %struct.ssb_bus** %2, align 8
  %5 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %4, i32 0, i32 4
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @SSB_BOARDVENDOR_DELL, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %28

10:                                               ; preds = %1
  %11 = load %struct.ssb_bus*, %struct.ssb_bus** %2, align 8
  %12 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 17153
  br i1 %14, label %15, label %28

15:                                               ; preds = %10
  %16 = load %struct.ssb_bus*, %struct.ssb_bus** %2, align 8
  %17 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 116
  br i1 %20, label %21, label %28

21:                                               ; preds = %15
  %22 = load i32, i32* @B43_BFL_BTCOEXIST, align 4
  %23 = load %struct.ssb_bus*, %struct.ssb_bus** %2, align 8
  %24 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %22
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %21, %15, %10, %1
  %29 = load %struct.ssb_bus*, %struct.ssb_bus** %2, align 8
  %30 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PCI_VENDOR_ID_APPLE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %54

35:                                               ; preds = %28
  %36 = load %struct.ssb_bus*, %struct.ssb_bus** %2, align 8
  %37 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 78
  br i1 %40, label %41, label %54

41:                                               ; preds = %35
  %42 = load %struct.ssb_bus*, %struct.ssb_bus** %2, align 8
  %43 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp sgt i32 %45, 64
  br i1 %46, label %47, label %54

47:                                               ; preds = %41
  %48 = load i32, i32* @B43_BFL_PACTRL, align 4
  %49 = load %struct.ssb_bus*, %struct.ssb_bus** %2, align 8
  %50 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %48
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %47, %41, %35, %28
  %55 = load %struct.ssb_bus*, %struct.ssb_bus** %2, align 8
  %56 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @SSB_BUSTYPE_PCI, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %114

60:                                               ; preds = %54
  %61 = load %struct.ssb_bus*, %struct.ssb_bus** %2, align 8
  %62 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %61, i32 0, i32 3
  %63 = load %struct.pci_dev*, %struct.pci_dev** %62, align 8
  store %struct.pci_dev* %63, %struct.pci_dev** %3, align 8
  %64 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %65 = load i32, i32* @BROADCOM, align 4
  %66 = load i32, i32* @ASUSTEK, align 4
  %67 = call i64 @IS_PDEV(%struct.pci_dev* %64, i32 %65, i32 17176, i32 %66, i32 4111)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %105, label %69

69:                                               ; preds = %60
  %70 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %71 = load i32, i32* @BROADCOM, align 4
  %72 = load i32, i32* @DELL, align 4
  %73 = call i64 @IS_PDEV(%struct.pci_dev* %70, i32 %71, i32 17184, i32 %72, i32 3)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %105, label %75

75:                                               ; preds = %69
  %76 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %77 = load i32, i32* @BROADCOM, align 4
  %78 = load i32, i32* @HP, align 4
  %79 = call i64 @IS_PDEV(%struct.pci_dev* %76, i32 %77, i32 17184, i32 %78, i32 4856)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %105, label %81

81:                                               ; preds = %75
  %82 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %83 = load i32, i32* @BROADCOM, align 4
  %84 = load i32, i32* @LINKSYS, align 4
  %85 = call i64 @IS_PDEV(%struct.pci_dev* %82, i32 %83, i32 17184, i32 %84, i32 21)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %105, label %87

87:                                               ; preds = %81
  %88 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %89 = load i32, i32* @BROADCOM, align 4
  %90 = load i32, i32* @LINKSYS, align 4
  %91 = call i64 @IS_PDEV(%struct.pci_dev* %88, i32 %89, i32 17184, i32 %90, i32 20)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %105, label %93

93:                                               ; preds = %87
  %94 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %95 = load i32, i32* @BROADCOM, align 4
  %96 = load i32, i32* @LINKSYS, align 4
  %97 = call i64 @IS_PDEV(%struct.pci_dev* %94, i32 %95, i32 17184, i32 %96, i32 19)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %93
  %100 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %101 = load i32, i32* @BROADCOM, align 4
  %102 = load i32, i32* @MOTOROLA, align 4
  %103 = call i64 @IS_PDEV(%struct.pci_dev* %100, i32 %101, i32 17184, i32 %102, i32 28688)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %99, %93, %87, %81, %75, %69, %60
  %106 = load i32, i32* @B43_BFL_BTCOEXIST, align 4
  %107 = xor i32 %106, -1
  %108 = load %struct.ssb_bus*, %struct.ssb_bus** %2, align 8
  %109 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, %107
  store i32 %112, i32* %110, align 4
  br label %113

113:                                              ; preds = %105, %99
  br label %114

114:                                              ; preds = %113, %54
  ret void
}

declare dso_local i64 @IS_PDEV(%struct.pci_dev*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
