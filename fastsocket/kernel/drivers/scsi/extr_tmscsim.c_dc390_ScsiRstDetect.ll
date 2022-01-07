; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_tmscsim.c_dc390_ScsiRstDetect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_tmscsim.c_dc390_ScsiRstDetect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc390_acb = type { i64, i32, i32*, i64, i64 }

@.str = private unnamed_addr constant [36 x i8] c"DC390: Rst_Detect: laststat = %08x\0A\00", align 1
@dc390_laststatus = common dso_local global i32 0, align 4
@DMA_Cmd = common dso_local global i32 0, align 4
@DMA_IDLE_CMD = common dso_local global i32 0, align 4
@ScsiCmd = common dso_local global i32 0, align 4
@CLEAR_FIFO_CMD = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@dc390_eepromBuf = common dso_local global i32** null, align 8
@EE_DELAY = common dso_local global i64 0, align 8
@RESET_DEV = common dso_local global i32 0, align 4
@RESET_DONE = common dso_local global i32 0, align 4
@RESET_DETECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc390_acb*)* @dc390_ScsiRstDetect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dc390_ScsiRstDetect(%struct.dc390_acb* %0) #0 {
  %2 = alloca %struct.dc390_acb*, align 8
  store %struct.dc390_acb* %0, %struct.dc390_acb** %2, align 8
  %3 = load i32, i32* @dc390_laststatus, align 4
  %4 = call i32 @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %3)
  %5 = load i32, i32* @DMA_Cmd, align 4
  %6 = load i32, i32* @DMA_IDLE_CMD, align 4
  %7 = call i32 @DC390_write8(i32 %5, i32 %6)
  %8 = call i32 @udelay(i32 1000)
  %9 = load i32, i32* @ScsiCmd, align 4
  %10 = load i32, i32* @CLEAR_FIFO_CMD, align 4
  %11 = call i32 @DC390_write8(i32 %9, i32 %10)
  %12 = load i64, i64* @jiffies, align 8
  %13 = load i32, i32* @HZ, align 4
  %14 = mul nsw i32 5, %13
  %15 = sdiv i32 %14, 2
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %12, %16
  %18 = load i32, i32* @HZ, align 4
  %19 = load i32**, i32*** @dc390_eepromBuf, align 8
  %20 = load %struct.dc390_acb*, %struct.dc390_acb** %2, align 8
  %21 = getelementptr inbounds %struct.dc390_acb, %struct.dc390_acb* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i32*, i32** %19, i64 %22
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* @EE_DELAY, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %18, %27
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %17, %29
  %31 = load %struct.dc390_acb*, %struct.dc390_acb** %2, align 8
  %32 = getelementptr inbounds %struct.dc390_acb, %struct.dc390_acb* %31, i32 0, i32 4
  store i64 %30, i64* %32, align 8
  %33 = load %struct.dc390_acb*, %struct.dc390_acb** %2, align 8
  %34 = getelementptr inbounds %struct.dc390_acb, %struct.dc390_acb* %33, i32 0, i32 3
  store i64 0, i64* %34, align 8
  %35 = load %struct.dc390_acb*, %struct.dc390_acb** %2, align 8
  %36 = getelementptr inbounds %struct.dc390_acb, %struct.dc390_acb* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @RESET_DEV, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %1
  %42 = load i32, i32* @RESET_DONE, align 4
  %43 = load %struct.dc390_acb*, %struct.dc390_acb** %2, align 8
  %44 = getelementptr inbounds %struct.dc390_acb, %struct.dc390_acb* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  br label %61

47:                                               ; preds = %1
  %48 = load i32, i32* @RESET_DETECT, align 4
  %49 = load %struct.dc390_acb*, %struct.dc390_acb** %2, align 8
  %50 = getelementptr inbounds %struct.dc390_acb, %struct.dc390_acb* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  %53 = load %struct.dc390_acb*, %struct.dc390_acb** %2, align 8
  %54 = call i32 @dc390_ResetDevParam(%struct.dc390_acb* %53)
  %55 = load %struct.dc390_acb*, %struct.dc390_acb** %2, align 8
  %56 = call i32 @dc390_DoingSRB_Done(%struct.dc390_acb* %55, i32* null)
  %57 = load %struct.dc390_acb*, %struct.dc390_acb** %2, align 8
  %58 = getelementptr inbounds %struct.dc390_acb, %struct.dc390_acb* %57, i32 0, i32 2
  store i32* null, i32** %58, align 8
  %59 = load %struct.dc390_acb*, %struct.dc390_acb** %2, align 8
  %60 = getelementptr inbounds %struct.dc390_acb, %struct.dc390_acb* %59, i32 0, i32 1
  store i32 0, i32* %60, align 8
  br label %61

61:                                               ; preds = %47, %41
  ret void
}

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @DC390_write8(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dc390_ResetDevParam(%struct.dc390_acb*) #1

declare dso_local i32 @dc390_DoingSRB_Done(%struct.dc390_acb*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
