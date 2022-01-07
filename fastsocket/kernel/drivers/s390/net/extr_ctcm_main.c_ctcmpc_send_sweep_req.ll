; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_ctcm_main.c_ctcmpc_send_sweep_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_ctcm_main.c_ctcmpc_send_sweep_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel = type { i32, i32, i32, %struct.net_device* }
%struct.net_device = type { i32, %struct.ctcm_priv* }
%struct.ctcm_priv = type { %struct.channel**, %struct.mpc_group* }
%struct.mpc_group = type { i32, i32, i32*, i32, i32 }
%struct.th_sweep = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }

@WRITE = common dso_local global i64 0, align 8
@READ = common dso_local global i64 0, align 8
@MPC_BUFSIZE_DEFAULT = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@TH_SWEEP_LENGTH = common dso_local global i32 0, align 4
@TH_SWEEP_REQ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@CTC_EVENT_RSWEEP_TIMER = common dso_local global i32 0, align 4
@MPCG_EVENT_INOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.channel*)* @ctcmpc_send_sweep_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctcmpc_send_sweep_req(%struct.channel* %0) #0 {
  %2 = alloca %struct.channel*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ctcm_priv*, align 8
  %5 = alloca %struct.mpc_group*, align 8
  %6 = alloca %struct.th_sweep*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.channel*, align 8
  store %struct.channel* %0, %struct.channel** %2, align 8
  %9 = load %struct.channel*, %struct.channel** %2, align 8
  %10 = getelementptr inbounds %struct.channel, %struct.channel* %9, i32 0, i32 3
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %3, align 8
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 1
  %14 = load %struct.ctcm_priv*, %struct.ctcm_priv** %13, align 8
  store %struct.ctcm_priv* %14, %struct.ctcm_priv** %4, align 8
  %15 = load %struct.ctcm_priv*, %struct.ctcm_priv** %4, align 8
  %16 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %15, i32 0, i32 1
  %17 = load %struct.mpc_group*, %struct.mpc_group** %16, align 8
  store %struct.mpc_group* %17, %struct.mpc_group** %5, align 8
  %18 = load %struct.ctcm_priv*, %struct.ctcm_priv** %4, align 8
  %19 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %18, i32 0, i32 0
  %20 = load %struct.channel**, %struct.channel*** %19, align 8
  %21 = load i64, i64* @WRITE, align 8
  %22 = getelementptr inbounds %struct.channel*, %struct.channel** %20, i64 %21
  %23 = load %struct.channel*, %struct.channel** %22, align 8
  store %struct.channel* %23, %struct.channel** %8, align 8
  %24 = load %struct.mpc_group*, %struct.mpc_group** %5, align 8
  %25 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %1
  %29 = load %struct.mpc_group*, %struct.mpc_group** %5, align 8
  %30 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.mpc_group*, %struct.mpc_group** %5, align 8
  %32 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* @READ, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.mpc_group*, %struct.mpc_group** %5, align 8
  %38 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 4
  %39 = load %struct.mpc_group*, %struct.mpc_group** %5, align 8
  %40 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* @READ, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.mpc_group*, %struct.mpc_group** %5, align 8
  %46 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  br label %47

47:                                               ; preds = %28, %1
  %48 = load i32, i32* @MPC_BUFSIZE_DEFAULT, align 4
  %49 = load i32, i32* @GFP_ATOMIC, align 4
  %50 = load i32, i32* @GFP_DMA, align 4
  %51 = or i32 %49, %50
  %52 = call %struct.sk_buff* @__dev_alloc_skb(i32 %48, i32 %51)
  store %struct.sk_buff* %52, %struct.sk_buff** %7, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %54 = icmp eq %struct.sk_buff* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %108

56:                                               ; preds = %47
  %57 = load i32, i32* @TH_SWEEP_LENGTH, align 4
  %58 = call i32 (...) @gfp_type()
  %59 = call %struct.th_sweep* @kmalloc(i32 %57, i32 %58)
  store %struct.th_sweep* %59, %struct.th_sweep** %6, align 8
  %60 = load %struct.th_sweep*, %struct.th_sweep** %6, align 8
  %61 = icmp ne %struct.th_sweep* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %56
  %63 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %64 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %63)
  br label %108

