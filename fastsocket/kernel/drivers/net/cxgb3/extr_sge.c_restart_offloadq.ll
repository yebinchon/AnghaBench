; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_sge.c_restart_offloadq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_sge.c_restart_offloadq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sge_qset = type { i32, i32, %struct.sge_txq* }
%struct.sge_txq = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.port_info = type { %struct.adapter* }
%struct.adapter = type { i32 }

@TXQ_OFLD = common dso_local global i64 0, align 8
@TX_RECLAIM_CHUNK = common dso_local global i32 0, align 4
@A_SG_KDOORBELL = common dso_local global i32 0, align 4
@F_SELEGRCNTX = common dso_local global i32 0, align 4
@TXQ_LAST_PKT_DB = common dso_local global i64 0, align 8
@TXQ_RUNNING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @restart_offloadq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restart_offloadq(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sge_qset*, align 8
  %5 = alloca %struct.sge_txq*, align 8
  %6 = alloca %struct.port_info*, align 8
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %11 = load i64, i64* %2, align 8
  %12 = inttoptr i64 %11 to %struct.sge_qset*
  store %struct.sge_qset* %12, %struct.sge_qset** %4, align 8
  %13 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %14 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %13, i32 0, i32 2
  %15 = load %struct.sge_txq*, %struct.sge_txq** %14, align 8
  %16 = load i64, i64* @TXQ_OFLD, align 8
  %17 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %15, i64 %16
  store %struct.sge_txq* %17, %struct.sge_txq** %5, align 8
  %18 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %19 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.port_info* @netdev_priv(i32 %20)
  store %struct.port_info* %21, %struct.port_info** %6, align 8
  %22 = load %struct.port_info*, %struct.port_info** %6, align 8
  %23 = getelementptr inbounds %struct.port_info, %struct.port_info* %22, i32 0, i32 0
  %24 = load %struct.adapter*, %struct.adapter** %23, align 8
  store %struct.adapter* %24, %struct.adapter** %7, align 8
  %25 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %26 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %25, i32 0, i32 6
  %27 = call i32 @spin_lock(i32* %26)
  br label %28

28:                                               ; preds = %69, %1
  %29 = load %struct.adapter*, %struct.adapter** %7, align 8
  %30 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %31 = load i32, i32* @TX_RECLAIM_CHUNK, align 4
  %32 = call i32 @reclaim_completed_tx(%struct.adapter* %29, %struct.sge_txq* %30, i32 %31)
  br label %33

33:                                               ; preds = %111, %28
  %34 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %35 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %34, i32 0, i32 7
  %36 = call %struct.sk_buff* @skb_peek(i32* %35)
  store %struct.sk_buff* %36, %struct.sk_buff** %3, align 8
  %37 = icmp ne %struct.sk_buff* %36, null
  br i1 %37, label %38, label %129

38:                                               ; preds = %33
  %39 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %10, align 4
  %42 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %43 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %46 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sub i32 %44, %47
  %49 = load i32, i32* %10, align 4
  %50 = icmp ult i32 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %75

54:                                               ; preds = %38
  %55 = load i64, i64* @TXQ_OFLD, align 8
  %56 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %57 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %56, i32 0, i32 0
  %58 = call i32 @set_bit(i64 %55, i32* %57)
  %59 = call i32 (...) @smp_mb__after_clear_bit()
  %60 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %61 = call i64 @should_restart_tx(%struct.sge_txq* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %54
  %64 = load i64, i64* @TXQ_OFLD, align 8
  %65 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %66 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %65, i32 0, i32 0
  %67 = call i64 @test_and_clear_bit(i64 %64, i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %28

70:                                               ; preds = %63, %54
  %71 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %72 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %71, i32 0, i32 8
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  br label %129

75:                                               ; preds = %38
  %76 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %77 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %81 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = add i32 %82, %79
  store i32 %83, i32* %81, align 4
  %84 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %85 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %89 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = add i32 %90, %87
  store i32 %91, i32* %89, align 4
  %92 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %93 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %96 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp uge i32 %94, %97
  br i1 %98, label %99, label %111

99:                                               ; preds = %75
  %100 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %101 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %104 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = sub i32 %105, %102
  store i32 %106, i32* %104, align 4
  %107 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %108 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = xor i32 %109, 1
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %99, %75
  %112 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %113 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %114 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %113, i32 0, i32 7
  %115 = call i32 @__skb_unlink(%struct.sk_buff* %112, i32* %114)
  %116 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %117 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %116, i32 0, i32 6
  %118 = call i32 @spin_unlock(i32* %117)
  %119 = load %struct.adapter*, %struct.adapter** %7, align 8
  %120 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %121 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* %10, align 4
  %125 = call i32 @write_ofld_wr(%struct.adapter* %119, %struct.sk_buff* %120, %struct.sge_txq* %121, i32 %122, i32 %123, i32 %124)
  %126 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %127 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %126, i32 0, i32 6
  %128 = call i32 @spin_lock(i32* %127)
  br label %33

129:                                              ; preds = %70, %33
  %130 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %131 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %130, i32 0, i32 6
  %132 = call i32 @spin_unlock(i32* %131)
  %133 = call i32 (...) @wmb()
  %134 = load %struct.adapter*, %struct.adapter** %7, align 8
  %135 = load i32, i32* @A_SG_KDOORBELL, align 4
  %136 = load i32, i32* @F_SELEGRCNTX, align 4
  %137 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %138 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @V_EGRCNTX(i32 %139)
  %141 = or i32 %136, %140
  %142 = call i32 @t3_write_reg(%struct.adapter* %134, i32 %135, i32 %141)
  ret void
}

declare dso_local %struct.port_info* @netdev_priv(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @reclaim_completed_tx(%struct.adapter*, %struct.sge_txq*, i32) #1

declare dso_local %struct.sk_buff* @skb_peek(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @set_bit(i64, i32*) #1

declare dso_local i32 @smp_mb__after_clear_bit(...) #1

declare dso_local i64 @should_restart_tx(%struct.sge_txq*) #1

declare dso_local i64 @test_and_clear_bit(i64, i32*) #1

declare dso_local i32 @__skb_unlink(%struct.sk_buff*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @write_ofld_wr(%struct.adapter*, %struct.sk_buff*, %struct.sge_txq*, i32, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @t3_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @V_EGRCNTX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
