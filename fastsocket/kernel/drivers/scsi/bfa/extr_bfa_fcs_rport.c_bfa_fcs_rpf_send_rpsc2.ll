; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rpf_send_rpsc2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rpf_send_rpsc2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcxp_s = type { i32 }
%struct.bfa_fcs_rpf_s = type { %struct.bfa_fcxp_s*, i32, %struct.bfa_fcs_rport_s* }
%struct.bfa_fcs_rport_s = type { %struct.TYPE_5__, i32, i32, i32, %struct.bfa_fcs_lport_s* }
%struct.TYPE_5__ = type { i32 }
%struct.bfa_fcs_lport_s = type { i32, %struct.TYPE_4__*, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.fchs_s = type { i32 }

@BFA_TRUE = common dso_local global i32 0, align 4
@BFA_FALSE = common dso_local global i32 0, align 4
@FC_CLASS_3 = common dso_local global i32 0, align 4
@bfa_fcs_rpf_rpsc2_response = common dso_local global i32 0, align 4
@FC_MAX_PDUSZ = common dso_local global i32 0, align 4
@FC_ELS_TOV = common dso_local global i32 0, align 4
@RPFSM_EVENT_FCXP_SENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.bfa_fcxp_s*)* @bfa_fcs_rpf_send_rpsc2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_rpf_send_rpsc2(i8* %0, %struct.bfa_fcxp_s* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.bfa_fcxp_s*, align 8
  %5 = alloca %struct.bfa_fcs_rpf_s*, align 8
  %6 = alloca %struct.bfa_fcs_rport_s*, align 8
  %7 = alloca %struct.bfa_fcs_lport_s*, align 8
  %8 = alloca %struct.fchs_s, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bfa_fcxp_s*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.bfa_fcxp_s* %1, %struct.bfa_fcxp_s** %4, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.bfa_fcs_rpf_s*
  store %struct.bfa_fcs_rpf_s* %12, %struct.bfa_fcs_rpf_s** %5, align 8
  %13 = load %struct.bfa_fcs_rpf_s*, %struct.bfa_fcs_rpf_s** %5, align 8
  %14 = getelementptr inbounds %struct.bfa_fcs_rpf_s, %struct.bfa_fcs_rpf_s* %13, i32 0, i32 2
  %15 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %14, align 8
  store %struct.bfa_fcs_rport_s* %15, %struct.bfa_fcs_rport_s** %6, align 8
  %16 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %6, align 8
  %17 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %16, i32 0, i32 4
  %18 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %17, align 8
  store %struct.bfa_fcs_lport_s* %18, %struct.bfa_fcs_lport_s** %7, align 8
  %19 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %6, align 8
  %20 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %6, align 8
  %23 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @bfa_trc(i32 %21, i32 %24)
  %26 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %4, align 8
  %27 = icmp ne %struct.bfa_fcxp_s* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %4, align 8
  br label %36

30:                                               ; preds = %2
  %31 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %7, align 8
  %32 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %31, i32 0, i32 2
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = load i32, i32* @BFA_TRUE, align 4
  %35 = call %struct.bfa_fcxp_s* @bfa_fcs_fcxp_alloc(%struct.TYPE_6__* %33, i32 %34)
  br label %36

36:                                               ; preds = %30, %28
  %37 = phi %struct.bfa_fcxp_s* [ %29, %28 ], [ %35, %30 ]
  store %struct.bfa_fcxp_s* %37, %struct.bfa_fcxp_s** %10, align 8
  %38 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %10, align 8
  %39 = icmp ne %struct.bfa_fcxp_s* %38, null
  br i1 %39, label %51, label %40

40:                                               ; preds = %36
  %41 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %7, align 8
  %42 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %41, i32 0, i32 2
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.bfa_fcs_rpf_s*, %struct.bfa_fcs_rpf_s** %5, align 8
  %47 = getelementptr inbounds %struct.bfa_fcs_rpf_s, %struct.bfa_fcs_rpf_s* %46, i32 0, i32 1
  %48 = load %struct.bfa_fcs_rpf_s*, %struct.bfa_fcs_rpf_s** %5, align 8
  %49 = load i32, i32* @BFA_TRUE, align 4
  %50 = call i32 @bfa_fcs_fcxp_alloc_wait(i32 %45, i32* %47, void (i8*, %struct.bfa_fcxp_s*)* @bfa_fcs_rpf_send_rpsc2, %struct.bfa_fcs_rpf_s* %48, i32 %49)
  br label %90

51:                                               ; preds = %36
  %52 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %10, align 8
  %53 = load %struct.bfa_fcs_rpf_s*, %struct.bfa_fcs_rpf_s** %5, align 8
  %54 = getelementptr inbounds %struct.bfa_fcs_rpf_s, %struct.bfa_fcs_rpf_s* %53, i32 0, i32 0
  store %struct.bfa_fcxp_s* %52, %struct.bfa_fcxp_s** %54, align 8
  %55 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %10, align 8
  %56 = call i32 @bfa_fcxp_get_reqbuf(%struct.bfa_fcxp_s* %55)
  %57 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %6, align 8
  %58 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %7, align 8
  %61 = call i32 @bfa_fcs_lport_get_fcid(%struct.bfa_fcs_lport_s* %60)
  %62 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %6, align 8
  %63 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %62, i32 0, i32 1
  %64 = call i32 @fc_rpsc2_build(%struct.fchs_s* %8, i32 %56, i32 %59, i32 %61, i32* %63, i32 1)
  store i32 %64, i32* %9, align 4
  %65 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %10, align 8
  %66 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %7, align 8
  %67 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %66, i32 0, i32 1
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %7, align 8
  %72 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @BFA_FALSE, align 4
  %75 = load i32, i32* @FC_CLASS_3, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @bfa_fcs_rpf_rpsc2_response, align 4
  %78 = load %struct.bfa_fcs_rpf_s*, %struct.bfa_fcs_rpf_s** %5, align 8
  %79 = load i32, i32* @FC_MAX_PDUSZ, align 4
  %80 = load i32, i32* @FC_ELS_TOV, align 4
  %81 = call i32 @bfa_fcxp_send(%struct.bfa_fcxp_s* %65, i32* null, i32 %70, i32 %73, i32 %74, i32 %75, i32 %76, %struct.fchs_s* %8, i32 %77, %struct.bfa_fcs_rpf_s* %78, i32 %79, i32 %80)
  %82 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %6, align 8
  %83 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 8
  %87 = load %struct.bfa_fcs_rpf_s*, %struct.bfa_fcs_rpf_s** %5, align 8
  %88 = load i32, i32* @RPFSM_EVENT_FCXP_SENT, align 4
  %89 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_rpf_s* %87, i32 %88)
  br label %90

90:                                               ; preds = %51, %40
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local %struct.bfa_fcxp_s* @bfa_fcs_fcxp_alloc(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @bfa_fcs_fcxp_alloc_wait(i32, i32*, void (i8*, %struct.bfa_fcxp_s*)*, %struct.bfa_fcs_rpf_s*, i32) #1

declare dso_local i32 @fc_rpsc2_build(%struct.fchs_s*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @bfa_fcxp_get_reqbuf(%struct.bfa_fcxp_s*) #1

declare dso_local i32 @bfa_fcs_lport_get_fcid(%struct.bfa_fcs_lport_s*) #1

declare dso_local i32 @bfa_fcxp_send(%struct.bfa_fcxp_s*, i32*, i32, i32, i32, i32, i32, %struct.fchs_s*, i32, %struct.bfa_fcs_rpf_s*, i32, i32) #1

declare dso_local i32 @bfa_sm_send_event(%struct.bfa_fcs_rpf_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
