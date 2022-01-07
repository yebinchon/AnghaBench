; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_rnid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_rnid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_lport_s = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.fchs_s = type { i64, i64, i32 }
%struct.fc_rnid_cmd_s = type { i64 }
%struct.fc_rnid_common_id_data_s = type { i32, i32 }
%struct.fc_rnid_general_topology_data_s = type { i32 }
%struct.bfa_fcxp_s = type { i32 }
%struct.bfa_rport_s = type { i32 }

@BFA_FALSE = common dso_local global i32 0, align 4
@RNID_NODEID_DATA_FORMAT_DISCOVERY = common dso_local global i64 0, align 8
@RNID_NODEID_DATA_FORMAT_COMMON = common dso_local global i64 0, align 8
@FC_CLASS_3 = common dso_local global i32 0, align 4
@FC_MAX_PDUSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcs_lport_s*, %struct.fchs_s*, %struct.fc_rnid_cmd_s*, i64)* @bfa_fcs_lport_rnid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_lport_rnid(%struct.bfa_fcs_lport_s* %0, %struct.fchs_s* %1, %struct.fc_rnid_cmd_s* %2, i64 %3) #0 {
  %5 = alloca %struct.bfa_fcs_lport_s*, align 8
  %6 = alloca %struct.fchs_s*, align 8
  %7 = alloca %struct.fc_rnid_cmd_s*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.fc_rnid_common_id_data_s, align 4
  %10 = alloca %struct.fc_rnid_general_topology_data_s, align 4
  %11 = alloca %struct.fchs_s, align 8
  %12 = alloca %struct.bfa_fcxp_s*, align 8
  %13 = alloca %struct.bfa_rport_s*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.bfa_fcs_lport_s* %0, %struct.bfa_fcs_lport_s** %5, align 8
  store %struct.fchs_s* %1, %struct.fchs_s** %6, align 8
  store %struct.fc_rnid_cmd_s* %2, %struct.fc_rnid_cmd_s** %7, align 8
  store i64 %3, i64* %8, align 8
  store %struct.bfa_rport_s* null, %struct.bfa_rport_s** %13, align 8
  %16 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %17 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.fchs_s*, %struct.fchs_s** %6, align 8
  %20 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @bfa_trc(i32 %18, i64 %21)
  %23 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %24 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.fchs_s*, %struct.fchs_s** %6, align 8
  %27 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @bfa_trc(i32 %25, i64 %28)
  %30 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %31 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @bfa_trc(i32 %32, i64 %33)
  %35 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %36 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @BFA_FALSE, align 4
  %39 = call %struct.bfa_fcxp_s* @bfa_fcs_fcxp_alloc(i32 %37, i32 %38)
  store %struct.bfa_fcxp_s* %39, %struct.bfa_fcxp_s** %12, align 8
  %40 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %12, align 8
  %41 = icmp ne %struct.bfa_fcxp_s* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %4
  br label %96

43:                                               ; preds = %4
  %44 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %45 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.fc_rnid_cmd_s*, %struct.fc_rnid_cmd_s** %7, align 8
  %48 = getelementptr inbounds %struct.fc_rnid_cmd_s, %struct.fc_rnid_cmd_s* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @bfa_trc(i32 %46, i64 %49)
  %51 = load %struct.fc_rnid_cmd_s*, %struct.fc_rnid_cmd_s** %7, align 8
  %52 = getelementptr inbounds %struct.fc_rnid_cmd_s, %struct.fc_rnid_cmd_s* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @RNID_NODEID_DATA_FORMAT_DISCOVERY, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %43
  %57 = load i64, i64* @RNID_NODEID_DATA_FORMAT_DISCOVERY, align 8
  store i64 %57, i64* %15, align 8
  %58 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %59 = call i32 @bfa_fs_port_get_gen_topo_data(%struct.bfa_fcs_lport_s* %58, %struct.fc_rnid_general_topology_data_s* %10)
  br label %62

60:                                               ; preds = %43
  %61 = load i64, i64* @RNID_NODEID_DATA_FORMAT_COMMON, align 8
  store i64 %61, i64* %15, align 8
  br label %62

62:                                               ; preds = %60, %56
  %63 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %64 = call i32 @bfa_fcs_lport_get_pwwn(%struct.bfa_fcs_lport_s* %63)
  %65 = getelementptr inbounds %struct.fc_rnid_common_id_data_s, %struct.fc_rnid_common_id_data_s* %9, i32 0, i32 1
  store i32 %64, i32* %65, align 4
  %66 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %67 = call i32 @bfa_fcs_lport_get_nwwn(%struct.bfa_fcs_lport_s* %66)
  %68 = getelementptr inbounds %struct.fc_rnid_common_id_data_s, %struct.fc_rnid_common_id_data_s* %9, i32 0, i32 0
  store i32 %67, i32* %68, align 4
  %69 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %12, align 8
  %70 = call i32 @bfa_fcxp_get_reqbuf(%struct.bfa_fcxp_s* %69)
  %71 = load %struct.fchs_s*, %struct.fchs_s** %6, align 8
  %72 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %75 = call i32 @bfa_fcs_lport_get_fcid(%struct.bfa_fcs_lport_s* %74)
  %76 = load %struct.fchs_s*, %struct.fchs_s** %6, align 8
  %77 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load i64, i64* %15, align 8
  %80 = call i64 @fc_rnid_acc_build(%struct.fchs_s* %11, i32 %70, i64 %73, i32 %75, i32 %78, i64 %79, %struct.fc_rnid_common_id_data_s* %9, %struct.fc_rnid_general_topology_data_s* %10)
  store i64 %80, i64* %14, align 8
  %81 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %12, align 8
  %82 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %13, align 8
  %83 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %84 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %83, i32 0, i32 1
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %5, align 8
  %89 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @BFA_FALSE, align 4
  %92 = load i32, i32* @FC_CLASS_3, align 4
  %93 = load i64, i64* %14, align 8
  %94 = load i32, i32* @FC_MAX_PDUSZ, align 4
  %95 = call i32 @bfa_fcxp_send(%struct.bfa_fcxp_s* %81, %struct.bfa_rport_s* %82, i32 %87, i32 %90, i32 %91, i32 %92, i64 %93, %struct.fchs_s* %11, i32* null, i32* null, i32 %94, i32 0)
  br label %96

96:                                               ; preds = %62, %42
  ret void
}

declare dso_local i32 @bfa_trc(i32, i64) #1

declare dso_local %struct.bfa_fcxp_s* @bfa_fcs_fcxp_alloc(i32, i32) #1

declare dso_local i32 @bfa_fs_port_get_gen_topo_data(%struct.bfa_fcs_lport_s*, %struct.fc_rnid_general_topology_data_s*) #1

declare dso_local i32 @bfa_fcs_lport_get_pwwn(%struct.bfa_fcs_lport_s*) #1

declare dso_local i32 @bfa_fcs_lport_get_nwwn(%struct.bfa_fcs_lport_s*) #1

declare dso_local i64 @fc_rnid_acc_build(%struct.fchs_s*, i32, i64, i32, i32, i64, %struct.fc_rnid_common_id_data_s*, %struct.fc_rnid_general_topology_data_s*) #1

declare dso_local i32 @bfa_fcxp_get_reqbuf(%struct.bfa_fcxp_s*) #1

declare dso_local i32 @bfa_fcs_lport_get_fcid(%struct.bfa_fcs_lport_s*) #1

declare dso_local i32 @bfa_fcxp_send(%struct.bfa_fcxp_s*, %struct.bfa_rport_s*, i32, i32, i32, i32, i64, %struct.fchs_s*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
