; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_sup.c_qla24xx_read_optrom_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_sup.c_qla24xx_read_optrom_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32, %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32 }

@MBX_UPDATE_FLASH_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @qla24xx_read_optrom_data(%struct.scsi_qla_host* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.scsi_qla_host*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.qla_hw_data*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %11 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %10, i32 0, i32 1
  %12 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  store %struct.qla_hw_data* %12, %struct.qla_hw_data** %9, align 8
  %13 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %14 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @scsi_block_requests(i32 %15)
  %17 = load i32, i32* @MBX_UPDATE_FLASH_ACTIVE, align 4
  %18 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %19 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %18, i32 0, i32 0
  %20 = call i32 @set_bit(i32 %17, i32* %19)
  %21 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = ashr i32 %23, 2
  %25 = load i32, i32* %8, align 4
  %26 = ashr i32 %25, 2
  %27 = call i32 @qla24xx_read_flash_data(%struct.scsi_qla_host* %21, i32* %22, i32 %24, i32 %26)
  %28 = load i32, i32* @MBX_UPDATE_FLASH_ACTIVE, align 4
  %29 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %30 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %29, i32 0, i32 0
  %31 = call i32 @clear_bit(i32 %28, i32* %30)
  %32 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %33 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @scsi_unblock_requests(i32 %34)
  %36 = load i32*, i32** %6, align 8
  ret i32* %36
}

declare dso_local i32 @scsi_block_requests(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @qla24xx_read_flash_data(%struct.scsi_qla_host*, i32*, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @scsi_unblock_requests(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
