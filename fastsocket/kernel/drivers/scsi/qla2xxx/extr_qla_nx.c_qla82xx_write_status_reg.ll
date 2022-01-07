; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_write_status_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_write_status_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_hw_data = type { i32 }

@QLA82XX_ROMUSB_ROM_WDATA = common dso_local global i32 0, align 4
@QLA82XX_ROMUSB_ROM_INSTR_OPCODE = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Error waiting for rom done.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qla_hw_data*, i32)* @qla82xx_write_status_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla82xx_write_status_reg(%struct.qla_hw_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qla_hw_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.qla_hw_data* %0, %struct.qla_hw_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %8 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32* @pci_get_drvdata(i32 %9)
  store i32* %10, i32** %6, align 8
  %11 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %12 = call i64 @qla82xx_flash_set_write_enable(%struct.qla_hw_data* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %33

15:                                               ; preds = %2
  %16 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %17 = load i32, i32* @QLA82XX_ROMUSB_ROM_WDATA, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %16, i32 %17, i32 %18)
  %20 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %21 = load i32, i32* @QLA82XX_ROMUSB_ROM_INSTR_OPCODE, align 4
  %22 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %20, i32 %21, i32 1)
  %23 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %24 = call i64 @qla82xx_wait_rom_done(%struct.qla_hw_data* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %15
  %27 = load i32, i32* @ql_log_warn, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @ql_log(i32 %27, i32* %28, i32 45070, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %33

30:                                               ; preds = %15
  %31 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %32 = call i32 @qla82xx_flash_wait_write_finish(%struct.qla_hw_data* %31)
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %30, %26, %14
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32* @pci_get_drvdata(i32) #1

declare dso_local i64 @qla82xx_flash_set_write_enable(%struct.qla_hw_data*) #1

declare dso_local i32 @qla82xx_wr_32(%struct.qla_hw_data*, i32, i32) #1

declare dso_local i64 @qla82xx_wait_rom_done(%struct.qla_hw_data*) #1

declare dso_local i32 @ql_log(i32, i32*, i32, i8*) #1

declare dso_local i32 @qla82xx_flash_wait_write_finish(%struct.qla_hw_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
