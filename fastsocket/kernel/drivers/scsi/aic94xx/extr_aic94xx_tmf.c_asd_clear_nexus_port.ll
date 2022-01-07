; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_tmf.c_asd_clear_nexus_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_tmf.c_asd_clear_nexus_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.asd_sas_port = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.asd_ha_struct* }
%struct.asd_ha_struct = type { i32 }

@CLEAR_NEXUS_PRE = common dso_local global i32 0, align 4
@NEXUS_PORT = common dso_local global i32 0, align 4
@scb = common dso_local global %struct.TYPE_6__* null, align 8
@CLEAR_NEXUS_POST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asd_clear_nexus_port(%struct.asd_sas_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.asd_sas_port*, align 8
  %4 = alloca %struct.asd_ha_struct*, align 8
  store %struct.asd_sas_port* %0, %struct.asd_sas_port** %3, align 8
  %5 = load %struct.asd_sas_port*, %struct.asd_sas_port** %3, align 8
  %6 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %5, i32 0, i32 1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %8, align 8
  store %struct.asd_ha_struct* %9, %struct.asd_ha_struct** %4, align 8
  %10 = load i32, i32* @CLEAR_NEXUS_PRE, align 4
  %11 = load i32, i32* @NEXUS_PORT, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @scb, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  store i32 %11, i32* %14, align 4
  %15 = load %struct.asd_sas_port*, %struct.asd_sas_port** %3, align 8
  %16 = getelementptr inbounds %struct.asd_sas_port, %struct.asd_sas_port* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @scb, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* @CLEAR_NEXUS_POST, align 4
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
