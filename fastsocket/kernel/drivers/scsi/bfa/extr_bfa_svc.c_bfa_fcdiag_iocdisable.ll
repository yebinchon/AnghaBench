; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcdiag_iocdisable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcdiag_iocdisable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_s = type { i32 }
%struct.bfa_fcdiag_s = type { %struct.TYPE_2__, %struct.bfa_dport_s }
%struct.TYPE_2__ = type { i64, i32, i32, i32 (i32, i32)* }
%struct.bfa_dport_s = type { i32 }

@BFA_STATUS_IOC_FAILURE = common dso_local global i32 0, align 4
@BFA_DPORT_SM_HWFAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_s*)* @bfa_fcdiag_iocdisable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcdiag_iocdisable(%struct.bfa_s* %0) #0 {
  %2 = alloca %struct.bfa_s*, align 8
  %3 = alloca %struct.bfa_fcdiag_s*, align 8
  %4 = alloca %struct.bfa_dport_s*, align 8
  store %struct.bfa_s* %0, %struct.bfa_s** %2, align 8
  %5 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %6 = call %struct.bfa_fcdiag_s* @BFA_FCDIAG_MOD(%struct.bfa_s* %5)
  store %struct.bfa_fcdiag_s* %6, %struct.bfa_fcdiag_s** %3, align 8
  %7 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %3, align 8
  %8 = getelementptr inbounds %struct.bfa_fcdiag_s, %struct.bfa_fcdiag_s* %7, i32 0, i32 1
  store %struct.bfa_dport_s* %8, %struct.bfa_dport_s** %4, align 8
  %9 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %3, align 8
  %10 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %3, align 8
  %11 = getelementptr inbounds %struct.bfa_fcdiag_s, %struct.bfa_fcdiag_s* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @bfa_trc(%struct.bfa_fcdiag_s* %9, i64 %13)
  %15 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %3, align 8
  %16 = getelementptr inbounds %struct.bfa_fcdiag_s, %struct.bfa_fcdiag_s* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %43

20:                                               ; preds = %1
  %21 = load i32, i32* @BFA_STATUS_IOC_FAILURE, align 4
  %22 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %3, align 8
  %23 = getelementptr inbounds %struct.bfa_fcdiag_s, %struct.bfa_fcdiag_s* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store i32 %21, i32* %24, align 8
  %25 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %3, align 8
  %26 = getelementptr inbounds %struct.bfa_fcdiag_s, %struct.bfa_fcdiag_s* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  %28 = load i32 (i32, i32)*, i32 (i32, i32)** %27, align 8
  %29 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %3, align 8
  %30 = getelementptr inbounds %struct.bfa_fcdiag_s, %struct.bfa_fcdiag_s* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %3, align 8
  %34 = getelementptr inbounds %struct.bfa_fcdiag_s, %struct.bfa_fcdiag_s* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 %28(i32 %32, i32 %36)
  %38 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %3, align 8
  %39 = getelementptr inbounds %struct.bfa_fcdiag_s, %struct.bfa_fcdiag_s* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  %41 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %3, align 8
  %42 = call i32 @bfa_fcdiag_set_busy_status(%struct.bfa_fcdiag_s* %41)
  br label %43

43:                                               ; preds = %20, %1
  %44 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %4, align 8
  %45 = load i32, i32* @BFA_DPORT_SM_HWFAIL, align 4
  %46 = call i32 @bfa_sm_send_event(%struct.bfa_dport_s* %44, i32 %45)
  ret void
}

declare dso_local %struct.bfa_fcdiag_s* @BFA_FCDIAG_MOD(%struct.bfa_s*) #1

declare dso_local i32 @bfa_trc(%struct.bfa_fcdiag_s*, i64) #1

declare dso_local i32 @bfa_fcdiag_set_busy_status(%struct.bfa_fcdiag_s*) #1

declare dso_local i32 @bfa_sm_send_event(%struct.bfa_dport_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
