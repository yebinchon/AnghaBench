; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_object.c_radeon_bo_unpin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_object.c_radeon_bo_unpin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_bo = type { %struct.TYPE_3__*, %struct.TYPE_4__, i32, i32*, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"%p unpin not necessary\0A\00", align 1
@TTM_PL_FLAG_NO_EVICT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"%p validate failed for unpin\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_bo_unpin(%struct.radeon_bo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_bo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.radeon_bo* %0, %struct.radeon_bo** %3, align 8
  %6 = load %struct.radeon_bo*, %struct.radeon_bo** %3, align 8
  %7 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %6, i32 0, i32 4
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %1
  %11 = load %struct.radeon_bo*, %struct.radeon_bo** %3, align 8
  %12 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.radeon_bo*, %struct.radeon_bo** %3, align 8
  %17 = call i32 @dev_warn(i32 %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.radeon_bo* %16)
  store i32 0, i32* %2, align 4
  br label %71

18:                                               ; preds = %1
  %19 = load %struct.radeon_bo*, %struct.radeon_bo** %3, align 8
  %20 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, -1
  store i64 %22, i64* %20, align 8
  %23 = load %struct.radeon_bo*, %struct.radeon_bo** %3, align 8
  %24 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %71

28:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %47, %28
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.radeon_bo*, %struct.radeon_bo** %3, align 8
  %32 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %30, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %29
  %37 = load i32, i32* @TTM_PL_FLAG_NO_EVICT, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.radeon_bo*, %struct.radeon_bo** %3, align 8
  %40 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %38
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %36
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %29

50:                                               ; preds = %29
  %51 = load %struct.radeon_bo*, %struct.radeon_bo** %3, align 8
  %52 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %51, i32 0, i32 2
  %53 = load %struct.radeon_bo*, %struct.radeon_bo** %3, align 8
  %54 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %53, i32 0, i32 1
  %55 = call i32 @ttm_bo_validate(i32* %52, %struct.TYPE_4__* %54, i32 0, i32 0)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i64 @unlikely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %50
  %62 = load %struct.radeon_bo*, %struct.radeon_bo** %3, align 8
  %63 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %62, i32 0, i32 0
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.radeon_bo*, %struct.radeon_bo** %3, align 8
  %68 = call i32 @dev_err(i32 %66, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), %struct.radeon_bo* %67)
  br label %69

69:                                               ; preds = %61, %50
  %70 = load i32, i32* %4, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %69, %27, %10
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @dev_warn(i32, i8*, %struct.radeon_bo*) #1

declare dso_local i32 @ttm_bo_validate(i32*, %struct.TYPE_4__*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32, i8*, %struct.radeon_bo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
