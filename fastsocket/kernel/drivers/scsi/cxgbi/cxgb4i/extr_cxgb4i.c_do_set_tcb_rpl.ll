; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/cxgb4i/extr_cxgb4i.c_do_set_tcb_rpl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/cxgb4i/extr_cxgb4i.c_do_set_tcb_rpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_device = type { i32 }
%struct.sk_buff = type { i64 }
%struct.cpl_set_tcb_rpl = type { i64 }
%struct.cxgb4_lld_info = type { %struct.tid_info* }
%struct.tid_info = type { i32 }
%struct.cxgbi_sock = type { i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"can't find conn. for tid %u.\0A\00", align 1
@CXGBI_DBG_TOE = common dso_local global i32 0, align 4
@CXGBI_DBG_SOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"csk 0x%p,%u,%lx,%u, status 0x%x.\0A\00", align 1
@CPL_ERR_NONE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"csk 0x%p,%u, SET_TCB_RPL status %u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cxgbi_device*, %struct.sk_buff*)* @do_set_tcb_rpl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_set_tcb_rpl(%struct.cxgbi_device* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.cxgbi_device*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.cpl_set_tcb_rpl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cxgb4_lld_info*, align 8
  %8 = alloca %struct.tid_info*, align 8
  %9 = alloca %struct.cxgbi_sock*, align 8
  store %struct.cxgbi_device* %0, %struct.cxgbi_device** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.cpl_set_tcb_rpl*
  store %struct.cpl_set_tcb_rpl* %13, %struct.cpl_set_tcb_rpl** %5, align 8
  %14 = load %struct.cpl_set_tcb_rpl*, %struct.cpl_set_tcb_rpl** %5, align 8
  %15 = call i32 @GET_TID(%struct.cpl_set_tcb_rpl* %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  %17 = call %struct.cxgb4_lld_info* @cxgbi_cdev_priv(%struct.cxgbi_device* %16)
  store %struct.cxgb4_lld_info* %17, %struct.cxgb4_lld_info** %7, align 8
  %18 = load %struct.cxgb4_lld_info*, %struct.cxgb4_lld_info** %7, align 8
  %19 = getelementptr inbounds %struct.cxgb4_lld_info, %struct.cxgb4_lld_info* %18, i32 0, i32 0
  %20 = load %struct.tid_info*, %struct.tid_info** %19, align 8
  store %struct.tid_info* %20, %struct.tid_info** %8, align 8
  %21 = load %struct.tid_info*, %struct.tid_info** %8, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call %struct.cxgbi_sock* @lookup_tid(%struct.tid_info* %21, i32 %22)
  store %struct.cxgbi_sock* %23, %struct.cxgbi_sock** %9, align 8
  %24 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %9, align 8
  %25 = icmp ne %struct.cxgbi_sock* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* %6, align 4
  %28 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %26, %2
  %30 = load i32, i32* @CXGBI_DBG_TOE, align 4
  %31 = shl i32 1, %30
  %32 = load i32, i32* @CXGBI_DBG_SOCK, align 4
  %33 = shl i32 1, %32
  %34 = or i32 %31, %33
  %35 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %9, align 8
  %36 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %9, align 8
  %37 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %9, align 8
  %40 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %9, align 8
  %43 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.cpl_set_tcb_rpl*, %struct.cpl_set_tcb_rpl** %5, align 8
  %46 = getelementptr inbounds %struct.cpl_set_tcb_rpl, %struct.cpl_set_tcb_rpl* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @log_debug(i32 %34, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), %struct.cxgbi_sock* %35, i32 %38, i32 %41, i32 %44, i64 %47)
  %49 = load %struct.cpl_set_tcb_rpl*, %struct.cpl_set_tcb_rpl** %5, align 8
  %50 = getelementptr inbounds %struct.cpl_set_tcb_rpl, %struct.cpl_set_tcb_rpl* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @CPL_ERR_NONE, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %29
  %55 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %9, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.cpl_set_tcb_rpl*, %struct.cpl_set_tcb_rpl** %5, align 8
  %58 = getelementptr inbounds %struct.cpl_set_tcb_rpl, %struct.cpl_set_tcb_rpl* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), %struct.cxgbi_sock* %55, i32 %56, i64 %59)
  br label %61

61:                                               ; preds = %54, %29
  %62 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %63 = call i32 @__kfree_skb(%struct.sk_buff* %62)
  ret void
}

declare dso_local i32 @GET_TID(%struct.cpl_set_tcb_rpl*) #1

declare dso_local %struct.cxgb4_lld_info* @cxgbi_cdev_priv(%struct.cxgbi_device*) #1

declare dso_local %struct.cxgbi_sock* @lookup_tid(%struct.tid_info*, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @log_debug(i32, i8*, %struct.cxgbi_sock*, i32, i32, i32, i64) #1

declare dso_local i32 @__kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
