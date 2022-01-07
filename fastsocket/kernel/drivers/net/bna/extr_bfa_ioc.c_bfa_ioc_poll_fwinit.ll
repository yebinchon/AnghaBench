; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc.c_bfa_ioc_poll_fwinit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc.c_bfa_ioc_poll_fwinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@BFI_IOC_DISABLED = common dso_local global i64 0, align 8
@IOCPF_E_FWREADY = common dso_local global i32 0, align 4
@BFA_IOC_TOV = common dso_local global i64 0, align 8
@BFA_IOC_POLL_TOV = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_ioc*)* @bfa_ioc_poll_fwinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_ioc_poll_fwinit(%struct.bfa_ioc* %0) #0 {
  %2 = alloca %struct.bfa_ioc*, align 8
  %3 = alloca i64, align 8
  store %struct.bfa_ioc* %0, %struct.bfa_ioc** %2, align 8
  %4 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %5 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = call i64 @readl(i32 %7)
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @BFI_IOC_DISABLED, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %14 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %13, i32 0, i32 1
  %15 = load i32, i32* @IOCPF_E_FWREADY, align 4
  %16 = call i32 @bfa_fsm_send_event(%struct.TYPE_4__* %14, i32 %15)
  br label %41

17:                                               ; preds = %1
  %18 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %19 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @BFA_IOC_TOV, align 8
  %23 = icmp sge i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %26 = call i32 @bfa_nw_iocpf_timeout(%struct.bfa_ioc* %25)
  br label %41

27:                                               ; preds = %17
  %28 = load i64, i64* @BFA_IOC_POLL_TOV, align 8
  %29 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %30 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, %28
  store i64 %33, i64* %31, align 8
  %34 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %35 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %34, i32 0, i32 0
  %36 = load i64, i64* @jiffies, align 8
  %37 = load i64, i64* @BFA_IOC_POLL_TOV, align 8
  %38 = call i64 @msecs_to_jiffies(i64 %37)
  %39 = add nsw i64 %36, %38
  %40 = call i32 @mod_timer(i32* %35, i64 %39)
  br label %41

41:                                               ; preds = %12, %27, %24
  ret void
}

declare dso_local i64 @readl(i32) #1

declare dso_local i32 @bfa_fsm_send_event(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @bfa_nw_iocpf_timeout(%struct.bfa_ioc*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
