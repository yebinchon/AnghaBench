; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/clocksource/extr_sh_cmt.c_sh_cmt_clocksource_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/clocksource/extr_sh_cmt.c_sh_cmt_clocksource_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clocksource = type { i32 }
%struct.sh_cmt_priv = type { i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clocksource*)* @sh_cmt_clocksource_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sh_cmt_clocksource_read(%struct.clocksource* %0) #0 {
  %2 = alloca %struct.clocksource*, align 8
  %3 = alloca %struct.sh_cmt_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.clocksource* %0, %struct.clocksource** %2, align 8
  %8 = load %struct.clocksource*, %struct.clocksource** %2, align 8
  %9 = call %struct.sh_cmt_priv* @cs_to_sh_cmt(%struct.clocksource* %8)
  store %struct.sh_cmt_priv* %9, %struct.sh_cmt_priv** %3, align 8
  %10 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %3, align 8
  %11 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %10, i32 0, i32 1
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %3, align 8
  %15 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %6, align 8
  %17 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %3, align 8
  %18 = call i64 @sh_cmt_get_counter(%struct.sh_cmt_priv* %17, i32* %7)
  store i64 %18, i64* %5, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %3, align 8
  %24 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = add i64 %26, %25
  store i64 %27, i64* %5, align 8
  br label %28

28:                                               ; preds = %22, %1
  %29 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %3, align 8
  %30 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %29, i32 0, i32 1
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* %5, align 8
  %35 = add i64 %33, %34
  ret i64 %35
}

declare dso_local %struct.sh_cmt_priv* @cs_to_sh_cmt(%struct.clocksource*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @sh_cmt_get_counter(%struct.sh_cmt_priv*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
