; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_nvram.c_eeprom_readword.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_nvram.c_eeprom_readword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }

@FM93C56A_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, %struct.scsi_qla_host*)* @eeprom_readword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eeprom_readword(i32 %0, i32* %1, %struct.scsi_qla_host* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.scsi_qla_host*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store %struct.scsi_qla_host* %2, %struct.scsi_qla_host** %6, align 8
  %7 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %8 = call i32 @fm93c56a_select(%struct.scsi_qla_host* %7)
  %9 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %10 = load i32, i32* @FM93C56A_READ, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @fm93c56a_cmd(%struct.scsi_qla_host* %9, i32 %10, i32 %11)
  %13 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @fm93c56a_datain(%struct.scsi_qla_host* %13, i32* %14)
  %16 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %17 = call i32 @fm93c56a_deselect(%struct.scsi_qla_host* %16)
  ret i32 1
}

declare dso_local i32 @fm93c56a_select(%struct.scsi_qla_host*) #1

declare dso_local i32 @fm93c56a_cmd(%struct.scsi_qla_host*, i32, i32) #1

declare dso_local i32 @fm93c56a_datain(%struct.scsi_qla_host*, i32*) #1

declare dso_local i32 @fm93c56a_deselect(%struct.scsi_qla_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
