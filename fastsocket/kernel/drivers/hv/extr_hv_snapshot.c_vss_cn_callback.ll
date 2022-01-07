; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_hv_snapshot.c_vss_cn_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_hv_snapshot.c_vss_cn_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }
%struct.cn_msg = type { i64 }
%struct.netlink_skb_parms = type { i32 }
%struct.hv_vss_msg = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@VSS_OP_REGISTER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"VSS daemon registered\0A\00", align 1
@vss_transaction = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cn_msg*, %struct.netlink_skb_parms*)* @vss_cn_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vss_cn_callback(%struct.cn_msg* %0, %struct.netlink_skb_parms* %1) #0 {
  %3 = alloca %struct.cn_msg*, align 8
  %4 = alloca %struct.netlink_skb_parms*, align 8
  %5 = alloca %struct.hv_vss_msg*, align 8
  store %struct.cn_msg* %0, %struct.cn_msg** %3, align 8
  store %struct.netlink_skb_parms* %1, %struct.netlink_skb_parms** %4, align 8
  %6 = load %struct.cn_msg*, %struct.cn_msg** %3, align 8
  %7 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.hv_vss_msg*
  store %struct.hv_vss_msg* %9, %struct.hv_vss_msg** %5, align 8
  %10 = load %struct.hv_vss_msg*, %struct.hv_vss_msg** %5, align 8
  %11 = getelementptr inbounds %struct.hv_vss_msg, %struct.hv_vss_msg* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @VSS_OP_REGISTER, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = call i32 @pr_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vss_transaction, i32 0, i32 0), align 8
  %18 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vss_transaction, i32 0, i32 1), align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vss_transaction, i32 0, i32 1), align 8
  %22 = call i32 @hv_vss_onchannelcallback(i32* %21)
  br label %23

23:                                               ; preds = %20, %16
  br label %29

24:                                               ; preds = %2
  %25 = load %struct.hv_vss_msg*, %struct.hv_vss_msg** %5, align 8
  %26 = getelementptr inbounds %struct.hv_vss_msg, %struct.hv_vss_msg* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @vss_respond_to_host(i32 %27)
  br label %29

29:                                               ; preds = %24, %23
  ret void
}

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @hv_vss_onchannelcallback(i32*) #1

declare dso_local i32 @vss_respond_to_host(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
