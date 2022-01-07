; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_ns_send_rnn_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_ns_send_rnn_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcxp_s = type { i32 }
%struct.bfa_fcs_lport_ns_s = type { %struct.bfa_fcxp_s*, i32, %struct.bfa_fcs_lport_s* }
%struct.bfa_fcs_lport_s = type { %struct.TYPE_8__, i32, %struct.TYPE_7__*, %struct.TYPE_9__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.fchs_s = type { i32 }

@BFA_TRUE = common dso_local global i32 0, align 4
@BFA_FALSE = common dso_local global i32 0, align 4
@FC_CLASS_3 = common dso_local global i32 0, align 4
@bfa_fcs_lport_ns_rnn_id_response = common dso_local global i32 0, align 4
@FC_MAX_PDUSZ = common dso_local global i32 0, align 4
@FC_FCCT_TOV = common dso_local global i32 0, align 4
@NSSM_EVENT_RNNID_SENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.bfa_fcxp_s*)* @bfa_fcs_lport_ns_send_rnn_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_lport_ns_send_rnn_id(i8* %0, %struct.bfa_fcxp_s* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.bfa_fcxp_s*, align 8
  %5 = alloca %struct.bfa_fcs_lport_ns_s*, align 8
  %6 = alloca %struct.bfa_fcs_lport_s*, align 8
  %7 = alloca %struct.fchs_s, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bfa_fcxp_s*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.bfa_fcxp_s* %1, %struct.bfa_fcxp_s** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.bfa_fcs_lport_ns_s*
  store %struct.bfa_fcs_lport_ns_s* %11, %struct.bfa_fcs_lport_ns_s** %5, align 8
  %12 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %5, align 8
  %13 = getelementptr inbounds %struct.bfa_fcs_lport_ns_s, %struct.bfa_fcs_lport_ns_s* %12, i32 0, i32 2
  %14 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %13, align 8
  store %struct.bfa_fcs_lport_s* %14, %struct.bfa_fcs_lport_s** %6, align 8
  %15 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %16 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %15, i32 0, i32 3
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %19 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @bfa_trc(%struct.TYPE_9__* %17, i32 %21)
  %23 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %4, align 8
  %24 = icmp ne %struct.bfa_fcxp_s* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %4, align 8
  br label %33

27:                                               ; preds = %2
  %28 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %29 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %28, i32 0, i32 3
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = load i32, i32* @BFA_TRUE, align 4
  %32 = call %struct.bfa_fcxp_s* @bfa_fcs_fcxp_alloc(%struct.TYPE_9__* %30, i32 %31)
  br label %33

33:                                               ; preds = %27, %25
  %34 = phi %struct.bfa_fcxp_s* [ %26, %25 ], [ %32, %27 ]
  store %struct.bfa_fcxp_s* %34, %struct.bfa_fcxp_s** %9, align 8
  %35 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %9, align 8
  %36 = icmp ne %struct.bfa_fcxp_s* %35, null
  br i1 %36, label %53, label %37

37:                                               ; preds = %33
  %38 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %39 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  %43 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %44 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %43, i32 0, i32 3
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %5, align 8
  %49 = getelementptr inbounds %struct.bfa_fcs_lport_ns_s, %struct.bfa_fcs_lport_ns_s* %48, i32 0, i32 1
  %50 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %5, align 8
  %51 = load i32, i32* @BFA_TRUE, align 4
  %52 = call i32 @bfa_fcs_fcxp_alloc_wait(i32 %47, i32* %49, void (i8*, %struct.bfa_fcxp_s*)* @bfa_fcs_lport_ns_send_rnn_id, %struct.bfa_fcs_lport_ns_s* %50, i32 %51)
  br label %92

53:                                               ; preds = %33
  %54 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %9, align 8
  %55 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %5, align 8
  %56 = getelementptr inbounds %struct.bfa_fcs_lport_ns_s, %struct.bfa_fcs_lport_ns_s* %55, i32 0, i32 0
  store %struct.bfa_fcxp_s* %54, %struct.bfa_fcxp_s** %56, align 8
  %57 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %9, align 8
  %58 = call i32 @bfa_fcxp_get_reqbuf(%struct.bfa_fcxp_s* %57)
  %59 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %60 = call i32 @bfa_fcs_lport_get_fcid(%struct.bfa_fcs_lport_s* %59)
  %61 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %62 = call i32 @bfa_fcs_lport_get_fcid(%struct.bfa_fcs_lport_s* %61)
  %63 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %64 = call i32 @bfa_fcs_lport_get_nwwn(%struct.bfa_fcs_lport_s* %63)
  %65 = call i32 @fc_rnnid_build(%struct.fchs_s* %7, i32 %58, i32 %60, i32 %62, i32 %64)
  store i32 %65, i32* %8, align 4
  %66 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %9, align 8
  %67 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %68 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %67, i32 0, i32 2
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %73 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @BFA_FALSE, align 4
  %76 = load i32, i32* @FC_CLASS_3, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @bfa_fcs_lport_ns_rnn_id_response, align 4
  %79 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %5, align 8
  %80 = bitcast %struct.bfa_fcs_lport_ns_s* %79 to i8*
  %81 = load i32, i32* @FC_MAX_PDUSZ, align 4
  %82 = load i32, i32* @FC_FCCT_TOV, align 4
  %83 = call i32 @bfa_fcxp_send(%struct.bfa_fcxp_s* %66, i32* null, i32 %71, i32 %74, i32 %75, i32 %76, i32 %77, %struct.fchs_s* %7, i32 %78, i8* %80, i32 %81, i32 %82)
  %84 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %85 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 8
  %89 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %5, align 8
  %90 = load i32, i32* @NSSM_EVENT_RNNID_SENT, align 4
  %91 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_lport_ns_s* %89, i32 %90)
  br label %92

92:                                               ; preds = %53, %37
  ret void
}

declare dso_local i32 @bfa_trc(%struct.TYPE_9__*, i32) #1

declare dso_local %struct.bfa_fcxp_s* @bfa_fcs_fcxp_alloc(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @bfa_fcs_fcxp_alloc_wait(i32, i32*, void (i8*, %struct.bfa_fcxp_s*)*, %struct.bfa_fcs_lport_ns_s*, i32) #1

declare dso_local i32 @fc_rnnid_build(%struct.fchs_s*, i32, i32, i32, i32) #1

declare dso_local i32 @bfa_fcxp_get_reqbuf(%struct.bfa_fcxp_s*) #1

declare dso_local i32 @bfa_fcs_lport_get_fcid(%struct.bfa_fcs_lport_s*) #1

declare dso_local i32 @bfa_fcs_lport_get_nwwn(%struct.bfa_fcs_lport_s*) #1

declare dso_local i32 @bfa_fcxp_send(%struct.bfa_fcxp_s*, i32*, i32, i32, i32, i32, i32, %struct.fchs_s*, i32, i8*, i32, i32) #1

declare dso_local i32 @bfa_sm_send_event(%struct.bfa_fcs_lport_ns_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
