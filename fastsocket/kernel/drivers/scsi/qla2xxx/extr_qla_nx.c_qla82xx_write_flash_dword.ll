; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_write_flash_dword.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_write_flash_dword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_hw_data = type { i32 }

@ql_log_warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"ROM lock failed.\0A\00", align 1
@QLA82XX_ROMUSB_ROM_WDATA = common dso_local global i32 0, align 4
@QLA82XX_ROMUSB_ROM_ADDRESS = common dso_local global i32 0, align 4
@QLA82XX_ROMUSB_ROM_ABYTE_CNT = common dso_local global i32 0, align 4
@QLA82XX_ROMUSB_ROM_INSTR_OPCODE = common dso_local global i32 0, align 4
@M25P_INSTR_PP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Error waiting for rom done.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qla_hw_data*, i32, i32)* @qla82xx_write_flash_dword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla82xx_write_flash_dword(%struct.qla_hw_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qla_hw_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.qla_hw_data* %0, %struct.qla_hw_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %11 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32* @pci_get_drvdata(i32 %12)
  store i32* %13, i32** %9, align 8
  %14 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %15 = call i32 @ql82xx_rom_lock_d(%struct.qla_hw_data* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load i32, i32* @ql_log_warn, align 4
  %20 = load i32*, i32** %9, align 8
  %21 = call i32 @ql_log(i32 %19, i32* %20, i32 45073, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %4, align 4
  br label %60

23:                                               ; preds = %3
  %24 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %25 = call i64 @qla82xx_flash_set_write_enable(%struct.qla_hw_data* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %56

28:                                               ; preds = %23
  %29 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %30 = load i32, i32* @QLA82XX_ROMUSB_ROM_WDATA, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %29, i32 %30, i32 %31)
  %33 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %34 = load i32, i32* @QLA82XX_ROMUSB_ROM_ADDRESS, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %33, i32 %34, i32 %35)
  %37 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %38 = load i32, i32* @QLA82XX_ROMUSB_ROM_ABYTE_CNT, align 4
  %39 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %37, i32 %38, i32 3)
  %40 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %41 = load i32, i32* @QLA82XX_ROMUSB_ROM_INSTR_OPCODE, align 4
  %42 = load i32, i32* @M25P_INSTR_PP, align 4
  %43 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %40, i32 %41, i32 %42)
  %44 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %45 = call i32 @qla82xx_wait_rom_busy(%struct.qla_hw_data* %44)
  %46 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %47 = call i64 @qla82xx_wait_rom_done(%struct.qla_hw_data* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %28
  %50 = load i32, i32* @ql_log_warn, align 4
  %51 = load i32*, i32** %9, align 8
  %52 = call i32 @ql_log(i32 %50, i32* %51, i32 45074, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %56

53:                                               ; preds = %28
  %54 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %55 = call i32 @qla82xx_flash_wait_write_finish(%struct.qla_hw_data* %54)
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %53, %49, %27
  %57 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %58 = call i32 @qla82xx_rom_unlock(%struct.qla_hw_data* %57)
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %56, %18
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32* @pci_get_drvdata(i32) #1

declare dso_local i32 @ql82xx_rom_lock_d(%struct.qla_hw_data*) #1

declare dso_local i32 @ql_log(i32, i32*, i32, i8*) #1

declare dso_local i64 @qla82xx_flash_set_write_enable(%struct.qla_hw_data*) #1

declare dso_local i32 @qla82xx_wr_32(%struct.qla_hw_data*, i32, i32) #1

declare dso_local i32 @qla82xx_wait_rom_busy(%struct.qla_hw_data*) #1

declare dso_local i64 @qla82xx_wait_rom_done(%struct.qla_hw_data*) #1

declare dso_local i32 @qla82xx_flash_wait_write_finish(%struct.qla_hw_data*) #1

declare dso_local i32 @qla82xx_rom_unlock(%struct.qla_hw_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
