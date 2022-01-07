; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_irq_kms.c_radeon_driver_irq_preinstall_kms.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_irq_kms.c_radeon_driver_irq_preinstall_kms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32*, i32*, i32, i32*, i32* }

@RADEON_NUM_RINGS = common dso_local global i32 0, align 4
@RADEON_MAX_HPD_PINS = common dso_local global i32 0, align 4
@RADEON_MAX_CRTCS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_driver_irq_preinstall_kms(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %6 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %7 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %6, i32 0, i32 0
  %8 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  store %struct.radeon_device* %8, %struct.radeon_device** %3, align 8
  %9 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %10 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 3
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %27, %1
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @RADEON_NUM_RINGS, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %14
  %19 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %20 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 5
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = call i32 @atomic_set(i32* %25, i32 0)
  br label %27

27:                                               ; preds = %18
  %28 = load i32, i32* %5, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %14

30:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %43, %30
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @RADEON_MAX_HPD_PINS, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %31
  %36 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %37 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 0, i32* %42, align 4
  br label %43

43:                                               ; preds = %35
  %44 = load i32, i32* %5, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %31

46:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %74, %46
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @RADEON_MAX_CRTCS, align 4
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %51, label %77

51:                                               ; preds = %47
  %52 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %53 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 0, i32* %58, align 4
  %59 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %60 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 4
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = call i32 @atomic_set(i32* %65, i32 0)
  %67 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %68 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 0, i32* %73, align 4
  br label %74

74:                                               ; preds = %51
  %75 = load i32, i32* %5, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %47

77:                                               ; preds = %47
  %78 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %79 = call i32 @radeon_irq_set(%struct.radeon_device* %78)
  %80 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %81 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 3
  %83 = load i64, i64* %4, align 8
  %84 = call i32 @spin_unlock_irqrestore(i32* %82, i64 %83)
  %85 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %86 = call i32 @radeon_irq_process(%struct.radeon_device* %85)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @radeon_irq_set(%struct.radeon_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @radeon_irq_process(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
