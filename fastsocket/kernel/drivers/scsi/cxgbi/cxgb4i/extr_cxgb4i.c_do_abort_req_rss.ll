; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/cxgb4i/extr_cxgb4i.c_do_abort_req_rss.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/cxgb4i/extr_cxgb4i.c_do_abort_req_rss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_device = type { i32 }
%struct.sk_buff = type { i64 }
%struct.cxgbi_sock = type { i32, i32, i32, i32, i32 }
%struct.cpl_abort_req_rss = type { i64 }
%struct.cxgb4_lld_info = type { %struct.tid_info* }
%struct.tid_info = type { i32 }

@CPL_ABORT_NO_RST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"can't find connection for tid %u.\0A\00", align 1
@CXGBI_DBG_TOE = common dso_local global i32 0, align 4
@CXGBI_DBG_SOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"csk 0x%p,%u,0x%lx, tid %u, status 0x%x.\0A\00", align 1
@CPL_ERR_RTX_NEG_ADVICE = common dso_local global i64 0, align 8
@CPL_ERR_PERSIST_NEG_ADVICE = common dso_local global i64 0, align 8
@CTPF_ABORT_REQ_RCVD = common dso_local global i32 0, align 4
@CTP_ABORTING = common dso_local global i32 0, align 4
@CTPF_ABORT_RPL_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cxgbi_device*, %struct.sk_buff*)* @do_abort_req_rss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_abort_req_rss(%struct.cxgbi_device* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.cxgbi_device*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.cxgbi_sock*, align 8
  %6 = alloca %struct.cpl_abort_req_rss*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cxgb4_lld_info*, align 8
  %9 = alloca %struct.tid_info*, align 8
  %10 = alloca i32, align 4
  store %struct.cxgbi_device* %0, %struct.cxgbi_device** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.cpl_abort_req_rss*
  store %struct.cpl_abort_req_rss* %14, %struct.cpl_abort_req_rss** %6, align 8
  %15 = load %struct.cpl_abort_req_rss*, %struct.cpl_abort_req_rss** %6, align 8
  %16 = call i32 @GET_TID(%struct.cpl_abort_req_rss* %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %18 = call %struct.cxgb4_lld_info* @cxgbi_cdev_priv(%struct.cxgbi_device* %17)
  store %struct.cxgb4_lld_info* %18, %struct.cxgb4_lld_info** %8, align 8
  %19 = load %struct.cxgb4_lld_info*, %struct.cxgb4_lld_info** %8, align 8
  %20 = getelementptr inbounds %struct.cxgb4_lld_info, %struct.cxgb4_lld_info* %19, i32 0, i32 0
  %21 = load %struct.tid_info*, %struct.tid_info** %20, align 8
  store %struct.tid_info* %21, %struct.tid_info** %9, align 8
  %22 = load i32, i32* @CPL_ABORT_NO_RST, align 4
  store i32 %22, i32* %10, align 4
  %23 = load %struct.tid_info*, %struct.tid_info** %9, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call %struct.cxgbi_sock* @lookup_tid(%struct.tid_info* %23, i32 %24)
  store %struct.cxgbi_sock* %25, %struct.cxgbi_sock** %5, align 8
  %26 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %27 = icmp ne %struct.cxgbi_sock* %26, null
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %112

35:                                               ; preds = %2
  %36 = load i32, i32* @CXGBI_DBG_TOE, align 4
  %37 = shl i32 1, %36
  %38 = load i32, i32* @CXGBI_DBG_SOCK, align 4
  %39 = shl i32 1, %38
  %40 = or i32 %37, %39
  %41 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %42 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %43 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %46 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %49 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.cpl_abort_req_rss*, %struct.cpl_abort_req_rss** %6, align 8
  %52 = getelementptr inbounds %struct.cpl_abort_req_rss, %struct.cpl_abort_req_rss* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @log_debug(i32 %40, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), %struct.cxgbi_sock* %41, i32 %44, i32 %47, i32 %50, i64 %53)
  %55 = load %struct.cpl_abort_req_rss*, %struct.cpl_abort_req_rss** %6, align 8
  %56 = getelementptr inbounds %struct.cpl_abort_req_rss, %struct.cpl_abort_req_rss* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @CPL_ERR_RTX_NEG_ADVICE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %66, label %60

60:                                               ; preds = %35
  %61 = load %struct.cpl_abort_req_rss*, %struct.cpl_abort_req_rss** %6, align 8
  %62 = getelementptr inbounds %struct.cpl_abort_req_rss, %struct.cpl_abort_req_rss* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @CPL_ERR_PERSIST_NEG_ADVICE, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %60, %35
  br label %112

67:                                               ; preds = %60
  %68 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %69 = call i32 @cxgbi_sock_get(%struct.cxgbi_sock* %68)
  %70 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %71 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %70, i32 0, i32 0
  %72 = call i32 @spin_lock_bh(i32* %71)
  %73 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %74 = load i32, i32* @CTPF_ABORT_REQ_RCVD, align 4
  %75 = call i32 @cxgbi_sock_flag(%struct.cxgbi_sock* %73, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %67
  %78 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %79 = load i32, i32* @CTPF_ABORT_REQ_RCVD, align 4
  %80 = call i32 @cxgbi_sock_set_flag(%struct.cxgbi_sock* %78, i32 %79)
  %81 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %82 = load i32, i32* @CTP_ABORTING, align 4
  %83 = call i32 @cxgbi_sock_set_state(%struct.cxgbi_sock* %81, i32 %82)
  br label %106

84:                                               ; preds = %67
  %85 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %86 = load i32, i32* @CTPF_ABORT_REQ_RCVD, align 4
  %87 = call i32 @cxgbi_sock_clear_flag(%struct.cxgbi_sock* %85, i32 %86)
  %88 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @send_abort_rpl(%struct.cxgbi_sock* %88, i32 %89)
  %91 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %92 = load i32, i32* @CTPF_ABORT_RPL_PENDING, align 4
  %93 = call i32 @cxgbi_sock_flag(%struct.cxgbi_sock* %91, i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %105, label %95

95:                                               ; preds = %84
  %96 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %97 = load %struct.cpl_abort_req_rss*, %struct.cpl_abort_req_rss** %6, align 8
  %98 = getelementptr inbounds %struct.cpl_abort_req_rss, %struct.cpl_abort_req_rss* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @abort_status_to_errno(%struct.cxgbi_sock* %96, i64 %99, i32* %10)
  %101 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %102 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %104 = call i32 @cxgbi_sock_closed(%struct.cxgbi_sock* %103)
  br label %105

105:                                              ; preds = %95, %84
  br label %106

106:                                              ; preds = %105, %77
  %107 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %108 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %107, i32 0, i32 0
  %109 = call i32 @spin_unlock_bh(i32* %108)
  %110 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %111 = call i32 @cxgbi_sock_put(%struct.cxgbi_sock* %110)
  br label %112

112:                                              ; preds = %106, %66, %32
  %113 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %114 = call i32 @__kfree_skb(%struct.sk_buff* %113)
  ret void
}

declare dso_local i32 @GET_TID(%struct.cpl_abort_req_rss*) #1

declare dso_local %struct.cxgb4_lld_info* @cxgbi_cdev_priv(%struct.cxgbi_device*) #1

declare dso_local %struct.cxgbi_sock* @lookup_tid(%struct.tid_info*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @log_debug(i32, i8*, %struct.cxgbi_sock*, i32, i32, i32, i64) #1

declare dso_local i32 @cxgbi_sock_get(%struct.cxgbi_sock*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @cxgbi_sock_flag(%struct.cxgbi_sock*, i32) #1

declare dso_local i32 @cxgbi_sock_set_flag(%struct.cxgbi_sock*, i32) #1

declare dso_local i32 @cxgbi_sock_set_state(%struct.cxgbi_sock*, i32) #1

declare dso_local i32 @cxgbi_sock_clear_flag(%struct.cxgbi_sock*, i32) #1

declare dso_local i32 @send_abort_rpl(%struct.cxgbi_sock*, i32) #1

declare dso_local i32 @abort_status_to_errno(%struct.cxgbi_sock*, i64, i32*) #1

declare dso_local i32 @cxgbi_sock_closed(%struct.cxgbi_sock*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @cxgbi_sock_put(%struct.cxgbi_sock*) #1

declare dso_local i32 @__kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
