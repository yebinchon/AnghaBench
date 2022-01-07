; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_si4713-i2c.c_si4713_set_mute.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_si4713-i2c.c_si4713_set_mute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si4713_device = type { i32, i32, i64 }

@SI4713_TX_LINE_INPUT_MUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si4713_device*, i32)* @si4713_set_mute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si4713_set_mute(%struct.si4713_device* %0, i32 %1) #0 {
  %3 = alloca %struct.si4713_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.si4713_device* %0, %struct.si4713_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @set_mute(i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %9 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %12 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %17 = load i32, i32* @SI4713_TX_LINE_INPUT_MUTE, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @si4713_write_property(%struct.si4713_device* %16, i32 %17, i32 %18)
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %15, %2
  %21 = load i32, i32* %5, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @get_mute(i32 %24)
  %26 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %27 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %23, %20
  %29 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %30 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %29, i32 0, i32 0
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i32 @set_mute(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @si4713_write_property(%struct.si4713_device*, i32, i32) #1

declare dso_local i32 @get_mute(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
