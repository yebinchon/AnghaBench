; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rport_process_prli.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rport_process_prli.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_rport_s = type { i32, i32, i32, %struct.TYPE_6__, %struct.bfa_fcs_lport_s* }
%struct.TYPE_6__ = type { i32 }
%struct.bfa_fcs_lport_s = type { i32, %struct.TYPE_10__*, %struct.TYPE_9__, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.fchs_s = type { i32, i32, i32 }
%struct.bfa_fcxp_s = type { i32 }
%struct.fc_prli_s = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@BFA_RPORT_TARGET = common dso_local global i32 0, align 4
@BFA_RPORT_INITIATOR = common dso_local global i32 0, align 4
@BFA_FALSE = common dso_local global i32 0, align 4
@FC_CLASS_3 = common dso_local global i32 0, align 4
@FC_MAX_PDUSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcs_rport_s*, %struct.fchs_s*, i32)* @bfa_fcs_rport_process_prli to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_rport_process_prli(%struct.bfa_fcs_rport_s* %0, %struct.fchs_s* %1, i32 %2) #0 {
  %4 = alloca %struct.bfa_fcs_rport_s*, align 8
  %5 = alloca %struct.fchs_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bfa_fcxp_s*, align 8
  %8 = alloca %struct.fchs_s, align 4
  %9 = alloca %struct.bfa_fcs_lport_s*, align 8
  %10 = alloca %struct.fc_prli_s*, align 8
  store %struct.bfa_fcs_rport_s* %0, %struct.bfa_fcs_rport_s** %4, align 8
  store %struct.fchs_s* %1, %struct.fchs_s** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %4, align 8
  %12 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %11, i32 0, i32 4
  %13 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %12, align 8
  store %struct.bfa_fcs_lport_s* %13, %struct.bfa_fcs_lport_s** %9, align 8
  %14 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %9, align 8
  %15 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %18 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @bfa_trc(i32 %16, i32 %19)
  %21 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %9, align 8
  %22 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %25 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @bfa_trc(i32 %23, i32 %26)
  %28 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %4, align 8
  %29 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %34 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %33, i64 1
  %35 = bitcast %struct.fchs_s* %34 to %struct.fc_prli_s*
  store %struct.fc_prli_s* %35, %struct.fc_prli_s** %10, align 8
  %36 = load %struct.fc_prli_s*, %struct.fc_prli_s** %10, align 8
  %37 = getelementptr inbounds %struct.fc_prli_s, %struct.fc_prli_s* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %3
  %43 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %9, align 8
  %44 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %47 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @bfa_trc(i32 %45, i32 %48)
  %50 = load i32, i32* @BFA_RPORT_TARGET, align 4
  %51 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %4, align 8
  %52 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  br label %69

53:                                               ; preds = %3
  %54 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %4, align 8
  %55 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.fc_prli_s*, %struct.fc_prli_s** %10, align 8
  %58 = getelementptr inbounds %struct.fc_prli_s, %struct.fc_prli_s* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @bfa_trc(i32 %56, i32 %60)
  %62 = load i32, i32* @BFA_RPORT_INITIATOR, align 4
  %63 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %4, align 8
  %64 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %4, align 8
  %66 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @bfa_fcs_itnim_is_initiator(i32 %67)
  br label %69

69:                                               ; preds = %53, %42
  %70 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %9, align 8
  %71 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @BFA_FALSE, align 4
  %74 = call %struct.bfa_fcxp_s* @bfa_fcs_fcxp_alloc(i32 %72, i32 %73)
  store %struct.bfa_fcxp_s* %74, %struct.bfa_fcxp_s** %7, align 8
  %75 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %7, align 8
  %76 = icmp ne %struct.bfa_fcxp_s* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %69
  br label %108

78:                                               ; preds = %69
  %79 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %7, align 8
  %80 = call i32 @bfa_fcxp_get_reqbuf(%struct.bfa_fcxp_s* %79)
  %81 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %82 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %9, align 8
  %85 = call i32 @bfa_fcs_lport_get_fcid(%struct.bfa_fcs_lport_s* %84)
  %86 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %87 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %9, align 8
  %90 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @fc_prli_acc_build(%struct.fchs_s* %8, i32 %80, i32 %83, i32 %85, i32 %88, i32 %92)
  store i32 %93, i32* %6, align 4
  %94 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %7, align 8
  %95 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %9, align 8
  %96 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %95, i32 0, i32 1
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %9, align 8
  %101 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @BFA_FALSE, align 4
  %104 = load i32, i32* @FC_CLASS_3, align 4
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* @FC_MAX_PDUSZ, align 4
  %107 = call i32 @bfa_fcxp_send(%struct.bfa_fcxp_s* %94, i32* null, i32 %99, i32 %102, i32 %103, i32 %104, i32 %105, %struct.fchs_s* %8, i32* null, i32* null, i32 %106, i32 0)
  br label %108

108:                                              ; preds = %78, %77
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @bfa_fcs_itnim_is_initiator(i32) #1

declare dso_local %struct.bfa_fcxp_s* @bfa_fcs_fcxp_alloc(i32, i32) #1

declare dso_local i32 @fc_prli_acc_build(%struct.fchs_s*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @bfa_fcxp_get_reqbuf(%struct.bfa_fcxp_s*) #1

declare dso_local i32 @bfa_fcs_lport_get_fcid(%struct.bfa_fcs_lport_s*) #1

declare dso_local i32 @bfa_fcxp_send(%struct.bfa_fcxp_s*, i32*, i32, i32, i32, i32, i32, %struct.fchs_s*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
