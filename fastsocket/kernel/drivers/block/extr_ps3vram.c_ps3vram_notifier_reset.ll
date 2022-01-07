; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ps3vram.c_ps3vram_notifier_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ps3vram.c_ps3vram_notifier_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps3_system_bus_device = type { i32 }
%struct.ps3vram_priv = type { i32 }

@NOTIFIER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ps3_system_bus_device*)* @ps3vram_notifier_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ps3vram_notifier_reset(%struct.ps3_system_bus_device* %0) #0 {
  %2 = alloca %struct.ps3_system_bus_device*, align 8
  %3 = alloca %struct.ps3vram_priv*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.ps3_system_bus_device* %0, %struct.ps3_system_bus_device** %2, align 8
  %6 = load %struct.ps3_system_bus_device*, %struct.ps3_system_bus_device** %2, align 8
  %7 = call %struct.ps3vram_priv* @ps3_system_bus_get_drvdata(%struct.ps3_system_bus_device* %6)
  store %struct.ps3vram_priv* %7, %struct.ps3vram_priv** %3, align 8
  %8 = load %struct.ps3vram_priv*, %struct.ps3vram_priv** %3, align 8
  %9 = getelementptr inbounds %struct.ps3vram_priv, %struct.ps3vram_priv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @NOTIFIER, align 4
  %12 = call i32* @ps3vram_get_notifier(i32 %10, i32 %11)
  store i32* %12, i32** %4, align 8
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %21, %1
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 4
  br i1 %15, label %16, label %24

16:                                               ; preds = %13
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  store i32 -1, i32* %20, align 4
  br label %21

21:                                               ; preds = %16
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %5, align 4
  br label %13

24:                                               ; preds = %13
  ret void
}

declare dso_local %struct.ps3vram_priv* @ps3_system_bus_get_drvdata(%struct.ps3_system_bus_device*) #1

declare dso_local i32* @ps3vram_get_notifier(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
