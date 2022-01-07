; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_sup.c_qla24xx_write_optrom_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_sup.c_qla24xx_write_optrom_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32, %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32 }

@MBX_UPDATE_FLASH_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla24xx_write_optrom_data(%struct.scsi_qla_host* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.scsi_qla_host*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.qla_hw_data*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %12 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %11, i32 0, i32 1
  %13 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  store %struct.qla_hw_data* %13, %struct.qla_hw_data** %10, align 8
  %14 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %15 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @scsi_block_requests(i32 %16)
  %18 = load i32, i32* @MBX_UPDATE_FLASH_ACTIVE, align 4
  %19 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %20 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %19, i32 0, i32 0
  %21 = call i32 @set_bit(i32 %18, i32* %20)
  %22 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = ashr i32 %24, 2
  %26 = load i32, i32* %8, align 4
  %27 = ashr i32 %26, 2
  %28 = call i32 @qla24xx_write_flash_data(%struct.scsi_qla_host* %22, i32* %23, i32 %25, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* @MBX_UPDATE_FLASH_ACTIVE, align 4
  %30 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %31 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %30, i32 0, i32 0
  %32 = call i32 @clear_bit(i32 %29, i32* %31)
  %33 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %34 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @scsi_unblock_requests(i32 %35)
  %37 = load i32, i32* %9, align 4
  ret i32 %37
}

declare dso_local i32 @scsi_block_requests(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @qla24xx_write_flash_data(%struct.scsi_qla_host*, i32*, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @scsi_unblock_requests(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
