; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_serverworks.c_svwks_udma_filter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_serverworks.c_svwks_udma_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.pci_dev = type { i64, i64, i32 }

@PCI_DEVICE_ID_SERVERWORKS_HT1000IDE = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_SERVERWORKS_OSB4IDE = common dso_local global i64 0, align 8
@isa_dev = common dso_local global i64 0, align 8
@ide_disk = common dso_local global i64 0, align 8
@SVWKS_CSB5_REVISION_NEW = common dso_local global i64 0, align 8
@svwks_bad_ata100 = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_SERVERWORKS_CSB6IDE = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_SERVERWORKS_CSB6IDE2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @svwks_udma_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svwks_udma_filter(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.pci_dev* @to_pci_dev(i32 %13)
  store %struct.pci_dev* %14, %struct.pci_dev** %4, align 8
  store i32 0, i32* %5, align 4
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PCI_DEVICE_ID_SERVERWORKS_HT1000IDE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 31, i32* %2, align 4
  br label %103

21:                                               ; preds = %1
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PCI_DEVICE_ID_SERVERWORKS_OSB4IDE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %46

27:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  %28 = load i64, i64* @isa_dev, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i64, i64* @isa_dev, align 8
  %32 = call i32 @pci_read_config_dword(i64 %31, i32 100, i32* %6)
  br label %33

33:                                               ; preds = %30, %27
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ide_disk, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %103

40:                                               ; preds = %33
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, 16384
  %43 = icmp eq i32 %42, 16384
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 7, i32 0
  store i32 %45, i32* %2, align 4
  br label %103

46:                                               ; preds = %21
  %47 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %48 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SVWKS_CSB5_REVISION_NEW, align 8
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i32 7, i32* %2, align 4
  br label %103

53:                                               ; preds = %46
  %54 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %55 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @SVWKS_CSB5_REVISION_NEW, align 8
  %58 = icmp sge i64 %56, %57
  br i1 %58, label %59, label %79

59:                                               ; preds = %53
  store i32 0, i32* %7, align 4
  %60 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %61 = call i32 @pci_read_config_byte(%struct.pci_dev* %60, i32 90, i32* %7)
  %62 = load i32, i32* %7, align 4
  %63 = and i32 %62, 3
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp sgt i32 %64, 2
  br i1 %65, label %66, label %72

66:                                               ; preds = %59
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %68 = load i32, i32* @svwks_bad_ata100, align 4
  %69 = call i64 @check_in_drive_lists(%struct.TYPE_6__* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  store i32 2, i32* %8, align 4
  br label %72

72:                                               ; preds = %71, %66, %59
  %73 = load i32, i32* %8, align 4
  switch i32 %73, label %77 [
    i32 3, label %74
    i32 2, label %75
    i32 1, label %76
  ]

74:                                               ; preds = %72
  store i32 63, i32* %5, align 4
  br label %78

75:                                               ; preds = %72
  store i32 31, i32* %5, align 4
  br label %78

76:                                               ; preds = %72
  store i32 7, i32* %5, align 4
  br label %78

77:                                               ; preds = %72
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %77, %76, %75, %74
  br label %79

79:                                               ; preds = %78, %53
  br label %80

80:                                               ; preds = %79
  br label %81

81:                                               ; preds = %80
  %82 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %83 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @PCI_DEVICE_ID_SERVERWORKS_CSB6IDE, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %93, label %87

87:                                               ; preds = %81
  %88 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %89 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @PCI_DEVICE_ID_SERVERWORKS_CSB6IDE2, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %101

93:                                               ; preds = %87, %81
  %94 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %95 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @PCI_FUNC(i32 %96)
  %98 = and i32 %97, 1
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %93
  store i32 31, i32* %5, align 4
  br label %101

101:                                              ; preds = %100, %93, %87
  %102 = load i32, i32* %5, align 4
  store i32 %102, i32* %2, align 4
  br label %103

103:                                              ; preds = %101, %52, %40, %39, %20
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_read_config_dword(i64, i32, i32*) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i64 @check_in_drive_lists(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
