; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/clocksource/extr_sh_tmu.c_sh_tmu_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/clocksource/extr_sh_tmu.c_sh_tmu_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_tmu_priv = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.sh_timer_config* }
%struct.sh_timer_config = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"sh_tmu: cannot enable clock \22%s\22\0A\00", align 1
@TCOR = common dso_local global i32 0, align 4
@TCNT = common dso_local global i32 0, align 4
@TCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_tmu_priv*)* @sh_tmu_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_tmu_enable(%struct.sh_tmu_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sh_tmu_priv*, align 8
  %4 = alloca %struct.sh_timer_config*, align 8
  %5 = alloca i32, align 4
  store %struct.sh_tmu_priv* %0, %struct.sh_tmu_priv** %3, align 8
  %6 = load %struct.sh_tmu_priv*, %struct.sh_tmu_priv** %3, align 8
  %7 = getelementptr inbounds %struct.sh_tmu_priv, %struct.sh_tmu_priv* %6, i32 0, i32 2
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.sh_timer_config*, %struct.sh_timer_config** %10, align 8
  store %struct.sh_timer_config* %11, %struct.sh_timer_config** %4, align 8
  %12 = load %struct.sh_tmu_priv*, %struct.sh_tmu_priv** %3, align 8
  %13 = getelementptr inbounds %struct.sh_tmu_priv, %struct.sh_tmu_priv* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @clk_enable(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.sh_timer_config*, %struct.sh_timer_config** %4, align 8
  %20 = getelementptr inbounds %struct.sh_timer_config, %struct.sh_timer_config* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %45

24:                                               ; preds = %1
  %25 = load %struct.sh_tmu_priv*, %struct.sh_tmu_priv** %3, align 8
  %26 = call i32 @sh_tmu_start_stop_ch(%struct.sh_tmu_priv* %25, i32 0)
  %27 = load %struct.sh_tmu_priv*, %struct.sh_tmu_priv** %3, align 8
  %28 = load i32, i32* @TCOR, align 4
  %29 = call i32 @sh_tmu_write(%struct.sh_tmu_priv* %27, i32 %28, i32 -1)
  %30 = load %struct.sh_tmu_priv*, %struct.sh_tmu_priv** %3, align 8
  %31 = load i32, i32* @TCNT, align 4
  %32 = call i32 @sh_tmu_write(%struct.sh_tmu_priv* %30, i32 %31, i32 -1)
  %33 = load %struct.sh_tmu_priv*, %struct.sh_tmu_priv** %3, align 8
  %34 = getelementptr inbounds %struct.sh_tmu_priv, %struct.sh_tmu_priv* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @clk_get_rate(i32 %35)
  %37 = sdiv i32 %36, 4
  %38 = load %struct.sh_tmu_priv*, %struct.sh_tmu_priv** %3, align 8
  %39 = getelementptr inbounds %struct.sh_tmu_priv, %struct.sh_tmu_priv* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.sh_tmu_priv*, %struct.sh_tmu_priv** %3, align 8
  %41 = load i32, i32* @TCR, align 4
  %42 = call i32 @sh_tmu_write(%struct.sh_tmu_priv* %40, i32 %41, i32 0)
  %43 = load %struct.sh_tmu_priv*, %struct.sh_tmu_priv** %3, align 8
  %44 = call i32 @sh_tmu_start_stop_ch(%struct.sh_tmu_priv* %43, i32 1)
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %24, %18
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @sh_tmu_start_stop_ch(%struct.sh_tmu_priv*, i32) #1

declare dso_local i32 @sh_tmu_write(%struct.sh_tmu_priv*, i32, i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
