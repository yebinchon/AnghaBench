; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_powermate.c_powermate_pulse_led.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_powermate.c_powermate_pulse_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.powermate_device = type { i32, i32, i32, i32, i32, i32, i32 }

@UPDATE_STATIC_BRIGHTNESS = common dso_local global i32 0, align 4
@UPDATE_PULSE_ASLEEP = common dso_local global i32 0, align 4
@UPDATE_PULSE_AWAKE = common dso_local global i32 0, align 4
@UPDATE_PULSE_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.powermate_device*, i32, i32, i32, i32, i32)* @powermate_pulse_led to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @powermate_pulse_led(%struct.powermate_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.powermate_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.powermate_device* %0, %struct.powermate_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %6
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %16, %6
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %20, %17
  %22 = load i32, i32* %9, align 4
  %23 = icmp sgt i32 %22, 510
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 510, i32* %9, align 4
  br label %25

25:                                               ; preds = %24, %21
  %26 = load i32, i32* %10, align 4
  %27 = icmp sgt i32 %26, 2
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 2, i32* %10, align 4
  br label %29

29:                                               ; preds = %28, %25
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %12, align 4
  %40 = load %struct.powermate_device*, %struct.powermate_device** %7, align 8
  %41 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %40, i32 0, i32 6
  %42 = load i64, i64* %13, align 8
  %43 = call i32 @spin_lock_irqsave(i32* %41, i64 %42)
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.powermate_device*, %struct.powermate_device** %7, align 8
  %46 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %44, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %29
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.powermate_device*, %struct.powermate_device** %7, align 8
  %52 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @UPDATE_STATIC_BRIGHTNESS, align 4
  %54 = load %struct.powermate_device*, %struct.powermate_device** %7, align 8
  %55 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %49, %29
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.powermate_device*, %struct.powermate_device** %7, align 8
  %61 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %59, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %58
  %65 = load i32, i32* %11, align 4
  %66 = load %struct.powermate_device*, %struct.powermate_device** %7, align 8
  %67 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @UPDATE_PULSE_ASLEEP, align 4
  %69 = load i32, i32* @UPDATE_STATIC_BRIGHTNESS, align 4
  %70 = or i32 %68, %69
  %71 = load %struct.powermate_device*, %struct.powermate_device** %7, align 8
  %72 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %64, %58
  %76 = load i32, i32* %12, align 4
  %77 = load %struct.powermate_device*, %struct.powermate_device** %7, align 8
  %78 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %76, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %75
  %82 = load i32, i32* %12, align 4
  %83 = load %struct.powermate_device*, %struct.powermate_device** %7, align 8
  %84 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* @UPDATE_PULSE_AWAKE, align 4
  %86 = load i32, i32* @UPDATE_STATIC_BRIGHTNESS, align 4
  %87 = or i32 %85, %86
  %88 = load %struct.powermate_device*, %struct.powermate_device** %7, align 8
  %89 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %81, %75
  %93 = load i32, i32* %9, align 4
  %94 = load %struct.powermate_device*, %struct.powermate_device** %7, align 8
  %95 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %93, %96
  br i1 %97, label %104, label %98

98:                                               ; preds = %92
  %99 = load i32, i32* %10, align 4
  %100 = load %struct.powermate_device*, %struct.powermate_device** %7, align 8
  %101 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %99, %102
  br i1 %103, label %104, label %116

104:                                              ; preds = %98, %92
  %105 = load i32, i32* %9, align 4
  %106 = load %struct.powermate_device*, %struct.powermate_device** %7, align 8
  %107 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %106, i32 0, i32 4
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* %10, align 4
  %109 = load %struct.powermate_device*, %struct.powermate_device** %7, align 8
  %110 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %109, i32 0, i32 5
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* @UPDATE_PULSE_MODE, align 4
  %112 = load %struct.powermate_device*, %struct.powermate_device** %7, align 8
  %113 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 4
  br label %116

116:                                              ; preds = %104, %98
  %117 = load %struct.powermate_device*, %struct.powermate_device** %7, align 8
  %118 = call i32 @powermate_sync_state(%struct.powermate_device* %117)
  %119 = load %struct.powermate_device*, %struct.powermate_device** %7, align 8
  %120 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %119, i32 0, i32 6
  %121 = load i64, i64* %13, align 8
  %122 = call i32 @spin_unlock_irqrestore(i32* %120, i64 %121)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @powermate_sync_state(%struct.powermate_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
