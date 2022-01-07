; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/iseries/extr_iommu.c_iommu_table_getparms_iSeries.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/iseries/extr_iommu.c_iommu_table_getparms_iSeries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_table = type { i32, i64, i32, i32, i32, i32 }
%struct.iommu_table_cb = type { i64, i8, i8, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"PCI_DMA: TCE Table Allocation failed.\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"PCI_DMA: parms->size is zero, parms is 0x%p\00", align 1
@TCE_PAGE_SIZE = common dso_local global i32 0, align 4
@TCE_ENTRY_SIZE = common dso_local global i32 0, align 4
@TCE_VB = common dso_local global i32 0, align 4
@TCE_PCI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iommu_table_getparms_iSeries(i64 %0, i8 zeroext %1, i8 zeroext %2, %struct.iommu_table* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca %struct.iommu_table*, align 8
  %9 = alloca %struct.iommu_table_cb*, align 8
  store i64 %0, i64* %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  store %struct.iommu_table* %3, %struct.iommu_table** %8, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.iommu_table_cb* @kzalloc(i32 24, i32 %10)
  store %struct.iommu_table_cb* %11, %struct.iommu_table_cb** %9, align 8
  %12 = load %struct.iommu_table_cb*, %struct.iommu_table_cb** %9, align 8
  %13 = icmp eq %struct.iommu_table_cb* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %4
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.iommu_table_cb*, %struct.iommu_table_cb** %9, align 8
  %19 = getelementptr inbounds %struct.iommu_table_cb, %struct.iommu_table_cb* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load i8, i8* %6, align 1
  %21 = load %struct.iommu_table_cb*, %struct.iommu_table_cb** %9, align 8
  %22 = getelementptr inbounds %struct.iommu_table_cb, %struct.iommu_table_cb* %21, i32 0, i32 1
  store i8 %20, i8* %22, align 8
  %23 = load i8, i8* %7, align 1
  %24 = load %struct.iommu_table_cb*, %struct.iommu_table_cb** %9, align 8
  %25 = getelementptr inbounds %struct.iommu_table_cb, %struct.iommu_table_cb* %24, i32 0, i32 2
  store i8 %23, i8* %25, align 1
  %26 = load %struct.iommu_table_cb*, %struct.iommu_table_cb** %9, align 8
  %27 = call i32 @iseries_hv_addr(%struct.iommu_table_cb* %26)
  %28 = call i32 @HvCallXm_getTceTableParms(i32 %27)
  %29 = load %struct.iommu_table_cb*, %struct.iommu_table_cb** %9, align 8
  %30 = getelementptr inbounds %struct.iommu_table_cb, %struct.iommu_table_cb* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %16
  %34 = load %struct.iommu_table_cb*, %struct.iommu_table_cb** %9, align 8
  %35 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), %struct.iommu_table_cb* %34)
  br label %36

36:                                               ; preds = %33, %16
  %37 = load %struct.iommu_table_cb*, %struct.iommu_table_cb** %9, align 8
  %38 = getelementptr inbounds %struct.iommu_table_cb, %struct.iommu_table_cb* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @TCE_PAGE_SIZE, align 4
  %41 = mul nsw i32 %39, %40
  %42 = load i32, i32* @TCE_ENTRY_SIZE, align 4
  %43 = sdiv i32 %41, %42
  %44 = load %struct.iommu_table*, %struct.iommu_table** %8, align 8
  %45 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.iommu_table_cb*, %struct.iommu_table_cb** %9, align 8
  %47 = getelementptr inbounds %struct.iommu_table_cb, %struct.iommu_table_cb* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.iommu_table*, %struct.iommu_table** %8, align 8
  %50 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  %51 = load %struct.iommu_table_cb*, %struct.iommu_table_cb** %9, align 8
  %52 = getelementptr inbounds %struct.iommu_table_cb, %struct.iommu_table_cb* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.iommu_table*, %struct.iommu_table** %8, align 8
  %55 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %54, i32 0, i32 5
  store i32 %53, i32* %55, align 4
  %56 = load %struct.iommu_table_cb*, %struct.iommu_table_cb** %9, align 8
  %57 = getelementptr inbounds %struct.iommu_table_cb, %struct.iommu_table_cb* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.iommu_table*, %struct.iommu_table** %8, align 8
  %60 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 8
  %61 = load %struct.iommu_table*, %struct.iommu_table** %8, align 8
  %62 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %61, i32 0, i32 2
  store i32 1, i32* %62, align 8
  %63 = load i8, i8* %7, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %36
  %67 = load i32, i32* @TCE_VB, align 4
  br label %70

68:                                               ; preds = %36
  %69 = load i32, i32* @TCE_PCI, align 4
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi i32 [ %67, %66 ], [ %69, %68 ]
  %72 = load %struct.iommu_table*, %struct.iommu_table** %8, align 8
  %73 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  %74 = load %struct.iommu_table_cb*, %struct.iommu_table_cb** %9, align 8
  %75 = call i32 @kfree(%struct.iommu_table_cb* %74)
  ret void
}

declare dso_local %struct.iommu_table_cb* @kzalloc(i32, i32) #1

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i32 @HvCallXm_getTceTableParms(i32) #1

declare dso_local i32 @iseries_hv_addr(%struct.iommu_table_cb*) #1

declare dso_local i32 @kfree(%struct.iommu_table_cb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
