; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/clocksource/extr_sh_cmt.c_sh_cmt_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/clocksource/extr_sh_cmt.c_sh_cmt_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_cmt_priv = type { i64, i32, i32, i32 }

@FLAG_CLOCKEVENT = common dso_local global i64 0, align 8
@FLAG_CLOCKSOURCE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_cmt_priv*, i64)* @sh_cmt_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_cmt_start(%struct.sh_cmt_priv* %0, i64 %1) #0 {
  %3 = alloca %struct.sh_cmt_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.sh_cmt_priv* %0, %struct.sh_cmt_priv** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %3, align 8
  %8 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %7, i32 0, i32 1
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %3, align 8
  %12 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @FLAG_CLOCKEVENT, align 8
  %15 = load i64, i64* @FLAG_CLOCKSOURCE, align 8
  %16 = or i64 %14, %15
  %17 = and i64 %13, %16
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %2
  %20 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %3, align 8
  %21 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %3, align 8
  %22 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %21, i32 0, i32 3
  %23 = call i32 @sh_cmt_enable(%struct.sh_cmt_priv* %20, i32* %22)
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %19, %2
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  br label %51

28:                                               ; preds = %24
  %29 = load i64, i64* %4, align 8
  %30 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %3, align 8
  %31 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = or i64 %32, %29
  store i64 %33, i64* %31, align 8
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* @FLAG_CLOCKSOURCE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %28
  %38 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %3, align 8
  %39 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @FLAG_CLOCKEVENT, align 8
  %42 = and i64 %40, %41
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %37
  %45 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %3, align 8
  %46 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %3, align 8
  %47 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @sh_cmt_set_next(%struct.sh_cmt_priv* %45, i32 %48)
  br label %50

50:                                               ; preds = %44, %37, %28
  br label %51

51:                                               ; preds = %50, %27
  %52 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %3, align 8
  %53 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %52, i32 0, i32 1
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i64 %54)
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sh_cmt_enable(%struct.sh_cmt_priv*, i32*) #1

declare dso_local i32 @sh_cmt_set_next(%struct.sh_cmt_priv*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
