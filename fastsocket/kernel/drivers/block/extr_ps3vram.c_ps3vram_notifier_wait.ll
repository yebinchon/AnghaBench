; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ps3vram.c_ps3vram_notifier_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ps3vram.c_ps3vram_notifier_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps3_system_bus_device = type { i32 }
%struct.ps3vram_priv = type { i32 }

@NOTIFIER = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ps3_system_bus_device*, i32)* @ps3vram_notifier_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps3vram_notifier_wait(%struct.ps3_system_bus_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ps3_system_bus_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ps3vram_priv*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.ps3_system_bus_device* %0, %struct.ps3_system_bus_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ps3_system_bus_device*, %struct.ps3_system_bus_device** %4, align 8
  %10 = call %struct.ps3vram_priv* @ps3_system_bus_get_drvdata(%struct.ps3_system_bus_device* %9)
  store %struct.ps3vram_priv* %10, %struct.ps3vram_priv** %6, align 8
  %11 = load %struct.ps3vram_priv*, %struct.ps3vram_priv** %6, align 8
  %12 = getelementptr inbounds %struct.ps3vram_priv, %struct.ps3vram_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @NOTIFIER, align 4
  %15 = call i32* @ps3vram_get_notifier(i32 %13, i32 %14)
  store i32* %15, i32** %7, align 8
  %16 = load i64, i64* @jiffies, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @msecs_to_jiffies(i32 %17)
  %19 = add i64 %16, %18
  store i64 %19, i64* %8, align 8
  br label %20

20:                                               ; preds = %28, %2
  %21 = load i32*, i32** %7, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 3
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %36

26:                                               ; preds = %20
  %27 = call i32 @msleep(i32 1)
  br label %28

28:                                               ; preds = %26
  %29 = load i64, i64* @jiffies, align 8
  %30 = load i64, i64* %8, align 8
  %31 = call i64 @time_before(i64 %29, i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %20, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @ETIMEDOUT, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %33, %25
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.ps3vram_priv* @ps3_system_bus_get_drvdata(%struct.ps3_system_bus_device*) #1

declare dso_local i32* @ps3vram_get_notifier(i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
