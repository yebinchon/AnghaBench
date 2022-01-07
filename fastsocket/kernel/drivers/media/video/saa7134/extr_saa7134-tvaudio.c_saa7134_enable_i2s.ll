; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-tvaudio.c_saa7134_enable_i2s.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-tvaudio.c_saa7134_enable_i2s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@PCI_DEVICE_ID_PHILIPS_SAA7130 = common dso_local global i32 0, align 4
@SAA7134_GPIO_GPMODE0 = common dso_local global i32 0, align 4
@SAA7133_I2S_AUDIO_CONTROL = common dso_local global i32 0, align 4
@SAA7134_I2S_AUDIO_OUTPUT = common dso_local global i32 0, align 4
@TV = common dso_local global i32 0, align 4
@SAA7134_I2S_OUTPUT_SELECT = common dso_local global i32 0, align 4
@SAA7134_I2S_OUTPUT_FORMAT = common dso_local global i32 0, align 4
@SAA7134_I2S_OUTPUT_LEVEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @saa7134_enable_i2s(%struct.saa7134_dev* %0) #0 {
  %2 = alloca %struct.saa7134_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %2, align 8
  %4 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %5 = call i32 @card_is_empress(%struct.saa7134_dev* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %51

8:                                                ; preds = %1
  %9 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %10 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @PCI_DEVICE_ID_PHILIPS_SAA7130, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %8
  br label %51

17:                                               ; preds = %8
  %18 = load i32, i32* @SAA7134_GPIO_GPMODE0, align 4
  %19 = ashr i32 %18, 2
  %20 = call i32 @saa_andorl(i32 %19, i32 234881024, i32 0)
  %21 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %22 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %50 [
    i32 130, label %26
    i32 128, label %26
    i32 129, label %31
  ]

26:                                               ; preds = %17, %17
  %27 = load i32, i32* @SAA7133_I2S_AUDIO_CONTROL, align 4
  %28 = call i32 @saa_writeb(i32 %27, i32 0)
  %29 = load i32, i32* @SAA7134_I2S_AUDIO_OUTPUT, align 4
  %30 = call i32 @saa_writeb(i32 %29, i32 17)
  br label %51

31:                                               ; preds = %17
  %32 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %33 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @TV, align 4
  %38 = icmp eq i32 %36, %37
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 0, i32 1
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* @SAA7134_I2S_OUTPUT_SELECT, align 4
  %42 = call i32 @saa_writeb(i32 %41, i32 128)
  %43 = load i32, i32* @SAA7134_I2S_OUTPUT_FORMAT, align 4
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @saa_writeb(i32 %43, i32 %44)
  %46 = load i32, i32* @SAA7134_I2S_OUTPUT_LEVEL, align 4
  %47 = call i32 @saa_writeb(i32 %46, i32 15)
  %48 = load i32, i32* @SAA7134_I2S_AUDIO_OUTPUT, align 4
  %49 = call i32 @saa_writeb(i32 %48, i32 1)
  br label %50

50:                                               ; preds = %17, %31
  br label %51

51:                                               ; preds = %7, %16, %50, %26
  ret void
}

declare dso_local i32 @card_is_empress(%struct.saa7134_dev*) #1

declare dso_local i32 @saa_andorl(i32, i32, i32) #1

declare dso_local i32 @saa_writeb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
