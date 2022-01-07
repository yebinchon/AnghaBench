; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_sis5513.c_sis_cable_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_sis5513.c_sis_cable_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sis_laptop = type { i64, i64, i64 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.pci_dev = type { i64, i64, i64 }

@sis_laptop = common dso_local global %struct.sis_laptop* null, align 8
@ATA_CBL_PATA40_SHORT = common dso_local global i32 0, align 4
@chipset_family = common dso_local global i64 0, align 8
@ATA_133 = common dso_local global i64 0, align 8
@ATA_66 = common dso_local global i64 0, align 8
@ATA_CBL_PATA80 = common dso_local global i32 0, align 4
@ATA_CBL_PATA40 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @sis_cable_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sis_cable_detect(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.sis_laptop*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.pci_dev* @to_pci_dev(i32 %13)
  store %struct.pci_dev* %14, %struct.pci_dev** %4, align 8
  %15 = load %struct.sis_laptop*, %struct.sis_laptop** @sis_laptop, align 8
  %16 = getelementptr inbounds %struct.sis_laptop, %struct.sis_laptop* %15, i64 0
  store %struct.sis_laptop* %16, %struct.sis_laptop** %5, align 8
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %48, %1
  %18 = load %struct.sis_laptop*, %struct.sis_laptop** %5, align 8
  %19 = getelementptr inbounds %struct.sis_laptop, %struct.sis_laptop* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %51

22:                                               ; preds = %17
  %23 = load %struct.sis_laptop*, %struct.sis_laptop** %5, align 8
  %24 = getelementptr inbounds %struct.sis_laptop, %struct.sis_laptop* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %27 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %22
  %31 = load %struct.sis_laptop*, %struct.sis_laptop** %5, align 8
  %32 = getelementptr inbounds %struct.sis_laptop, %struct.sis_laptop* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %35 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %30
  %39 = load %struct.sis_laptop*, %struct.sis_laptop** %5, align 8
  %40 = getelementptr inbounds %struct.sis_laptop, %struct.sis_laptop* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %43 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %41, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i32, i32* @ATA_CBL_PATA40_SHORT, align 4
  store i32 %47, i32* %2, align 4
  br label %99

48:                                               ; preds = %38, %30, %22
  %49 = load %struct.sis_laptop*, %struct.sis_laptop** %5, align 8
  %50 = getelementptr inbounds %struct.sis_laptop, %struct.sis_laptop* %49, i32 1
  store %struct.sis_laptop* %50, %struct.sis_laptop** %5, align 8
  br label %17

51:                                               ; preds = %17
  %52 = load i64, i64* @chipset_family, align 8
  %53 = load i64, i64* @ATA_133, align 8
  %54 = icmp sge i64 %52, %53
  br i1 %54, label %55, label %70

55:                                               ; preds = %51
  store i32 0, i32* %7, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 82, i32 80
  store i32 %61, i32* %8, align 4
  %62 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @pci_read_config_word(%struct.pci_dev* %62, i32 %63, i32* %7)
  %65 = load i32, i32* %7, align 4
  %66 = and i32 %65, 32768
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 0, i32 1
  store i32 %69, i32* %6, align 4
  br label %90

70:                                               ; preds = %51
  %71 = load i64, i64* @chipset_family, align 8
  %72 = load i64, i64* @ATA_66, align 8
  %73 = icmp sge i64 %71, %72
  br i1 %73, label %74, label %89

74:                                               ; preds = %70
  store i32 0, i32* %9, align 4
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i32 32, i32 16
  store i32 %80, i32* %10, align 4
  %81 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %82 = call i32 @pci_read_config_byte(%struct.pci_dev* %81, i32 72, i32* %9)
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %10, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i32 0, i32 1
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %74, %70
  br label %90

90:                                               ; preds = %89, %55
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = load i32, i32* @ATA_CBL_PATA80, align 4
  br label %97

95:                                               ; preds = %90
  %96 = load i32, i32* @ATA_CBL_PATA40, align 4
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi i32 [ %94, %93 ], [ %96, %95 ]
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %97, %46
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
