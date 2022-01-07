; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_nx.c_qla4_82xx_isp_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_nx.c_qla4_82xx_isp_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }

@QLA82XX_CRB_DEV_STATE = common dso_local global i32 0, align 4
@QLA8XXX_DEV_READY = common dso_local global i64 0, align 8
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"HW State: NEED RESET\0A\00", align 1
@QLA8XXX_DEV_NEED_RESET = common dso_local global i32 0, align 4
@AF_8XXX_RST_OWNER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"HW State: DEVICE INITIALIZING\0A\00", align 1
@QLA_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Clearing AF_RECOVERY in qla4_82xx_isp_reset\0A\00", align 1
@AF_FW_RECOVERY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla4_82xx_isp_reset(%struct.scsi_qla_host* %0) #0 {
  %2 = alloca %struct.scsi_qla_host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %2, align 8
  %5 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %6 = call i32 @qla4_82xx_idc_lock(%struct.scsi_qla_host* %5)
  %7 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %8 = load i32, i32* @QLA82XX_CRB_DEV_STATE, align 4
  %9 = call i64 @qla4_82xx_rd_32(%struct.scsi_qla_host* %7, i32 %8)
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @QLA8XXX_DEV_READY, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %1
  %14 = load i32, i32* @KERN_INFO, align 4
  %15 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %16 = call i32 @ql4_printk(i32 %14, %struct.scsi_qla_host* %15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %18 = load i32, i32* @QLA82XX_CRB_DEV_STATE, align 4
  %19 = load i32, i32* @QLA8XXX_DEV_NEED_RESET, align 4
  %20 = call i32 @qla4_82xx_wr_32(%struct.scsi_qla_host* %17, i32 %18, i32 %19)
  %21 = load i32, i32* @AF_8XXX_RST_OWNER, align 4
  %22 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %23 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %22, i32 0, i32 0
  %24 = call i32 @set_bit(i32 %21, i32* %23)
  br label %29

25:                                               ; preds = %1
  %26 = load i32, i32* @KERN_INFO, align 4
  %27 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %28 = call i32 @ql4_printk(i32 %26, %struct.scsi_qla_host* %27, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %25, %13
  %30 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %31 = call i32 @qla4_82xx_idc_unlock(%struct.scsi_qla_host* %30)
  %32 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %33 = call i32 @qla4_8xxx_device_state_handler(%struct.scsi_qla_host* %32)
  store i32 %33, i32* %3, align 4
  %34 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %35 = call i32 @qla4_82xx_idc_lock(%struct.scsi_qla_host* %34)
  %36 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %37 = call i32 @qla4_8xxx_clear_rst_ready(%struct.scsi_qla_host* %36)
  %38 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %39 = call i32 @qla4_82xx_idc_unlock(%struct.scsi_qla_host* %38)
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @QLA_SUCCESS, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %29
  %44 = load i32, i32* @KERN_INFO, align 4
  %45 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %46 = call i32 @ql4_printk(i32 %44, %struct.scsi_qla_host* %45, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i32, i32* @AF_FW_RECOVERY, align 4
  %48 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %49 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %48, i32 0, i32 0
  %50 = call i32 @clear_bit(i32 %47, i32* %49)
  br label %51

51:                                               ; preds = %43, %29
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @qla4_82xx_idc_lock(%struct.scsi_qla_host*) #1

declare dso_local i64 @qla4_82xx_rd_32(%struct.scsi_qla_host*, i32) #1

declare dso_local i32 @ql4_printk(i32, %struct.scsi_qla_host*, i8*) #1

declare dso_local i32 @qla4_82xx_wr_32(%struct.scsi_qla_host*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @qla4_82xx_idc_unlock(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla4_8xxx_device_state_handler(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla4_8xxx_clear_rst_ready(%struct.scsi_qla_host*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
