; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_stats.c_bnx2x_stats_handle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_stats.c_bnx2x_stats_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, void (%struct.bnx2x*)* }
%struct.bnx2x = type { i32, i32, i32 }

@bnx2x_stats_stm = common dso_local global %struct.TYPE_2__** null, align 8
@STATS_EVENT_UPDATE = common dso_local global i32 0, align 4
@BNX2X_MSG_STATS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"state %d -> event %d -> state %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2x_stats_handle(%struct.bnx2x* %0, i32 %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca void (%struct.bnx2x*)*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %8 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @unlikely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %62

13:                                               ; preds = %2
  %14 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %15 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %14, i32 0, i32 1
  %16 = call i32 @spin_lock_bh(i32* %15)
  %17 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %18 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %5, align 4
  %20 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @bnx2x_stats_stm, align 8
  %21 = load i32, i32* %5, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %20, i64 %22
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %31 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @bnx2x_stats_stm, align 8
  %33 = load i32, i32* %5, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %32, i64 %34
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load void (%struct.bnx2x*)*, void (%struct.bnx2x*)** %40, align 8
  store void (%struct.bnx2x*)* %41, void (%struct.bnx2x*)** %6, align 8
  %42 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %43 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %42, i32 0, i32 1
  %44 = call i32 @spin_unlock_bh(i32* %43)
  %45 = load void (%struct.bnx2x*)*, void (%struct.bnx2x*)** %6, align 8
  %46 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  call void %45(%struct.bnx2x* %46)
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @STATS_EVENT_UPDATE, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %13
  %51 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %52 = call i64 @netif_msg_timer(%struct.bnx2x* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %50, %13
  %55 = load i32, i32* @BNX2X_MSG_STATS, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %4, align 4
  %58 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %59 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @DP(i32 %55, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %57, i32 %60)
  br label %62

62:                                               ; preds = %12, %54, %50
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i64 @netif_msg_timer(%struct.bnx2x*) #1

declare dso_local i32 @DP(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
