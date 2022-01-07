; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_stats.c_bnx2x_stats_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_stats.c_bnx2x_stats_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unable to acquire stats lock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*)* @bnx2x_stats_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_stats_stop(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %5 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %4, i32 0, i32 1
  %6 = load i32, i32* @HZ, align 4
  %7 = sdiv i32 %6, 10
  %8 = call i64 @down_timeout(i32* %5, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %1
  %13 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %14 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  %15 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %16 = call i32 @bnx2x_stats_comp(%struct.bnx2x* %15)
  %17 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %18 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %12
  %23 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %24 = call i64 @bnx2x_hw_stats_update(%struct.bnx2x* %23)
  %25 = icmp eq i64 %24, 0
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %22, %12
  %28 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %29 = call i64 @bnx2x_storm_stats_update(%struct.bnx2x* %28)
  %30 = icmp eq i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = load i32, i32* %3, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %27
  %37 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %38 = call i32 @bnx2x_net_stats_update(%struct.bnx2x* %37)
  %39 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %40 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %46 = call i32 @bnx2x_port_stats_stop(%struct.bnx2x* %45)
  br label %47

47:                                               ; preds = %44, %36
  %48 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %49 = call i32 @bnx2x_hw_stats_post(%struct.bnx2x* %48)
  %50 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %51 = call i32 @bnx2x_stats_comp(%struct.bnx2x* %50)
  br label %52

52:                                               ; preds = %47, %27
  %53 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %54 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %53, i32 0, i32 1
  %55 = call i32 @up(i32* %54)
  ret void
}

declare dso_local i64 @down_timeout(i32*, i32) #1

declare dso_local i32 @BNX2X_ERR(i8*) #1

declare dso_local i32 @bnx2x_stats_comp(%struct.bnx2x*) #1

declare dso_local i64 @bnx2x_hw_stats_update(%struct.bnx2x*) #1

declare dso_local i64 @bnx2x_storm_stats_update(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_net_stats_update(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_port_stats_stop(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_hw_stats_post(%struct.bnx2x*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
