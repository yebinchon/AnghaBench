; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_tmscsim.c_DC390_bus_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_tmscsim.c_DC390_bus_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64 }
%struct.dc390_acb = type { i64, i32, i32*, i64 }

@CtrlReg1 = common dso_local global i32 0, align 4
@DIS_INT_ON_SCSI_RST = common dso_local global i32 0, align 4
@RESET_DEV = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@dc390_eepromBuf = common dso_local global i32** null, align 8
@EE_DELAY = common dso_local global i64 0, align 8
@ScsiCmd = common dso_local global i32 0, align 4
@CLEAR_FIFO_CMD = common dso_local global i32 0, align 4
@INT_Status = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @DC390_bus_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DC390_bus_reset(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca %struct.dc390_acb*, align 8
  %4 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %5 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %6 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.dc390_acb*
  store %struct.dc390_acb* %12, %struct.dc390_acb** %3, align 8
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %14 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @spin_lock_irq(i32 %19)
  %21 = load i32, i32* @CtrlReg1, align 4
  %22 = call i32 @DC390_read8(i32 %21)
  %23 = load i32, i32* @DIS_INT_ON_SCSI_RST, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* @CtrlReg1, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @DC390_write8(i32 %25, i32 %26)
  %28 = load i32, i32* @RESET_DEV, align 4
  %29 = load %struct.dc390_acb*, %struct.dc390_acb** %3, align 8
  %30 = getelementptr inbounds %struct.dc390_acb, %struct.dc390_acb* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 8
  %33 = load %struct.dc390_acb*, %struct.dc390_acb** %3, align 8
  %34 = call i32 @dc390_ResetSCSIBus(%struct.dc390_acb* %33)
  %35 = load %struct.dc390_acb*, %struct.dc390_acb** %3, align 8
  %36 = call i32 @dc390_ResetDevParam(%struct.dc390_acb* %35)
  %37 = call i32 @mdelay(i32 1)
  %38 = load i64, i64* @jiffies, align 8
  %39 = load i32, i32* @HZ, align 4
  %40 = mul nsw i32 3, %39
  %41 = sdiv i32 %40, 2
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %38, %42
  %44 = load i32, i32* @HZ, align 4
  %45 = load i32**, i32*** @dc390_eepromBuf, align 8
  %46 = load %struct.dc390_acb*, %struct.dc390_acb** %3, align 8
  %47 = getelementptr inbounds %struct.dc390_acb, %struct.dc390_acb* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i32*, i32** %45, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* @EE_DELAY, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %44, %53
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %43, %55
  %57 = load %struct.dc390_acb*, %struct.dc390_acb** %3, align 8
  %58 = getelementptr inbounds %struct.dc390_acb, %struct.dc390_acb* %57, i32 0, i32 3
  store i64 %56, i64* %58, align 8
  %59 = load i32, i32* @ScsiCmd, align 4
  %60 = load i32, i32* @CLEAR_FIFO_CMD, align 4
  %61 = call i32 @DC390_write8(i32 %59, i32 %60)
  %62 = load i32, i32* @INT_Status, align 4
  %63 = call i32 @DC390_read8(i32 %62)
  %64 = load %struct.dc390_acb*, %struct.dc390_acb** %3, align 8
  %65 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %66 = call i32 @dc390_DoingSRB_Done(%struct.dc390_acb* %64, %struct.scsi_cmnd* %65)
  %67 = load %struct.dc390_acb*, %struct.dc390_acb** %3, align 8
  %68 = getelementptr inbounds %struct.dc390_acb, %struct.dc390_acb* %67, i32 0, i32 2
  store i32* null, i32** %68, align 8
  %69 = load %struct.dc390_acb*, %struct.dc390_acb** %3, align 8
  %70 = getelementptr inbounds %struct.dc390_acb, %struct.dc390_acb* %69, i32 0, i32 1
  store i32 0, i32* %70, align 8
  %71 = load i32, i32* @CtrlReg1, align 4
  %72 = call i32 @DC390_read8(i32 %71)
  %73 = load i32, i32* @DIS_INT_ON_SCSI_RST, align 4
  %74 = xor i32 %73, -1
  %75 = and i32 %72, %74
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* @CtrlReg1, align 4
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @DC390_write8(i32 %76, i32 %77)
  %79 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %80 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %79, i32 0, i32 0
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @spin_unlock_irq(i32 %85)
  %87 = load i32, i32* @SUCCESS, align 4
  ret i32 %87
}

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @DC390_read8(i32) #1

declare dso_local i32 @DC390_write8(i32, i32) #1

declare dso_local i32 @dc390_ResetSCSIBus(%struct.dc390_acb*) #1

declare dso_local i32 @dc390_ResetDevParam(%struct.dc390_acb*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @dc390_DoingSRB_Done(%struct.dc390_acb*, %struct.scsi_cmnd*) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
