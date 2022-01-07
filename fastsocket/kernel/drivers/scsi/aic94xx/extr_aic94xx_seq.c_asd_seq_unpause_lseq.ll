; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_seq.c_asd_seq_unpause_lseq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_seq.c_asd_seq_unpause_lseq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { i32 }

@PAUSE_TRIES = common dso_local global i32 0, align 4
@PAUSED = common dso_local global i32 0, align 4
@EPAUSE = common dso_local global i32 0, align 4
@PAUSE_DELAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"couldn't unpause LSEQ %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asd_ha_struct*, i32)* @asd_seq_unpause_lseq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asd_seq_unpause_lseq(%struct.asd_ha_struct* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.asd_ha_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @PAUSE_TRIES, align 4
  store i32 %8, i32* %7, align 4
  %9 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @LmARP2CTL(i32 %10)
  %12 = call i32 @asd_read_reg_dword(%struct.asd_ha_struct* %9, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @PAUSED, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %47

18:                                               ; preds = %2
  %19 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @LmARP2CTL(i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @EPAUSE, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %19, i32 %21, i32 %25)
  br label %27

27:                                               ; preds = %40, %18
  %28 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @LmARP2CTL(i32 %29)
  %31 = call i32 @asd_read_reg_dword(%struct.asd_ha_struct* %28, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @PAUSED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %47

37:                                               ; preds = %27
  %38 = load i32, i32* @PAUSE_DELAY, align 4
  %39 = call i32 @udelay(i32 %38)
  br label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %7, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %27, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @ASD_DPRINTK(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %45)
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %44, %36, %17
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @asd_read_reg_dword(%struct.asd_ha_struct*, i32) #1

declare dso_local i32 @LmARP2CTL(i32) #1

declare dso_local i32 @asd_write_reg_dword(%struct.asd_ha_struct*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ASD_DPRINTK(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
