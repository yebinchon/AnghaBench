; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_nx.c_qla4_82xx_rom_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_nx.c_qla4_82xx_rom_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }

@PCIE_SEM2_LOCK = common dso_local global i32 0, align 4
@qla4_82xx_rom_lock_timeout = common dso_local global i32 0, align 4
@QLA82XX_ROM_LOCK_ID = common dso_local global i32 0, align 4
@ROM_LOCK_DRIVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*)* @qla4_82xx_rom_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla4_82xx_rom_lock(%struct.scsi_qla_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_qla_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %41, %1
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  br i1 %10, label %11, label %42

11:                                               ; preds = %7
  %12 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %13 = load i32, i32* @PCIE_SEM2_LOCK, align 4
  %14 = call i32 @QLA82XX_PCIE_REG(i32 %13)
  %15 = call i32 @qla4_82xx_rd_32(%struct.scsi_qla_host* %12, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  br label %42

19:                                               ; preds = %11
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @qla4_82xx_rom_lock_timeout, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 -1, i32* %2, align 4
  br label %47

24:                                               ; preds = %19
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %6, align 4
  %27 = call i32 (...) @in_interrupt()
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = call i32 (...) @schedule()
  br label %41

31:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %37, %31
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %33, 20
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = call i32 (...) @cpu_relax()
  br label %37

37:                                               ; preds = %35
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %32

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40, %29
  br label %7

42:                                               ; preds = %18, %7
  %43 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %44 = load i32, i32* @QLA82XX_ROM_LOCK_ID, align 4
  %45 = load i32, i32* @ROM_LOCK_DRIVER, align 4
  %46 = call i32 @qla4_82xx_wr_32(%struct.scsi_qla_host* %43, i32 %44, i32 %45)
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %42, %23
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @qla4_82xx_rd_32(%struct.scsi_qla_host*, i32) #1

declare dso_local i32 @QLA82XX_PCIE_REG(i32) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @qla4_82xx_wr_32(%struct.scsi_qla_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
