; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_irq.c_drm_irq_vgaarb_nokms.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_irq.c_drm_irq_vgaarb_nokms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.drm_device*)*, i32 (%struct.drm_device*)*, i32 (%struct.drm_device*)*, i32 (%struct.drm_device*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @drm_irq_vgaarb_nokms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drm_irq_vgaarb_nokms(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.drm_device*
  store %struct.drm_device* %7, %struct.drm_device** %5, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 3
  %12 = load i32 (%struct.drm_device*, i32)*, i32 (%struct.drm_device*, i32)** %11, align 8
  %13 = icmp ne i32 (%struct.drm_device*, i32)* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 3
  %19 = load i32 (%struct.drm_device*, i32)*, i32 (%struct.drm_device*, i32)** %18, align 8
  %20 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 %19(%struct.drm_device* %20, i32 %21)
  br label %79

23:                                               ; preds = %2
  %24 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %25 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  br label %79

29:                                               ; preds = %23
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %29
  %33 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %34 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i32 (%struct.drm_device*)*, i32 (%struct.drm_device*)** %36, align 8
  %38 = icmp ne i32 (%struct.drm_device*)* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %32
  %40 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %41 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i32 (%struct.drm_device*)*, i32 (%struct.drm_device*)** %43, align 8
  %45 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %46 = call i32 %44(%struct.drm_device* %45)
  br label %47

47:                                               ; preds = %39, %32
  br label %79

48:                                               ; preds = %29
  %49 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %50 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32 (%struct.drm_device*)*, i32 (%struct.drm_device*)** %52, align 8
  %54 = icmp ne i32 (%struct.drm_device*)* %53, null
  br i1 %54, label %55, label %63

55:                                               ; preds = %48
  %56 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %57 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32 (%struct.drm_device*)*, i32 (%struct.drm_device*)** %59, align 8
  %61 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %62 = call i32 %60(%struct.drm_device* %61)
  br label %63

63:                                               ; preds = %55, %48
  %64 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %65 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32 (%struct.drm_device*)*, i32 (%struct.drm_device*)** %67, align 8
  %69 = icmp ne i32 (%struct.drm_device*)* %68, null
  br i1 %69, label %70, label %78

70:                                               ; preds = %63
  %71 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %72 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32 (%struct.drm_device*)*, i32 (%struct.drm_device*)** %74, align 8
  %76 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %77 = call i32 %75(%struct.drm_device* %76)
  br label %78

78:                                               ; preds = %70, %63
  br label %79

79:                                               ; preds = %14, %28, %78, %47
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
