; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_scn_send_scr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_scn_send_scr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcxp_s = type { i32 }
%struct.bfa_fcs_lport_scn_s = type { %struct.bfa_fcxp_s*, i32, %struct.bfa_fcs_lport_s* }
%struct.bfa_fcs_lport_s = type { i32, %struct.TYPE_9__*, i32, %struct.TYPE_10__*, i32, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.fchs_s = type { i32 }

@BFA_TRUE = common dso_local global i32 0, align 4
@BFA_FALSE = common dso_local global i32 0, align 4
@FC_CLASS_3 = common dso_local global i32 0, align 4
@bfa_fcs_lport_scn_scr_response = common dso_local global i32 0, align 4
@FC_MAX_PDUSZ = common dso_local global i32 0, align 4
@FC_ELS_TOV = common dso_local global i32 0, align 4
@SCNSM_EVENT_SCR_SENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.bfa_fcxp_s*)* @bfa_fcs_lport_scn_send_scr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_lport_scn_send_scr(i8* %0, %struct.bfa_fcxp_s* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.bfa_fcxp_s*, align 8
  %5 = alloca %struct.bfa_fcs_lport_scn_s*, align 8
  %6 = alloca %struct.bfa_fcs_lport_s*, align 8
  %7 = alloca %struct.fchs_s, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bfa_fcxp_s*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.bfa_fcxp_s* %1, %struct.bfa_fcxp_s** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.bfa_fcs_lport_scn_s*
  store %struct.bfa_fcs_lport_scn_s* %11, %struct.bfa_fcs_lport_scn_s** %5, align 8
  %12 = load %struct.bfa_fcs_lport_scn_s*, %struct.bfa_fcs_lport_scn_s** %5, align 8
  %13 = getelementptr inbounds %struct.bfa_fcs_lport_scn_s, %struct.bfa_fcs_lport_scn_s* %12, i32 0, i32 2
  %14 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %13, align 8
  store %struct.bfa_fcs_lport_s* %14, %struct.bfa_fcs_lport_s** %6, align 8
  %15 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %16 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %15, i32 0, i32 3
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %19 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @bfa_trc(%struct.TYPE_10__* %17, i32 %20)
  %22 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %23 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %22, i32 0, i32 3
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %26 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @bfa_trc(%struct.TYPE_10__* %24, i32 %28)
  %30 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %4, align 8
  %31 = icmp ne %struct.bfa_fcxp_s* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %4, align 8
  br label %40

34:                                               ; preds = %2
  %35 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %36 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %35, i32 0, i32 3
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = load i32, i32* @BFA_TRUE, align 4
  %39 = call %struct.bfa_fcxp_s* @bfa_fcs_fcxp_alloc(%struct.TYPE_10__* %37, i32 %38)
  br label %40

40:                                               ; preds = %34, %32
  %41 = phi %struct.bfa_fcxp_s* [ %33, %32 ], [ %39, %34 ]
  store %struct.bfa_fcxp_s* %41, %struct.bfa_fcxp_s** %9, align 8
  %42 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %9, align 8
  %43 = icmp ne %struct.bfa_fcxp_s* %42, null
  br i1 %43, label %55, label %44

44:                                               ; preds = %40
  %45 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %46 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %45, i32 0, i32 3
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  %50 = load %struct.bfa_fcs_lport_scn_s*, %struct.bfa_fcs_lport_scn_s** %5, align 8
  %51 = getelementptr inbounds %struct.bfa_fcs_lport_scn_s, %struct.bfa_fcs_lport_scn_s* %50, i32 0, i32 1
  %52 = load %struct.bfa_fcs_lport_scn_s*, %struct.bfa_fcs_lport_scn_s** %5, align 8
  %53 = load i32, i32* @BFA_TRUE, align 4
  %54 = call i32 @bfa_fcs_fcxp_alloc_wait(%struct.TYPE_11__* %49, i32* %51, void (i8*, %struct.bfa_fcxp_s*)* @bfa_fcs_lport_scn_send_scr, %struct.bfa_fcs_lport_scn_s* %52, i32 %53)
  br label %116

55:                                               ; preds = %40
  %56 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %9, align 8
  %57 = load %struct.bfa_fcs_lport_scn_s*, %struct.bfa_fcs_lport_scn_s** %5, align 8
  %58 = getelementptr inbounds %struct.bfa_fcs_lport_scn_s, %struct.bfa_fcs_lport_scn_s* %57, i32 0, i32 0
  store %struct.bfa_fcxp_s* %56, %struct.bfa_fcxp_s** %58, align 8
  %59 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %60 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %86, label %63

63:                                               ; preds = %55
  %64 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %65 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %64, i32 0, i32 3
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = call i64 @bfa_ioc_get_fcmode(i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %63
  %73 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %9, align 8
  %74 = call i32 @bfa_fcxp_get_reqbuf(%struct.bfa_fcxp_s* %73)
  %75 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %76 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %75, i32 0, i32 1
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %83 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @fc_scr_build(%struct.fchs_s* %7, i32 %74, i32 %81, i32 %84, i32 0)
  store i32 %85, i32* %8, align 4
  br label %94

86:                                               ; preds = %63, %55
  %87 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %9, align 8
  %88 = call i32 @bfa_fcxp_get_reqbuf(%struct.bfa_fcxp_s* %87)
  %89 = load i32, i32* @BFA_FALSE, align 4
  %90 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %91 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @fc_scr_build(%struct.fchs_s* %7, i32 %88, i32 %89, i32 %92, i32 0)
  store i32 %93, i32* %8, align 4
  br label %94

94:                                               ; preds = %86, %72
  %95 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %9, align 8
  %96 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %97 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %96, i32 0, i32 1
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %102 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @BFA_FALSE, align 4
  %105 = load i32, i32* @FC_CLASS_3, align 4
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* @bfa_fcs_lport_scn_scr_response, align 4
  %108 = load %struct.bfa_fcs_lport_scn_s*, %struct.bfa_fcs_lport_scn_s** %5, align 8
  %109 = bitcast %struct.bfa_fcs_lport_scn_s* %108 to i8*
  %110 = load i32, i32* @FC_MAX_PDUSZ, align 4
  %111 = load i32, i32* @FC_ELS_TOV, align 4
  %112 = call i32 @bfa_fcxp_send(%struct.bfa_fcxp_s* %95, i32* null, i32 %100, i32 %103, i32 %104, i32 %105, i32 %106, %struct.fchs_s* %7, i32 %107, i8* %109, i32 %110, i32 %111)
  %113 = load %struct.bfa_fcs_lport_scn_s*, %struct.bfa_fcs_lport_scn_s** %5, align 8
  %114 = load i32, i32* @SCNSM_EVENT_SCR_SENT, align 4
  %115 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_lport_scn_s* %113, i32 %114)
  br label %116

116:                                              ; preds = %94, %44
  ret void
}

declare dso_local i32 @bfa_trc(%struct.TYPE_10__*, i32) #1

declare dso_local %struct.bfa_fcxp_s* @bfa_fcs_fcxp_alloc(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @bfa_fcs_fcxp_alloc_wait(%struct.TYPE_11__*, i32*, void (i8*, %struct.bfa_fcxp_s*)*, %struct.bfa_fcs_lport_scn_s*, i32) #1

declare dso_local i64 @bfa_ioc_get_fcmode(i32*) #1

declare dso_local i32 @fc_scr_build(%struct.fchs_s*, i32, i32, i32, i32) #1

declare dso_local i32 @bfa_fcxp_get_reqbuf(%struct.bfa_fcxp_s*) #1

declare dso_local i32 @bfa_fcxp_send(%struct.bfa_fcxp_s*, i32*, i32, i32, i32, i32, i32, %struct.fchs_s*, i32, i8*, i32, i32) #1

declare dso_local i32 @bfa_sm_send_event(%struct.bfa_fcs_lport_scn_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
