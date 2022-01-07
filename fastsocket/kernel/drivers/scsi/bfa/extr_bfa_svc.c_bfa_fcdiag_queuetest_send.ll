; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcdiag_queuetest_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcdiag_queuetest_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcdiag_s = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.bfi_diag_qtest_req_s = type { i32, i32* }

@BFA_STATUS_DEVBUSY = common dso_local global i32 0, align 4
@BFI_MC_DIAG = common dso_local global i32 0, align 4
@BFI_DIAG_H2I_QTEST = common dso_local global i32 0, align 4
@BFI_LMSG_PL_WSZ = common dso_local global i64 0, align 8
@QTEST_PAT_DEFAULT = common dso_local global i32 0, align 4
@BFA_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfa_fcdiag_s*)* @bfa_fcdiag_queuetest_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfa_fcdiag_queuetest_send(%struct.bfa_fcdiag_s* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bfa_fcdiag_s*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.bfi_diag_qtest_req_s*, align 8
  store %struct.bfa_fcdiag_s* %0, %struct.bfa_fcdiag_s** %3, align 8
  %6 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %3, align 8
  %7 = getelementptr inbounds %struct.bfa_fcdiag_s, %struct.bfa_fcdiag_s* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %3, align 8
  %10 = getelementptr inbounds %struct.bfa_fcdiag_s, %struct.bfa_fcdiag_s* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.bfi_diag_qtest_req_s* @bfa_reqq_next(i32 %8, i32 %12)
  store %struct.bfi_diag_qtest_req_s* %13, %struct.bfi_diag_qtest_req_s** %5, align 8
  %14 = load %struct.bfi_diag_qtest_req_s*, %struct.bfi_diag_qtest_req_s** %5, align 8
  %15 = icmp ne %struct.bfi_diag_qtest_req_s* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @BFA_STATUS_DEVBUSY, align 4
  store i32 %17, i32* %2, align 4
  br label %62

18:                                               ; preds = %1
  %19 = load %struct.bfi_diag_qtest_req_s*, %struct.bfi_diag_qtest_req_s** %5, align 8
  %20 = getelementptr inbounds %struct.bfi_diag_qtest_req_s, %struct.bfi_diag_qtest_req_s* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @BFI_MC_DIAG, align 4
  %23 = load i32, i32* @BFI_DIAG_H2I_QTEST, align 4
  %24 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %3, align 8
  %25 = getelementptr inbounds %struct.bfa_fcdiag_s, %struct.bfa_fcdiag_s* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @bfa_fn_lpu(i32 %26)
  %28 = call i32 @bfi_h2i_set(i32 %21, i32 %22, i32 %23, i32 %27)
  store i64 0, i64* %4, align 8
  br label %29

29:                                               ; preds = %40, %18
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* @BFI_LMSG_PL_WSZ, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %29
  %34 = load i32, i32* @QTEST_PAT_DEFAULT, align 4
  %35 = load %struct.bfi_diag_qtest_req_s*, %struct.bfi_diag_qtest_req_s** %5, align 8
  %36 = getelementptr inbounds %struct.bfi_diag_qtest_req_s, %struct.bfi_diag_qtest_req_s* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* %4, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32 %34, i32* %39, align 4
  br label %40

40:                                               ; preds = %33
  %41 = load i64, i64* %4, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %4, align 8
  br label %29

43:                                               ; preds = %29
  %44 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %3, align 8
  %45 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %3, align 8
  %46 = getelementptr inbounds %struct.bfa_fcdiag_s, %struct.bfa_fcdiag_s* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @bfa_trc(%struct.bfa_fcdiag_s* %44, i32 %48)
  %50 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %3, align 8
  %51 = getelementptr inbounds %struct.bfa_fcdiag_s, %struct.bfa_fcdiag_s* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.bfa_fcdiag_s*, %struct.bfa_fcdiag_s** %3, align 8
  %54 = getelementptr inbounds %struct.bfa_fcdiag_s, %struct.bfa_fcdiag_s* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.bfi_diag_qtest_req_s*, %struct.bfi_diag_qtest_req_s** %5, align 8
  %58 = getelementptr inbounds %struct.bfi_diag_qtest_req_s, %struct.bfi_diag_qtest_req_s* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @bfa_reqq_produce(i32 %52, i32 %56, i32 %59)
  %61 = load i32, i32* @BFA_STATUS_OK, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %43, %16
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.bfi_diag_qtest_req_s* @bfa_reqq_next(i32, i32) #1

declare dso_local i32 @bfi_h2i_set(i32, i32, i32, i32) #1

declare dso_local i32 @bfa_fn_lpu(i32) #1

declare dso_local i32 @bfa_trc(%struct.bfa_fcdiag_s*, i32) #1

declare dso_local i32 @bfa_reqq_produce(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
