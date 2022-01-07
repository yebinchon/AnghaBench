; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_set_rst_ready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_set_rst_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_hw_data = type { i32, i32 }

@QLA82XX_CRB_DRV_STATE = common dso_local global i32 0, align 4
@QLA82XX_DRVST_NOT_RDY = common dso_local global i32 0, align 4
@QLA82XX_DRVST_RST_RDY = common dso_local global i32 0, align 4
@ql_dbg_init = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"drv_state = 0x%08x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qla_hw_data*)* @qla82xx_set_rst_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla82xx_set_rst_ready(%struct.qla_hw_data* %0) #0 {
  %2 = alloca %struct.qla_hw_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store %struct.qla_hw_data* %0, %struct.qla_hw_data** %2, align 8
  %5 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %6 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32* @pci_get_drvdata(i32 %7)
  store i32* %8, i32** %4, align 8
  %9 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %10 = load i32, i32* @QLA82XX_CRB_DRV_STATE, align 4
  %11 = call i32 @qla82xx_rd_32(%struct.qla_hw_data* %9, i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %16 = load i32, i32* @QLA82XX_CRB_DRV_STATE, align 4
  %17 = load i32, i32* @QLA82XX_DRVST_NOT_RDY, align 4
  %18 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %15, i32 %16, i32 %17)
  %19 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %20 = load i32, i32* @QLA82XX_CRB_DRV_STATE, align 4
  %21 = call i32 @qla82xx_rd_32(%struct.qla_hw_data* %19, i32 %20)
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %14, %1
  %23 = load i32, i32* @QLA82XX_DRVST_RST_RDY, align 4
  %24 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %25 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %26, 4
  %28 = shl i32 %23, %27
  %29 = load i32, i32* %3, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* @ql_dbg_init, align 4
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @ql_dbg(i32 %31, i32* %32, i32 187, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %36 = load i32, i32* @QLA82XX_CRB_DRV_STATE, align 4
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %35, i32 %36, i32 %37)
  ret void
}

declare dso_local i32* @pci_get_drvdata(i32) #1

declare dso_local i32 @qla82xx_rd_32(%struct.qla_hw_data*, i32) #1

declare dso_local i32 @qla82xx_wr_32(%struct.qla_hw_data*, i32, i32) #1

declare dso_local i32 @ql_dbg(i32, i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
