; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/cxgb4i/extr_cxgb4i.c_do_peer_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/cxgb4i/extr_cxgb4i.c_do_peer_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_device = type { i32 }
%struct.sk_buff = type { i64 }
%struct.cxgbi_sock = type { i32, i32, i32 }
%struct.cpl_peer_close = type { i32 }
%struct.cxgb4_lld_info = type { %struct.tid_info* }
%struct.tid_info = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"can't find connection for tid %u.\0A\00", align 1
@CXGBI_DBG_TOE = common dso_local global i32 0, align 4
@CXGBI_DBG_SOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"csk 0x%p,%u,0x%lx,%u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cxgbi_device*, %struct.sk_buff*)* @do_peer_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_peer_close(%struct.cxgbi_device* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.cxgbi_device*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.cxgbi_sock*, align 8
  %6 = alloca %struct.cpl_peer_close*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cxgb4_lld_info*, align 8
  %9 = alloca %struct.tid_info*, align 8
  store %struct.cxgbi_device* %0, %struct.cxgbi_device** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.cpl_peer_close*
  store %struct.cpl_peer_close* %13, %struct.cpl_peer_close** %6, align 8
  %14 = load %struct.cpl_peer_close*, %struct.cpl_peer_close** %6, align 8
  %15 = call i32 @GET_TID(%struct.cpl_peer_close* %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %17 = call %struct.cxgb4_lld_info* @cxgbi_cdev_priv(%struct.cxgbi_device* %16)
  store %struct.cxgb4_lld_info* %17, %struct.cxgb4_lld_info** %8, align 8
  %18 = load %struct.cxgb4_lld_info*, %struct.cxgb4_lld_info** %8, align 8
  %19 = getelementptr inbounds %struct.cxgb4_lld_info, %struct.cxgb4_lld_info* %18, i32 0, i32 0
  %20 = load %struct.tid_info*, %struct.tid_info** %19, align 8
  store %struct.tid_info* %20, %struct.tid_info** %9, align 8
  %21 = load %struct.tid_info*, %struct.tid_info** %9, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call %struct.cxgbi_sock* @lookup_tid(%struct.tid_info* %21, i32 %22)
  store %struct.cxgbi_sock* %23, %struct.cxgbi_sock** %5, align 8
  %24 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %25 = icmp ne %struct.cxgbi_sock* %24, null
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %52

33:                                               ; preds = %2
  %34 = load i32, i32* @CXGBI_DBG_TOE, align 4
  %35 = shl i32 1, %34
  %36 = load i32, i32* @CXGBI_DBG_SOCK, align 4
  %37 = shl i32 1, %36
  %38 = or i32 %35, %37
  %39 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %40 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %41 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %44 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %47 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @log_debug(i32 %38, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), %struct.cxgbi_sock* %39, i32 %42, i32 %45, i32 %48)
  %50 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %51 = call i32 @cxgbi_sock_rcv_peer_close(%struct.cxgbi_sock* %50)
  br label %52

52:                                               ; preds = %33, %30
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = call i32 @__kfree_skb(%struct.sk_buff* %53)
  ret void
}

declare dso_local i32 @GET_TID(%struct.cpl_peer_close*) #1

declare dso_local %struct.cxgb4_lld_info* @cxgbi_cdev_priv(%struct.cxgbi_device*) #1

declare dso_local %struct.cxgbi_sock* @lookup_tid(%struct.tid_info*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @log_debug(i32, i8*, %struct.cxgbi_sock*, i32, i32, i32) #1

declare dso_local i32 @cxgbi_sock_rcv_peer_close(%struct.cxgbi_sock*) #1

declare dso_local i32 @__kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
