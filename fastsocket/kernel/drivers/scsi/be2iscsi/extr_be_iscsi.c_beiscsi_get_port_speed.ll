; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_get_port_speed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_get_port_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { %struct.iscsi_cls_host* }
%struct.iscsi_cls_host = type { i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_ntwk_link_status_resp = type { i32 }
%struct.beiscsi_hba = type { i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@BEISCSI_LOG_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"BS_%d : Getting Port Speed Failed\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@BEISCSI_LOG_MBOX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"BS_%d : Port Speed MBX Failed\0A\00", align 1
@ISCSI_PORT_SPEED_10MBPS = common dso_local global i32 0, align 4
@ISCSI_PORT_SPEED_1GBPS = common dso_local global i32 0, align 4
@ISCSI_PORT_SPEED_10GBPS = common dso_local global i32 0, align 4
@ISCSI_PORT_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*)* @beiscsi_get_port_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beiscsi_get_port_speed(%struct.Scsi_Host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.be_mcc_wrb*, align 8
  %7 = alloca %struct.be_cmd_ntwk_link_status_resp*, align 8
  %8 = alloca %struct.beiscsi_hba*, align 8
  %9 = alloca %struct.iscsi_cls_host*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %3, align 8
  %10 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %11 = call %struct.beiscsi_hba* @iscsi_host_priv(%struct.Scsi_Host* %10)
  store %struct.beiscsi_hba* %11, %struct.beiscsi_hba** %8, align 8
  %12 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %13 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %12, i32 0, i32 0
  %14 = load %struct.iscsi_cls_host*, %struct.iscsi_cls_host** %13, align 8
  store %struct.iscsi_cls_host* %14, %struct.iscsi_cls_host** %9, align 8
  %15 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %16 = call i32 @be_cmd_get_port_speed(%struct.beiscsi_hba* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %1
  %20 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %21 = load i32, i32* @KERN_ERR, align 4
  %22 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %23 = call i32 @beiscsi_log(%struct.beiscsi_hba* %20, i32 %21, i32 %22, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %66

26:                                               ; preds = %1
  %27 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @beiscsi_mccq_compl(%struct.beiscsi_hba* %27, i32 %28, %struct.be_mcc_wrb** %6, i32* null)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %26
  %33 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %34 = load i32, i32* @KERN_ERR, align 4
  %35 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %36 = load i32, i32* @BEISCSI_LOG_MBOX, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @beiscsi_log(%struct.beiscsi_hba* %33, i32 %34, i32 %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %66

40:                                               ; preds = %26
  %41 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %6, align 8
  %42 = call %struct.be_cmd_ntwk_link_status_resp* @embedded_payload(%struct.be_mcc_wrb* %41)
  store %struct.be_cmd_ntwk_link_status_resp* %42, %struct.be_cmd_ntwk_link_status_resp** %7, align 8
  %43 = load %struct.be_cmd_ntwk_link_status_resp*, %struct.be_cmd_ntwk_link_status_resp** %7, align 8
  %44 = getelementptr inbounds %struct.be_cmd_ntwk_link_status_resp, %struct.be_cmd_ntwk_link_status_resp* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %61 [
    i32 129, label %46
    i32 131, label %50
    i32 128, label %53
    i32 130, label %57
  ]

46:                                               ; preds = %40
  %47 = load i32, i32* @ISCSI_PORT_SPEED_10MBPS, align 4
  %48 = load %struct.iscsi_cls_host*, %struct.iscsi_cls_host** %9, align 8
  %49 = getelementptr inbounds %struct.iscsi_cls_host, %struct.iscsi_cls_host* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  br label %65

50:                                               ; preds = %40
  %51 = load %struct.iscsi_cls_host*, %struct.iscsi_cls_host** %9, align 8
  %52 = getelementptr inbounds %struct.iscsi_cls_host, %struct.iscsi_cls_host* %51, i32 0, i32 0
  store i32 131, i32* %52, align 4
  br label %65

53:                                               ; preds = %40
  %54 = load i32, i32* @ISCSI_PORT_SPEED_1GBPS, align 4
  %55 = load %struct.iscsi_cls_host*, %struct.iscsi_cls_host** %9, align 8
  %56 = getelementptr inbounds %struct.iscsi_cls_host, %struct.iscsi_cls_host* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  br label %65

57:                                               ; preds = %40
  %58 = load i32, i32* @ISCSI_PORT_SPEED_10GBPS, align 4
  %59 = load %struct.iscsi_cls_host*, %struct.iscsi_cls_host** %9, align 8
  %60 = getelementptr inbounds %struct.iscsi_cls_host, %struct.iscsi_cls_host* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  br label %65

61:                                               ; preds = %40
  %62 = load i32, i32* @ISCSI_PORT_SPEED_UNKNOWN, align 4
  %63 = load %struct.iscsi_cls_host*, %struct.iscsi_cls_host** %9, align 8
  %64 = getelementptr inbounds %struct.iscsi_cls_host, %struct.iscsi_cls_host* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  br label %65

65:                                               ; preds = %61, %57, %53, %50, %46
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %32, %19
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.beiscsi_hba* @iscsi_host_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @be_cmd_get_port_speed(%struct.beiscsi_hba*) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*) #1

declare dso_local i32 @beiscsi_mccq_compl(%struct.beiscsi_hba*, i32, %struct.be_mcc_wrb**, i32*) #1

declare dso_local %struct.be_cmd_ntwk_link_status_resp* @embedded_payload(%struct.be_mcc_wrb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
