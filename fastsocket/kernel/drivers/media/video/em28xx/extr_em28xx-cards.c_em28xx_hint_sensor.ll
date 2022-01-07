; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-cards.c_em28xx_hint_sensor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-cards.c_em28xx_hint_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.em28xx = type { i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EM2820_BOARD_SILVERCREST_WEBCAM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"mt9v011\00", align 1
@EM28XX_MT9V011 = common dso_local global i32 0, align 4
@EM28XX_XCLK_FREQUENCY_4_3MHZ = common dso_local global i32 0, align 4
@EM2750_BOARD_UNKNOWN = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"mt9m111\00", align 1
@EM28XX_XCLK_FREQUENCY_48MHZ = common dso_local global i32 0, align 4
@EM28XX_MT9M111 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"mt9m001\00", align 1
@EM28XX_MT9M001 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Unknown Micron Sensor 0x%04x\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Sensor is %s, using model %s entry.\0A\00", align 1
@em28xx_boards = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.em28xx*)* @em28xx_hint_sensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em28xx_hint_sensor(%struct.em28xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.em28xx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.em28xx* %0, %struct.em28xx** %3, align 8
  %9 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %10 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %9, i32 0, i32 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store i32 93, i32* %11, align 4
  store i8 0, i8* %6, align 1
  %12 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %13 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %12, i32 0, i32 8
  %14 = call i32 @i2c_master_send(%struct.TYPE_6__* %13, i8* %6, i32 1)
  %15 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %16 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %15, i32 0, i32 8
  %17 = bitcast i32* %7 to i8*
  %18 = call i32 @i2c_master_recv(%struct.TYPE_6__* %16, i8* %17, i32 2)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 2
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %112

24:                                               ; preds = %1
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @be16_to_cpu(i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  switch i32 %27, label %95 [
    i32 33330, label %28
    i32 33347, label %28
    i32 5178, label %51
    i32 33841, label %75
  ]

28:                                               ; preds = %24, %24
  %29 = load i64, i64* @EM2820_BOARD_SILVERCREST_WEBCAM, align 8
  %30 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %31 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %33 = call i32 @em28xx_set_model(%struct.em28xx* %32)
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %34 = load i32, i32* @EM28XX_MT9V011, align 4
  %35 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %36 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %35, i32 0, i32 6
  store i32 %34, i32* %36, align 4
  %37 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %38 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %37, i32 0, i32 1
  store i32 640, i32* %38, align 8
  %39 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %40 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %39, i32 0, i32 2
  store i32 480, i32* %40, align 4
  %41 = load i32, i32* @EM28XX_XCLK_FREQUENCY_4_3MHZ, align 4
  %42 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %43 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %42, i32 0, i32 7
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 8
  %45 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %46 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %45, i32 0, i32 3
  store i32 4300000, i32* %46, align 8
  %47 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %48 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %47, i32 0, i32 4
  store i32 13, i32* %48, align 4
  %49 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %50 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %49, i32 0, i32 5
  store i32 0, i32* %50, align 8
  br label %100

51:                                               ; preds = %24
  %52 = load i8*, i8** @EM2750_BOARD_UNKNOWN, align 8
  %53 = ptrtoint i8* %52 to i64
  %54 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %55 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %57 = call i32 @em28xx_set_model(%struct.em28xx* %56)
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  %58 = load i32, i32* @EM28XX_XCLK_FREQUENCY_48MHZ, align 4
  %59 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %60 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %59, i32 0, i32 7
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 8
  %62 = load i32, i32* @EM28XX_MT9M111, align 4
  %63 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %64 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %63, i32 0, i32 6
  store i32 %62, i32* %64, align 4
  %65 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %66 = call i32 @em28xx_initialize_mt9m111(%struct.em28xx* %65)
  %67 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %68 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %67, i32 0, i32 1
  store i32 640, i32* %68, align 8
  %69 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %70 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %69, i32 0, i32 2
  store i32 512, i32* %70, align 4
  %71 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %72 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %71, i32 0, i32 4
  store i32 10, i32* %72, align 4
  %73 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %74 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %73, i32 0, i32 5
  store i32 0, i32* %74, align 8
  br label %100

75:                                               ; preds = %24
  %76 = load i8*, i8** @EM2750_BOARD_UNKNOWN, align 8
  %77 = ptrtoint i8* %76 to i64
  %78 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %79 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  %80 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %81 = call i32 @em28xx_set_model(%struct.em28xx* %80)
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  %82 = load i32, i32* @EM28XX_MT9M001, align 4
  %83 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %84 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %83, i32 0, i32 6
  store i32 %82, i32* %84, align 4
  %85 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %86 = call i32 @em28xx_initialize_mt9m001(%struct.em28xx* %85)
  %87 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %88 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %87, i32 0, i32 1
  store i32 1280, i32* %88, align 8
  %89 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %90 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %89, i32 0, i32 2
  store i32 1024, i32* %90, align 4
  %91 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %92 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %91, i32 0, i32 4
  store i32 12, i32* %92, align 4
  %93 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %94 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %93, i32 0, i32 5
  store i32 0, i32* %94, align 8
  br label %100

95:                                               ; preds = %24
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %2, align 4
  br label %112

100:                                              ; preds = %75, %51, %28
  %101 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %102 = call i32 @em28xx_pre_card_setup(%struct.em28xx* %101)
  %103 = load i8*, i8** %5, align 8
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** @em28xx_boards, align 8
  %105 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %106 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @em28xx_errdev(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* %103, i32 %110)
  store i32 0, i32* %2, align 4
  br label %112

112:                                              ; preds = %100, %95, %21
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i32 @i2c_master_send(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @i2c_master_recv(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @em28xx_set_model(%struct.em28xx*) #1

declare dso_local i32 @em28xx_initialize_mt9m111(%struct.em28xx*) #1

declare dso_local i32 @em28xx_initialize_mt9m001(%struct.em28xx*) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @em28xx_pre_card_setup(%struct.em28xx*) #1

declare dso_local i32 @em28xx_errdev(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
