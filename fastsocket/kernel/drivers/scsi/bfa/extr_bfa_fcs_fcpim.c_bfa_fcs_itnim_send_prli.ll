; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_fcpim.c_bfa_fcs_itnim_send_prli.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_fcpim.c_bfa_fcs_itnim_send_prli.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcxp_s = type { i32 }
%struct.bfa_fcs_itnim_s = type { %struct.TYPE_5__, %struct.bfa_fcs_rport_s*, %struct.bfa_fcxp_s*, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.bfa_fcs_rport_s = type { i32, i32, i32, %struct.bfa_fcs_lport_s* }
%struct.bfa_fcs_lport_s = type { i32, %struct.TYPE_4__*, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.fchs_s = type { i32 }

@BFA_TRUE = common dso_local global i32 0, align 4
@BFA_FALSE = common dso_local global i32 0, align 4
@FC_CLASS_3 = common dso_local global i32 0, align 4
@bfa_fcs_itnim_prli_response = common dso_local global i32 0, align 4
@FC_MAX_PDUSZ = common dso_local global i32 0, align 4
@FC_ELS_TOV = common dso_local global i32 0, align 4
@BFA_FCS_ITNIM_SM_FRMSENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.bfa_fcxp_s*)* @bfa_fcs_itnim_send_prli to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_itnim_send_prli(i8* %0, %struct.bfa_fcxp_s* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.bfa_fcxp_s*, align 8
  %5 = alloca %struct.bfa_fcs_itnim_s*, align 8
  %6 = alloca %struct.bfa_fcs_rport_s*, align 8
  %7 = alloca %struct.bfa_fcs_lport_s*, align 8
  %8 = alloca %struct.fchs_s, align 4
  %9 = alloca %struct.bfa_fcxp_s*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.bfa_fcxp_s* %1, %struct.bfa_fcxp_s** %4, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.bfa_fcs_itnim_s*
  store %struct.bfa_fcs_itnim_s* %12, %struct.bfa_fcs_itnim_s** %5, align 8
  %13 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %5, align 8
  %14 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %13, i32 0, i32 1
  %15 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %14, align 8
  store %struct.bfa_fcs_rport_s* %15, %struct.bfa_fcs_rport_s** %6, align 8
  %16 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %6, align 8
  %17 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %16, i32 0, i32 3
  %18 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %17, align 8
  store %struct.bfa_fcs_lport_s* %18, %struct.bfa_fcs_lport_s** %7, align 8
  %19 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %5, align 8
  %20 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %5, align 8
  %23 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %22, i32 0, i32 1
  %24 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %23, align 8
  %25 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @bfa_trc(i32 %21, i32 %26)
  %28 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %4, align 8
  %29 = icmp ne %struct.bfa_fcxp_s* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %4, align 8
  br label %38

32:                                               ; preds = %2
  %33 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %7, align 8
  %34 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %33, i32 0, i32 2
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = load i32, i32* @BFA_TRUE, align 4
  %37 = call %struct.bfa_fcxp_s* @bfa_fcs_fcxp_alloc(%struct.TYPE_6__* %35, i32 %36)
  br label %38

38:                                               ; preds = %32, %30
  %39 = phi %struct.bfa_fcxp_s* [ %31, %30 ], [ %37, %32 ]
  store %struct.bfa_fcxp_s* %39, %struct.bfa_fcxp_s** %9, align 8
  %40 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %9, align 8
  %41 = icmp ne %struct.bfa_fcxp_s* %40, null
  br i1 %41, label %58, label %42

42:                                               ; preds = %38
  %43 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %5, align 8
  %44 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  %48 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %7, align 8
  %49 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %48, i32 0, i32 2
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %5, align 8
  %54 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %53, i32 0, i32 3
  %55 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %5, align 8
  %56 = load i32, i32* @BFA_TRUE, align 4
  %57 = call i32 @bfa_fcs_fcxp_alloc_wait(i32 %52, i32* %54, void (i8*, %struct.bfa_fcxp_s*)* @bfa_fcs_itnim_send_prli, %struct.bfa_fcs_itnim_s* %55, i32 %56)
  br label %101

58:                                               ; preds = %38
  %59 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %9, align 8
  %60 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %5, align 8
  %61 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %60, i32 0, i32 2
  store %struct.bfa_fcxp_s* %59, %struct.bfa_fcxp_s** %61, align 8
  %62 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %9, align 8
  %63 = call i32 @bfa_fcxp_get_reqbuf(%struct.bfa_fcxp_s* %62)
  %64 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %5, align 8
  %65 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %64, i32 0, i32 1
  %66 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %65, align 8
  %67 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %7, align 8
  %70 = call i32 @bfa_fcs_lport_get_fcid(%struct.bfa_fcs_lport_s* %69)
  %71 = call i32 @fc_prli_build(%struct.fchs_s* %8, i32 %63, i32 %68, i32 %70, i32 0)
  store i32 %71, i32* %10, align 4
  %72 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %9, align 8
  %73 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %6, align 8
  %74 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %7, align 8
  %77 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %76, i32 0, i32 1
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %7, align 8
  %82 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @BFA_FALSE, align 4
  %85 = load i32, i32* @FC_CLASS_3, align 4
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* @bfa_fcs_itnim_prli_response, align 4
  %88 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %5, align 8
  %89 = bitcast %struct.bfa_fcs_itnim_s* %88 to i8*
  %90 = load i32, i32* @FC_MAX_PDUSZ, align 4
  %91 = load i32, i32* @FC_ELS_TOV, align 4
  %92 = call i32 @bfa_fcxp_send(%struct.bfa_fcxp_s* %72, i32 %75, i32 %80, i32 %83, i32 %84, i32 %85, i32 %86, %struct.fchs_s* %8, i32 %87, i8* %89, i32 %90, i32 %91)
  %93 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %5, align 8
  %94 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 8
  %98 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %5, align 8
  %99 = load i32, i32* @BFA_FCS_ITNIM_SM_FRMSENT, align 4
  %100 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_itnim_s* %98, i32 %99)
  br label %101

101:                                              ; preds = %58, %42
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local %struct.bfa_fcxp_s* @bfa_fcs_fcxp_alloc(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @bfa_fcs_fcxp_alloc_wait(i32, i32*, void (i8*, %struct.bfa_fcxp_s*)*, %struct.bfa_fcs_itnim_s*, i32) #1

declare dso_local i32 @fc_prli_build(%struct.fchs_s*, i32, i32, i32, i32) #1

declare dso_local i32 @bfa_fcxp_get_reqbuf(%struct.bfa_fcxp_s*) #1

declare dso_local i32 @bfa_fcs_lport_get_fcid(%struct.bfa_fcs_lport_s*) #1

declare dso_local i32 @bfa_fcxp_send(%struct.bfa_fcxp_s*, i32, i32, i32, i32, i32, i32, %struct.fchs_s*, i32, i8*, i32, i32) #1

declare dso_local i32 @bfa_sm_send_event(%struct.bfa_fcs_itnim_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
