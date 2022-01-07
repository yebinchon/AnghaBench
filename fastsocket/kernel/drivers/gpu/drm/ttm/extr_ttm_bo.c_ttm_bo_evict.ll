; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_evict.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_bo_evict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { i32, %struct.ttm_mem_reg, %struct.ttm_bo_device* }
%struct.ttm_mem_reg = type { %struct.TYPE_3__, i32* }
%struct.TYPE_3__ = type { i32, i64 }
%struct.ttm_bo_device = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 (%struct.ttm_buffer_object*, %struct.ttm_placement*)* }
%struct.ttm_placement = type { i64, i64, i64, i64 }

@ERESTARTSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Failed to expire sync object before buffer eviction\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"Failed to find memory space for buffer 0x%p eviction\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Buffer eviction failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_buffer_object*, i32, i32)* @ttm_bo_evict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttm_bo_evict(%struct.ttm_buffer_object* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ttm_buffer_object*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ttm_bo_device*, align 8
  %8 = alloca %struct.ttm_mem_reg, align 8
  %9 = alloca %struct.ttm_placement, align 8
  %10 = alloca i32, align 4
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %12 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %11, i32 0, i32 2
  %13 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %12, align 8
  store %struct.ttm_bo_device* %13, %struct.ttm_bo_device** %7, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %7, align 8
  %15 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %14, i32 0, i32 1
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @ttm_bo_wait(%struct.ttm_buffer_object* %17, i32 0, i32 %18, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %7, align 8
  %22 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %21, i32 0, i32 1
  %23 = call i32 @spin_unlock(i32* %22)
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %3
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @ERESTARTSYS, align 4
  %32 = sub nsw i32 0, %31
  %33 = icmp ne i32 %30, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %29
  br label %101

37:                                               ; preds = %3
  %38 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %39 = call i32 @ttm_bo_is_reserved(%struct.ttm_buffer_object* %38)
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 @BUG_ON(i32 %42)
  %44 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %45 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %44, i32 0, i32 1
  %46 = bitcast %struct.ttm_mem_reg* %8 to i8*
  %47 = bitcast %struct.ttm_mem_reg* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 8 %47, i64 24, i1 false)
  %48 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %8, i32 0, i32 1
  store i32* null, i32** %48, align 8
  %49 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %8, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i32 0, i32* %50, align 8
  %51 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %8, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  %53 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %9, i32 0, i32 3
  store i64 0, i64* %53, align 8
  %54 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %9, i32 0, i32 2
  store i64 0, i64* %54, align 8
  %55 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %9, i32 0, i32 1
  store i64 0, i64* %55, align 8
  %56 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %9, i32 0, i32 0
  store i64 0, i64* %56, align 8
  %57 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %7, align 8
  %58 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32 (%struct.ttm_buffer_object*, %struct.ttm_placement*)*, i32 (%struct.ttm_buffer_object*, %struct.ttm_placement*)** %60, align 8
  %62 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %63 = call i32 %61(%struct.ttm_buffer_object* %62, %struct.ttm_placement* %9)
  %64 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @ttm_bo_mem_space(%struct.ttm_buffer_object* %64, %struct.ttm_placement* %9, %struct.ttm_mem_reg* %8, i32 %65, i32 %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %37
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @ERESTARTSYS, align 4
  %73 = sub nsw i32 0, %72
  %74 = icmp ne i32 %71, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %77 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), %struct.ttm_buffer_object* %76)
  %78 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %79 = call i32 @ttm_bo_mem_space_debug(%struct.ttm_buffer_object* %78, %struct.ttm_placement* %9)
  br label %80

80:                                               ; preds = %75, %70
  br label %101

81:                                               ; preds = %37
  %82 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @ttm_bo_handle_move_mem(%struct.ttm_buffer_object* %82, %struct.ttm_mem_reg* %8, i32 1, i32 %83, i32 %84)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %81
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* @ERESTARTSYS, align 4
  %91 = sub nsw i32 0, %90
  %92 = icmp ne i32 %89, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  %94 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %88
  %96 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %97 = call i32 @ttm_bo_mem_put(%struct.ttm_buffer_object* %96, %struct.ttm_mem_reg* %8)
  br label %101

98:                                               ; preds = %81
  %99 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %100 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %99, i32 0, i32 0
  store i32 1, i32* %100, align 8
  br label %101

101:                                              ; preds = %98, %95, %80, %36
  %102 = load i32, i32* %10, align 4
  ret i32 %102
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ttm_bo_wait(%struct.ttm_buffer_object*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ttm_bo_is_reserved(%struct.ttm_buffer_object*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ttm_bo_mem_space(%struct.ttm_buffer_object*, %struct.ttm_placement*, %struct.ttm_mem_reg*, i32, i32) #1

declare dso_local i32 @ttm_bo_mem_space_debug(%struct.ttm_buffer_object*, %struct.ttm_placement*) #1

declare dso_local i32 @ttm_bo_handle_move_mem(%struct.ttm_buffer_object*, %struct.ttm_mem_reg*, i32, i32, i32) #1

declare dso_local i32 @ttm_bo_mem_put(%struct.ttm_buffer_object*, %struct.ttm_mem_reg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
