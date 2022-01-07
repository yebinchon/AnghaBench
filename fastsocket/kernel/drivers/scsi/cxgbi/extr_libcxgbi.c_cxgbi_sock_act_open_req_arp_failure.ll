; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_sock_act_open_req_arp_failure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_sock_act_open_req_arp_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.cxgbi_sock = type { i64, i32, i32, i32 }

@CXGBI_DBG_SOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"csk 0x%p,%u,0x%lx,%u.\0A\00", align 1
@CTP_ACTIVE_OPEN = common dso_local global i64 0, align 8
@EHOSTUNREACH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cxgbi_sock_act_open_req_arp_failure(i8* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.cxgbi_sock*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.cxgbi_sock*
  store %struct.cxgbi_sock* %9, %struct.cxgbi_sock** %5, align 8
  %10 = load i32, i32* @CXGBI_DBG_SOCK, align 4
  %11 = shl i32 1, %10
  %12 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %13 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %14 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %17 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %20 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @log_debug(i32 %11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.cxgbi_sock* %12, i64 %15, i32 %18, i32 %21)
  %23 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %24 = call i32 @cxgbi_sock_get(%struct.cxgbi_sock* %23)
  %25 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %26 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %25, i32 0, i32 1
  %27 = call i32 @spin_lock_bh(i32* %26)
  %28 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %29 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @CTP_ACTIVE_OPEN, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %2
  %34 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %35 = load i32, i32* @EHOSTUNREACH, align 4
  %36 = sub nsw i32 0, %35
  %37 = call i32 @cxgbi_sock_fail_act_open(%struct.cxgbi_sock* %34, i32 %36)
  br label %38

38:                                               ; preds = %33, %2
  %39 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %40 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %39, i32 0, i32 1
  %41 = call i32 @spin_unlock_bh(i32* %40)
  %42 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %5, align 8
  %43 = call i32 @cxgbi_sock_put(%struct.cxgbi_sock* %42)
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = call i32 @__kfree_skb(%struct.sk_buff* %44)
  ret void
}

declare dso_local i32 @log_debug(i32, i8*, %struct.cxgbi_sock*, i64, i32, i32) #1

declare dso_local i32 @cxgbi_sock_get(%struct.cxgbi_sock*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @cxgbi_sock_fail_act_open(%struct.cxgbi_sock*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @cxgbi_sock_put(%struct.cxgbi_sock*) #1

declare dso_local i32 @__kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
