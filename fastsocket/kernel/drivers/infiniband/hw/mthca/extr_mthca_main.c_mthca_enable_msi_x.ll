; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_main.c_mthca_enable_msi_x.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_main.c_mthca_enable_msi_x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.msix_entry = type { i32, i32 }

@.str = private unnamed_addr constant [50 x i8] c"Only %d MSI-X vectors available, not using MSI-X\0A\00", align 1
@MTHCA_EQ_COMP = common dso_local global i64 0, align 8
@MTHCA_EQ_ASYNC = common dso_local global i64 0, align 8
@MTHCA_EQ_CMD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mthca_dev*)* @mthca_enable_msi_x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mthca_enable_msi_x(%struct.mthca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mthca_dev*, align 8
  %4 = alloca [3 x %struct.msix_entry], align 16
  %5 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %3, align 8
  %6 = getelementptr inbounds [3 x %struct.msix_entry], [3 x %struct.msix_entry]* %4, i64 0, i64 0
  %7 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %6, i32 0, i32 0
  store i32 0, i32* %7, align 16
  %8 = getelementptr inbounds [3 x %struct.msix_entry], [3 x %struct.msix_entry]* %4, i64 0, i64 1
  %9 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %8, i32 0, i32 0
  store i32 1, i32* %9, align 8
  %10 = getelementptr inbounds [3 x %struct.msix_entry], [3 x %struct.msix_entry]* %4, i64 0, i64 2
  %11 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %10, i32 0, i32 0
  store i32 2, i32* %11, align 16
  %12 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %13 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = getelementptr inbounds [3 x %struct.msix_entry], [3 x %struct.msix_entry]* %4, i64 0, i64 0
  %16 = getelementptr inbounds [3 x %struct.msix_entry], [3 x %struct.msix_entry]* %4, i64 0, i64 0
  %17 = call i32 @ARRAY_SIZE(%struct.msix_entry* %16)
  %18 = call i32 @pci_enable_msix(i32 %14, %struct.msix_entry* %15, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @mthca_info(%struct.mthca_dev* %25, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %24, %21
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %61

30:                                               ; preds = %1
  %31 = getelementptr inbounds [3 x %struct.msix_entry], [3 x %struct.msix_entry]* %4, i64 0, i64 0
  %32 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %35 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = load i64, i64* @MTHCA_EQ_COMP, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32 %33, i32* %40, align 4
  %41 = getelementptr inbounds [3 x %struct.msix_entry], [3 x %struct.msix_entry]* %4, i64 0, i64 1
  %42 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %45 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = load i64, i64* @MTHCA_EQ_ASYNC, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i32 %43, i32* %50, align 4
  %51 = getelementptr inbounds [3 x %struct.msix_entry], [3 x %struct.msix_entry]* %4, i64 0, i64 2
  %52 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %55 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = load i64, i64* @MTHCA_EQ_CMD, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i32 %53, i32* %60, align 4
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %30, %28
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @pci_enable_msix(i32, %struct.msix_entry*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.msix_entry*) #1

declare dso_local i32 @mthca_info(%struct.mthca_dev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
