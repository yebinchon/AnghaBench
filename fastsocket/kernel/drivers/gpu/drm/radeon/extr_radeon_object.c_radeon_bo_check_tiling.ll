; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_object.c_radeon_bo_check_tiling.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_object.c_radeon_bo_check_tiling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_bo = type { i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@RADEON_TILING_SURFACE = common dso_local global i32 0, align 4
@TTM_PL_VRAM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_bo_check_tiling(%struct.radeon_bo* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_bo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.radeon_bo* %0, %struct.radeon_bo** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.radeon_bo*, %struct.radeon_bo** %5, align 8
  %9 = call i32 @radeon_bo_is_reserved(%struct.radeon_bo* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br label %15

15:                                               ; preds = %11, %3
  %16 = phi i1 [ false, %3 ], [ %14, %11 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.radeon_bo*, %struct.radeon_bo** %5, align 8
  %20 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @RADEON_TILING_SURFACE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %65

26:                                               ; preds = %15
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load %struct.radeon_bo*, %struct.radeon_bo** %5, align 8
  %31 = call i32 @radeon_bo_clear_surface_reg(%struct.radeon_bo* %30)
  store i32 0, i32* %4, align 4
  br label %65

32:                                               ; preds = %26
  %33 = load %struct.radeon_bo*, %struct.radeon_bo** %5, align 8
  %34 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @TTM_PL_VRAM, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %32
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %65

44:                                               ; preds = %40
  %45 = load %struct.radeon_bo*, %struct.radeon_bo** %5, align 8
  %46 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp sge i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.radeon_bo*, %struct.radeon_bo** %5, align 8
  %51 = call i32 @radeon_bo_clear_surface_reg(%struct.radeon_bo* %50)
  br label %52

52:                                               ; preds = %49, %44
  store i32 0, i32* %4, align 4
  br label %65

53:                                               ; preds = %32
  %54 = load %struct.radeon_bo*, %struct.radeon_bo** %5, align 8
  %55 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp sge i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %58
  store i32 0, i32* %4, align 4
  br label %65

62:                                               ; preds = %58, %53
  %63 = load %struct.radeon_bo*, %struct.radeon_bo** %5, align 8
  %64 = call i32 @radeon_bo_get_surface_reg(%struct.radeon_bo* %63)
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %62, %61, %52, %43, %29, %25
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @radeon_bo_is_reserved(%struct.radeon_bo*) #1

declare dso_local i32 @radeon_bo_clear_surface_reg(%struct.radeon_bo*) #1

declare dso_local i32 @radeon_bo_get_surface_reg(%struct.radeon_bo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
