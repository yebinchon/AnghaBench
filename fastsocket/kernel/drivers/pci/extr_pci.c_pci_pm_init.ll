; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_pci.c_pci_pm_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_pci.c_pci_pm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, i32, i32, i32, i32 }

@PCI_CAP_ID_PM = common dso_local global i32 0, align 4
@PCI_PM_PMC = common dso_local global i64 0, align 8
@PCI_PM_CAP_VER_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"unsupported PM cap regs version (%u)\0A\00", align 1
@PCI_PM_CAP_D1 = common dso_local global i32 0, align 4
@PCI_PM_CAP_D2 = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"supports%s%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" D1\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [4 x i8] c" D2\00", align 1
@PCI_PM_CAP_PME_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"PME# supported from%s%s%s%s%s\0A\00", align 1
@PCI_PM_CAP_PME_D0 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c" D0\00", align 1
@PCI_PM_CAP_PME_D1 = common dso_local global i32 0, align 4
@PCI_PM_CAP_PME_D2 = common dso_local global i32 0, align 4
@PCI_PM_CAP_PME_D3 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c" D3hot\00", align 1
@PCI_PM_CAP_PME_D3cold = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c" D3cold\00", align 1
@PCI_PM_CAP_PME_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_pm_init(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 0
  store i32 0, i32* %6, align 4
  %7 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %8 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 1
  store i32 0, i32* %8, align 4
  %9 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %10 = load i32, i32* @PCI_CAP_ID_PM, align 4
  %11 = call i32 @pci_find_capability(%struct.pci_dev* %9, i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %144

15:                                               ; preds = %1
  %16 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = load i64, i64* @PCI_PM_PMC, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @pci_read_config_word(%struct.pci_dev* %16, i64 %20, i32* %4)
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @PCI_PM_CAP_VER_MASK, align 4
  %24 = and i32 %22, %23
  %25 = icmp sgt i32 %24, 3
  br i1 %25, label %26, label %33

26:                                               ; preds = %15
  %27 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 5
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @PCI_PM_CAP_VER_MASK, align 4
  %31 = and i32 %29, %30
  %32 = call i32 @dev_err(i32* %28, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %144

33:                                               ; preds = %15
  %34 = load i32, i32* %3, align 4
  %35 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %36 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %38 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %37, i32 0, i32 2
  store i32 0, i32* %38, align 4
  %39 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %40 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %39, i32 0, i32 3
  store i32 0, i32* %40, align 4
  %41 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %42 = call i32 @pci_no_d1d2(%struct.pci_dev* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %88, label %44

44:                                               ; preds = %33
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @PCI_PM_CAP_D1, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %51 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %50, i32 0, i32 2
  store i32 1, i32* %51, align 4
  br label %52

52:                                               ; preds = %49, %44
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @PCI_PM_CAP_D2, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %59 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %58, i32 0, i32 3
  store i32 1, i32* %59, align 4
  br label %60

60:                                               ; preds = %57, %52
  %61 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %62 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %60
  %66 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %67 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %87

70:                                               ; preds = %65, %60
  %71 = load i32, i32* @KERN_DEBUG, align 4
  %72 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %73 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %72, i32 0, i32 5
  %74 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %75 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %80 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %81 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %86 = call i32 @dev_printk(i32 %71, i32* %73, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %79, i8* %85)
  br label %87

87:                                               ; preds = %70, %65
  br label %88

88:                                               ; preds = %87, %33
  %89 = load i32, i32* @PCI_PM_CAP_PME_MASK, align 4
  %90 = load i32, i32* %4, align 4
  %91 = and i32 %90, %89
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* %4, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %141

94:                                               ; preds = %88
  %95 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %96 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %95, i32 0, i32 5
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* @PCI_PM_CAP_PME_D0, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %103 = load i32, i32* %4, align 4
  %104 = load i32, i32* @PCI_PM_CAP_PME_D1, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* @PCI_PM_CAP_PME_D2, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  %113 = zext i1 %112 to i64
  %114 = select i1 %112, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* @PCI_PM_CAP_PME_D3, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %121 = load i32, i32* %4, align 4
  %122 = load i32, i32* @PCI_PM_CAP_PME_D3cold, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  %125 = zext i1 %124 to i64
  %126 = select i1 %124, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %127 = call i32 @dev_info(i32* %96, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* %102, i8* %108, i8* %114, i8* %120, i8* %126)
  %128 = load i32, i32* %4, align 4
  %129 = load i32, i32* @PCI_PM_CAP_PME_SHIFT, align 4
  %130 = ashr i32 %128, %129
  %131 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %132 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %131, i32 0, i32 4
  store i32 %130, i32* %132, align 4
  %133 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %134 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %133, i32 0, i32 5
  %135 = call i32 @device_set_wakeup_capable(i32* %134, i32 1)
  %136 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %137 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %136, i32 0, i32 5
  %138 = call i32 @device_set_wakeup_enable(i32* %137, i32 0)
  %139 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %140 = call i32 @pci_pme_active(%struct.pci_dev* %139, i32 0)
  br label %144

141:                                              ; preds = %88
  %142 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %143 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %142, i32 0, i32 4
  store i32 0, i32* %143, align 4
  br label %144

144:                                              ; preds = %14, %26, %141, %94
  ret void
}

declare dso_local i32 @pci_find_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @pci_no_d1d2(%struct.pci_dev*) #1

declare dso_local i32 @dev_printk(i32, i32*, i8*, i8*, i8*) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @device_set_wakeup_capable(i32*, i32) #1

declare dso_local i32 @device_set_wakeup_enable(i32*, i32) #1

declare dso_local i32 @pci_pme_active(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
