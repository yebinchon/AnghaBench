; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_object.c_radeon_bo_clear_surface_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_object.c_radeon_bo_clear_surface_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_bo = type { i32, %struct.radeon_device* }
%struct.radeon_device = type { %struct.radeon_surface_reg* }
%struct.radeon_surface_reg = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_bo*)* @radeon_bo_clear_surface_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_bo_clear_surface_reg(%struct.radeon_bo* %0) #0 {
  %2 = alloca %struct.radeon_bo*, align 8
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_surface_reg*, align 8
  store %struct.radeon_bo* %0, %struct.radeon_bo** %2, align 8
  %5 = load %struct.radeon_bo*, %struct.radeon_bo** %2, align 8
  %6 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %5, i32 0, i32 1
  %7 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  store %struct.radeon_device* %7, %struct.radeon_device** %3, align 8
  %8 = load %struct.radeon_bo*, %struct.radeon_bo** %2, align 8
  %9 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %32

13:                                               ; preds = %1
  %14 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %15 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %14, i32 0, i32 0
  %16 = load %struct.radeon_surface_reg*, %struct.radeon_surface_reg** %15, align 8
  %17 = load %struct.radeon_bo*, %struct.radeon_bo** %2, align 8
  %18 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.radeon_surface_reg, %struct.radeon_surface_reg* %16, i64 %20
  store %struct.radeon_surface_reg* %21, %struct.radeon_surface_reg** %4, align 8
  %22 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %23 = load %struct.radeon_bo*, %struct.radeon_bo** %2, align 8
  %24 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = call i32 @radeon_clear_surface_reg(%struct.radeon_device* %22, i64 %26)
  %28 = load %struct.radeon_surface_reg*, %struct.radeon_surface_reg** %4, align 8
  %29 = getelementptr inbounds %struct.radeon_surface_reg, %struct.radeon_surface_reg* %28, i32 0, i32 0
  store i32* null, i32** %29, align 8
  %30 = load %struct.radeon_bo*, %struct.radeon_bo** %2, align 8
  %31 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %30, i32 0, i32 0
  store i32 -1, i32* %31, align 8
  br label %32

32:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @radeon_clear_surface_reg(%struct.radeon_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
