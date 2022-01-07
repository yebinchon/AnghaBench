; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_dport_req_comp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_dport_req_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_dport_s = type { i64, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.bfi_diag_dport_rsp_s = type { i64, i64, i64 }

@BFA_STATUS_OK = common dso_local global i64 0, align 8
@BFA_STATUS_DPORT_NO_SFP = common dso_local global i64 0, align 8
@BFA_DPORT_SM_FWRSP = common dso_local global i32 0, align 4
@BFA_DPORT_SM_REQFAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_dport_s*, %struct.bfi_diag_dport_rsp_s*)* @bfa_dport_req_comp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_dport_req_comp(%struct.bfa_dport_s* %0, %struct.bfi_diag_dport_rsp_s* %1) #0 {
  %3 = alloca %struct.bfa_dport_s*, align 8
  %4 = alloca %struct.bfi_diag_dport_rsp_s*, align 8
  store %struct.bfa_dport_s* %0, %struct.bfa_dport_s** %3, align 8
  store %struct.bfi_diag_dport_rsp_s* %1, %struct.bfi_diag_dport_rsp_s** %4, align 8
  %5 = load %struct.bfi_diag_dport_rsp_s*, %struct.bfi_diag_dport_rsp_s** %4, align 8
  %6 = getelementptr inbounds %struct.bfi_diag_dport_rsp_s, %struct.bfi_diag_dport_rsp_s* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = call i64 @cpu_to_be32(i64 %7)
  %9 = load %struct.bfi_diag_dport_rsp_s*, %struct.bfi_diag_dport_rsp_s** %4, align 8
  %10 = getelementptr inbounds %struct.bfi_diag_dport_rsp_s, %struct.bfi_diag_dport_rsp_s* %9, i32 0, i32 0
  store i64 %8, i64* %10, align 8
  %11 = load %struct.bfi_diag_dport_rsp_s*, %struct.bfi_diag_dport_rsp_s** %4, align 8
  %12 = getelementptr inbounds %struct.bfi_diag_dport_rsp_s, %struct.bfi_diag_dport_rsp_s* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %15 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i64 %13, i64* %17, align 8
  %18 = load %struct.bfi_diag_dport_rsp_s*, %struct.bfi_diag_dport_rsp_s** %4, align 8
  %19 = getelementptr inbounds %struct.bfi_diag_dport_rsp_s, %struct.bfi_diag_dport_rsp_s* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %22 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load %struct.bfi_diag_dport_rsp_s*, %struct.bfi_diag_dport_rsp_s** %4, align 8
  %24 = getelementptr inbounds %struct.bfi_diag_dport_rsp_s, %struct.bfi_diag_dport_rsp_s* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %27 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  %28 = load %struct.bfi_diag_dport_rsp_s*, %struct.bfi_diag_dport_rsp_s** %4, align 8
  %29 = getelementptr inbounds %struct.bfi_diag_dport_rsp_s, %struct.bfi_diag_dport_rsp_s* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @BFA_STATUS_OK, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %2
  %34 = load %struct.bfi_diag_dport_rsp_s*, %struct.bfi_diag_dport_rsp_s** %4, align 8
  %35 = getelementptr inbounds %struct.bfi_diag_dport_rsp_s, %struct.bfi_diag_dport_rsp_s* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @BFA_STATUS_DPORT_NO_SFP, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %64

39:                                               ; preds = %33, %2
  %40 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %41 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.bfi_diag_dport_rsp_s*, %struct.bfi_diag_dport_rsp_s** %4, align 8
  %44 = getelementptr inbounds %struct.bfi_diag_dport_rsp_s, %struct.bfi_diag_dport_rsp_s* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @bfa_trc(i32 %42, i64 %45)
  %47 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %48 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %51 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @bfa_trc(i32 %49, i64 %52)
  %54 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %55 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %58 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @bfa_trc(i32 %56, i64 %59)
  %61 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %62 = load i32, i32* @BFA_DPORT_SM_FWRSP, align 4
  %63 = call i32 @bfa_sm_send_event(%struct.bfa_dport_s* %61, i32 %62)
  br label %75

64:                                               ; preds = %33
  %65 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %66 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.bfi_diag_dport_rsp_s*, %struct.bfi_diag_dport_rsp_s** %4, align 8
  %69 = getelementptr inbounds %struct.bfi_diag_dport_rsp_s, %struct.bfi_diag_dport_rsp_s* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @bfa_trc(i32 %67, i64 %70)
  %72 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %73 = load i32, i32* @BFA_DPORT_SM_REQFAIL, align 4
  %74 = call i32 @bfa_sm_send_event(%struct.bfa_dport_s* %72, i32 %73)
  br label %75

75:                                               ; preds = %64, %39
  %76 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %3, align 8
  %77 = load %struct.bfi_diag_dport_rsp_s*, %struct.bfi_diag_dport_rsp_s** %4, align 8
  %78 = getelementptr inbounds %struct.bfi_diag_dport_rsp_s, %struct.bfi_diag_dport_rsp_s* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @bfa_cb_fcdiag_dport(%struct.bfa_dport_s* %76, i64 %79)
  ret void
}

declare dso_local i64 @cpu_to_be32(i64) #1

declare dso_local i32 @bfa_trc(i32, i64) #1

declare dso_local i32 @bfa_sm_send_event(%struct.bfa_dport_s*, i32) #1

declare dso_local i32 @bfa_cb_fcdiag_dport(%struct.bfa_dport_s*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
