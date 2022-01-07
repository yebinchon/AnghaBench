; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_prime.c_radeon_gem_prime_pin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_prime.c_radeon_gem_prime_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.radeon_bo = type { i32 }

@RADEON_GEM_DOMAIN_GTT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_gem_prime_pin(%struct.drm_gem_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_gem_object*, align 8
  %4 = alloca %struct.radeon_bo*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %3, align 8
  %6 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %7 = call %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object* %6)
  store %struct.radeon_bo* %7, %struct.radeon_bo** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.radeon_bo*, %struct.radeon_bo** %4, align 8
  %9 = call i32 @radeon_bo_reserve(%struct.radeon_bo* %8, i32 0)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %30

17:                                               ; preds = %1
  %18 = load %struct.radeon_bo*, %struct.radeon_bo** %4, align 8
  %19 = load i32, i32* @RADEON_GEM_DOMAIN_GTT, align 4
  %20 = call i32 @radeon_bo_pin(%struct.radeon_bo* %18, i32 %19, i32* null)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load %struct.radeon_bo*, %struct.radeon_bo** %4, align 8
  %25 = call i32 @radeon_bo_unreserve(%struct.radeon_bo* %24)
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %30

27:                                               ; preds = %17
  %28 = load %struct.radeon_bo*, %struct.radeon_bo** %4, align 8
  %29 = call i32 @radeon_bo_unreserve(%struct.radeon_bo* %28)
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %27, %23, %15
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @radeon_bo_reserve(%struct.radeon_bo*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @radeon_bo_pin(%struct.radeon_bo*, i32, i32*) #1

declare dso_local i32 @radeon_bo_unreserve(%struct.radeon_bo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
