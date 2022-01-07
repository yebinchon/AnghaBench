; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_ns_send_plogi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_ns_send_plogi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcxp_s = type { i32 }
%struct.bfa_fcs_lport_ns_s = type { %struct.bfa_fcxp_s*, i32, %struct.bfa_fcs_lport_s* }
%struct.bfa_fcs_lport_s = type { %struct.TYPE_8__, i32, %struct.TYPE_7__*, %struct.TYPE_9__*, %struct.TYPE_6__, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.fchs_s = type { i32 }

@BFA_TRUE = common dso_local global i32 0, align 4
@FC_NAME_SERVER = common dso_local global i32 0, align 4
@BFA_FALSE = common dso_local global i32 0, align 4
@FC_CLASS_3 = common dso_local global i32 0, align 4
@bfa_fcs_lport_ns_plogi_response = common dso_local global i32 0, align 4
@FC_MAX_PDUSZ = common dso_local global i32 0, align 4
@FC_ELS_TOV = common dso_local global i32 0, align 4
@NSSM_EVENT_PLOGI_SENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.bfa_fcxp_s*)* @bfa_fcs_lport_ns_send_plogi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_lport_ns_send_plogi(i8* %0, %struct.bfa_fcxp_s* %1) #0 {
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
  %19 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @bfa_trc(%struct.TYPE_9__* %17, i32 %20)
  %22 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %4, align 8
  %23 = icmp ne %struct.bfa_fcxp_s* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %4, align 8
  br label %32

26:                                               ; preds = %2
  %27 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %28 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %27, i32 0, i32 3
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = load i32, i32* @BFA_TRUE, align 4
  %31 = call %struct.bfa_fcxp_s* @bfa_fcs_fcxp_alloc(%struct.TYPE_9__* %29, i32 %30)
  br label %32

32:                                               ; preds = %26, %24
  %33 = phi %struct.bfa_fcxp_s* [ %25, %24 ], [ %31, %26 ]
  store %struct.bfa_fcxp_s* %33, %struct.bfa_fcxp_s** %9, align 8
  %34 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %9, align 8
  %35 = icmp ne %struct.bfa_fcxp_s* %34, null
  br i1 %35, label %52, label %36

36:                                               ; preds = %32
  %37 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %38 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  %42 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %43 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %42, i32 0, i32 3
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %5, align 8
  %48 = getelementptr inbounds %struct.bfa_fcs_lport_ns_s, %struct.bfa_fcs_lport_ns_s* %47, i32 0, i32 1
  %49 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %5, align 8
  %50 = load i32, i32* @BFA_TRUE, align 4
  %51 = call i32 @bfa_fcs_fcxp_alloc_wait(i32 %46, i32* %48, void (i8*, %struct.bfa_fcxp_s*)* @bfa_fcs_lport_ns_send_plogi, %struct.bfa_fcs_lport_ns_s* %49, i32 %50)
  br label %109

52:                                               ; preds = %32
  %53 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %9, align 8
  %54 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %5, align 8
  %55 = getelementptr inbounds %struct.bfa_fcs_lport_ns_s, %struct.bfa_fcs_lport_ns_s* %54, i32 0, i32 0
  store %struct.bfa_fcxp_s* %53, %struct.bfa_fcxp_s** %55, align 8
  %56 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %9, align 8
  %57 = call i32 @bfa_fcxp_get_reqbuf(%struct.bfa_fcxp_s* %56)
  %58 = load i32, i32* @FC_NAME_SERVER, align 4
  %59 = call i32 @bfa_hton3b(i32 %58)
  %60 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %61 = call i32 @bfa_fcs_lport_get_fcid(%struct.bfa_fcs_lport_s* %60)
  %62 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %63 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %67 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %71 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %70, i32 0, i32 3
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @bfa_fcport_get_maxfrsize(i32 %74)
  %76 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %77 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %76, i32 0, i32 3
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @bfa_fcport_get_rx_bbcredit(i32 %80)
  %82 = call i32 @fc_plogi_build(%struct.fchs_s* %7, i32 %57, i32 %59, i32 %61, i32 0, i32 %65, i32 %69, i32 %75, i32 %81)
  store i32 %82, i32* %8, align 4
  %83 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %9, align 8
  %84 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %85 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %84, i32 0, i32 2
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %90 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @BFA_FALSE, align 4
  %93 = load i32, i32* @FC_CLASS_3, align 4
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @bfa_fcs_lport_ns_plogi_response, align 4
  %96 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %5, align 8
  %97 = bitcast %struct.bfa_fcs_lport_ns_s* %96 to i8*
  %98 = load i32, i32* @FC_MAX_PDUSZ, align 4
  %99 = load i32, i32* @FC_ELS_TOV, align 4
  %100 = call i32 @bfa_fcxp_send(%struct.bfa_fcxp_s* %83, i32* null, i32 %88, i32 %91, i32 %92, i32 %93, i32 %94, %struct.fchs_s* %7, i32 %95, i8* %97, i32 %98, i32 %99)
  %101 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %102 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 8
  %106 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %5, align 8
  %107 = load i32, i32* @NSSM_EVENT_PLOGI_SENT, align 4
  %108 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_lport_ns_s* %106, i32 %107)
  br label %109

109:                                              ; preds = %52, %36
  ret void
}

declare dso_local i32 @bfa_trc(%struct.TYPE_9__*, i32) #1

declare dso_local %struct.bfa_fcxp_s* @bfa_fcs_fcxp_alloc(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @bfa_fcs_fcxp_alloc_wait(i32, i32*, void (i8*, %struct.bfa_fcxp_s*)*, %struct.bfa_fcs_lport_ns_s*, i32) #1

declare dso_local i32 @fc_plogi_build(%struct.fchs_s*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @bfa_fcxp_get_reqbuf(%struct.bfa_fcxp_s*) #1

declare dso_local i32 @bfa_hton3b(i32) #1

declare dso_local i32 @bfa_fcs_lport_get_fcid(%struct.bfa_fcs_lport_s*) #1

declare dso_local i32 @bfa_fcport_get_maxfrsize(i32) #1

declare dso_local i32 @bfa_fcport_get_rx_bbcredit(i32) #1

declare dso_local i32 @bfa_fcxp_send(%struct.bfa_fcxp_s*, i32*, i32, i32, i32, i32, i32, %struct.fchs_s*, i32, i8*, i32, i32) #1

declare dso_local i32 @bfa_sm_send_event(%struct.bfa_fcs_lport_ns_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
