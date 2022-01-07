; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_hwi.c_asd_dch_sas_isr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_hwi.c_asd_dch_sas_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { i32 }

@DCHSTATUS = common dso_local global i32 0, align 4
@CFIFTOERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%s: CFIFTOERR\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asd_ha_struct*)* @asd_dch_sas_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asd_dch_sas_isr(%struct.asd_ha_struct* %0) #0 {
  %2 = alloca %struct.asd_ha_struct*, align 8
  %3 = alloca i32, align 4
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %2, align 8
  %4 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %5 = load i32, i32* @DCHSTATUS, align 4
  %6 = call i32 @asd_read_reg_dword(%struct.asd_ha_struct* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @CFIFTOERR, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %13 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @pci_name(i32 %14)
  %16 = call i32 @asd_printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %18 = call i32 @asd_chip_reset(%struct.asd_ha_struct* %17)
  br label %23

19:                                               ; preds = %1
  %20 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @asd_arp2_err(%struct.asd_ha_struct* %20, i32 %21)
  br label %23

23:                                               ; preds = %19, %11
  ret void
}

declare dso_local i32 @asd_read_reg_dword(%struct.asd_ha_struct*, i32) #1

declare dso_local i32 @asd_printk(i8*, i32) #1

declare dso_local i32 @pci_name(i32) #1

declare dso_local i32 @asd_chip_reset(%struct.asd_ha_struct*) #1

declare dso_local i32 @asd_arp2_err(%struct.asd_ha_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
