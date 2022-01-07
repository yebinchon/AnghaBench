; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_sge.c_ofld_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_sge.c_ofld_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.sge_txq = type { i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }

@TX_RECLAIM_CHUNK = common dso_local global i32 0, align 4
@TXQ_OFLD = common dso_local global i32 0, align 4
@NET_XMIT_CN = common dso_local global i32 0, align 4
@NET_XMIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.sge_txq*, %struct.sk_buff*)* @ofld_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofld_xmit(%struct.adapter* %0, %struct.sge_txq* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca %struct.sge_txq*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store %struct.sge_txq* %1, %struct.sge_txq** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %13 = call i32 @calc_tx_descs_ofld(%struct.sk_buff* %12)
  store i32 %13, i32* %9, align 4
  %14 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %15 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %14, i32 0, i32 4
  %16 = call i32 @spin_lock(i32* %15)
  br label %17

17:                                               ; preds = %42, %3
  %18 = load %struct.adapter*, %struct.adapter** %5, align 8
  %19 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %20 = load i32, i32* @TX_RECLAIM_CHUNK, align 4
  %21 = call i32 @reclaim_completed_tx(%struct.adapter* %18, %struct.sge_txq* %19, i32 %20)
  %22 = load %struct.adapter*, %struct.adapter** %5, align 8
  %23 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @TXQ_OFLD, align 4
  %27 = call i32 @check_desc_avail(%struct.adapter* %22, %struct.sge_txq* %23, %struct.sk_buff* %24, i32 %25, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %17
  %32 = load i32, i32* %8, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %39 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %38, i32 0, i32 4
  %40 = call i32 @spin_unlock(i32* %39)
  %41 = load i32, i32* @NET_XMIT_CN, align 4
  store i32 %41, i32* %4, align 4
  br label %94

42:                                               ; preds = %31
  br label %17

43:                                               ; preds = %17
  %44 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %45 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %49 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = add i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %53 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %57 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = add i32 %58, %55
  store i32 %59, i32* %57, align 4
  %60 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %61 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %64 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = icmp uge i32 %62, %65
  br i1 %66, label %67, label %79

67:                                               ; preds = %43
  %68 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %69 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %72 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = sub i32 %73, %70
  store i32 %74, i32* %72, align 4
  %75 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %76 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = xor i32 %77, 1
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %67, %43
  %80 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %81 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %80, i32 0, i32 4
  %82 = call i32 @spin_unlock(i32* %81)
  %83 = load %struct.adapter*, %struct.adapter** %5, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %85 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @write_ofld_wr(%struct.adapter* %83, %struct.sk_buff* %84, %struct.sge_txq* %85, i32 %86, i32 %87, i32 %88)
  %90 = load %struct.adapter*, %struct.adapter** %5, align 8
  %91 = load %struct.sge_txq*, %struct.sge_txq** %6, align 8
  %92 = call i32 @check_ring_tx_db(%struct.adapter* %90, %struct.sge_txq* %91)
  %93 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %79, %34
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @calc_tx_descs_ofld(%struct.sk_buff*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @reclaim_completed_tx(%struct.adapter*, %struct.sge_txq*, i32) #1

declare dso_local i32 @check_desc_avail(%struct.adapter*, %struct.sge_txq*, %struct.sk_buff*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @write_ofld_wr(%struct.adapter*, %struct.sk_buff*, %struct.sge_txq*, i32, i32, i32) #1

declare dso_local i32 @check_ring_tx_db(%struct.adapter*, %struct.sge_txq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
