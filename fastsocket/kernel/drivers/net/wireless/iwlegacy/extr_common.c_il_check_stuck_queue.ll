; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_check_stuck_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_check_stuck_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.TYPE_2__*, %struct.il_tx_queue* }
%struct.TYPE_2__ = type { i32 }
%struct.il_tx_queue = type { i64, %struct.il_queue }
%struct.il_queue = type { i64, i64, i32 }

@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Queue %d stuck for %u ms.\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*, i32)* @il_check_stuck_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il_check_stuck_queue(%struct.il_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.il_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.il_tx_queue*, align 8
  %7 = alloca %struct.il_queue*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %12 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %11, i32 0, i32 1
  %13 = load %struct.il_tx_queue*, %struct.il_tx_queue** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %13, i64 %15
  store %struct.il_tx_queue* %16, %struct.il_tx_queue** %6, align 8
  %17 = load %struct.il_tx_queue*, %struct.il_tx_queue** %6, align 8
  %18 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %17, i32 0, i32 1
  store %struct.il_queue* %18, %struct.il_queue** %7, align 8
  %19 = load i64, i64* @jiffies, align 8
  store i64 %19, i64* %9, align 8
  %20 = load %struct.il_queue*, %struct.il_queue** %7, align 8
  %21 = getelementptr inbounds %struct.il_queue, %struct.il_queue* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.il_queue*, %struct.il_queue** %7, align 8
  %24 = getelementptr inbounds %struct.il_queue, %struct.il_queue* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load i64, i64* %9, align 8
  %29 = load %struct.il_tx_queue*, %struct.il_tx_queue** %6, align 8
  %30 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  store i32 0, i32* %3, align 4
  br label %66

31:                                               ; preds = %2
  %32 = load %struct.il_tx_queue*, %struct.il_tx_queue** %6, align 8
  %33 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %36 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @msecs_to_jiffies(i32 %39)
  %41 = add i64 %34, %40
  store i64 %41, i64* %8, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* %8, align 8
  %44 = call i64 @time_after(i64 %42, i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %65

46:                                               ; preds = %31
  %47 = load %struct.il_queue*, %struct.il_queue** %7, align 8
  %48 = getelementptr inbounds %struct.il_queue, %struct.il_queue* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i64, i64* %9, align 8
  %51 = load %struct.il_tx_queue*, %struct.il_tx_queue** %6, align 8
  %52 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = sub i64 %50, %53
  %55 = call i32 @jiffies_to_msecs(i64 %54)
  %56 = call i32 @IL_ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %55)
  %57 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %58 = call i32 @il_force_reset(%struct.il_priv* %57, i32 0)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @EAGAIN, align 4
  %61 = sub nsw i32 0, %60
  %62 = icmp eq i32 %59, %61
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 0, i32 1
  store i32 %64, i32* %3, align 4
  br label %66

65:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %46, %27
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @IL_ERR(i8*, i32, i32) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i32 @il_force_reset(%struct.il_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
