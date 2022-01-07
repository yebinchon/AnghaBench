; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/cxgb3i/extr_cxgb3i.c_abort_arp_failure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/cxgb3i/extr_cxgb3i.c_abort_arp_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t3cdev = type { i32 }
%struct.sk_buff = type { i32 }
%struct.cpl_abort_req = type { i32 }

@CXGBI_DBG_TOE = common dso_local global i32 0, align 4
@CXGBI_DBG_SOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"t3dev 0x%p, tid %u, skb 0x%p.\0A\00", align 1
@CPL_ABORT_NO_RST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.t3cdev*, %struct.sk_buff*)* @abort_arp_failure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @abort_arp_failure(%struct.t3cdev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.t3cdev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.cpl_abort_req*, align 8
  store %struct.t3cdev* %0, %struct.t3cdev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = call %struct.cpl_abort_req* @cplhdr(%struct.sk_buff* %6)
  store %struct.cpl_abort_req* %7, %struct.cpl_abort_req** %5, align 8
  %8 = load i32, i32* @CXGBI_DBG_TOE, align 4
  %9 = shl i32 1, %8
  %10 = load i32, i32* @CXGBI_DBG_SOCK, align 4
  %11 = shl i32 1, %10
  %12 = or i32 %9, %11
  %13 = load %struct.t3cdev*, %struct.t3cdev** %3, align 8
  %14 = load %struct.cpl_abort_req*, %struct.cpl_abort_req** %5, align 8
  %15 = call i32 @GET_TID(%struct.cpl_abort_req* %14)
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = call i32 @log_debug(i32 %12, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.t3cdev* %13, i32 %15, %struct.sk_buff* %16)
  %18 = load i32, i32* @CPL_ABORT_NO_RST, align 4
  %19 = load %struct.cpl_abort_req*, %struct.cpl_abort_req** %5, align 8
  %20 = getelementptr inbounds %struct.cpl_abort_req, %struct.cpl_abort_req* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.t3cdev*, %struct.t3cdev** %3, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = call i32 @cxgb3_ofld_send(%struct.t3cdev* %21, %struct.sk_buff* %22)
  ret void
}

declare dso_local %struct.cpl_abort_req* @cplhdr(%struct.sk_buff*) #1

declare dso_local i32 @log_debug(i32, i8*, %struct.t3cdev*, i32, %struct.sk_buff*) #1

declare dso_local i32 @GET_TID(%struct.cpl_abort_req*) #1

declare dso_local i32 @cxgb3_ofld_send(%struct.t3cdev*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
