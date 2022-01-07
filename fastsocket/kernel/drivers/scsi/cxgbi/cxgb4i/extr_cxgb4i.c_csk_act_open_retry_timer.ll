; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/cxgb4i/extr_cxgb4i.c_csk_act_open_retry_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/cxgb4i/extr_cxgb4i.c_csk_act_open_retry_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.cxgbi_sock = type { i32, i32, i32, i32, i32 }

@CXGBI_DBG_TOE = common dso_local global i32 0, align 4
@CXGBI_DBG_SOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"csk 0x%p,%u,0x%lx,%u.\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cxgbi_sock_act_open_req_arp_failure = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @csk_act_open_retry_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csk_act_open_retry_timer(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.cxgbi_sock*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.cxgbi_sock*
  store %struct.cxgbi_sock* %6, %struct.cxgbi_sock** %4, align 8
  %7 = load i32, i32* @CXGBI_DBG_TOE, align 4
  %8 = shl i32 1, %7
  %9 = load i32, i32* @CXGBI_DBG_SOCK, align 4
  %10 = shl i32 1, %9
  %11 = or i32 %8, %10
  %12 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %13 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %14 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %17 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %20 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @log_debug(i32 %11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.cxgbi_sock* %12, i32 %15, i32 %18, i32 %21)
  %23 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %24 = call i32 @cxgbi_sock_get(%struct.cxgbi_sock* %23)
  %25 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %26 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %25, i32 0, i32 0
  %27 = call i32 @spin_lock_bh(i32* %26)
  %28 = load i32, i32* @GFP_ATOMIC, align 4
  %29 = call %struct.sk_buff* @alloc_wr(i32 4, i32 0, i32 %28)
  store %struct.sk_buff* %29, %struct.sk_buff** %3, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %31 = icmp ne %struct.sk_buff* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %1
  %33 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  %36 = call i32 @cxgbi_sock_fail_act_open(%struct.cxgbi_sock* %33, i32 %35)
  br label %52

37:                                               ; preds = %1
  %38 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %39 = bitcast %struct.cxgbi_sock* %38 to %struct.sock*
  %40 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  store %struct.sock* %39, %struct.sock** %41, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %43 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %44 = load i32, i32* @cxgbi_sock_act_open_req_arp_failure, align 4
  %45 = call i32 @t4_set_arp_err_handler(%struct.sk_buff* %42, %struct.cxgbi_sock* %43, i32 %44)
  %46 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %48 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %49 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @send_act_open_req(%struct.cxgbi_sock* %46, %struct.sk_buff* %47, i32 %50)
  br label %52

52:                                               ; preds = %37, %32
  %53 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %54 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %53, i32 0, i32 0
  %55 = call i32 @spin_unlock_bh(i32* %54)
  %56 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %4, align 8
  %57 = call i32 @cxgbi_sock_put(%struct.cxgbi_sock* %56)
  ret void
}

declare dso_local i32 @log_debug(i32, i8*, %struct.cxgbi_sock*, i32, i32, i32) #1

declare dso_local i32 @cxgbi_sock_get(%struct.cxgbi_sock*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.sk_buff* @alloc_wr(i32, i32, i32) #1

declare dso_local i32 @cxgbi_sock_fail_act_open(%struct.cxgbi_sock*, i32) #1

declare dso_local i32 @t4_set_arp_err_handler(%struct.sk_buff*, %struct.cxgbi_sock*, i32) #1

declare dso_local i32 @send_act_open_req(%struct.cxgbi_sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @cxgbi_sock_put(%struct.cxgbi_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
