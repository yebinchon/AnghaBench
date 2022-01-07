; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_pci.c_pcix_set_mmrbc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_pci.c_pcix_set_mmrbc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PCI_CAP_ID_PCIX = common dso_local global i32 0, align 4
@PCI_X_STATUS = common dso_local global i64 0, align 8
@PCI_X_STATUS_MAX_READ = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@PCI_X_CMD = common dso_local global i64 0, align 8
@PCI_X_CMD_MAX_READ = common dso_local global i32 0, align 4
@PCI_BUS_FLAGS_NO_MMRBC = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcix_set_mmrbc(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 512
  br i1 %12, label %20, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp sgt i32 %14, 4096
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @is_power_of_2(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16, %13, %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %118

23:                                               ; preds = %16
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @ffs(i32 %24)
  %26 = sub nsw i32 %25, 10
  store i32 %26, i32* %8, align 4
  %27 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %28 = load i32, i32* @PCI_CAP_ID_PCIX, align 4
  %29 = call i32 @pci_find_capability(%struct.pci_dev* %27, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %23
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %118

35:                                               ; preds = %23
  %36 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* @PCI_X_STATUS, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i64 @pci_read_config_dword(%struct.pci_dev* %36, i64 %40, i32* %7)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %118

46:                                               ; preds = %35
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @PCI_X_STATUS_MAX_READ, align 4
  %50 = and i32 %48, %49
  %51 = ashr i32 %50, 21
  %52 = icmp sgt i32 %47, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load i32, i32* @E2BIG, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %118

56:                                               ; preds = %46
  %57 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* @PCI_X_CMD, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i64 @pci_read_config_word(%struct.pci_dev* %57, i64 %61, i32* %10)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %56
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %118

67:                                               ; preds = %56
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @PCI_X_CMD_MAX_READ, align 4
  %70 = and i32 %68, %69
  %71 = ashr i32 %70, 2
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %117

75:                                               ; preds = %67
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp sgt i32 %76, %77
  br i1 %78, label %79, label %96

79:                                               ; preds = %75
  %80 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %81 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = icmp ne %struct.TYPE_2__* %82, null
  br i1 %83, label %84, label %96

84:                                               ; preds = %79
  %85 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %86 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @PCI_BUS_FLAGS_NO_MMRBC, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %84
  %94 = load i32, i32* @EIO, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %3, align 4
  br label %118

96:                                               ; preds = %84, %79, %75
  %97 = load i32, i32* @PCI_X_CMD_MAX_READ, align 4
  %98 = xor i32 %97, -1
  %99 = load i32, i32* %10, align 4
  %100 = and i32 %99, %98
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %8, align 4
  %102 = shl i32 %101, 2
  %103 = load i32, i32* %10, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %10, align 4
  %105 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = load i64, i64* @PCI_X_CMD, align 8
  %109 = add nsw i64 %107, %108
  %110 = load i32, i32* %10, align 4
  %111 = call i64 @pci_write_config_word(%struct.pci_dev* %105, i64 %109, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %96
  %114 = load i32, i32* @EIO, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %3, align 4
  br label %118

116:                                              ; preds = %96
  br label %117

117:                                              ; preds = %116, %67
  store i32 0, i32* %3, align 4
  br label %118

118:                                              ; preds = %117, %113, %93, %64, %53, %43, %32, %20
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @pci_find_capability(%struct.pci_dev*, i32) #1

declare dso_local i64 @pci_read_config_dword(%struct.pci_dev*, i64, i32*) #1

declare dso_local i64 @pci_read_config_word(%struct.pci_dev*, i64, i32*) #1

declare dso_local i64 @pci_write_config_word(%struct.pci_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
