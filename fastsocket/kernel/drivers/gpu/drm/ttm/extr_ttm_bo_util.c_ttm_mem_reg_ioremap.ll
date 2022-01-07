; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo_util.c_ttm_mem_reg_ioremap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo_util.c_ttm_mem_reg_ioremap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_bo_device = type { %struct.ttm_mem_type_manager* }
%struct.ttm_mem_type_manager = type { i32 }
%struct.ttm_mem_reg = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64, i8*, i32 }

@TTM_PL_FLAG_WC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_mem_reg_ioremap(%struct.ttm_bo_device* %0, %struct.ttm_mem_reg* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ttm_bo_device*, align 8
  %6 = alloca %struct.ttm_mem_reg*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.ttm_mem_type_manager*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.ttm_bo_device* %0, %struct.ttm_bo_device** %5, align 8
  store %struct.ttm_mem_reg* %1, %struct.ttm_mem_reg** %6, align 8
  store i8** %2, i8*** %7, align 8
  %11 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %5, align 8
  %12 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %11, i32 0, i32 0
  %13 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %12, align 8
  %14 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %6, align 8
  %15 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %13, i64 %16
  store %struct.ttm_mem_type_manager* %17, %struct.ttm_mem_type_manager** %8, align 8
  %18 = load i8**, i8*** %7, align 8
  store i8* null, i8** %18, align 8
  %19 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %8, align 8
  %20 = call i32 @ttm_mem_io_lock(%struct.ttm_mem_type_manager* %19, i32 0)
  %21 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %5, align 8
  %22 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %6, align 8
  %23 = call i32 @ttm_mem_io_reserve(%struct.ttm_bo_device* %21, %struct.ttm_mem_reg* %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %8, align 8
  %25 = call i32 @ttm_mem_io_unlock(%struct.ttm_mem_type_manager* %24)
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %3
  %29 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %6, align 8
  %30 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %28, %3
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %4, align 4
  br label %101

36:                                               ; preds = %28
  %37 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %6, align 8
  %38 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 3
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %6, align 8
  %44 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 3
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %10, align 8
  br label %98

47:                                               ; preds = %36
  %48 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %6, align 8
  %49 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @TTM_PL_FLAG_WC, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %47
  %55 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %6, align 8
  %56 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %6, align 8
  %60 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %58, %62
  %64 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %6, align 8
  %65 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i8* @ioremap_wc(i64 %63, i32 %67)
  store i8* %68, i8** %10, align 8
  br label %84

69:                                               ; preds = %47
  %70 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %6, align 8
  %71 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %6, align 8
  %75 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %73, %77
  %79 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %6, align 8
  %80 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i8* @ioremap_nocache(i64 %78, i32 %82)
  store i8* %83, i8** %10, align 8
  br label %84

84:                                               ; preds = %69, %54
  %85 = load i8*, i8** %10, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %97, label %87

87:                                               ; preds = %84
  %88 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %8, align 8
  %89 = call i32 @ttm_mem_io_lock(%struct.ttm_mem_type_manager* %88, i32 0)
  %90 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %5, align 8
  %91 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %6, align 8
  %92 = call i32 @ttm_mem_io_free(%struct.ttm_bo_device* %90, %struct.ttm_mem_reg* %91)
  %93 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %8, align 8
  %94 = call i32 @ttm_mem_io_unlock(%struct.ttm_mem_type_manager* %93)
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %4, align 4
  br label %101

97:                                               ; preds = %84
  br label %98

98:                                               ; preds = %97, %42
  %99 = load i8*, i8** %10, align 8
  %100 = load i8**, i8*** %7, align 8
  store i8* %99, i8** %100, align 8
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %98, %87, %34
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @ttm_mem_io_lock(%struct.ttm_mem_type_manager*, i32) #1

declare dso_local i32 @ttm_mem_io_reserve(%struct.ttm_bo_device*, %struct.ttm_mem_reg*) #1

declare dso_local i32 @ttm_mem_io_unlock(%struct.ttm_mem_type_manager*) #1

declare dso_local i8* @ioremap_wc(i64, i32) #1

declare dso_local i8* @ioremap_nocache(i64, i32) #1

declare dso_local i32 @ttm_mem_io_free(%struct.ttm_bo_device*, %struct.ttm_mem_reg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