65:                                               ; preds = %56
  %66 = load %struct.th_sweep*, %struct.th_sweep** %6, align 8
  %67 = getelementptr inbounds %struct.th_sweep, %struct.th_sweep* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  store i32 0, i32* %68, align 4
  %69 = load i32, i32* @TH_SWEEP_REQ, align 4
  %70 = load %struct.th_sweep*, %struct.th_sweep** %6, align 8
  %71 = getelementptr inbounds %struct.th_sweep, %struct.th_sweep* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 4
  store i32 %69, i32* %72, align 4
  %73 = load %struct.th_sweep*, %struct.th_sweep** %6, align 8
  %74 = getelementptr inbounds %struct.th_sweep, %struct.th_sweep* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  store i32 0, i32* %75, align 4
  %76 = load %struct.th_sweep*, %struct.th_sweep** %6, align 8
  %77 = getelementptr inbounds %struct.th_sweep, %struct.th_sweep* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 2
  store i32 0, i32* %78, align 4
  %79 = load %struct.th_sweep*, %struct.th_sweep** %6, align 8
  %80 = getelementptr inbounds %struct.th_sweep, %struct.th_sweep* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 3
  store i32 0, i32* %81, align 4
  %82 = load %struct.channel*, %struct.channel** %8, align 8
  %83 = getelementptr inbounds %struct.channel, %struct.channel* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.th_sweep*, %struct.th_sweep** %6, align 8
  %86 = getelementptr inbounds %struct.th_sweep, %struct.th_sweep* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  store i32 %84, i32* %87, align 4
  %88 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %89 = load i32, i32* @TH_SWEEP_LENGTH, align 4
  %90 = call i32 @skb_put(%struct.sk_buff* %88, i32 %89)
  %91 = load %struct.th_sweep*, %struct.th_sweep** %6, align 8
  %92 = load i32, i32* @TH_SWEEP_LENGTH, align 4
  %93 = call i32 @memcpy(i32 %90, %struct.th_sweep* %91, i32 %92)
  %94 = load %struct.th_sweep*, %struct.th_sweep** %6, align 8
  %95 = call i32 @kfree(%struct.th_sweep* %94)
  %96 = load i32, i32* @jiffies, align 4
  %97 = load %struct.net_device*, %struct.net_device** %3, align 8
  %98 = getelementptr inbounds %struct.net_device, %struct.net_device* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load %struct.channel*, %struct.channel** %8, align 8
  %100 = getelementptr inbounds %struct.channel, %struct.channel* %99, i32 0, i32 1
  %101 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %102 = call i32 @skb_queue_tail(i32* %100, %struct.sk_buff* %101)
  %103 = load %struct.channel*, %struct.channel** %8, align 8
  %104 = getelementptr inbounds %struct.channel, %struct.channel* %103, i32 0, i32 0
  %105 = load i32, i32* @CTC_EVENT_RSWEEP_TIMER, align 4
  %106 = load %struct.channel*, %struct.channel** %8, align 8
  %107 = call i32 @fsm_addtimer(i32* %104, i32 100, i32 %105, %struct.channel* %106)
  br label %119

108:                                              ; preds = %62, %55
  %109 = load %struct.mpc_group*, %struct.mpc_group** %5, align 8
  %110 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %109, i32 0, i32 0
  store i32 0, i32* %110, align 8
  %111 = load %struct.net_device*, %struct.net_device** %3, align 8
  %112 = call i32 @ctcm_clear_busy(%struct.net_device* %111)
  %113 = load %struct.mpc_group*, %struct.mpc_group** %5, align 8
  %114 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @MPCG_EVENT_INOP, align 4
  %117 = load %struct.net_device*, %struct.net_device** %3, align 8
  %118 = call i32 @fsm_event(i32 %115, i32 %116, %struct.net_device* %117)
  br label %119

119:                                              ; preds = %108, %65
  ret void
}

declare dso_local %struct.sk_buff* @__dev_alloc_skb(i32, i32) #1

declare dso_local %struct.th_sweep* @kmalloc(i32, i32) #1

declare dso_local i32 @gfp_type(...) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(i32, %struct.th_sweep*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @kfree(%struct.th_sweep*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @fsm_addtimer(i32*, i32, i32, %struct.channel*) #1

declare dso_local i32 @ctcm_clear_busy(%struct.net_device*) #1

declare dso_local i32 @fsm_event(i32, i32, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
