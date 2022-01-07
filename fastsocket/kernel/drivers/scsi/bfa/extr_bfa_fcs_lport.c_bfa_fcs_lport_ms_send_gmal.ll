; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_ms_send_gmal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_ms_send_gmal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcxp_s = type { i32 }
%struct.bfa_fcs_lport_ms_s = type { %struct.bfa_fcxp_s*, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__*, %struct.TYPE_10__*, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.fchs_s = type { i32 }

@BFA_TRUE = common dso_local global i32 0, align 4
@BFA_FALSE = common dso_local global i32 0, align 4
@FC_CLASS_3 = common dso_local global i32 0, align 4
@bfa_fcs_lport_ms_gmal_response = common dso_local global i32 0, align 4
@FC_MAX_PDUSZ = common dso_local global i32 0, align 4
@FC_FCCT_TOV = common dso_local global i32 0, align 4
@MSSM_EVENT_FCXP_SENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.bfa_fcxp_s*)* @bfa_fcs_lport_ms_send_gmal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_lport_ms_send_gmal(i8* %0, %struct.bfa_fcxp_s* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.bfa_fcxp_s*, align 8
  %5 = alloca %struct.bfa_fcs_lport_ms_s*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.fchs_s, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bfa_fcxp_s*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.bfa_fcxp_s* %1, %struct.bfa_fcxp_s** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.bfa_fcs_lport_ms_s*
  store %struct.bfa_fcs_lport_ms_s* %11, %struct.bfa_fcs_lport_ms_s** %5, align 8
  %12 = load %struct.bfa_fcs_lport_ms_s*, %struct.bfa_fcs_lport_ms_s** %5, align 8
  %13 = getelementptr inbounds %struct.bfa_fcs_lport_ms_s, %struct.bfa_fcs_lport_ms_s* %12, i32 0, i32 2
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %6, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @bfa_trc(%struct.TYPE_10__* %17, i32 %20)
  %22 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %4, align 8
  %23 = icmp ne %struct.bfa_fcxp_s* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %4, align 8
  br label %32

26:                                               ; preds = %2
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = load i32, i32* @BFA_TRUE, align 4
  %31 = call %struct.bfa_fcxp_s* @bfa_fcs_fcxp_alloc(%struct.TYPE_10__* %29, i32 %30)
  br label %32

32:                                               ; preds = %26, %24
  %33 = phi %struct.bfa_fcxp_s* [ %25, %24 ], [ %31, %26 ]
  store %struct.bfa_fcxp_s* %33, %struct.bfa_fcxp_s** %9, align 8
  %34 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %9, align 8
  %35 = icmp ne %struct.bfa_fcxp_s* %34, null
  br i1 %35, label %47, label %36

36:                                               ; preds = %32
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.bfa_fcs_lport_ms_s*, %struct.bfa_fcs_lport_ms_s** %5, align 8
  %43 = getelementptr inbounds %struct.bfa_fcs_lport_ms_s, %struct.bfa_fcs_lport_ms_s* %42, i32 0, i32 1
  %44 = load %struct.bfa_fcs_lport_ms_s*, %struct.bfa_fcs_lport_ms_s** %5, align 8
  %45 = load i32, i32* @BFA_TRUE, align 4
  %46 = call i32 @bfa_fcs_fcxp_alloc_wait(i32 %41, i32* %43, void (i8*, %struct.bfa_fcxp_s*)* @bfa_fcs_lport_ms_send_gmal, %struct.bfa_fcs_lport_ms_s* %44, i32 %45)
  br label %84

47:                                               ; preds = %32
  %48 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %9, align 8
  %49 = load %struct.bfa_fcs_lport_ms_s*, %struct.bfa_fcs_lport_ms_s** %5, align 8
  %50 = getelementptr inbounds %struct.bfa_fcs_lport_ms_s, %struct.bfa_fcs_lport_ms_s* %49, i32 0, i32 0
  store %struct.bfa_fcxp_s* %48, %struct.bfa_fcxp_s** %50, align 8
  %51 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %9, align 8
  %52 = call i32 @bfa_fcxp_get_reqbuf(%struct.bfa_fcxp_s* %51)
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %54 = call i32 @bfa_fcs_lport_get_fcid(%struct.TYPE_9__* %53)
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @fc_gmal_req_build(%struct.fchs_s* %7, i32 %52, i32 %54, i32 %61)
  store i32 %62, i32* %8, align 4
  %63 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %9, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @BFA_FALSE, align 4
  %73 = load i32, i32* @FC_CLASS_3, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @bfa_fcs_lport_ms_gmal_response, align 4
  %76 = load %struct.bfa_fcs_lport_ms_s*, %struct.bfa_fcs_lport_ms_s** %5, align 8
  %77 = bitcast %struct.bfa_fcs_lport_ms_s* %76 to i8*
  %78 = load i32, i32* @FC_MAX_PDUSZ, align 4
  %79 = load i32, i32* @FC_FCCT_TOV, align 4
  %80 = call i32 @bfa_fcxp_send(%struct.bfa_fcxp_s* %63, i32* null, i32 %68, i32 %71, i32 %72, i32 %73, i32 %74, %struct.fchs_s* %7, i32 %75, i8* %77, i32 %78, i32 %79)
  %81 = load %struct.bfa_fcs_lport_ms_s*, %struct.bfa_fcs_lport_ms_s** %5, align 8
  %82 = load i32, i32* @MSSM_EVENT_FCXP_SENT, align 4
  %83 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_lport_ms_s* %81, i32 %82)
  br label %84

84:                                               ; preds = %47, %36
  ret void
}

declare dso_local i32 @bfa_trc(%struct.TYPE_10__*, i32) #1

declare dso_local %struct.bfa_fcxp_s* @bfa_fcs_fcxp_alloc(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @bfa_fcs_fcxp_alloc_wait(i32, i32*, void (i8*, %struct.bfa_fcxp_s*)*, %struct.bfa_fcs_lport_ms_s*, i32) #1

declare dso_local i32 @fc_gmal_req_build(%struct.fchs_s*, i32, i32, i32) #1

declare dso_local i32 @bfa_fcxp_get_reqbuf(%struct.bfa_fcxp_s*) #1

declare dso_local i32 @bfa_fcs_lport_get_fcid(%struct.TYPE_9__*) #1

declare dso_local i32 @bfa_fcxp_send(%struct.bfa_fcxp_s*, i32*, i32, i32, i32, i32, i32, %struct.fchs_s*, i32, i8*, i32, i32) #1

declare dso_local i32 @bfa_sm_send_event(%struct.bfa_fcs_lport_ms_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
