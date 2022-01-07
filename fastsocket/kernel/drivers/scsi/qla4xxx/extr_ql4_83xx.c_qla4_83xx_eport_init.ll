; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_83xx.c_qla4_83xx_eport_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_83xx.c_qla4_83xx_eport_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }

@QLA83XX_RESET_REG = common dso_local global i32 0, align 4
@QLA83XX_RESET_PORT0 = common dso_local global i32 0, align 4
@QLA83XX_RESET_PORT1 = common dso_local global i32 0, align 4
@QLA83XX_RESET_PORT2 = common dso_local global i32 0, align 4
@QLA83XX_RESET_PORT3 = common dso_local global i32 0, align 4
@QLA83XX_RESET_SRE_SHIM = common dso_local global i32 0, align 4
@QLA83XX_RESET_EPG_SHIM = common dso_local global i32 0, align 4
@QLA83XX_RESET_ETHER_PCS = common dso_local global i32 0, align 4
@QLA83XX_RESET_CONTROL = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"EPORT is out of reset.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_qla_host*)* @qla4_83xx_eport_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla4_83xx_eport_init(%struct.scsi_qla_host* %0) #0 {
  %2 = alloca %struct.scsi_qla_host*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %2, align 8
  %3 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %4 = load i32, i32* @QLA83XX_RESET_REG, align 4
  %5 = call i32 @qla4_83xx_wr_reg_indirect(%struct.scsi_qla_host* %3, i32 %4, i32 0)
  %6 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %7 = load i32, i32* @QLA83XX_RESET_PORT0, align 4
  %8 = call i32 @qla4_83xx_wr_reg_indirect(%struct.scsi_qla_host* %6, i32 %7, i32 0)
  %9 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %10 = load i32, i32* @QLA83XX_RESET_PORT1, align 4
  %11 = call i32 @qla4_83xx_wr_reg_indirect(%struct.scsi_qla_host* %9, i32 %10, i32 0)
  %12 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %13 = load i32, i32* @QLA83XX_RESET_PORT2, align 4
  %14 = call i32 @qla4_83xx_wr_reg_indirect(%struct.scsi_qla_host* %12, i32 %13, i32 0)
  %15 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %16 = load i32, i32* @QLA83XX_RESET_PORT3, align 4
  %17 = call i32 @qla4_83xx_wr_reg_indirect(%struct.scsi_qla_host* %15, i32 %16, i32 0)
  %18 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %19 = load i32, i32* @QLA83XX_RESET_SRE_SHIM, align 4
  %20 = call i32 @qla4_83xx_wr_reg_indirect(%struct.scsi_qla_host* %18, i32 %19, i32 0)
  %21 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %22 = load i32, i32* @QLA83XX_RESET_EPG_SHIM, align 4
  %23 = call i32 @qla4_83xx_wr_reg_indirect(%struct.scsi_qla_host* %21, i32 %22, i32 0)
  %24 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %25 = load i32, i32* @QLA83XX_RESET_ETHER_PCS, align 4
  %26 = call i32 @qla4_83xx_wr_reg_indirect(%struct.scsi_qla_host* %24, i32 %25, i32 0)
  %27 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %28 = load i32, i32* @QLA83XX_RESET_CONTROL, align 4
  %29 = call i32 @qla4_83xx_wr_reg_indirect(%struct.scsi_qla_host* %27, i32 %28, i32 255)
  %30 = load i32, i32* @KERN_INFO, align 4
  %31 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %32 = call i32 @ql4_printk(i32 %30, %struct.scsi_qla_host* %31, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @qla4_83xx_wr_reg_indirect(%struct.scsi_qla_host*, i32, i32) #1

declare dso_local i32 @ql4_printk(i32, %struct.scsi_qla_host*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
