; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rport_process_rpsc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rport_process_rpsc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_rport_s = type { %struct.TYPE_5__, %struct.bfa_fcs_lport_s* }
%struct.TYPE_5__ = type { i32 }
%struct.bfa_fcs_lport_s = type { i32, %struct.TYPE_6__*, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.fchs_s = type { i32, i32, i32 }
%struct.bfa_fcxp_s = type { i32 }
%struct.fc_rpsc_speed_info_s = type { i32, i32 }
%struct.bfa_port_attr_s = type { i32 }

@RPSC_SPEED_CAP_1G = common dso_local global i32 0, align 4
@RPSC_SPEED_CAP_2G = common dso_local global i32 0, align 4
@RPSC_SPEED_CAP_4G = common dso_local global i32 0, align 4
@RPSC_SPEED_CAP_8G = common dso_local global i32 0, align 4
@BFA_FALSE = common dso_local global i32 0, align 4
@FC_CLASS_3 = common dso_local global i32 0, align 4
@FC_MAX_PDUSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcs_rport_s*, %struct.fchs_s*, i32)* @bfa_fcs_rport_process_rpsc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_rport_process_rpsc(%struct.bfa_fcs_rport_s* %0, %struct.fchs_s* %1, i32 %2) #0 {
  %4 = alloca %struct.bfa_fcs_rport_s*, align 8
  %5 = alloca %struct.fchs_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bfa_fcxp_s*, align 8
  %8 = alloca %struct.fchs_s, align 4
  %9 = alloca %struct.bfa_fcs_lport_s*, align 8
  %10 = alloca %struct.fc_rpsc_speed_info_s, align 4
  %11 = alloca %struct.bfa_port_attr_s, align 4
  store %struct.bfa_fcs_rport_s* %0, %struct.bfa_fcs_rport_s** %4, align 8
  store %struct.fchs_s* %1, %struct.fchs_s** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %4, align 8
  %13 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %12, i32 0, i32 1
  %14 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %13, align 8
  store %struct.bfa_fcs_lport_s* %14, %struct.bfa_fcs_lport_s** %9, align 8
  %15 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %9, align 8
  %16 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %15, i32 0, i32 2
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %19 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @bfa_trc(%struct.TYPE_7__* %17, i32 %20)
  %22 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %9, align 8
  %23 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %22, i32 0, i32 2
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %26 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @bfa_trc(%struct.TYPE_7__* %24, i32 %27)
  %29 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %4, align 8
  %30 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 8
  %34 = load i32, i32* @RPSC_SPEED_CAP_1G, align 4
  %35 = load i32, i32* @RPSC_SPEED_CAP_2G, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @RPSC_SPEED_CAP_4G, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @RPSC_SPEED_CAP_8G, align 4
  %40 = or i32 %38, %39
  %41 = getelementptr inbounds %struct.fc_rpsc_speed_info_s, %struct.fc_rpsc_speed_info_s* %10, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  %42 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %9, align 8
  %43 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %42, i32 0, i32 2
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @bfa_fcport_get_attr(i32 %46, %struct.bfa_port_attr_s* %11)
  %48 = getelementptr inbounds %struct.bfa_port_attr_s, %struct.bfa_port_attr_s* %11, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @fc_bfa_speed_to_rpsc_operspeed(i32 %49)
  %51 = getelementptr inbounds %struct.fc_rpsc_speed_info_s, %struct.fc_rpsc_speed_info_s* %10, i32 0, i32 1
  store i32 %50, i32* %51, align 4
  %52 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %9, align 8
  %53 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %52, i32 0, i32 2
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = load i32, i32* @BFA_FALSE, align 4
  %56 = call %struct.bfa_fcxp_s* @bfa_fcs_fcxp_alloc(%struct.TYPE_7__* %54, i32 %55)
  store %struct.bfa_fcxp_s* %56, %struct.bfa_fcxp_s** %7, align 8
  %57 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %7, align 8
  %58 = icmp ne %struct.bfa_fcxp_s* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %3
  br label %86

60:                                               ; preds = %3
  %61 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %7, align 8
  %62 = call i32 @bfa_fcxp_get_reqbuf(%struct.bfa_fcxp_s* %61)
  %63 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %64 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %9, align 8
  %67 = call i32 @bfa_fcs_lport_get_fcid(%struct.bfa_fcs_lport_s* %66)
  %68 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %69 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @fc_rpsc_acc_build(%struct.fchs_s* %8, i32 %62, i32 %65, i32 %67, i32 %70, %struct.fc_rpsc_speed_info_s* %10)
  store i32 %71, i32* %6, align 4
  %72 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %7, align 8
  %73 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %9, align 8
  %74 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %73, i32 0, i32 1
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %9, align 8
  %79 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @BFA_FALSE, align 4
  %82 = load i32, i32* @FC_CLASS_3, align 4
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @FC_MAX_PDUSZ, align 4
  %85 = call i32 @bfa_fcxp_send(%struct.bfa_fcxp_s* %72, i32* null, i32 %77, i32 %80, i32 %81, i32 %82, i32 %83, %struct.fchs_s* %8, i32* null, i32* null, i32 %84, i32 0)
  br label %86

86:                                               ; preds = %60, %59
  ret void
}

declare dso_local i32 @bfa_trc(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @bfa_fcport_get_attr(i32, %struct.bfa_port_attr_s*) #1

declare dso_local i32 @fc_bfa_speed_to_rpsc_operspeed(i32) #1

declare dso_local %struct.bfa_fcxp_s* @bfa_fcs_fcxp_alloc(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @fc_rpsc_acc_build(%struct.fchs_s*, i32, i32, i32, i32, %struct.fc_rpsc_speed_info_s*) #1

declare dso_local i32 @bfa_fcxp_get_reqbuf(%struct.bfa_fcxp_s*) #1

declare dso_local i32 @bfa_fcs_lport_get_fcid(%struct.bfa_fcs_lport_s*) #1

declare dso_local i32 @bfa_fcxp_send(%struct.bfa_fcxp_s*, i32*, i32, i32, i32, i32, i32, %struct.fchs_s*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
