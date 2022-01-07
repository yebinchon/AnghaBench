; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_semaphore.c_radeon_semaphore_sync_rings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_semaphore.c_radeon_semaphore_sync_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.radeon_semaphore = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Trying to sync to a disabled ring!\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_semaphore_sync_rings(%struct.radeon_device* %0, %struct.radeon_semaphore* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca %struct.radeon_semaphore*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %6, align 8
  store %struct.radeon_semaphore* %1, %struct.radeon_semaphore** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %82

15:                                               ; preds = %4
  %16 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %17 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %15
  %26 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %27 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %82

32:                                               ; preds = %15
  %33 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %34 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %35 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %38
  %40 = call i32 @radeon_ring_alloc(%struct.radeon_device* %33, %struct.TYPE_3__* %39, i32 8)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %32
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %5, align 4
  br label %82

45:                                               ; preds = %32
  %46 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.radeon_semaphore*, %struct.radeon_semaphore** %7, align 8
  %49 = call i32 @radeon_semaphore_emit_signal(%struct.radeon_device* %46, i32 %47, %struct.radeon_semaphore* %48)
  %50 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %51 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %52 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %55
  %57 = call i32 @radeon_ring_commit(%struct.radeon_device* %50, %struct.TYPE_3__* %56)
  %58 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.radeon_semaphore*, %struct.radeon_semaphore** %7, align 8
  %61 = call i32 @radeon_semaphore_emit_wait(%struct.radeon_device* %58, i32 %59, %struct.radeon_semaphore* %60)
  %62 = load %struct.radeon_semaphore*, %struct.radeon_semaphore** %7, align 8
  %63 = getelementptr inbounds %struct.radeon_semaphore, %struct.radeon_semaphore* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %66 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %65, i32 0, i32 0
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  store i32 %64, i32* %71, align 4
  %72 = load %struct.radeon_semaphore*, %struct.radeon_semaphore** %7, align 8
  %73 = getelementptr inbounds %struct.radeon_semaphore, %struct.radeon_semaphore* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %76 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %75, i32 0, i32 0
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  store i32 %74, i32* %81, align 4
  store i32 0, i32* %5, align 4
  br label %82

82:                                               ; preds = %45, %43, %25, %14
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @radeon_ring_alloc(%struct.radeon_device*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @radeon_semaphore_emit_signal(%struct.radeon_device*, i32, %struct.radeon_semaphore*) #1

declare dso_local i32 @radeon_ring_commit(%struct.radeon_device*, %struct.TYPE_3__*) #1

declare dso_local i32 @radeon_semaphore_emit_wait(%struct.radeon_device*, i32, %struct.radeon_semaphore*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
