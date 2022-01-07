; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_iommu-debug.c_dump_ioptable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_iommu-debug.c_dump_ioptable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu = type { i32 }

@PTRS_PER_IOPGD = common dso_local global i32 0, align 4
@IOPGD_TABLE = common dso_local global i32 0, align 4
@IOPGD_SHIFT = common dso_local global i32 0, align 4
@PTRS_PER_IOPTE = common dso_local global i32 0, align 4
@IOPTE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iommu*, i8*, i32)* @dump_ioptable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_ioptable(%struct.iommu* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.iommu*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.iommu* %0, %struct.iommu** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i8*, i8** %5, align 8
  store i8* %14, i8** %9, align 8
  %15 = load %struct.iommu*, %struct.iommu** %4, align 8
  %16 = getelementptr inbounds %struct.iommu, %struct.iommu* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.iommu*, %struct.iommu** %4, align 8
  %19 = call i32* @iopgd_offset(%struct.iommu* %18, i32 0)
  store i32* %19, i32** %8, align 8
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %81, %3
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @PTRS_PER_IOPGD, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %86

24:                                               ; preds = %20
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  br label %81

29:                                               ; preds = %24
  %30 = load i32*, i32** %8, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @IOPGD_TABLE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %47, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @IOPGD_SHIFT, align 4
  %38 = shl i32 %36, %37
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dump_ioptable_entry_one(i32 1, i32 %39, i32 %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  br label %87

46:                                               ; preds = %35
  br label %81

47:                                               ; preds = %29
  %48 = load i32*, i32** %8, align 8
  %49 = call i32* @iopte_offset(i32* %48, i32 0)
  store i32* %49, i32** %12, align 8
  store i32 0, i32* %10, align 4
  br label %50

50:                                               ; preds = %75, %47
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @PTRS_PER_IOPTE, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %80

54:                                               ; preds = %50
  %55 = load i32*, i32** %12, align 8
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  br label %75

59:                                               ; preds = %54
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @IOPGD_SHIFT, align 4
  %62 = shl i32 %60, %61
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @IOPTE_SHIFT, align 4
  %65 = shl i32 %63, %64
  %66 = add nsw i32 %62, %65
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = load i32*, i32** %8, align 8
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @dump_ioptable_entry_one(i32 2, i32 %67, i32 %69)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %59
  br label %87

74:                                               ; preds = %59
  br label %75

75:                                               ; preds = %74, %58
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  %78 = load i32*, i32** %12, align 8
  %79 = getelementptr inbounds i32, i32* %78, i32 1
  store i32* %79, i32** %12, align 8
  br label %50

80:                                               ; preds = %50
  br label %81

81:                                               ; preds = %80, %46, %28
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  %84 = load i32*, i32** %8, align 8
  %85 = getelementptr inbounds i32, i32* %84, i32 1
  store i32* %85, i32** %8, align 8
  br label %20

86:                                               ; preds = %20
  br label %87

87:                                               ; preds = %86, %73, %45
  %88 = load %struct.iommu*, %struct.iommu** %4, align 8
  %89 = getelementptr inbounds %struct.iommu, %struct.iommu* %88, i32 0, i32 0
  %90 = call i32 @spin_unlock(i32* %89)
  %91 = load i8*, i8** %9, align 8
  %92 = load i8*, i8** %5, align 8
  %93 = ptrtoint i8* %91 to i64
  %94 = ptrtoint i8* %92 to i64
  %95 = sub i64 %93, %94
  %96 = trunc i64 %95 to i32
  ret i32 %96
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32* @iopgd_offset(%struct.iommu*, i32) #1

declare dso_local i32 @dump_ioptable_entry_one(i32, i32, i32) #1

declare dso_local i32* @iopte_offset(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
