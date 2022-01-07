; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_iommu.c_tce_get_pSeriesLP.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_iommu.c_tce_get_pSeriesLP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_table = type { i64 }

@.str = private unnamed_addr constant [50 x i8] c"tce_get_pSeriesLP: plpar_tce_get failed. rc=%lld\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"\09index   = 0x%llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"\09tcenum  = 0x%llx\0A\00", align 1
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.iommu_table*, i64)* @tce_get_pSeriesLP to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tce_get_pSeriesLP(%struct.iommu_table* %0, i64 %1) #0 {
  %3 = alloca %struct.iommu_table*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.iommu_table* %0, %struct.iommu_table** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.iommu_table*, %struct.iommu_table** %3, align 8
  %8 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = trunc i64 %9 to i32
  %11 = load i64, i64* %4, align 8
  %12 = trunc i64 %11 to i32
  %13 = shl i32 %12, 12
  %14 = call i32 @plpar_tce_get(i32 %10, i32 %13, i64* %6)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %2
  %18 = call i64 (...) @printk_ratelimit()
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %17
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.iommu_table*, %struct.iommu_table** %3, align 8
  %24 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i32 @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load i64, i64* %4, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i32 @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @current, align 4
  %32 = call i64 (...) @__get_SP()
  %33 = inttoptr i64 %32 to i64*
  %34 = call i32 @show_stack(i32 %31, i64* %33)
  br label %35

35:                                               ; preds = %20, %17, %2
  %36 = load i64, i64* %6, align 8
  ret i64 %36
}

declare dso_local i32 @plpar_tce_get(i32, i32, i64*) #1

declare dso_local i64 @printk_ratelimit(...) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @show_stack(i32, i64*) #1

declare dso_local i64 @__get_SP(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
