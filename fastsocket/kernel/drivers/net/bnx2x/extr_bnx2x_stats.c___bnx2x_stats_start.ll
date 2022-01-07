; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_stats.c___bnx2x_stats_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_stats.c___bnx2x_stats_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*)* @__bnx2x_stats_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__bnx2x_stats_start(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %3 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %4 = call i64 @IS_PF(%struct.bnx2x* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %29

6:                                                ; preds = %1
  %7 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %8 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %6
  %13 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %14 = call i32 @bnx2x_port_stats_init(%struct.bnx2x* %13)
  br label %24

15:                                               ; preds = %6
  %16 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %17 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %22 = call i32 @bnx2x_func_stats_init(%struct.bnx2x* %21)
  br label %23

23:                                               ; preds = %20, %15
  br label %24

24:                                               ; preds = %23, %12
  %25 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %26 = call i32 @bnx2x_hw_stats_post(%struct.bnx2x* %25)
  %27 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %28 = call i32 @bnx2x_storm_stats_post(%struct.bnx2x* %27)
  br label %29

29:                                               ; preds = %24, %1
  %30 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %31 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  ret void
}

declare dso_local i64 @IS_PF(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_port_stats_init(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_func_stats_init(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_hw_stats_post(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_storm_stats_post(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
