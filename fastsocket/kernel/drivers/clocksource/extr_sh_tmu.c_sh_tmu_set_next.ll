; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/clocksource/extr_sh_tmu.c_sh_tmu_set_next.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/clocksource/extr_sh_tmu.c_sh_tmu_set_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_tmu_priv = type { i32 }

@TCR = common dso_local global i32 0, align 4
@TCOR = common dso_local global i32 0, align 4
@TCNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sh_tmu_priv*, i64, i32)* @sh_tmu_set_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_tmu_set_next(%struct.sh_tmu_priv* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.sh_tmu_priv*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.sh_tmu_priv* %0, %struct.sh_tmu_priv** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.sh_tmu_priv*, %struct.sh_tmu_priv** %4, align 8
  %8 = call i32 @sh_tmu_start_stop_ch(%struct.sh_tmu_priv* %7, i32 0)
  %9 = load %struct.sh_tmu_priv*, %struct.sh_tmu_priv** %4, align 8
  %10 = load i32, i32* @TCR, align 4
  %11 = call i32 @sh_tmu_read(%struct.sh_tmu_priv* %9, i32 %10)
  %12 = load %struct.sh_tmu_priv*, %struct.sh_tmu_priv** %4, align 8
  %13 = load i32, i32* @TCR, align 4
  %14 = call i32 @sh_tmu_write(%struct.sh_tmu_priv* %12, i32 %13, i64 32)
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load %struct.sh_tmu_priv*, %struct.sh_tmu_priv** %4, align 8
  %19 = load i32, i32* @TCOR, align 4
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @sh_tmu_write(%struct.sh_tmu_priv* %18, i32 %19, i64 %20)
  br label %26

22:                                               ; preds = %3
  %23 = load %struct.sh_tmu_priv*, %struct.sh_tmu_priv** %4, align 8
  %24 = load i32, i32* @TCOR, align 4
  %25 = call i32 @sh_tmu_write(%struct.sh_tmu_priv* %23, i32 %24, i64 4294967295)
  br label %26

26:                                               ; preds = %22, %17
  %27 = load %struct.sh_tmu_priv*, %struct.sh_tmu_priv** %4, align 8
  %28 = load i32, i32* @TCNT, align 4
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @sh_tmu_write(%struct.sh_tmu_priv* %27, i32 %28, i64 %29)
  %31 = load %struct.sh_tmu_priv*, %struct.sh_tmu_priv** %4, align 8
  %32 = call i32 @sh_tmu_start_stop_ch(%struct.sh_tmu_priv* %31, i32 1)
  ret void
}

declare dso_local i32 @sh_tmu_start_stop_ch(%struct.sh_tmu_priv*, i32) #1

declare dso_local i32 @sh_tmu_read(%struct.sh_tmu_priv*, i32) #1

declare dso_local i32 @sh_tmu_write(%struct.sh_tmu_priv*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
