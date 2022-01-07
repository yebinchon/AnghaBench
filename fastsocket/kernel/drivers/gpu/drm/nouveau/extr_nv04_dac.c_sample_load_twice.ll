; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv04_dac.c_sample_load_twice.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv04_dac.c_sample_load_twice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_device = type { i32 }
%struct.nouveau_timer = type { i32 }

@NV_PRMCIO_INP0__COLOR = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@NV_PRMCIO_INP0 = common dso_local global i32 0, align 4
@MAX_HBLANK_OSC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32*)* @sample_load_twice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sample_load_twice(%struct.drm_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nouveau_device*, align 8
  %7 = alloca %struct.nouveau_timer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %14 = call %struct.nouveau_device* @nouveau_dev(%struct.drm_device* %13)
  store %struct.nouveau_device* %14, %struct.nouveau_device** %6, align 8
  %15 = load %struct.nouveau_device*, %struct.nouveau_device** %6, align 8
  %16 = call %struct.nouveau_timer* @nouveau_timer(%struct.nouveau_device* %15)
  store %struct.nouveau_timer* %16, %struct.nouveau_timer** %7, align 8
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %102, %2
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 2
  br i1 %19, label %20, label %105

20:                                               ; preds = %17
  store i32 0, i32* %12, align 4
  %21 = load %struct.nouveau_timer*, %struct.nouveau_timer** %7, align 8
  %22 = load i32, i32* @NV_PRMCIO_INP0__COLOR, align 4
  %23 = call i32 @nouveau_timer_wait_eq(%struct.nouveau_timer* %21, i32 10000000, i32 %22, i32 1, i32 0)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %106

28:                                               ; preds = %20
  %29 = load %struct.nouveau_timer*, %struct.nouveau_timer** %7, align 8
  %30 = load i32, i32* @NV_PRMCIO_INP0__COLOR, align 4
  %31 = call i32 @nouveau_timer_wait_eq(%struct.nouveau_timer* %29, i32 10000000, i32 %30, i32 1, i32 1)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @EBUSY, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %106

36:                                               ; preds = %28
  %37 = load %struct.nouveau_timer*, %struct.nouveau_timer** %7, align 8
  %38 = load i32, i32* @NV_PRMCIO_INP0__COLOR, align 4
  %39 = call i32 @nouveau_timer_wait_eq(%struct.nouveau_timer* %37, i32 10000000, i32 %38, i32 1, i32 0)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @EBUSY, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %106

44:                                               ; preds = %36
  %45 = call i32 @udelay(i32 100)
  %46 = load %struct.nouveau_device*, %struct.nouveau_device** %6, align 8
  %47 = load i32, i32* @NV_PRMCIO_INP0, align 4
  %48 = call i32 @nv_rd08(%struct.nouveau_device* %46, i32 %47)
  %49 = and i32 %48, 16
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %84, %44
  %51 = call i32 @udelay(i32 100)
  %52 = load %struct.nouveau_device*, %struct.nouveau_device** %6, align 8
  %53 = load i32, i32* @NV_PRMCIO_INP0, align 4
  %54 = call i32 @nv_rd08(%struct.nouveau_device* %52, i32 %53)
  %55 = and i32 %54, 16
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %74

59:                                               ; preds = %50
  %60 = load %struct.nouveau_device*, %struct.nouveau_device** %6, align 8
  %61 = load i32, i32* @NV_PRMCIO_INP0, align 4
  %62 = call i32 @nv_rd08(%struct.nouveau_device* %60, i32 %61)
  %63 = and i32 %62, 16
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %59
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %10, align 4
  br label %73

73:                                               ; preds = %67, %59
  br label %74

74:                                               ; preds = %73, %50
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = load i32, i32* %12, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* @MAX_HBLANK_OSC, align 4
  %83 = icmp slt i32 %81, %82
  br label %84

84:                                               ; preds = %79, %75
  %85 = phi i1 [ false, %75 ], [ %83, %79 ]
  br i1 %85, label %50, label %86

86:                                               ; preds = %84
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* @MAX_HBLANK_OSC, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %86
  %91 = load i32*, i32** %5, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  store i32 0, i32* %94, align 4
  br label %101

95:                                               ; preds = %86
  %96 = load i32, i32* %9, align 4
  %97 = load i32*, i32** %5, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32 %96, i32* %100, align 4
  br label %101

101:                                              ; preds = %95, %90
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %8, align 4
  br label %17

105:                                              ; preds = %17
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %105, %41, %33, %25
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local %struct.nouveau_device* @nouveau_dev(%struct.drm_device*) #1

declare dso_local %struct.nouveau_timer* @nouveau_timer(%struct.nouveau_device*) #1

declare dso_local i32 @nouveau_timer_wait_eq(%struct.nouveau_timer*, i32, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @nv_rd08(%struct.nouveau_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
