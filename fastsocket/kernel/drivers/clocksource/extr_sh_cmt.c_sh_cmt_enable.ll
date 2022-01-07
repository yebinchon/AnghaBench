; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/clocksource/extr_sh_cmt.c_sh_cmt_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/clocksource/extr_sh_cmt.c_sh_cmt_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_cmt_priv = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.sh_timer_config* }
%struct.sh_timer_config = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"sh_cmt: cannot enable clock \22%s\22\0A\00", align 1
@CMCSR = common dso_local global i32 0, align 4
@CMCOR = common dso_local global i32 0, align 4
@CMCNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_cmt_priv*, i64*)* @sh_cmt_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_cmt_enable(%struct.sh_cmt_priv* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sh_cmt_priv*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.sh_timer_config*, align 8
  %7 = alloca i32, align 4
  store %struct.sh_cmt_priv* %0, %struct.sh_cmt_priv** %4, align 8
  store i64* %1, i64** %5, align 8
  %8 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %4, align 8
  %9 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %8, i32 0, i32 2
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.sh_timer_config*, %struct.sh_timer_config** %12, align 8
  store %struct.sh_timer_config* %13, %struct.sh_timer_config** %6, align 8
  %14 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %4, align 8
  %15 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @clk_enable(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.sh_timer_config*, %struct.sh_timer_config** %6, align 8
  %22 = getelementptr inbounds %struct.sh_timer_config, %struct.sh_timer_config* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %64

26:                                               ; preds = %2
  %27 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %4, align 8
  %28 = call i32 @sh_cmt_start_stop_ch(%struct.sh_cmt_priv* %27, i32 0)
  %29 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %4, align 8
  %30 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 16
  br i1 %32, label %33, label %44

33:                                               ; preds = %26
  %34 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %4, align 8
  %35 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @clk_get_rate(i32 %36)
  %38 = sdiv i32 %37, 512
  %39 = sext i32 %38 to i64
  %40 = load i64*, i64** %5, align 8
  store i64 %39, i64* %40, align 8
  %41 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %4, align 8
  %42 = load i32, i32* @CMCSR, align 4
  %43 = call i32 @sh_cmt_write(%struct.sh_cmt_priv* %41, i32 %42, i32 67)
  br label %55

44:                                               ; preds = %26
  %45 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %4, align 8
  %46 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @clk_get_rate(i32 %47)
  %49 = sdiv i32 %48, 8
  %50 = sext i32 %49 to i64
  %51 = load i64*, i64** %5, align 8
  store i64 %50, i64* %51, align 8
  %52 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %4, align 8
  %53 = load i32, i32* @CMCSR, align 4
  %54 = call i32 @sh_cmt_write(%struct.sh_cmt_priv* %52, i32 %53, i32 420)
  br label %55

55:                                               ; preds = %44, %33
  %56 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %4, align 8
  %57 = load i32, i32* @CMCOR, align 4
  %58 = call i32 @sh_cmt_write(%struct.sh_cmt_priv* %56, i32 %57, i32 -1)
  %59 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %4, align 8
  %60 = load i32, i32* @CMCNT, align 4
  %61 = call i32 @sh_cmt_write(%struct.sh_cmt_priv* %59, i32 %60, i32 0)
  %62 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %4, align 8
  %63 = call i32 @sh_cmt_start_stop_ch(%struct.sh_cmt_priv* %62, i32 1)
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %55, %20
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @sh_cmt_start_stop_ch(%struct.sh_cmt_priv*, i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @sh_cmt_write(%struct.sh_cmt_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
