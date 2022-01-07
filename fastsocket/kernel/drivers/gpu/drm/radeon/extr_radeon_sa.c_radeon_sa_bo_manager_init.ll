; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_sa.c_radeon_sa_bo_manager_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_sa.c_radeon_sa_bo_manager_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_sa_manager = type { i32, i32*, i32*, i32, i32*, i32, i32 }

@RADEON_NUM_RINGS = common dso_local global i32 0, align 4
@RADEON_GPU_PAGE_SIZE = common dso_local global i32 0, align 4
@RADEON_GEM_DOMAIN_CPU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"(%d) failed to allocate bo for manager\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_sa_bo_manager_init(%struct.radeon_device* %0, %struct.radeon_sa_manager* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca %struct.radeon_sa_manager*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %6, align 8
  store %struct.radeon_sa_manager* %1, %struct.radeon_sa_manager** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %7, align 8
  %13 = getelementptr inbounds %struct.radeon_sa_manager, %struct.radeon_sa_manager* %12, i32 0, i32 6
  %14 = call i32 @init_waitqueue_head(i32* %13)
  %15 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %7, align 8
  %16 = getelementptr inbounds %struct.radeon_sa_manager, %struct.radeon_sa_manager* %15, i32 0, i32 1
  store i32* null, i32** %16, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %7, align 8
  %19 = getelementptr inbounds %struct.radeon_sa_manager, %struct.radeon_sa_manager* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %7, align 8
  %22 = getelementptr inbounds %struct.radeon_sa_manager, %struct.radeon_sa_manager* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 8
  %23 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %7, align 8
  %24 = getelementptr inbounds %struct.radeon_sa_manager, %struct.radeon_sa_manager* %23, i32 0, i32 3
  %25 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %7, align 8
  %26 = getelementptr inbounds %struct.radeon_sa_manager, %struct.radeon_sa_manager* %25, i32 0, i32 4
  store i32* %24, i32** %26, align 8
  %27 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %7, align 8
  %28 = getelementptr inbounds %struct.radeon_sa_manager, %struct.radeon_sa_manager* %27, i32 0, i32 3
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  store i32 0, i32* %10, align 4
  br label %30

30:                                               ; preds = %42, %4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @RADEON_NUM_RINGS, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %30
  %35 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %7, align 8
  %36 = getelementptr inbounds %struct.radeon_sa_manager, %struct.radeon_sa_manager* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = call i32 @INIT_LIST_HEAD(i32* %40)
  br label %42

42:                                               ; preds = %34
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %10, align 4
  br label %30

45:                                               ; preds = %30
  %46 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @RADEON_GPU_PAGE_SIZE, align 4
  %49 = load i32, i32* @RADEON_GEM_DOMAIN_CPU, align 4
  %50 = load %struct.radeon_sa_manager*, %struct.radeon_sa_manager** %7, align 8
  %51 = getelementptr inbounds %struct.radeon_sa_manager, %struct.radeon_sa_manager* %50, i32 0, i32 1
  %52 = call i32 @radeon_bo_create(%struct.radeon_device* %46, i32 %47, i32 %48, i32 1, i32 %49, i32* null, i32** %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %45
  %56 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %57 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @dev_err(i32 %58, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %11, align 4
  store i32 %61, i32* %5, align 4
  br label %64

62:                                               ; preds = %45
  %63 = load i32, i32* %11, align 4
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %62, %55
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @radeon_bo_create(%struct.radeon_device*, i32, i32, i32, i32, i32*, i32**) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
