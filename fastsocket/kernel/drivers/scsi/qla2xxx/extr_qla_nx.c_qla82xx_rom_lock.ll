; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_rom_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_rom_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_hw_data = type { i32 }

@PCIE_SEM2_LOCK = common dso_local global i32 0, align 4
@qla82xx_rom_lock_timeout = common dso_local global i32 0, align 4
@QLA82XX_ROM_LOCK_ID = common dso_local global i32 0, align 4
@ql_dbg_p3p = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Failed to acquire rom lock, acquired by %d.\0A\00", align 1
@ROM_LOCK_DRIVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qla_hw_data*)* @qla82xx_rom_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla82xx_rom_lock(%struct.qla_hw_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qla_hw_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  store %struct.qla_hw_data* %0, %struct.qla_hw_data** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i8* null, i8** %6, align 8
  %8 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %9 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32* @pci_get_drvdata(i32 %10)
  store i32* %11, i32** %7, align 8
  br label %12

12:                                               ; preds = %37, %1
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br i1 %15, label %16, label %40

16:                                               ; preds = %12
  %17 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %18 = load i32, i32* @PCIE_SEM2_LOCK, align 4
  %19 = call i32 @QLA82XX_PCIE_REG(i32 %18)
  %20 = call i8* @qla82xx_rd_32(%struct.qla_hw_data* %17, i32 %19)
  %21 = ptrtoint i8* %20 to i32
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %40

25:                                               ; preds = %16
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @qla82xx_rom_lock_timeout, align 4
  %28 = icmp sge i32 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %31 = load i32, i32* @QLA82XX_ROM_LOCK_ID, align 4
  %32 = call i8* @qla82xx_rd_32(%struct.qla_hw_data* %30, i32 %31)
  store i8* %32, i8** %6, align 8
  %33 = load i32, i32* @ql_dbg_p3p, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @ql_dbg(i32 %33, i32* %34, i32 45189, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %35)
  store i32 -1, i32* %2, align 4
  br label %45

37:                                               ; preds = %25
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %12

40:                                               ; preds = %24, %12
  %41 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %42 = load i32, i32* @QLA82XX_ROM_LOCK_ID, align 4
  %43 = load i32, i32* @ROM_LOCK_DRIVER, align 4
  %44 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %41, i32 %42, i32 %43)
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %40, %29
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32* @pci_get_drvdata(i32) #1

declare dso_local i8* @qla82xx_rd_32(%struct.qla_hw_data*, i32) #1

declare dso_local i32 @QLA82XX_PCIE_REG(i32) #1

declare dso_local i32 @ql_dbg(i32, i32*, i32, i8*, i8*) #1

declare dso_local i32 @qla82xx_wr_32(%struct.qla_hw_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
