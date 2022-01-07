; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_ring.c_radeon_ring_restore.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_ring.c_radeon_ring_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ring = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_ring_restore(%struct.radeon_device* %0, %struct.radeon_ring* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca %struct.radeon_ring*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %6, align 8
  store %struct.radeon_ring* %1, %struct.radeon_ring** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load i32*, i32** %9, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14, %4
  store i32 0, i32* %5, align 4
  br label %49

18:                                               ; preds = %14
  %19 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %20 = load %struct.radeon_ring*, %struct.radeon_ring** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @radeon_ring_lock(%struct.radeon_device* %19, %struct.radeon_ring* %20, i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %5, align 4
  br label %49

27:                                               ; preds = %18
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %40, %27
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  %33 = load %struct.radeon_ring*, %struct.radeon_ring** %7, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @radeon_ring_write(%struct.radeon_ring* %33, i32 %38)
  br label %40

40:                                               ; preds = %32
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %10, align 4
  br label %28

43:                                               ; preds = %28
  %44 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %45 = load %struct.radeon_ring*, %struct.radeon_ring** %7, align 8
  %46 = call i32 @radeon_ring_unlock_commit(%struct.radeon_device* %44, %struct.radeon_ring* %45)
  %47 = load i32*, i32** %9, align 8
  %48 = call i32 @kfree(i32* %47)
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %43, %25, %17
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @radeon_ring_lock(%struct.radeon_device*, %struct.radeon_ring*, i32) #1

declare dso_local i32 @radeon_ring_write(%struct.radeon_ring*, i32) #1

declare dso_local i32 @radeon_ring_unlock_commit(%struct.radeon_device*, %struct.radeon_ring*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
