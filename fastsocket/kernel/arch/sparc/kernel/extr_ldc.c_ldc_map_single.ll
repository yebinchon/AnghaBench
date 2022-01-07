; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ldc.c_ldc_map_single.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ldc.c_ldc_map_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ldc_channel = type { %struct.ldc_iommu }
%struct.ldc_iommu = type { i32, i32 }
%struct.ldc_trans_cookie = type { i32 }
%struct.ldc_mtable_entry = type { i32 }
%struct.cookie_state = type { i32, i32, %struct.ldc_mtable_entry*, i32, i32, %struct.ldc_trans_cookie* }

@LDC_MAP_ALL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldc_map_single(%struct.ldc_channel* %0, i8* %1, i32 %2, %struct.ldc_trans_cookie* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ldc_channel*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ldc_trans_cookie*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.ldc_mtable_entry*, align 8
  %18 = alloca %struct.cookie_state, align 8
  %19 = alloca %struct.ldc_iommu*, align 8
  store %struct.ldc_channel* %0, %struct.ldc_channel** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.ldc_trans_cookie* %3, %struct.ldc_trans_cookie** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = load i32, i32* @LDC_MAP_ALL, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %6
  %26 = load i32, i32* %12, align 4
  %27 = icmp slt i32 %26, 1
  br i1 %27, label %28, label %31

28:                                               ; preds = %25, %6
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %101

31:                                               ; preds = %25
  %32 = load i8*, i8** %9, align 8
  %33 = call i64 @__pa(i8* %32)
  store i64 %33, i64* %15, align 8
  %34 = load i64, i64* %15, align 8
  %35 = load i32, i32* %10, align 4
  %36 = zext i32 %35 to i64
  %37 = or i64 %34, %36
  %38 = and i64 %37, 7
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load i32, i32* @EFAULT, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %7, align 4
  br label %101

43:                                               ; preds = %31
  %44 = load i64, i64* %15, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i64 @pages_in_region(i64 %44, i32 %45)
  store i64 %46, i64* %14, align 8
  %47 = load %struct.ldc_channel*, %struct.ldc_channel** %8, align 8
  %48 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %47, i32 0, i32 0
  store %struct.ldc_iommu* %48, %struct.ldc_iommu** %19, align 8
  %49 = load %struct.ldc_iommu*, %struct.ldc_iommu** %19, align 8
  %50 = getelementptr inbounds %struct.ldc_iommu, %struct.ldc_iommu* %49, i32 0, i32 1
  %51 = load i64, i64* %16, align 8
  %52 = call i32 @spin_lock_irqsave(i32* %50, i64 %51)
  %53 = load %struct.ldc_iommu*, %struct.ldc_iommu** %19, align 8
  %54 = load i64, i64* %14, align 8
  %55 = call %struct.ldc_mtable_entry* @alloc_npages(%struct.ldc_iommu* %53, i64 %54)
  store %struct.ldc_mtable_entry* %55, %struct.ldc_mtable_entry** %17, align 8
  %56 = load %struct.ldc_iommu*, %struct.ldc_iommu** %19, align 8
  %57 = getelementptr inbounds %struct.ldc_iommu, %struct.ldc_iommu* %56, i32 0, i32 1
  %58 = load i64, i64* %16, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  %60 = load %struct.ldc_mtable_entry*, %struct.ldc_mtable_entry** %17, align 8
  %61 = icmp ne %struct.ldc_mtable_entry* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %43
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %7, align 4
  br label %101

65:                                               ; preds = %43
  %66 = load %struct.ldc_iommu*, %struct.ldc_iommu** %19, align 8
  %67 = getelementptr inbounds %struct.ldc_iommu, %struct.ldc_iommu* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.cookie_state, %struct.cookie_state* %18, i32 0, i32 0
  store i32 %68, i32* %69, align 8
  %70 = load %struct.ldc_trans_cookie*, %struct.ldc_trans_cookie** %11, align 8
  %71 = getelementptr inbounds %struct.cookie_state, %struct.cookie_state* %18, i32 0, i32 5
  store %struct.ldc_trans_cookie* %70, %struct.ldc_trans_cookie** %71, align 8
  %72 = load i32, i32* %13, align 4
  %73 = call i32 @perm_to_mte(i32 %72)
  %74 = getelementptr inbounds %struct.cookie_state, %struct.cookie_state* %18, i32 0, i32 4
  store i32 %73, i32* %74, align 4
  %75 = getelementptr inbounds %struct.cookie_state, %struct.cookie_state* %18, i32 0, i32 3
  store i32 -1, i32* %75, align 8
  %76 = load %struct.ldc_mtable_entry*, %struct.ldc_mtable_entry** %17, align 8
  %77 = load %struct.ldc_iommu*, %struct.ldc_iommu** %19, align 8
  %78 = getelementptr inbounds %struct.ldc_iommu, %struct.ldc_iommu* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = sub i64 0, %80
  %82 = getelementptr inbounds %struct.ldc_mtable_entry, %struct.ldc_mtable_entry* %76, i64 %81
  %83 = getelementptr inbounds %struct.cookie_state, %struct.cookie_state* %18, i32 0, i32 2
  store %struct.ldc_mtable_entry* %82, %struct.ldc_mtable_entry** %83, align 8
  %84 = getelementptr inbounds %struct.cookie_state, %struct.cookie_state* %18, i32 0, i32 1
  store i32 0, i32* %84, align 4
  %85 = load i64, i64* %15, align 8
  %86 = load i64, i64* @PAGE_MASK, align 8
  %87 = and i64 %85, %86
  %88 = load i64, i64* %15, align 8
  %89 = load i64, i64* @PAGE_MASK, align 8
  %90 = xor i64 %89, -1
  %91 = and i64 %88, %90
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @fill_cookies(%struct.cookie_state* %18, i64 %87, i64 %91, i32 %92)
  %94 = getelementptr inbounds %struct.cookie_state, %struct.cookie_state* %18, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 1
  %97 = zext i1 %96 to i32
  %98 = call i32 @BUG_ON(i32 %97)
  %99 = getelementptr inbounds %struct.cookie_state, %struct.cookie_state* %18, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %7, align 4
  br label %101

101:                                              ; preds = %65, %62, %40, %28
  %102 = load i32, i32* %7, align 4
  ret i32 %102
}

declare dso_local i64 @__pa(i8*) #1

declare dso_local i64 @pages_in_region(i64, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.ldc_mtable_entry* @alloc_npages(%struct.ldc_iommu*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @perm_to_mte(i32) #1

declare dso_local i32 @fill_cookies(%struct.cookie_state*, i64, i64, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
