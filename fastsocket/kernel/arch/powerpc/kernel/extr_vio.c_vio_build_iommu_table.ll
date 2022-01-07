; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_vio.c_vio_build_iommu_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_vio.c_vio_build_iommu_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_table = type { i64, i64, i32, i32, i64, i32 }
%struct.vio_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@FW_FEATURE_ISERIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"ibm,my-dma-window\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@IOMMU_PAGE_SHIFT = common dso_local global i64 0, align 8
@TCE_VB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iommu_table* (%struct.vio_dev*)* @vio_build_iommu_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iommu_table* @vio_build_iommu_table(%struct.vio_dev* %0) #0 {
  %2 = alloca %struct.iommu_table*, align 8
  %3 = alloca %struct.vio_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iommu_table*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.vio_dev* %0, %struct.vio_dev** %3, align 8
  %8 = load i32, i32* @FW_FEATURE_ISERIES, align 4
  %9 = call i64 @firmware_has_feature(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.vio_dev*, %struct.vio_dev** %3, align 8
  %13 = call %struct.iommu_table* @vio_build_iommu_table_iseries(%struct.vio_dev* %12)
  store %struct.iommu_table* %13, %struct.iommu_table** %2, align 8
  br label %59

14:                                               ; preds = %1
  %15 = load %struct.vio_dev*, %struct.vio_dev** %3, align 8
  %16 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @of_get_property(i32 %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* null)
  store i8* %20, i8** %4, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %14
  store %struct.iommu_table* null, %struct.iommu_table** %2, align 8
  br label %59

24:                                               ; preds = %14
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.iommu_table* @kzalloc(i32 40, i32 %25)
  store %struct.iommu_table* %26, %struct.iommu_table** %5, align 8
  %27 = load %struct.iommu_table*, %struct.iommu_table** %5, align 8
  %28 = icmp eq %struct.iommu_table* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store %struct.iommu_table* null, %struct.iommu_table** %2, align 8
  br label %59

30:                                               ; preds = %24
  %31 = load %struct.vio_dev*, %struct.vio_dev** %3, align 8
  %32 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %4, align 8
  %37 = load %struct.iommu_table*, %struct.iommu_table** %5, align 8
  %38 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %37, i32 0, i32 5
  %39 = call i32 @of_parse_dma_window(i32 %35, i8* %36, i32* %38, i64* %6, i64* %7)
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* @IOMMU_PAGE_SHIFT, align 8
  %42 = lshr i64 %40, %41
  %43 = load %struct.iommu_table*, %struct.iommu_table** %5, align 8
  %44 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* @IOMMU_PAGE_SHIFT, align 8
  %47 = lshr i64 %45, %46
  %48 = load %struct.iommu_table*, %struct.iommu_table** %5, align 8
  %49 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  %50 = load %struct.iommu_table*, %struct.iommu_table** %5, align 8
  %51 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %50, i32 0, i32 4
  store i64 0, i64* %51, align 8
  %52 = load i32, i32* @TCE_VB, align 4
  %53 = load %struct.iommu_table*, %struct.iommu_table** %5, align 8
  %54 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load %struct.iommu_table*, %struct.iommu_table** %5, align 8
  %56 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %55, i32 0, i32 2
  store i32 16, i32* %56, align 8
  %57 = load %struct.iommu_table*, %struct.iommu_table** %5, align 8
  %58 = call %struct.iommu_table* @iommu_init_table(%struct.iommu_table* %57, i32 -1)
  store %struct.iommu_table* %58, %struct.iommu_table** %2, align 8
  br label %59

59:                                               ; preds = %30, %29, %23, %11
  %60 = load %struct.iommu_table*, %struct.iommu_table** %2, align 8
  ret %struct.iommu_table* %60
}

declare dso_local i64 @firmware_has_feature(i32) #1

declare dso_local %struct.iommu_table* @vio_build_iommu_table_iseries(%struct.vio_dev*) #1

declare dso_local i8* @of_get_property(i32, i8*, i32*) #1

declare dso_local %struct.iommu_table* @kzalloc(i32, i32) #1

declare dso_local i32 @of_parse_dma_window(i32, i8*, i32*, i64*, i64*) #1

declare dso_local %struct.iommu_table* @iommu_init_table(%struct.iommu_table*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
