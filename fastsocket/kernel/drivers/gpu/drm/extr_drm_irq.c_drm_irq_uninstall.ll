; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_irq.c_drm_irq_uninstall.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_irq.c_drm_irq_uninstall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, i32, %struct.TYPE_2__*, i32, i32, i32*, i64*, i32*, i32 }
%struct.TYPE_2__ = type { {}*, i32 (%struct.drm_device*, i32)* }

@DRIVER_HAVE_IRQ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"irq=%d\0A\00", align 1
@DRIVER_MODESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_irq_uninstall(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %8 = load i32, i32* @DRIVER_HAVE_IRQ, align 4
  %9 = call i32 @drm_core_check_feature(%struct.drm_device* %7, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %118

14:                                               ; preds = %1
  %15 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 8
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %19 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %5, align 4
  %21 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %22 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  %23 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %24 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %23, i32 0, i32 8
  %25 = call i32 @mutex_unlock(i32* %24)
  %26 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %27 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %77

30:                                               ; preds = %14
  %31 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %32 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %31, i32 0, i32 4
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @spin_lock_irqsave(i32* %32, i64 %33)
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %69, %30
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %38 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %72

41:                                               ; preds = %35
  %42 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %43 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %42, i32 0, i32 7
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = call i32 @DRM_WAKEUP(i32* %47)
  %49 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %50 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %49, i32 0, i32 6
  %51 = load i64*, i64** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  store i64 0, i64* %54, align 8
  %55 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %56 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %55, i32 0, i32 2
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32 (%struct.drm_device*, i32)*, i32 (%struct.drm_device*, i32)** %58, align 8
  %60 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 %59(%struct.drm_device* %60, i32 %61)
  %63 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %64 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %63, i32 0, i32 5
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 %62, i32* %68, align 4
  br label %69

69:                                               ; preds = %41
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %35

72:                                               ; preds = %35
  %73 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %74 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %73, i32 0, i32 4
  %75 = load i64, i64* %4, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* %74, i64 %75)
  br label %77

77:                                               ; preds = %72, %14
  %78 = load i32, i32* %5, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %2, align 4
  br label %118

83:                                               ; preds = %77
  %84 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %85 = call i32 @drm_dev_to_irq(%struct.drm_device* %84)
  %86 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %85)
  %87 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %88 = load i32, i32* @DRIVER_MODESET, align 4
  %89 = call i32 @drm_core_check_feature(%struct.drm_device* %87, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %83
  %92 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %93 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @vga_client_register(i32 %94, i32* null, i32* null, i32* null)
  br label %96

96:                                               ; preds = %91, %83
  %97 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %98 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %97, i32 0, i32 2
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = bitcast {}** %100 to i32 (%struct.drm_device*)**
  %102 = load i32 (%struct.drm_device*)*, i32 (%struct.drm_device*)** %101, align 8
  %103 = icmp ne i32 (%struct.drm_device*)* %102, null
  br i1 %103, label %104, label %113

104:                                              ; preds = %96
  %105 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %106 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %105, i32 0, i32 2
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = bitcast {}** %108 to i32 (%struct.drm_device*)**
  %110 = load i32 (%struct.drm_device*)*, i32 (%struct.drm_device*)** %109, align 8
  %111 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %112 = call i32 %110(%struct.drm_device* %111)
  br label %113

113:                                              ; preds = %104, %96
  %114 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %115 = call i32 @drm_dev_to_irq(%struct.drm_device* %114)
  %116 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %117 = call i32 @free_irq(i32 %115, %struct.drm_device* %116)
  store i32 0, i32* %2, align 4
  br label %118

118:                                              ; preds = %113, %80, %11
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local i32 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @DRM_WAKEUP(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32) #1

declare dso_local i32 @drm_dev_to_irq(%struct.drm_device*) #1

declare dso_local i32 @vga_client_register(i32, i32*, i32*, i32*) #1

declare dso_local i32 @free_irq(i32, %struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
