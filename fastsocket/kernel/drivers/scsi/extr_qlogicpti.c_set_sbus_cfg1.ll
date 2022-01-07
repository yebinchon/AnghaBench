; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_qlogicpti.c_set_sbus_cfg1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_qlogicpti.c_set_sbus_cfg1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlogicpti = type { i32, i64 }

@DMA_BURST32 = common dso_local global i32 0, align 4
@SBUS_CFG1_BENAB = common dso_local global i32 0, align 4
@SBUS_CFG1_B32 = common dso_local global i32 0, align 4
@DMA_BURST16 = common dso_local global i32 0, align 4
@SBUS_CFG1_B16 = common dso_local global i32 0, align 4
@DMA_BURST8 = common dso_local global i32 0, align 4
@SBUS_CFG1_B8 = common dso_local global i32 0, align 4
@SBUS_CFG1 = common dso_local global i64 0, align 8
@DMA_BURST64 = common dso_local global i32 0, align 4
@SBUS_CFG1_B64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlogicpti*)* @set_sbus_cfg1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_sbus_cfg1(%struct.qlogicpti* %0) #0 {
  %2 = alloca %struct.qlogicpti*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.qlogicpti* %0, %struct.qlogicpti** %2, align 8
  %5 = load %struct.qlogicpti*, %struct.qlogicpti** %2, align 8
  %6 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @DMA_BURST32, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i32, i32* @SBUS_CFG1_BENAB, align 4
  %14 = load i32, i32* @SBUS_CFG1_B32, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %3, align 4
  br label %37

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @DMA_BURST16, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i32, i32* @SBUS_CFG1_BENAB, align 4
  %23 = load i32, i32* @SBUS_CFG1_B16, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %3, align 4
  br label %36

25:                                               ; preds = %16
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @DMA_BURST8, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* @SBUS_CFG1_BENAB, align 4
  %32 = load i32, i32* @SBUS_CFG1_B8, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %3, align 4
  br label %35

34:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %30
  br label %36

36:                                               ; preds = %35, %21
  br label %37

37:                                               ; preds = %36, %12
  %38 = load i32, i32* %3, align 4
  %39 = load %struct.qlogicpti*, %struct.qlogicpti** %2, align 8
  %40 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @SBUS_CFG1, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @sbus_writew(i32 %38, i64 %43)
  ret void
}

declare dso_local i32 @sbus_writew(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
