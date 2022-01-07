; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_flash_set_write_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_flash_set_write_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_hw_data = type { i32 }

@QLA82XX_ROMUSB_ROM_ABYTE_CNT = common dso_local global i32 0, align 4
@QLA82XX_ROMUSB_ROM_INSTR_OPCODE = common dso_local global i32 0, align 4
@M25P_INSTR_WREN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qla_hw_data*)* @qla82xx_flash_set_write_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla82xx_flash_set_write_enable(%struct.qla_hw_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qla_hw_data*, align 8
  %4 = alloca i32, align 4
  store %struct.qla_hw_data* %0, %struct.qla_hw_data** %3, align 8
  %5 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %6 = call i32 @qla82xx_wait_rom_busy(%struct.qla_hw_data* %5)
  %7 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %8 = load i32, i32* @QLA82XX_ROMUSB_ROM_ABYTE_CNT, align 4
  %9 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %7, i32 %8, i32 0)
  %10 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %11 = load i32, i32* @QLA82XX_ROMUSB_ROM_INSTR_OPCODE, align 4
  %12 = load i32, i32* @M25P_INSTR_WREN, align 4
  %13 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %10, i32 %11, i32 %12)
  %14 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %15 = call i32 @qla82xx_wait_rom_busy(%struct.qla_hw_data* %14)
  %16 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %17 = call i64 @qla82xx_wait_rom_done(%struct.qla_hw_data* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %31

20:                                               ; preds = %1
  %21 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %22 = call i64 @qla82xx_read_status_reg(%struct.qla_hw_data* %21, i32* %4)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 -1, i32* %2, align 4
  br label %31

25:                                               ; preds = %20
  %26 = load i32, i32* %4, align 4
  %27 = and i32 %26, 2
  %28 = icmp ne i32 %27, 2
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 -1, i32* %2, align 4
  br label %31

30:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %29, %24, %19
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @qla82xx_wait_rom_busy(%struct.qla_hw_data*) #1

declare dso_local i32 @qla82xx_wr_32(%struct.qla_hw_data*, i32, i32) #1

declare dso_local i64 @qla82xx_wait_rom_done(%struct.qla_hw_data*) #1

declare dso_local i64 @qla82xx_read_status_reg(%struct.qla_hw_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
