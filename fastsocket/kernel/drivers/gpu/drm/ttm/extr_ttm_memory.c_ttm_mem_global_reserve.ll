; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_memory.c_ttm_mem_global_reserve.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_memory.c_ttm_mem_global_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_mem_global = type { i32, i32, %struct.ttm_mem_zone** }
%struct.ttm_mem_zone = type { i64, i64, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_mem_global*, %struct.ttm_mem_zone*, i64, i32)* @ttm_mem_global_reserve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttm_mem_global_reserve(%struct.ttm_mem_global* %0, %struct.ttm_mem_zone* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.ttm_mem_global*, align 8
  %6 = alloca %struct.ttm_mem_zone*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ttm_mem_zone*, align 8
  store %struct.ttm_mem_global* %0, %struct.ttm_mem_global** %5, align 8
  store %struct.ttm_mem_zone* %1, %struct.ttm_mem_zone** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %10, align 4
  %15 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %5, align 8
  %16 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %15, i32 0, i32 1
  %17 = call i32 @spin_lock(i32* %16)
  store i32 0, i32* %11, align 4
  br label %18

18:                                               ; preds = %60, %4
  %19 = load i32, i32* %11, align 4
  %20 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %5, align 8
  %21 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ult i32 %19, %22
  br i1 %23, label %24, label %63

24:                                               ; preds = %18
  %25 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %5, align 8
  %26 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %25, i32 0, i32 2
  %27 = load %struct.ttm_mem_zone**, %struct.ttm_mem_zone*** %26, align 8
  %28 = load i32, i32* %11, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %27, i64 %29
  %31 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %30, align 8
  store %struct.ttm_mem_zone* %31, %struct.ttm_mem_zone** %12, align 8
  %32 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %6, align 8
  %33 = icmp ne %struct.ttm_mem_zone* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %24
  %35 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %12, align 8
  %36 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %6, align 8
  %37 = icmp ne %struct.ttm_mem_zone* %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %60

39:                                               ; preds = %34, %24
  %40 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %41 = call i64 @capable(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %12, align 8
  %45 = getelementptr inbounds %struct.ttm_mem_zone, %struct.ttm_mem_zone* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  br label %51

47:                                               ; preds = %39
  %48 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %12, align 8
  %49 = getelementptr inbounds %struct.ttm_mem_zone, %struct.ttm_mem_zone* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  br label %51

51:                                               ; preds = %47, %43
  %52 = phi i64 [ %46, %43 ], [ %50, %47 ]
  store i64 %52, i64* %9, align 8
  %53 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %12, align 8
  %54 = getelementptr inbounds %struct.ttm_mem_zone, %struct.ttm_mem_zone* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %9, align 8
  %57 = icmp sgt i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %99

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59, %38
  %61 = load i32, i32* %11, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %11, align 4
  br label %18

63:                                               ; preds = %18
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %98

66:                                               ; preds = %63
  store i32 0, i32* %11, align 4
  br label %67

67:                                               ; preds = %94, %66
  %68 = load i32, i32* %11, align 4
  %69 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %5, align 8
  %70 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp ult i32 %68, %71
  br i1 %72, label %73, label %97

73:                                               ; preds = %67
  %74 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %5, align 8
  %75 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %74, i32 0, i32 2
  %76 = load %struct.ttm_mem_zone**, %struct.ttm_mem_zone*** %75, align 8
  %77 = load i32, i32* %11, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %76, i64 %78
  %80 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %79, align 8
  store %struct.ttm_mem_zone* %80, %struct.ttm_mem_zone** %12, align 8
  %81 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %6, align 8
  %82 = icmp ne %struct.ttm_mem_zone* %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %73
  %84 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %12, align 8
  %85 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %6, align 8
  %86 = icmp ne %struct.ttm_mem_zone* %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  br label %94

88:                                               ; preds = %83, %73
  %89 = load i64, i64* %7, align 8
  %90 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %12, align 8
  %91 = getelementptr inbounds %struct.ttm_mem_zone, %struct.ttm_mem_zone* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %92, %89
  store i64 %93, i64* %91, align 8
  br label %94

94:                                               ; preds = %88, %87
  %95 = load i32, i32* %11, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %11, align 4
  br label %67

97:                                               ; preds = %67
  br label %98

98:                                               ; preds = %97, %63
  store i32 0, i32* %10, align 4
  br label %99

99:                                               ; preds = %98, %58
  %100 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %5, align 8
  %101 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %100, i32 0, i32 1
  %102 = call i32 @spin_unlock(i32* %101)
  %103 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %5, align 8
  %104 = call i32 @ttm_check_swapping(%struct.ttm_mem_global* %103)
  %105 = load i32, i32* %10, align 4
  ret i32 %105
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @capable(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ttm_check_swapping(%struct.ttm_mem_global*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
