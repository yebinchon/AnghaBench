; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_send_completion.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_send_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.srp_target_port = type { i32 }
%struct.ib_wc = type { i64, i32, i64 }
%struct.srp_iu = type { i32 }

@IB_WC_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_cq*, i8*)* @srp_send_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @srp_send_completion(%struct.ib_cq* %0, i8* %1) #0 {
  %3 = alloca %struct.ib_cq*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.srp_target_port*, align 8
  %6 = alloca %struct.ib_wc, align 8
  %7 = alloca %struct.srp_iu*, align 8
  store %struct.ib_cq* %0, %struct.ib_cq** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.srp_target_port*
  store %struct.srp_target_port* %9, %struct.srp_target_port** %5, align 8
  br label %10

10:                                               ; preds = %38, %2
  %11 = load %struct.ib_cq*, %struct.ib_cq** %3, align 8
  %12 = call i64 @ib_poll_cq(%struct.ib_cq* %11, i32 1, %struct.ib_wc* %6)
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %39

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %6, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @IB_WC_SUCCESS, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i64 @likely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %6, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.srp_iu*
  store %struct.srp_iu* %25, %struct.srp_iu** %7, align 8
  %26 = load %struct.srp_iu*, %struct.srp_iu** %7, align 8
  %27 = getelementptr inbounds %struct.srp_iu, %struct.srp_iu* %26, i32 0, i32 0
  %28 = load %struct.srp_target_port*, %struct.srp_target_port** %5, align 8
  %29 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %28, i32 0, i32 0
  %30 = call i32 @list_add(i32* %27, i32* %29)
  br label %38

31:                                               ; preds = %14
  %32 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %6, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %6, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.srp_target_port*, %struct.srp_target_port** %5, align 8
  %37 = call i32 @srp_handle_qp_err(i64 %33, i32 %35, %struct.srp_target_port* %36)
  br label %38

38:                                               ; preds = %31, %22
  br label %10

39:                                               ; preds = %10
  ret void
}

declare dso_local i64 @ib_poll_cq(%struct.ib_cq*, i32, %struct.ib_wc*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @srp_handle_qp_err(i64, i32, %struct.srp_target_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
