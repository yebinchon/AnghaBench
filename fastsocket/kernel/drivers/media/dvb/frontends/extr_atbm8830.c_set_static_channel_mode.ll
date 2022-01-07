; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_atbm8830.c_set_static_channel_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_atbm8830.c_set_static_channel_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atbm_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atbm_state*)* @set_static_channel_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_static_channel_mode(%struct.atbm_state* %0) #0 {
  %2 = alloca %struct.atbm_state*, align 8
  %3 = alloca i32, align 4
  store %struct.atbm_state* %0, %struct.atbm_state** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %12, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 5
  br i1 %6, label %7, label %15

7:                                                ; preds = %4
  %8 = load %struct.atbm_state*, %struct.atbm_state** %2, align 8
  %9 = load i32, i32* %3, align 4
  %10 = add nsw i32 2459, %9
  %11 = call i32 @atbm8830_write_reg(%struct.atbm_state* %8, i32 %10, i32 8)
  br label %12

12:                                               ; preds = %7
  %13 = load i32, i32* %3, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %3, align 4
  br label %4

15:                                               ; preds = %4
  %16 = load %struct.atbm_state*, %struct.atbm_state** %2, align 8
  %17 = call i32 @atbm8830_write_reg(%struct.atbm_state* %16, i32 2395, i32 127)
  %18 = load %struct.atbm_state*, %struct.atbm_state** %2, align 8
  %19 = call i32 @atbm8830_write_reg(%struct.atbm_state* %18, i32 2507, i32 1)
  %20 = load %struct.atbm_state*, %struct.atbm_state** %2, align 8
  %21 = call i32 @atbm8830_write_reg(%struct.atbm_state* %20, i32 2508, i32 127)
  %22 = load %struct.atbm_state*, %struct.atbm_state** %2, align 8
  %23 = call i32 @atbm8830_write_reg(%struct.atbm_state* %22, i32 2509, i32 127)
  %24 = load %struct.atbm_state*, %struct.atbm_state** %2, align 8
  %25 = call i32 @atbm8830_write_reg(%struct.atbm_state* %24, i32 3585, i32 32)
  %26 = load %struct.atbm_state*, %struct.atbm_state** %2, align 8
  %27 = call i32 @atbm8830_write_reg(%struct.atbm_state* %26, i32 2819, i32 10)
  %28 = load %struct.atbm_state*, %struct.atbm_state** %2, align 8
  %29 = call i32 @atbm8830_write_reg(%struct.atbm_state* %28, i32 2357, i32 16)
  %30 = load %struct.atbm_state*, %struct.atbm_state** %2, align 8
  %31 = call i32 @atbm8830_write_reg(%struct.atbm_state* %30, i32 2358, i32 8)
  %32 = load %struct.atbm_state*, %struct.atbm_state** %2, align 8
  %33 = call i32 @atbm8830_write_reg(%struct.atbm_state* %32, i32 2366, i32 8)
  %34 = load %struct.atbm_state*, %struct.atbm_state** %2, align 8
  %35 = call i32 @atbm8830_write_reg(%struct.atbm_state* %34, i32 2414, i32 6)
  %36 = load %struct.atbm_state*, %struct.atbm_state** %2, align 8
  %37 = call i32 @atbm8830_write_reg(%struct.atbm_state* %36, i32 2825, i32 0)
  %38 = load %struct.atbm_state*, %struct.atbm_state** %2, align 8
  %39 = call i32 @atbm8830_write_reg(%struct.atbm_state* %38, i32 2826, i32 8)
  ret i32 0
}

declare dso_local i32 @atbm8830_write_reg(%struct.atbm_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
