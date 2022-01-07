; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rport_process_adisc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rport_process_adisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_rport_s = type { %struct.TYPE_6__, i32, %struct.bfa_fcs_lport_s* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.bfa_fcs_lport_s = type { i32, %struct.TYPE_5__*, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.fchs_s = type { i32, i32, i32 }
%struct.bfa_fcxp_s = type { i32 }
%struct.fc_adisc_s = type { i32 }

@BFA_STATUS_OK = common dso_local global i64 0, align 8
@BFA_FALSE = common dso_local global i32 0, align 4
@FC_CLASS_3 = common dso_local global i32 0, align 4
@FC_MAX_PDUSZ = common dso_local global i32 0, align 4
@FC_LS_RJT_RSN_UNABLE_TO_PERF_CMD = common dso_local global i32 0, align 4
@FC_LS_RJT_EXP_LOGIN_REQUIRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcs_rport_s*, %struct.fchs_s*, i32)* @bfa_fcs_rport_process_adisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_rport_process_adisc(%struct.bfa_fcs_rport_s* %0, %struct.fchs_s* %1, i32 %2) #0 {
  %4 = alloca %struct.bfa_fcs_rport_s*, align 8
  %5 = alloca %struct.fchs_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bfa_fcxp_s*, align 8
  %8 = alloca %struct.fchs_s, align 4
  %9 = alloca %struct.bfa_fcs_lport_s*, align 8
  %10 = alloca %struct.fc_adisc_s*, align 8
  store %struct.bfa_fcs_rport_s* %0, %struct.bfa_fcs_rport_s** %4, align 8
  store %struct.fchs_s* %1, %struct.fchs_s** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %4, align 8
  %12 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %11, i32 0, i32 2
  %13 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %12, align 8
  store %struct.bfa_fcs_lport_s* %13, %struct.bfa_fcs_lport_s** %9, align 8
  %14 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %9, align 8
  %15 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %18 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @bfa_trc(i32 %16, i32 %19)
  %21 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %9, align 8
  %22 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %25 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @bfa_trc(i32 %23, i32 %26)
  %28 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %4, align 8
  %29 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %34 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %33, i64 1
  %35 = bitcast %struct.fchs_s* %34 to %struct.fc_adisc_s*
  store %struct.fc_adisc_s* %35, %struct.fc_adisc_s** %10, align 8
  %36 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %4, align 8
  %37 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @bfa_fcs_itnim_get_online_state(i32 %38)
  %40 = load i64, i64* @BFA_STATUS_OK, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %85

42:                                               ; preds = %3
  %43 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %9, align 8
  %44 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @BFA_FALSE, align 4
  %47 = call %struct.bfa_fcxp_s* @bfa_fcs_fcxp_alloc(i32 %45, i32 %46)
  store %struct.bfa_fcxp_s* %47, %struct.bfa_fcxp_s** %7, align 8
  %48 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %7, align 8
  %49 = icmp ne %struct.bfa_fcxp_s* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %42
  br label %96

51:                                               ; preds = %42
  %52 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %7, align 8
  %53 = call i32 @bfa_fcxp_get_reqbuf(%struct.bfa_fcxp_s* %52)
  %54 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %55 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %9, align 8
  %58 = call i32 @bfa_fcs_lport_get_fcid(%struct.bfa_fcs_lport_s* %57)
  %59 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %60 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %9, align 8
  %63 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %9, align 8
  %67 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @fc_adisc_acc_build(%struct.fchs_s* %8, i32 %53, i32 %56, i32 %58, i32 %61, i32 %65, i32 %69)
  store i32 %70, i32* %6, align 4
  %71 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %7, align 8
  %72 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %9, align 8
  %73 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %72, i32 0, i32 1
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %9, align 8
  %78 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @BFA_FALSE, align 4
  %81 = load i32, i32* @FC_CLASS_3, align 4
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @FC_MAX_PDUSZ, align 4
  %84 = call i32 @bfa_fcxp_send(%struct.bfa_fcxp_s* %71, i32* null, i32 %76, i32 %79, i32 %80, i32 %81, i32 %82, %struct.fchs_s* %8, i32* null, i32* null, i32 %83, i32 0)
  br label %96

85:                                               ; preds = %3
  %86 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %4, align 8
  %87 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 8
  %91 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %4, align 8
  %92 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %93 = load i32, i32* @FC_LS_RJT_RSN_UNABLE_TO_PERF_CMD, align 4
  %94 = load i32, i32* @FC_LS_RJT_EXP_LOGIN_REQUIRED, align 4
  %95 = call i32 @bfa_fcs_rport_send_ls_rjt(%struct.bfa_fcs_rport_s* %91, %struct.fchs_s* %92, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %50, %85, %51
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i64 @bfa_fcs_itnim_get_online_state(i32) #1

declare dso_local %struct.bfa_fcxp_s* @bfa_fcs_fcxp_alloc(i32, i32) #1

declare dso_local i32 @fc_adisc_acc_build(%struct.fchs_s*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @bfa_fcxp_get_reqbuf(%struct.bfa_fcxp_s*) #1

declare dso_local i32 @bfa_fcs_lport_get_fcid(%struct.bfa_fcs_lport_s*) #1

declare dso_local i32 @bfa_fcxp_send(%struct.bfa_fcxp_s*, i32*, i32, i32, i32, i32, i32, %struct.fchs_s*, i32*, i32*, i32, i32) #1

declare dso_local i32 @bfa_fcs_rport_send_ls_rjt(%struct.bfa_fcs_rport_s*, %struct.fchs_s*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
