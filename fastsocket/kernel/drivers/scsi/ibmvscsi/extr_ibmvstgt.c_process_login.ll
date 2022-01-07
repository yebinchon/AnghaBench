; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvstgt.c_process_login.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvstgt.c_process_login.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iu_entry = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32 }
%union.viosrp_iu = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.srp_login_rsp }
%struct.TYPE_5__ = type { i32 }
%struct.srp_login_rsp = type { i32, i32, i32, i32, i32, i32 }
%struct.srp_target = type { i32 }
%struct.vio_port = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.srp_rport_identifiers = type { i32, i32, %struct.TYPE_6__ }

@.str = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@SRP_RPORT_ROLE_INITIATOR = common dso_local global i32 0, align 4
@SRP_LOGIN_RSP = common dso_local global i32 0, align 4
@INITIAL_SRP_LIMIT = common dso_local global i32 0, align 4
@SRP_BUF_FORMAT_DIRECT = common dso_local global i32 0, align 4
@SRP_BUF_FORMAT_INDIRECT = common dso_local global i32 0, align 4
@VIOSRP_SRP_FORMAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iu_entry*)* @process_login to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_login(%struct.iu_entry* %0) #0 {
  %2 = alloca %struct.iu_entry*, align 8
  %3 = alloca %union.viosrp_iu*, align 8
  %4 = alloca %struct.srp_login_rsp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.srp_target*, align 8
  %8 = alloca %struct.vio_port*, align 8
  %9 = alloca %struct.srp_rport_identifiers, align 4
  store %struct.iu_entry* %0, %struct.iu_entry** %2, align 8
  %10 = load %struct.iu_entry*, %struct.iu_entry** %2, align 8
  %11 = call %union.viosrp_iu* @vio_iu(%struct.iu_entry* %10)
  store %union.viosrp_iu* %11, %union.viosrp_iu** %3, align 8
  %12 = load %union.viosrp_iu*, %union.viosrp_iu** %3, align 8
  %13 = bitcast %union.viosrp_iu* %12 to %struct.TYPE_6__*
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  store %struct.srp_login_rsp* %14, %struct.srp_login_rsp** %4, align 8
  %15 = load %union.viosrp_iu*, %union.viosrp_iu** %3, align 8
  %16 = bitcast %union.viosrp_iu* %15 to %struct.TYPE_6__*
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %5, align 4
  %20 = load %struct.iu_entry*, %struct.iu_entry** %2, align 8
  %21 = getelementptr inbounds %struct.iu_entry, %struct.iu_entry* %20, i32 0, i32 0
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load %struct.Scsi_Host*, %struct.Scsi_Host** %23, align 8
  store %struct.Scsi_Host* %24, %struct.Scsi_Host** %6, align 8
  %25 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %26 = call %struct.srp_target* @host_to_srp_target(%struct.Scsi_Host* %25)
  store %struct.srp_target* %26, %struct.srp_target** %7, align 8
  %27 = load %struct.srp_target*, %struct.srp_target** %7, align 8
  %28 = call %struct.vio_port* @target_to_port(%struct.srp_target* %27)
  store %struct.vio_port* %28, %struct.vio_port** %8, align 8
  %29 = bitcast %struct.srp_rport_identifiers* %9 to %union.viosrp_iu*
  %30 = call i32 @memset(%union.viosrp_iu* %29, i32 0, i32 36)
  %31 = getelementptr inbounds %struct.srp_rport_identifiers, %struct.srp_rport_identifiers* %9, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.vio_port*, %struct.vio_port** %8, align 8
  %34 = getelementptr inbounds %struct.vio_port, %struct.vio_port* %33, i32 0, i32 1
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @sprintf(i32 %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @SRP_RPORT_ROLE_INITIATOR, align 4
  %40 = getelementptr inbounds %struct.srp_rport_identifiers, %struct.srp_rport_identifiers* %9, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = load %struct.vio_port*, %struct.vio_port** %8, align 8
  %42 = getelementptr inbounds %struct.vio_port, %struct.vio_port* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %1
  %46 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %47 = bitcast %struct.srp_rport_identifiers* %9 to %union.viosrp_iu*
  %48 = call i64 @srp_rport_add(%struct.Scsi_Host* %46, %union.viosrp_iu* %47)
  %49 = load %struct.vio_port*, %struct.vio_port** %8, align 8
  %50 = getelementptr inbounds %struct.vio_port, %struct.vio_port* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %45, %1
  %52 = load %union.viosrp_iu*, %union.viosrp_iu** %3, align 8
  %53 = call i32 @memset(%union.viosrp_iu* %52, i32 0, i32 24)
  %54 = load i32, i32* @SRP_LOGIN_RSP, align 4
  %55 = load %struct.srp_login_rsp*, %struct.srp_login_rsp** %4, align 8
  %56 = getelementptr inbounds %struct.srp_login_rsp, %struct.srp_login_rsp* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @INITIAL_SRP_LIMIT, align 4
  %58 = load %struct.srp_login_rsp*, %struct.srp_login_rsp** %4, align 8
  %59 = getelementptr inbounds %struct.srp_login_rsp, %struct.srp_login_rsp* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.srp_login_rsp*, %struct.srp_login_rsp** %4, align 8
  %62 = getelementptr inbounds %struct.srp_login_rsp, %struct.srp_login_rsp* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 4
  %63 = load %struct.srp_login_rsp*, %struct.srp_login_rsp** %4, align 8
  %64 = getelementptr inbounds %struct.srp_login_rsp, %struct.srp_login_rsp* %63, i32 0, i32 0
  store i32 4, i32* %64, align 4
  %65 = load %struct.srp_login_rsp*, %struct.srp_login_rsp** %4, align 8
  %66 = getelementptr inbounds %struct.srp_login_rsp, %struct.srp_login_rsp* %65, i32 0, i32 1
  store i32 4, i32* %66, align 4
  %67 = load i32, i32* @SRP_BUF_FORMAT_DIRECT, align 4
  %68 = load i32, i32* @SRP_BUF_FORMAT_INDIRECT, align 4
  %69 = or i32 %67, %68
  %70 = load %struct.srp_login_rsp*, %struct.srp_login_rsp** %4, align 8
  %71 = getelementptr inbounds %struct.srp_login_rsp, %struct.srp_login_rsp* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  %72 = load %struct.iu_entry*, %struct.iu_entry** %2, align 8
  %73 = load i32, i32* @VIOSRP_SRP_FORMAT, align 4
  %74 = call i32 @send_iu(%struct.iu_entry* %72, i32 24, i32 %73)
  ret void
}

declare dso_local %union.viosrp_iu* @vio_iu(%struct.iu_entry*) #1

declare dso_local %struct.srp_target* @host_to_srp_target(%struct.Scsi_Host*) #1

declare dso_local %struct.vio_port* @target_to_port(%struct.srp_target*) #1

declare dso_local i32 @memset(%union.viosrp_iu*, i32, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i64 @srp_rport_add(%struct.Scsi_Host*, %union.viosrp_iu*) #1

declare dso_local i32 @send_iu(%struct.iu_entry*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
