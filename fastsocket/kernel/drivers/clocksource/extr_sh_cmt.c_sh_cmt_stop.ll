; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/clocksource/extr_sh_cmt.c_sh_cmt_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/clocksource/extr_sh_cmt.c_sh_cmt_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_cmt_priv = type { i64, i32, i32 }

@FLAG_CLOCKEVENT = common dso_local global i64 0, align 8
@FLAG_CLOCKSOURCE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sh_cmt_priv*, i64)* @sh_cmt_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_cmt_stop(%struct.sh_cmt_priv* %0, i64 %1) #0 {
  %3 = alloca %struct.sh_cmt_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.sh_cmt_priv* %0, %struct.sh_cmt_priv** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %3, align 8
  %8 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %7, i32 0, i32 1
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %3, align 8
  %12 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @FLAG_CLOCKEVENT, align 8
  %15 = load i64, i64* @FLAG_CLOCKSOURCE, align 8
  %16 = or i64 %14, %15
  %17 = and i64 %13, %16
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %4, align 8
  %19 = xor i64 %18, -1
  %20 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %3, align 8
  %21 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = and i64 %22, %19
  store i64 %23, i64* %21, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %2
  %27 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %3, align 8
  %28 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @FLAG_CLOCKEVENT, align 8
  %31 = load i64, i64* @FLAG_CLOCKSOURCE, align 8
  %32 = or i64 %30, %31
  %33 = and i64 %29, %32
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %26
  %36 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %3, align 8
  %37 = call i32 @sh_cmt_disable(%struct.sh_cmt_priv* %36)
  br label %38

38:                                               ; preds = %35, %26, %2
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* @FLAG_CLOCKEVENT, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %38
  %43 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %3, align 8
  %44 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @FLAG_CLOCKSOURCE, align 8
  %47 = and i64 %45, %46
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %42
  %50 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %3, align 8
  %51 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %3, align 8
  %52 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @sh_cmt_set_next(%struct.sh_cmt_priv* %50, i32 %53)
  br label %55

55:                                               ; preds = %49, %42, %38
  %56 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %3, align 8
  %57 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %56, i32 0, i32 1
  %58 = load i64, i64* %5, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sh_cmt_disable(%struct.sh_cmt_priv*) #1

declare dso_local i32 @sh_cmt_set_next(%struct.sh_cmt_priv*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
