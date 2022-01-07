; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_sge.c_restart_sched.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_sge.c_restart_sched.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge = type { %struct.cmdQ*, %struct.adapter* }
%struct.cmdQ = type { i32, i32, i32, i32, i32, i32 }
%struct.adapter = type { i64 }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"restart_sched credits=%d\0A\00", align 1
@CMDQ_STAT_LAST_PKT_DB = common dso_local global i32 0, align 4
@CMDQ_STAT_RUNNING = common dso_local global i32 0, align 4
@F_CMDQ0_ENABLE = common dso_local global i32 0, align 4
@A_SG_DOORBELL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @restart_sched to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restart_sched(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.sge*, align 8
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.cmdQ*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %12 = load i64, i64* %2, align 8
  %13 = inttoptr i64 %12 to %struct.sge*
  store %struct.sge* %13, %struct.sge** %3, align 8
  %14 = load %struct.sge*, %struct.sge** %3, align 8
  %15 = getelementptr inbounds %struct.sge, %struct.sge* %14, i32 0, i32 1
  %16 = load %struct.adapter*, %struct.adapter** %15, align 8
  store %struct.adapter* %16, %struct.adapter** %4, align 8
  %17 = load %struct.sge*, %struct.sge** %3, align 8
  %18 = getelementptr inbounds %struct.sge, %struct.sge* %17, i32 0, i32 0
  %19 = load %struct.cmdQ*, %struct.cmdQ** %18, align 8
  %20 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %19, i64 0
  store %struct.cmdQ* %20, %struct.cmdQ** %5, align 8
  store i32 0, i32* %8, align 4
  %21 = load %struct.cmdQ*, %struct.cmdQ** %5, align 8
  %22 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %21, i32 0, i32 4
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load %struct.sge*, %struct.sge** %3, align 8
  %25 = load %struct.cmdQ*, %struct.cmdQ** %5, align 8
  %26 = call i32 @reclaim_completed_tx(%struct.sge* %24, %struct.cmdQ* %25)
  %27 = load %struct.cmdQ*, %struct.cmdQ** %5, align 8
  %28 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.cmdQ*, %struct.cmdQ** %5, align 8
  %31 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sub i32 %29, %32
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %88, %1
  %37 = load %struct.sge*, %struct.sge** %3, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call %struct.sk_buff* @sched_skb(%struct.sge* %37, i32* null, i32 %38)
  store %struct.sk_buff* %39, %struct.sk_buff** %6, align 8
  %40 = icmp ne %struct.sk_buff* %39, null
  br i1 %40, label %41, label %102

41:                                               ; preds = %36
  %42 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %43 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %42)
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 1, %45
  store i32 %46, i32* %11, align 4
  %47 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %48 = call i64 @compute_large_page_tx_descs(%struct.sk_buff* %47)
  %49 = load i32, i32* %11, align 4
  %50 = zext i32 %49 to i64
  %51 = add nsw i64 %50, %48
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.cmdQ*, %struct.cmdQ** %5, align 8
  %55 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = add i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load %struct.cmdQ*, %struct.cmdQ** %5, align 8
  %59 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %9, align 4
  %61 = load %struct.cmdQ*, %struct.cmdQ** %5, align 8
  %62 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load %struct.cmdQ*, %struct.cmdQ** %5, align 8
  %66 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = add i32 %67, %64
  store i32 %68, i32* %66, align 4
  %69 = load %struct.cmdQ*, %struct.cmdQ** %5, align 8
  %70 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.cmdQ*, %struct.cmdQ** %5, align 8
  %73 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp uge i32 %71, %74
  br i1 %75, label %76, label %88

76:                                               ; preds = %41
  %77 = load %struct.cmdQ*, %struct.cmdQ** %5, align 8
  %78 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.cmdQ*, %struct.cmdQ** %5, align 8
  %81 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = sub i32 %82, %79
  store i32 %83, i32* %81, align 4
  %84 = load %struct.cmdQ*, %struct.cmdQ** %5, align 8
  %85 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = xor i32 %86, 1
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %76, %41
  %89 = load %struct.adapter*, %struct.adapter** %4, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.cmdQ*, %struct.cmdQ** %5, align 8
  %94 = call i32 @write_tx_descs(%struct.adapter* %89, %struct.sk_buff* %90, i32 %91, i32 %92, %struct.cmdQ* %93)
  %95 = load %struct.cmdQ*, %struct.cmdQ** %5, align 8
  %96 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.cmdQ*, %struct.cmdQ** %5, align 8
  %99 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = sub i32 %97, %100
  store i32 %101, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %36

102:                                              ; preds = %36
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %128

105:                                              ; preds = %102
  %106 = load i32, i32* @CMDQ_STAT_LAST_PKT_DB, align 4
  %107 = load %struct.cmdQ*, %struct.cmdQ** %5, align 8
  %108 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %107, i32 0, i32 5
  %109 = call i32 @clear_bit(i32 %106, i32* %108)
  %110 = load i32, i32* @CMDQ_STAT_RUNNING, align 4
  %111 = load %struct.cmdQ*, %struct.cmdQ** %5, align 8
  %112 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %111, i32 0, i32 5
  %113 = call i64 @test_and_set_bit(i32 %110, i32* %112)
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %127

115:                                              ; preds = %105
  %116 = load i32, i32* @CMDQ_STAT_LAST_PKT_DB, align 4
  %117 = load %struct.cmdQ*, %struct.cmdQ** %5, align 8
  %118 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %117, i32 0, i32 5
  %119 = call i32 @set_bit(i32 %116, i32* %118)
  %120 = load i32, i32* @F_CMDQ0_ENABLE, align 4
  %121 = load %struct.adapter*, %struct.adapter** %4, align 8
  %122 = getelementptr inbounds %struct.adapter, %struct.adapter* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @A_SG_DOORBELL, align 8
  %125 = add nsw i64 %123, %124
  %126 = call i32 @writel(i32 %120, i64 %125)
  br label %127

127:                                              ; preds = %115, %105
  br label %128

128:                                              ; preds = %127, %102
  %129 = load %struct.cmdQ*, %struct.cmdQ** %5, align 8
  %130 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %129, i32 0, i32 4
  %131 = call i32 @spin_unlock(i32* %130)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @reclaim_completed_tx(%struct.sge*, %struct.cmdQ*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local %struct.sk_buff* @sched_skb(%struct.sge*, i32*, i32) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @compute_large_page_tx_descs(%struct.sk_buff*) #1

declare dso_local i32 @write_tx_descs(%struct.adapter*, %struct.sk_buff*, i32, i32, %struct.cmdQ*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
