; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_recv_completion.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_recv_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.srp_target_port = type { i32 }
%struct.ib_wc = type { i64, i32 }

@IB_CQ_NEXT_COMP = common dso_local global i32 0, align 4
@IB_WC_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_cq*, i8*)* @srp_recv_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @srp_recv_completion(%struct.ib_cq* %0, i8* %1) #0 {
  %3 = alloca %struct.ib_cq*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.srp_target_port*, align 8
  %6 = alloca %struct.ib_wc, align 8
  store %struct.ib_cq* %0, %struct.ib_cq** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.srp_target_port*
  store %struct.srp_target_port* %8, %struct.srp_target_port** %5, align 8
  %9 = load %struct.ib_cq*, %struct.ib_cq** %3, align 8
  %10 = load i32, i32* @IB_CQ_NEXT_COMP, align 4
  %11 = call i32 @ib_req_notify_cq(%struct.ib_cq* %9, i32 %10)
  br label %12

12:                                               ; preds = %34, %2
  %13 = load %struct.ib_cq*, %struct.ib_cq** %3, align 8
  %14 = call i64 @ib_poll_cq(%struct.ib_cq* %13, i32 1, %struct.ib_wc* %6)
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %6, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @IB_WC_SUCCESS, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i64 @likely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load %struct.srp_target_port*, %struct.srp_target_port** %5, align 8
  %26 = call i32 @srp_handle_recv(%struct.srp_target_port* %25, %struct.ib_wc* %6)
  br label %34

27:                                               ; preds = %16
  %28 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %6, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %6, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.srp_target_port*, %struct.srp_target_port** %5, align 8
  %33 = call i32 @srp_handle_qp_err(i64 %29, i32 %31, %struct.srp_target_port* %32)
  br label %34

34:                                               ; preds = %27, %24
  br label %12

35:                                               ; preds = %12
  ret void
}

declare dso_local i32 @ib_req_notify_cq(%struct.ib_cq*, i32) #1

declare dso_local i64 @ib_poll_cq(%struct.ib_cq*, i32, %struct.ib_wc*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @srp_handle_recv(%struct.srp_target_port*, %struct.ib_wc*) #1

declare dso_local i32 @srp_handle_qp_err(i64, i32, %struct.srp_target_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
