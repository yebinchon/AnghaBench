; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_ucb1400_ts.c_ucb1400_handle_pending_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_ucb1400_ts.c_ucb1400_handle_pending_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucb1400_ts = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@UCB_IE_STATUS = common dso_local global i32 0, align 4
@UCB_IE_CLEAR = common dso_local global i32 0, align 4
@UCB_IE_TSPX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"ucb1400: unexpected IE_STATUS = %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucb1400_ts*)* @ucb1400_handle_pending_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ucb1400_handle_pending_irq(%struct.ucb1400_ts* %0) #0 {
  %2 = alloca %struct.ucb1400_ts*, align 8
  %3 = alloca i32, align 4
  store %struct.ucb1400_ts* %0, %struct.ucb1400_ts** %2, align 8
  %4 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %2, align 8
  %5 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @UCB_IE_STATUS, align 4
  %8 = call i32 @ucb1400_reg_read(i32 %6, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %2, align 8
  %10 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @UCB_IE_CLEAR, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @ucb1400_reg_write(i32 %11, i32 %12, i32 %13)
  %15 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %2, align 8
  %16 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @UCB_IE_CLEAR, align 4
  %19 = call i32 @ucb1400_reg_write(i32 %17, i32 %18, i32 0)
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @UCB_IE_TSPX, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %2, align 8
  %26 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @ucb1400_ts_irq_disable(i32 %27)
  br label %36

29:                                               ; preds = %1
  %30 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %2, align 8
  %31 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @dev_dbg(i32* %33, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %29, %24
  %37 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %2, align 8
  %38 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @enable_irq(i32 %39)
  ret void
}

declare dso_local i32 @ucb1400_reg_read(i32, i32) #1

declare dso_local i32 @ucb1400_reg_write(i32, i32, i32) #1

declare dso_local i32 @ucb1400_ts_irq_disable(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @enable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
