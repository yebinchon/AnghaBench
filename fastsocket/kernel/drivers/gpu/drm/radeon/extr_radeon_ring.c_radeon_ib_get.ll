; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_ring.c_radeon_ib_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_ring.c_radeon_ib_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i32 }
%struct.radeon_ib = type { i32, i32, i32**, %struct.TYPE_4__*, i64, %struct.radeon_vm*, i32, i32*, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.radeon_vm = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"failed to get a new IB (%d)\0A\00", align 1
@RADEON_VA_IB_OFFSET = common dso_local global i64 0, align 8
@RADEON_NUM_RINGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_ib_get(%struct.radeon_device* %0, i32 %1, %struct.radeon_ib* %2, %struct.radeon_vm* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.radeon_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.radeon_ib*, align 8
  %10 = alloca %struct.radeon_vm*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.radeon_ib* %2, %struct.radeon_ib** %9, align 8
  store %struct.radeon_vm* %3, %struct.radeon_vm** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %15 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %16 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %15, i32 0, i32 1
  %17 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %18 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %17, i32 0, i32 3
  %19 = load i32, i32* %11, align 4
  %20 = call i32 @radeon_sa_bo_new(%struct.radeon_device* %14, i32* %16, %struct.TYPE_4__** %18, i32 %19, i32 256, i32 1)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %5
  %24 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %25 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %13, align 4
  %28 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %13, align 4
  store i32 %29, i32* %6, align 4
  br label %91

30:                                               ; preds = %5
  %31 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %32 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %33 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %32, i32 0, i32 8
  %34 = call i32 @radeon_semaphore_create(%struct.radeon_device* %31, i32* %33)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* %13, align 4
  store i32 %38, i32* %6, align 4
  br label %91

39:                                               ; preds = %30
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %42 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %44 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %43, i32 0, i32 7
  store i32* null, i32** %44, align 8
  %45 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %46 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %45, i32 0, i32 3
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = call i32 @radeon_sa_bo_cpu_addr(%struct.TYPE_4__* %47)
  %49 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %50 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %49, i32 0, i32 6
  store i32 %48, i32* %50, align 8
  %51 = load %struct.radeon_vm*, %struct.radeon_vm** %10, align 8
  %52 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %53 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %52, i32 0, i32 5
  store %struct.radeon_vm* %51, %struct.radeon_vm** %53, align 8
  %54 = load %struct.radeon_vm*, %struct.radeon_vm** %10, align 8
  %55 = icmp ne %struct.radeon_vm* %54, null
  br i1 %55, label %56, label %66

56:                                               ; preds = %39
  %57 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %58 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %57, i32 0, i32 3
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @RADEON_VA_IB_OFFSET, align 8
  %63 = add nsw i64 %61, %62
  %64 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %65 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %64, i32 0, i32 4
  store i64 %63, i64* %65, align 8
  br label %73

66:                                               ; preds = %39
  %67 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %68 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %67, i32 0, i32 3
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = call i64 @radeon_sa_bo_gpu_addr(%struct.TYPE_4__* %69)
  %71 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %72 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %71, i32 0, i32 4
  store i64 %70, i64* %72, align 8
  br label %73

73:                                               ; preds = %66, %56
  %74 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %75 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %74, i32 0, i32 1
  store i32 0, i32* %75, align 4
  store i32 0, i32* %12, align 4
  br label %76

76:                                               ; preds = %87, %73
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* @RADEON_NUM_RINGS, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %76
  %81 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %82 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %81, i32 0, i32 2
  %83 = load i32**, i32*** %82, align 8
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32*, i32** %83, i64 %85
  store i32* null, i32** %86, align 8
  br label %87

87:                                               ; preds = %80
  %88 = load i32, i32* %12, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %12, align 4
  br label %76

90:                                               ; preds = %76
  store i32 0, i32* %6, align 4
  br label %91

91:                                               ; preds = %90, %37, %23
  %92 = load i32, i32* %6, align 4
  ret i32 %92
}

declare dso_local i32 @radeon_sa_bo_new(%struct.radeon_device*, i32*, %struct.TYPE_4__**, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @radeon_semaphore_create(%struct.radeon_device*, i32*) #1

declare dso_local i32 @radeon_sa_bo_cpu_addr(%struct.TYPE_4__*) #1

declare dso_local i64 @radeon_sa_bo_gpu_addr(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
