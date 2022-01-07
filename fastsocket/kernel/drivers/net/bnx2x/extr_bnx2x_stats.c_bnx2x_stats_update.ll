; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_stats.c_bnx2x_stats_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_stats.c_bnx2x_stats_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, i32, %struct.bnx2x_eth_stats, i32, %struct.TYPE_2__, i32 }
%struct.bnx2x_eth_stats = type { i32, i32 }
%struct.TYPE_2__ = type { i64 }

@DMAE_COMP_VAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"storm stats were not updated for 3 times\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"brb drops %u  brb truncate %u\0A\00", align 1
@stats_comp = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*)* @bnx2x_stats_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_stats_update(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca %struct.bnx2x_eth_stats*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %5 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %6 = load i64*, i64** %3, align 8
  %7 = ptrtoint i64* %6 to i32
  %8 = call i64* @bnx2x_sp(%struct.bnx2x* %5, i32 %7)
  store i64* %8, i64** %3, align 8
  %9 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %10 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %9, i32 0, i32 0
  %11 = call i64 @down_trylock(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %96

14:                                               ; preds = %1
  %15 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %16 = call i64 @bnx2x_edebug_stats_stopped(%struct.bnx2x* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %20 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18, %14
  br label %92

24:                                               ; preds = %18
  %25 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %26 = call i64 @IS_PF(%struct.bnx2x* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %58

28:                                               ; preds = %24
  %29 = load i64*, i64** %3, align 8
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @DMAE_COMP_VAL, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %92

34:                                               ; preds = %28
  %35 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %36 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %42 = call i32 @bnx2x_hw_stats_update(%struct.bnx2x* %41)
  br label %43

43:                                               ; preds = %40, %34
  %44 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %45 = call i64 @bnx2x_storm_stats_update(%struct.bnx2x* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %43
  %48 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %49 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 8
  %52 = icmp eq i32 %50, 3
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %55 = call i32 (...) @bnx2x_panic()
  br label %56

56:                                               ; preds = %53, %47
  br label %92

57:                                               ; preds = %43
  br label %61

58:                                               ; preds = %24
  %59 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %60 = call i64 @bnx2x_storm_stats_update(%struct.bnx2x* %59)
  br label %61

61:                                               ; preds = %58, %57
  %62 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %63 = call i32 @bnx2x_net_stats_update(%struct.bnx2x* %62)
  %64 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %65 = call i32 @bnx2x_drv_stats_update(%struct.bnx2x* %64)
  %66 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %67 = call i64 @IS_VF(%struct.bnx2x* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %92

70:                                               ; preds = %61
  %71 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %72 = call i64 @netif_msg_timer(%struct.bnx2x* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %70
  %75 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %76 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %75, i32 0, i32 2
  store %struct.bnx2x_eth_stats* %76, %struct.bnx2x_eth_stats** %4, align 8
  %77 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %78 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.bnx2x_eth_stats*, %struct.bnx2x_eth_stats** %4, align 8
  %81 = getelementptr inbounds %struct.bnx2x_eth_stats, %struct.bnx2x_eth_stats* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.bnx2x_eth_stats*, %struct.bnx2x_eth_stats** %4, align 8
  %84 = getelementptr inbounds %struct.bnx2x_eth_stats, %struct.bnx2x_eth_stats* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @netdev_dbg(i32 %79, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %82, i32 %85)
  br label %87

87:                                               ; preds = %74, %70
  %88 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %89 = call i32 @bnx2x_hw_stats_post(%struct.bnx2x* %88)
  %90 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %91 = call i32 @bnx2x_storm_stats_post(%struct.bnx2x* %90)
  br label %92

92:                                               ; preds = %87, %69, %56, %33, %23
  %93 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %94 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %93, i32 0, i32 0
  %95 = call i32 @up(i32* %94)
  br label %96

96:                                               ; preds = %92, %13
  ret void
}

declare dso_local i64* @bnx2x_sp(%struct.bnx2x*, i32) #1

declare dso_local i64 @down_trylock(i32*) #1

declare dso_local i64 @bnx2x_edebug_stats_stopped(%struct.bnx2x*) #1

declare dso_local i64 @IS_PF(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_hw_stats_update(%struct.bnx2x*) #1

declare dso_local i64 @bnx2x_storm_stats_update(%struct.bnx2x*) #1

declare dso_local i32 @BNX2X_ERR(i8*) #1

declare dso_local i32 @bnx2x_panic(...) #1

declare dso_local i32 @bnx2x_net_stats_update(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_drv_stats_update(%struct.bnx2x*) #1

declare dso_local i64 @IS_VF(%struct.bnx2x*) #1

declare dso_local i64 @netif_msg_timer(%struct.bnx2x*) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @bnx2x_hw_stats_post(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_storm_stats_post(%struct.bnx2x*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
