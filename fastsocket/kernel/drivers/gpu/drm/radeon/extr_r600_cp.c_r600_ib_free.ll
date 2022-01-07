; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_cp.c_r600_ib_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600_cp.c_r600_ib_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32* }
%struct.drm_buf = type { i32 }
%struct.drm_file = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, %struct.drm_buf*, %struct.drm_file*, i32, i32)* @r600_ib_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r600_ib_free(%struct.drm_device* %0, %struct.drm_buf* %1, %struct.drm_file* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_buf*, align 8
  %8 = alloca %struct.drm_file*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store %struct.drm_buf* %1, %struct.drm_buf** %7, align 8
  store %struct.drm_file* %2, %struct.drm_file** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %11, align 8
  %15 = load %struct.drm_buf*, %struct.drm_buf** %7, align 8
  %16 = icmp ne %struct.drm_buf* %15, null
  br i1 %16, label %17, label %34

17:                                               ; preds = %5
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %22 = load %struct.drm_buf*, %struct.drm_buf** %7, align 8
  %23 = load i32, i32* %9, align 4
  %24 = mul nsw i32 %23, 4
  %25 = call i32 @r600_cp_dispatch_indirect(%struct.drm_device* %21, %struct.drm_buf* %22, i32 0, i32 %24)
  br label %26

26:                                               ; preds = %20, %17
  %27 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %28 = load %struct.drm_file*, %struct.drm_file** %8, align 8
  %29 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.drm_buf*, %struct.drm_buf** %7, align 8
  %32 = call i32 @radeon_cp_discard_buffer(%struct.drm_device* %27, i32 %30, %struct.drm_buf* %31)
  %33 = call i32 (...) @COMMIT_RING()
  br label %34

34:                                               ; preds = %26, %5
  ret void
}

declare dso_local i32 @r600_cp_dispatch_indirect(%struct.drm_device*, %struct.drm_buf*, i32, i32) #1

declare dso_local i32 @radeon_cp_discard_buffer(%struct.drm_device*, i32, %struct.drm_buf*) #1

declare dso_local i32 @COMMIT_RING(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
