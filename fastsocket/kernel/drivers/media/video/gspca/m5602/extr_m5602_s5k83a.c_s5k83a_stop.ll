; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/m5602/extr_m5602_s5k83a.c_s5k83a_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/m5602/extr_m5602_s5k83a.c_s5k83a_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { %struct.s5k83a_priv* }
%struct.s5k83a_priv = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s5k83a_stop(%struct.sd* %0) #0 {
  %2 = alloca %struct.sd*, align 8
  %3 = alloca %struct.s5k83a_priv*, align 8
  store %struct.sd* %0, %struct.sd** %2, align 8
  %4 = load %struct.sd*, %struct.sd** %2, align 8
  %5 = getelementptr inbounds %struct.sd, %struct.sd* %4, i32 0, i32 0
  %6 = load %struct.s5k83a_priv*, %struct.s5k83a_priv** %5, align 8
  store %struct.s5k83a_priv* %6, %struct.s5k83a_priv** %3, align 8
  %7 = load %struct.s5k83a_priv*, %struct.s5k83a_priv** %3, align 8
  %8 = getelementptr inbounds %struct.s5k83a_priv, %struct.s5k83a_priv* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.s5k83a_priv*, %struct.s5k83a_priv** %3, align 8
  %13 = getelementptr inbounds %struct.s5k83a_priv, %struct.s5k83a_priv* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @kthread_stop(i64 %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.sd*, %struct.sd** %2, align 8
  %18 = call i32 @s5k83a_set_led_indication(%struct.sd* %17, i32 0)
  ret i32 %18
}

declare dso_local i32 @kthread_stop(i64) #1

declare dso_local i32 @s5k83a_set_led_indication(%struct.sd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
