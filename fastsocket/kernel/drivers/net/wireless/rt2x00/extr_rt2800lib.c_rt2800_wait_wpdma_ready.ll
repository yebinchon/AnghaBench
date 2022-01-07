; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_wait_wpdma_ready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_wait_wpdma_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }

@REGISTER_BUSY_COUNT = common dso_local global i32 0, align 4
@WPDMA_GLO_CFG = common dso_local global i32 0, align 4
@WPDMA_GLO_CFG_TX_DMA_BUSY = common dso_local global i32 0, align 4
@WPDMA_GLO_CFG_RX_DMA_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"WPDMA TX/RX busy [0x%08x]\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt2800_wait_wpdma_ready(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %26, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @REGISTER_BUSY_COUNT, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %29

10:                                               ; preds = %6
  %11 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %12 = load i32, i32* @WPDMA_GLO_CFG, align 4
  %13 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %11, i32 %12, i32* %5)
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @WPDMA_GLO_CFG_TX_DMA_BUSY, align 4
  %16 = call i32 @rt2x00_get_field32(i32 %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %10
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @WPDMA_GLO_CFG_RX_DMA_BUSY, align 4
  %21 = call i32 @rt2x00_get_field32(i32 %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %35

24:                                               ; preds = %18, %10
  %25 = call i32 @msleep(i32 10)
  br label %26

26:                                               ; preds = %24
  %27 = load i32, i32* %4, align 4
  %28 = add i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %6

29:                                               ; preds = %6
  %30 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @rt2x00_err(%struct.rt2x00_dev* %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @EACCES, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %29, %23
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @rt2800_register_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00_get_field32(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @rt2x00_err(%struct.rt2x00_dev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
