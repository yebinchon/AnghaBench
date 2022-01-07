; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-core.c_em28xx_isoc_dvb_max_packetsize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-core.c_em28xx_isoc_dvb_max_packetsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { i64 }

@CHIP_ID_EM2874 = common dso_local global i64 0, align 8
@EM28XX_R01_CHIPCFG2 = common dso_local global i32 0, align 4
@EM28XX_CHIPCFG2_TS_PACKETSIZE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"dvb max packet size=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @em28xx_isoc_dvb_max_packetsize(%struct.em28xx* %0) #0 {
  %2 = alloca %struct.em28xx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.em28xx* %0, %struct.em28xx** %2, align 8
  store i32 564, i32* %4, align 4
  %5 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %6 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @CHIP_ID_EM2874, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 564, i32* %4, align 4
  br label %23

11:                                               ; preds = %1
  %12 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %13 = load i32, i32* @EM28XX_R01_CHIPCFG2, align 4
  %14 = call i32 @em28xx_read_reg(%struct.em28xx* %12, i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @EM28XX_CHIPCFG2_TS_PACKETSIZE_MASK, align 4
  %17 = and i32 %15, %16
  switch i32 %17, label %22 [
    i32 131, label %18
    i32 130, label %19
    i32 129, label %20
    i32 128, label %21
  ]

18:                                               ; preds = %11
  store i32 188, i32* %4, align 4
  br label %22

19:                                               ; preds = %11
  store i32 376, i32* %4, align 4
  br label %22

20:                                               ; preds = %11
  store i32 564, i32* %4, align 4
  br label %22

21:                                               ; preds = %11
  store i32 752, i32* %4, align 4
  br label %22

22:                                               ; preds = %11, %21, %20, %19, %18
  br label %23

23:                                               ; preds = %22, %10
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @em28xx_coredbg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local i32 @em28xx_read_reg(%struct.em28xx*, i32) #1

declare dso_local i32 @em28xx_coredbg(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
