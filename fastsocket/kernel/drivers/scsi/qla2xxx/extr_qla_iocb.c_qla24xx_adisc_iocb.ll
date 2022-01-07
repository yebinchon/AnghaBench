; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_iocb.c_qla24xx_adisc_iocb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_iocb.c_qla24xx_adisc_iocb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.logio_entry_24xx = type { i32, i8*, i8*, i32 }

@LOGINOUT_PORT_IOCB_TYPE = common dso_local global i32 0, align 4
@LCF_COMMAND_ADISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.logio_entry_24xx*)* @qla24xx_adisc_iocb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla24xx_adisc_iocb(%struct.TYPE_7__* %0, %struct.logio_entry_24xx* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.logio_entry_24xx*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.logio_entry_24xx* %1, %struct.logio_entry_24xx** %4, align 8
  %5 = load i32, i32* @LOGINOUT_PORT_IOCB_TYPE, align 4
  %6 = load %struct.logio_entry_24xx*, %struct.logio_entry_24xx** %4, align 8
  %7 = getelementptr inbounds %struct.logio_entry_24xx, %struct.logio_entry_24xx* %6, i32 0, i32 3
  store i32 %5, i32* %7, align 8
  %8 = load i32, i32* @LCF_COMMAND_ADISC, align 4
  %9 = call i8* @cpu_to_le16(i32 %8)
  %10 = load %struct.logio_entry_24xx*, %struct.logio_entry_24xx** %4, align 8
  %11 = getelementptr inbounds %struct.logio_entry_24xx, %struct.logio_entry_24xx* %10, i32 0, i32 2
  store i8* %9, i8** %11, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i8* @cpu_to_le16(i32 %16)
  %18 = load %struct.logio_entry_24xx*, %struct.logio_entry_24xx** %4, align 8
  %19 = getelementptr inbounds %struct.logio_entry_24xx, %struct.logio_entry_24xx* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.logio_entry_24xx*, %struct.logio_entry_24xx** %4, align 8
  %28 = getelementptr inbounds %struct.logio_entry_24xx, %struct.logio_entry_24xx* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  ret void
}

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
