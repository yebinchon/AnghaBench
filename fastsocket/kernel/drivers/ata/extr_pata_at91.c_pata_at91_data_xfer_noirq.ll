; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_at91.c_pata_at91_data_xfer_noirq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_at91.c_pata_at91_data_xfer_noirq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.at91_ide_info* }
%struct.at91_ide_info = type { i32 }

@AT91_SMC_DBW = common dso_local global i32 0, align 4
@AT91_SMC_DBW_16 = common dso_local global i32 0, align 4
@AT91_SMC_DBW_8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_device*, i8*, i32, i32)* @pata_at91_data_xfer_noirq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pata_at91_data_xfer_noirq(%struct.ata_device* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ata_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.at91_ide_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.ata_device* %0, %struct.ata_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %14 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.at91_ide_info*, %struct.at91_ide_info** %20, align 8
  store %struct.at91_ide_info* %21, %struct.at91_ide_info** %9, align 8
  %22 = load i64, i64* %11, align 8
  %23 = call i32 @local_irq_save(i64 %22)
  %24 = load %struct.at91_ide_info*, %struct.at91_ide_info** %9, align 8
  %25 = getelementptr inbounds %struct.at91_ide_info, %struct.at91_ide_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @AT91_SMC_MODE(i32 %26)
  %28 = call i32 @at91_sys_read(i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load %struct.at91_ide_info*, %struct.at91_ide_info** %9, align 8
  %30 = getelementptr inbounds %struct.at91_ide_info, %struct.at91_ide_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @AT91_SMC_MODE(i32 %31)
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* @AT91_SMC_DBW, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  %37 = load i32, i32* @AT91_SMC_DBW_16, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @at91_sys_write(i32 %32, i32 %38)
  %40 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @ata_sff_data_xfer(%struct.ata_device* %40, i8* %41, i32 %42, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load %struct.at91_ide_info*, %struct.at91_ide_info** %9, align 8
  %46 = getelementptr inbounds %struct.at91_ide_info, %struct.at91_ide_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @AT91_SMC_MODE(i32 %47)
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @AT91_SMC_DBW, align 4
  %51 = xor i32 %50, -1
  %52 = and i32 %49, %51
  %53 = load i32, i32* @AT91_SMC_DBW_8, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @at91_sys_write(i32 %48, i32 %54)
  %56 = load i64, i64* %11, align 8
  %57 = call i32 @local_irq_restore(i64 %56)
  %58 = load i32, i32* %10, align 4
  ret i32 %58
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @at91_sys_read(i32) #1

declare dso_local i32 @AT91_SMC_MODE(i32) #1

declare dso_local i32 @at91_sys_write(i32, i32) #1

declare dso_local i32 @ata_sff_data_xfer(%struct.ata_device*, i8*, i32, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
