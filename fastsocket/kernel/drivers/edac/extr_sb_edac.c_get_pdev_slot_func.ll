; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_sb_edac.c_get_pdev_slot_func.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_sb_edac.c_get_pdev_slot_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.sbridge_dev = type { i32, %struct.pci_dev** }

@.str = private unnamed_addr constant [33 x i8] c"Associated %02x.%02x.%d with %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pci_dev* (i32, i32, i32)* @get_pdev_slot_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pci_dev* @get_pdev_slot_func(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sbridge_dev*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.sbridge_dev* @get_sbridge_dev(i32 %10)
  store %struct.sbridge_dev* %11, %struct.sbridge_dev** %8, align 8
  %12 = load %struct.sbridge_dev*, %struct.sbridge_dev** %8, align 8
  %13 = icmp ne %struct.sbridge_dev* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store %struct.pci_dev* null, %struct.pci_dev** %4, align 8
  br label %82

15:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %78, %15
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.sbridge_dev*, %struct.sbridge_dev** %8, align 8
  %19 = getelementptr inbounds %struct.sbridge_dev, %struct.sbridge_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %81

22:                                               ; preds = %16
  %23 = load %struct.sbridge_dev*, %struct.sbridge_dev** %8, align 8
  %24 = getelementptr inbounds %struct.sbridge_dev, %struct.sbridge_dev* %23, i32 0, i32 1
  %25 = load %struct.pci_dev**, %struct.pci_dev*** %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.pci_dev*, %struct.pci_dev** %25, i64 %27
  %29 = load %struct.pci_dev*, %struct.pci_dev** %28, align 8
  %30 = icmp ne %struct.pci_dev* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %22
  br label %78

32:                                               ; preds = %22
  %33 = load %struct.sbridge_dev*, %struct.sbridge_dev** %8, align 8
  %34 = getelementptr inbounds %struct.sbridge_dev, %struct.sbridge_dev* %33, i32 0, i32 1
  %35 = load %struct.pci_dev**, %struct.pci_dev*** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.pci_dev*, %struct.pci_dev** %35, i64 %37
  %39 = load %struct.pci_dev*, %struct.pci_dev** %38, align 8
  %40 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @PCI_SLOT(i32 %41)
  %43 = load i32, i32* %6, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %77

45:                                               ; preds = %32
  %46 = load %struct.sbridge_dev*, %struct.sbridge_dev** %8, align 8
  %47 = getelementptr inbounds %struct.sbridge_dev, %struct.sbridge_dev* %46, i32 0, i32 1
  %48 = load %struct.pci_dev**, %struct.pci_dev*** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.pci_dev*, %struct.pci_dev** %48, i64 %50
  %52 = load %struct.pci_dev*, %struct.pci_dev** %51, align 8
  %53 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @PCI_FUNC(i32 %54)
  %56 = load i32, i32* %7, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %77

58:                                               ; preds = %45
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.sbridge_dev*, %struct.sbridge_dev** %8, align 8
  %63 = getelementptr inbounds %struct.sbridge_dev, %struct.sbridge_dev* %62, i32 0, i32 1
  %64 = load %struct.pci_dev**, %struct.pci_dev*** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.pci_dev*, %struct.pci_dev** %64, i64 %66
  %68 = load %struct.pci_dev*, %struct.pci_dev** %67, align 8
  %69 = call i32 @debugf1(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %60, i32 %61, %struct.pci_dev* %68)
  %70 = load %struct.sbridge_dev*, %struct.sbridge_dev** %8, align 8
  %71 = getelementptr inbounds %struct.sbridge_dev, %struct.sbridge_dev* %70, i32 0, i32 1
  %72 = load %struct.pci_dev**, %struct.pci_dev*** %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.pci_dev*, %struct.pci_dev** %72, i64 %74
  %76 = load %struct.pci_dev*, %struct.pci_dev** %75, align 8
  store %struct.pci_dev* %76, %struct.pci_dev** %4, align 8
  br label %82

77:                                               ; preds = %45, %32
  br label %78

78:                                               ; preds = %77, %31
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %9, align 4
  br label %16

81:                                               ; preds = %16
  store %struct.pci_dev* null, %struct.pci_dev** %4, align 8
  br label %82

82:                                               ; preds = %81, %58, %14
  %83 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  ret %struct.pci_dev* %83
}

declare dso_local %struct.sbridge_dev* @get_sbridge_dev(i32) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @debugf1(i8*, i32, i32, i32, %struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
