; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_seq.c_asd_seq_pause_lseq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_seq.c_asd_seq_pause_lseq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { i32 }

@PAUSE_TRIES = common dso_local global i32 0, align 4
@PAUSED = common dso_local global i32 0, align 4
@EPAUSE = common dso_local global i32 0, align 4
@PAUSE_DELAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"couldn't pause LSEQ %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asd_ha_struct*, i32)* @asd_seq_pause_lseq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asd_seq_pause_lseq(%struct.asd_ha_struct* %0, i32 %1) #0 {
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
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %46

18:                                               ; preds = %2
  %19 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @LmARP2CTL(i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @EPAUSE, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %19, i32 %21, i32 %24)
  br label %26

26:                                               ; preds = %39, %18
  %27 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @LmARP2CTL(i32 %28)
  %30 = call i32 @asd_read_reg_dword(%struct.asd_ha_struct* %27, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @PAUSED, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %46

36:                                               ; preds = %26
  %37 = load i32, i32* @PAUSE_DELAY, align 4
  %38 = call i32 @udelay(i32 %37)
  br label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %7, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %26, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @ASD_DPRINTK(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %44)
  store i32 -1, i32* %3, align 4
  br label %46

46:                                               ; preds = %43, %35, %17
  %47 = load i32, i32* %3, align 4
  ret i32 %47
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
