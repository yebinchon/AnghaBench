; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_mem_type_debug.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_bo.c_ttm_mem_type_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_bo_device = type { %struct.ttm_mem_type_manager* }
%struct.ttm_mem_type_manager = type { %struct.TYPE_2__*, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.ttm_mem_type_manager*, i32)* }

@.str = private unnamed_addr constant [18 x i8] c"    has_type: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"    use_type: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"    flags: 0x%08X\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"    gpu_offset: 0x%08lX\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"    size: %llu\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"    available_caching: 0x%08X\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"    default_caching: 0x%08X\0A\00", align 1
@TTM_PL_SYSTEM = common dso_local global i32 0, align 4
@TTM_PFX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ttm_bo_device*, i32)* @ttm_mem_type_debug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ttm_mem_type_debug(%struct.ttm_bo_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ttm_bo_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ttm_mem_type_manager*, align 8
  store %struct.ttm_bo_device* %0, %struct.ttm_bo_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %3, align 8
  %7 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %6, i32 0, i32 0
  %8 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %8, i64 %10
  store %struct.ttm_mem_type_manager* %11, %struct.ttm_mem_type_manager** %5, align 8
  %12 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %5, align 8
  %13 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %12, i32 0, i32 7
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %5, align 8
  %17 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %5, align 8
  %21 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @pr_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %22)
  %24 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %5, align 8
  %25 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %26)
  %28 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %5, align 8
  %29 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @pr_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %30)
  %32 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %5, align 8
  %33 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %34)
  %36 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %5, align 8
  %37 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @TTM_PL_SYSTEM, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %2
  %44 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %5, align 8
  %45 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32 (%struct.ttm_mem_type_manager*, i32)*, i32 (%struct.ttm_mem_type_manager*, i32)** %47, align 8
  %49 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %5, align 8
  %50 = load i32, i32* @TTM_PFX, align 4
  %51 = call i32 %48(%struct.ttm_mem_type_manager* %49, i32 %50)
  br label %52

52:                                               ; preds = %43, %2
  ret void
}

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
