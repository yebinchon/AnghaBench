; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_ucb1400_ts.c_ucb1400_hard_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_ucb1400_ts.c_ucb1400_hard_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucb1400_ts = type { i32, i32, i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ucb1400_hard_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucb1400_hard_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ucb1400_ts*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.ucb1400_ts*
  store %struct.ucb1400_ts* %8, %struct.ucb1400_ts** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %6, align 8
  %11 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %9, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %2
  %15 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %6, align 8
  %16 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @disable_irq_nosync(i32 %17)
  %19 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %6, align 8
  %20 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %19, i32 0, i32 1
  store i32 1, i32* %20, align 4
  %21 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %6, align 8
  %22 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %21, i32 0, i32 2
  %23 = call i32 @wake_up(i32* %22)
  %24 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %24, i32* %3, align 4
  br label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @IRQ_NONE, align 4
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %25, %14
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @disable_irq_nosync(i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
