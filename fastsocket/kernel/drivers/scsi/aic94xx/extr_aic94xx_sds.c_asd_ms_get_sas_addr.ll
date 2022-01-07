; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_sds.c_asd_ms_get_sas_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_sds.c_asd_ms_get_sas_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.asd_manuf_sec = type { i32 }

@SAS_ADDR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asd_ha_struct*, %struct.asd_manuf_sec*)* @asd_ms_get_sas_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asd_ms_get_sas_addr(%struct.asd_ha_struct* %0, %struct.asd_manuf_sec* %1) #0 {
  %3 = alloca %struct.asd_ha_struct*, align 8
  %4 = alloca %struct.asd_manuf_sec*, align 8
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %3, align 8
  store %struct.asd_manuf_sec* %1, %struct.asd_manuf_sec** %4, align 8
  %5 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %6 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.asd_manuf_sec*, %struct.asd_manuf_sec** %4, align 8
  %10 = getelementptr inbounds %struct.asd_manuf_sec, %struct.asd_manuf_sec* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @SAS_ADDR_SIZE, align 4
  %13 = call i32 @memcpy(i32 %8, i32 %11, i32 %12)
  ret i32 0
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
