; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_hal_fcxp_tx_plog.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_hal_fcxp_tx_plog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_s = type { i32 }
%struct.bfa_fcxp_s = type { i64 }
%struct.fchs_s = type { i32 }

@BFA_PL_MID_HAL_FCXP = common dso_local global i32 0, align 4
@BFA_PL_EID_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_s*, i64, %struct.bfa_fcxp_s*, %struct.fchs_s*)* @hal_fcxp_tx_plog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hal_fcxp_tx_plog(%struct.bfa_s* %0, i64 %1, %struct.bfa_fcxp_s* %2, %struct.fchs_s* %3) #0 {
  %5 = alloca %struct.bfa_s*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.bfa_fcxp_s*, align 8
  %8 = alloca %struct.fchs_s*, align 8
  %9 = alloca i64, align 8
  store %struct.bfa_s* %0, %struct.bfa_s** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.bfa_fcxp_s* %2, %struct.bfa_fcxp_s** %7, align 8
  store %struct.fchs_s* %3, %struct.fchs_s** %8, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %43

12:                                               ; preds = %4
  %13 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %7, align 8
  %14 = getelementptr inbounds %struct.bfa_fcxp_s, %struct.bfa_fcxp_s* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %12
  %18 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %7, align 8
  %19 = call i64 @BFA_FCXP_REQ_PLD(%struct.bfa_fcxp_s* %18)
  %20 = inttoptr i64 %19 to i64*
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %9, align 8
  %22 = load %struct.bfa_s*, %struct.bfa_s** %5, align 8
  %23 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @BFA_PL_MID_HAL_FCXP, align 4
  %26 = load i32, i32* @BFA_PL_EID_TX, align 4
  %27 = load i64, i64* %6, align 8
  %28 = add i64 %27, 4
  %29 = load %struct.fchs_s*, %struct.fchs_s** %8, align 8
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @bfa_plog_fchdr_and_pl(i32 %24, i32 %25, i32 %26, i64 %28, %struct.fchs_s* %29, i64 %30)
  br label %42

32:                                               ; preds = %12
  %33 = load %struct.bfa_s*, %struct.bfa_s** %5, align 8
  %34 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @BFA_PL_MID_HAL_FCXP, align 4
  %37 = load i32, i32* @BFA_PL_EID_TX, align 4
  %38 = load i64, i64* %6, align 8
  %39 = add i64 %38, 4
  %40 = load %struct.fchs_s*, %struct.fchs_s** %8, align 8
  %41 = call i32 @bfa_plog_fchdr(i32 %35, i32 %36, i32 %37, i64 %39, %struct.fchs_s* %40)
  br label %42

42:                                               ; preds = %32, %17
  br label %53

43:                                               ; preds = %4
  %44 = load %struct.bfa_s*, %struct.bfa_s** %5, align 8
  %45 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @BFA_PL_MID_HAL_FCXP, align 4
  %48 = load i32, i32* @BFA_PL_EID_TX, align 4
  %49 = load i64, i64* %6, align 8
  %50 = add i64 %49, 4
  %51 = load %struct.fchs_s*, %struct.fchs_s** %8, align 8
  %52 = call i32 @bfa_plog_fchdr(i32 %46, i32 %47, i32 %48, i64 %50, %struct.fchs_s* %51)
  br label %53

53:                                               ; preds = %43, %42
  ret void
}

declare dso_local i64 @BFA_FCXP_REQ_PLD(%struct.bfa_fcxp_s*) #1

declare dso_local i32 @bfa_plog_fchdr_and_pl(i32, i32, i32, i64, %struct.fchs_s*, i64) #1

declare dso_local i32 @bfa_plog_fchdr(i32, i32, i32, i64, %struct.fchs_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
