; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/clocksource/extr_sh_tmu.c_sh_tmu_start_stop_ch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/clocksource/extr_sh_tmu.c_sh_tmu_start_stop_ch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_tmu_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.sh_timer_config* }
%struct.sh_timer_config = type { i32 }

@sh_tmu_lock = common dso_local global i32 0, align 4
@TSTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sh_tmu_priv*, i32)* @sh_tmu_start_stop_ch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_tmu_start_stop_ch(%struct.sh_tmu_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.sh_tmu_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sh_timer_config*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.sh_tmu_priv* %0, %struct.sh_tmu_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.sh_tmu_priv*, %struct.sh_tmu_priv** %3, align 8
  %9 = getelementptr inbounds %struct.sh_tmu_priv, %struct.sh_tmu_priv* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.sh_timer_config*, %struct.sh_timer_config** %12, align 8
  store %struct.sh_timer_config* %13, %struct.sh_timer_config** %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @spin_lock_irqsave(i32* @sh_tmu_lock, i64 %14)
  %16 = load %struct.sh_tmu_priv*, %struct.sh_tmu_priv** %3, align 8
  %17 = load i32, i32* @TSTR, align 4
  %18 = call i64 @sh_tmu_read(%struct.sh_tmu_priv* %16, i32 %17)
  store i64 %18, i64* %7, align 8
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load %struct.sh_timer_config*, %struct.sh_timer_config** %5, align 8
  %23 = getelementptr inbounds %struct.sh_timer_config, %struct.sh_timer_config* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 1, %24
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* %7, align 8
  %28 = or i64 %27, %26
  store i64 %28, i64* %7, align 8
  br label %38

29:                                               ; preds = %2
  %30 = load %struct.sh_timer_config*, %struct.sh_timer_config** %5, align 8
  %31 = getelementptr inbounds %struct.sh_timer_config, %struct.sh_timer_config* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 1, %32
  %34 = xor i32 %33, -1
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* %7, align 8
  %37 = and i64 %36, %35
  store i64 %37, i64* %7, align 8
  br label %38

38:                                               ; preds = %29, %21
  %39 = load %struct.sh_tmu_priv*, %struct.sh_tmu_priv** %3, align 8
  %40 = load i32, i32* @TSTR, align 4
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @sh_tmu_write(%struct.sh_tmu_priv* %39, i32 %40, i64 %41)
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* @sh_tmu_lock, i64 %43)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @sh_tmu_read(%struct.sh_tmu_priv*, i32) #1

declare dso_local i32 @sh_tmu_write(%struct.sh_tmu_priv*, i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
