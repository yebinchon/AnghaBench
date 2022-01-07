; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_hwi.c_bnx2i_cm_remote_abort.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_hwi.c_bnx2i_cm_remote_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_sock = type { i64 }
%struct.bnx2i_endpoint = type { i64, i64, i32, i32 }

@EP_STATE_TCP_RST_RCVD = common dso_local global i64 0, align 8
@EP_STATE_DISCONN_START = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cnic_sock*)* @bnx2i_cm_remote_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2i_cm_remote_abort(%struct.cnic_sock* %0) #0 {
  %2 = alloca %struct.cnic_sock*, align 8
  %3 = alloca %struct.bnx2i_endpoint*, align 8
  %4 = alloca i64, align 8
  store %struct.cnic_sock* %0, %struct.cnic_sock** %2, align 8
  %5 = load %struct.cnic_sock*, %struct.cnic_sock** %2, align 8
  %6 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.bnx2i_endpoint*
  store %struct.bnx2i_endpoint* %8, %struct.bnx2i_endpoint** %3, align 8
  %9 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %3, align 8
  %10 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* @EP_STATE_TCP_RST_RCVD, align 8
  %13 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %3, align 8
  %14 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @EP_STATE_DISCONN_START, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %3, align 8
  %20 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %19, i32 0, i32 3
  %21 = call i32 @wake_up_interruptible(i32* %20)
  br label %36

22:                                               ; preds = %1
  %23 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %3, align 8
  %24 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %3, align 8
  %29 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %3, align 8
  %32 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @bnx2i_recovery_que_add_conn(i32 %30, i64 %33)
  br label %35

35:                                               ; preds = %27, %22
  br label %36

36:                                               ; preds = %35, %18
  ret void
}

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @bnx2i_recovery_que_add_conn(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
