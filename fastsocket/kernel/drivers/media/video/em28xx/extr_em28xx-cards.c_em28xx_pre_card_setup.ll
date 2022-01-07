; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-cards.c_em28xx_pre_card_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-cards.c_em28xx_pre_card_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@EM28XX_R0F_XCLK = common dso_local global i32 0, align 4
@EM28XX_R06_I2C_CLK = common dso_local global i32 0, align 4
@EM28XX_R08_GPIO = common dso_local global i32 0, align 4
@EM2880_R04_GPO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\07\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\FD\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\FF\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\7F\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"k\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\F8\00", align 1
@EM28XX_ANALOG_MODE = common dso_local global i32 0, align 4
@EM28XX_SUSPEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @em28xx_pre_card_setup(%struct.em28xx* %0) #0 {
  %2 = alloca %struct.em28xx*, align 8
  store %struct.em28xx* %0, %struct.em28xx** %2, align 8
  %3 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %4 = load i32, i32* @EM28XX_R0F_XCLK, align 4
  %5 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %6 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = and i32 %8, 127
  %10 = call i32 @em28xx_write_reg(%struct.em28xx* %3, i32 %4, i32 %9)
  %11 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %12 = load i32, i32* @EM28XX_R06_I2C_CLK, align 4
  %13 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %14 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @em28xx_write_reg(%struct.em28xx* %11, i32 %12, i32 %16)
  %18 = call i32 @msleep(i32 50)
  %19 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %20 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %146 [
    i32 133, label %22
    i32 134, label %25
    i32 129, label %25
    i32 132, label %34
    i32 130, label %59
    i32 131, label %72
    i32 139, label %85
    i32 137, label %85
    i32 128, label %89
    i32 135, label %106
    i32 136, label %126
    i32 138, label %129
  ]

22:                                               ; preds = %1
  %23 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %24 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %23, i32 0, i32 1
  store i32 2048000, i32* %24, align 4
  br label %146

25:                                               ; preds = %1, %1
  %26 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %27 = load i32, i32* @EM28XX_R08_GPIO, align 4
  %28 = call i32 @em28xx_write_reg(%struct.em28xx* %26, i32 %27, i32 109)
  %29 = call i32 @msleep(i32 10)
  %30 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %31 = load i32, i32* @EM28XX_R08_GPIO, align 4
  %32 = call i32 @em28xx_write_reg(%struct.em28xx* %30, i32 %31, i32 125)
  %33 = call i32 @msleep(i32 10)
  br label %146

34:                                               ; preds = %1
  %35 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %36 = load i32, i32* @EM2880_R04_GPO, align 4
  %37 = call i32 @em28xx_write_reg(%struct.em28xx* %35, i32 %36, i32 0)
  %38 = call i32 @msleep(i32 10)
  %39 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %40 = load i32, i32* @EM2880_R04_GPO, align 4
  %41 = call i32 @em28xx_write_reg(%struct.em28xx* %39, i32 %40, i32 1)
  %42 = call i32 @msleep(i32 10)
  %43 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %44 = load i32, i32* @EM28XX_R08_GPIO, align 4
  %45 = call i32 @em28xx_write_reg(%struct.em28xx* %43, i32 %44, i32 253)
  %46 = call i32 @mdelay(i32 70)
  %47 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %48 = load i32, i32* @EM28XX_R08_GPIO, align 4
  %49 = call i32 @em28xx_write_reg(%struct.em28xx* %47, i32 %48, i32 252)
  %50 = call i32 @mdelay(i32 70)
  %51 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %52 = load i32, i32* @EM28XX_R08_GPIO, align 4
  %53 = call i32 @em28xx_write_reg(%struct.em28xx* %51, i32 %52, i32 220)
  %54 = call i32 @mdelay(i32 70)
  %55 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %56 = load i32, i32* @EM28XX_R08_GPIO, align 4
  %57 = call i32 @em28xx_write_reg(%struct.em28xx* %55, i32 %56, i32 252)
  %58 = call i32 @mdelay(i32 70)
  br label %146

59:                                               ; preds = %1
  %60 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %61 = load i32, i32* @EM28XX_R08_GPIO, align 4
  %62 = call i32 @em28xx_write_reg(%struct.em28xx* %60, i32 %61, i32 254)
  %63 = call i32 @mdelay(i32 70)
  %64 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %65 = load i32, i32* @EM28XX_R08_GPIO, align 4
  %66 = call i32 @em28xx_write_reg(%struct.em28xx* %64, i32 %65, i32 222)
  %67 = call i32 @mdelay(i32 70)
  %68 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %69 = load i32, i32* @EM28XX_R08_GPIO, align 4
  %70 = call i32 @em28xx_write_reg(%struct.em28xx* %68, i32 %69, i32 254)
  %71 = call i32 @mdelay(i32 70)
  br label %146

72:                                               ; preds = %1
  %73 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %74 = load i32, i32* @EM28XX_R08_GPIO, align 4
  %75 = call i32 @em28xx_write_reg(%struct.em28xx* %73, i32 %74, i32 254)
  %76 = call i32 @mdelay(i32 70)
  %77 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %78 = load i32, i32* @EM28XX_R08_GPIO, align 4
  %79 = call i32 @em28xx_write_reg(%struct.em28xx* %77, i32 %78, i32 222)
  %80 = call i32 @mdelay(i32 70)
  %81 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %82 = load i32, i32* @EM28XX_R08_GPIO, align 4
  %83 = call i32 @em28xx_write_reg(%struct.em28xx* %81, i32 %82, i32 254)
  %84 = call i32 @mdelay(i32 70)
  br label %146

85:                                               ; preds = %1, %1
  %86 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %87 = load i32, i32* @EM28XX_R08_GPIO, align 4
  %88 = call i32 @em28xx_write_reg(%struct.em28xx* %86, i32 %87, i32 253)
  br label %146

89:                                               ; preds = %1
  %90 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %91 = load i32, i32* @EM28XX_R08_GPIO, align 4
  %92 = call i32 @em28xx_write_reg(%struct.em28xx* %90, i32 %91, i32 255)
  %93 = call i32 @msleep(i32 10)
  %94 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %95 = load i32, i32* @EM28XX_R08_GPIO, align 4
  %96 = call i32 @em28xx_write_reg(%struct.em28xx* %94, i32 %95, i32 254)
  %97 = call i32 @msleep(i32 10)
  %98 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %99 = load i32, i32* @EM2880_R04_GPO, align 4
  %100 = call i32 @em28xx_write_reg(%struct.em28xx* %98, i32 %99, i32 0)
  %101 = call i32 @msleep(i32 10)
  %102 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %103 = load i32, i32* @EM2880_R04_GPO, align 4
  %104 = call i32 @em28xx_write_reg(%struct.em28xx* %102, i32 %103, i32 8)
  %105 = call i32 @msleep(i32 10)
  br label %146

106:                                              ; preds = %1
  %107 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %108 = load i32, i32* @EM28XX_R0F_XCLK, align 4
  %109 = call i32 @em28xx_write_regs(%struct.em28xx* %107, i32 %108, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %110 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %111 = load i32, i32* @EM28XX_R06_I2C_CLK, align 4
  %112 = call i32 @em28xx_write_regs(%struct.em28xx* %110, i32 %111, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %113 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %114 = call i32 @em28xx_write_regs(%struct.em28xx* %113, i32 13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %115 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %116 = call i32 @em28xx_write_regs(%struct.em28xx* %115, i32 8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 1)
  %117 = call i32 @msleep(i32 10)
  %118 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %119 = call i32 @em28xx_write_regs(%struct.em28xx* %118, i32 8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 1)
  %120 = call i32 @msleep(i32 10)
  %121 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %122 = call i32 @em28xx_write_regs(%struct.em28xx* %121, i32 8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 1)
  %123 = call i32 @msleep(i32 10)
  %124 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %125 = call i32 @em28xx_write_regs(%struct.em28xx* %124, i32 8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 1)
  br label %146

126:                                              ; preds = %1
  %127 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %128 = call i32 @em28xx_write_regs(%struct.em28xx* %127, i32 8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 1)
  br label %146

129:                                              ; preds = %1
  %130 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %131 = load i32, i32* @EM28XX_R08_GPIO, align 4
  %132 = call i32 @em28xx_write_reg(%struct.em28xx* %130, i32 %131, i32 255)
  %133 = call i32 @msleep(i32 70)
  %134 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %135 = load i32, i32* @EM28XX_R08_GPIO, align 4
  %136 = call i32 @em28xx_write_reg(%struct.em28xx* %134, i32 %135, i32 247)
  %137 = call i32 @msleep(i32 10)
  %138 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %139 = load i32, i32* @EM28XX_R08_GPIO, align 4
  %140 = call i32 @em28xx_write_reg(%struct.em28xx* %138, i32 %139, i32 254)
  %141 = call i32 @msleep(i32 70)
  %142 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %143 = load i32, i32* @EM28XX_R08_GPIO, align 4
  %144 = call i32 @em28xx_write_reg(%struct.em28xx* %142, i32 %143, i32 253)
  %145 = call i32 @msleep(i32 70)
  br label %146

146:                                              ; preds = %1, %129, %126, %106, %89, %85, %72, %59, %34, %25, %22
  %147 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %148 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %149 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @em28xx_gpio_set(%struct.em28xx* %147, i32 %151)
  %153 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %154 = load i32, i32* @EM28XX_ANALOG_MODE, align 4
  %155 = call i32 @em28xx_set_mode(%struct.em28xx* %153, i32 %154)
  %156 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %157 = load i32, i32* @EM28XX_SUSPEND, align 4
  %158 = call i32 @em28xx_set_mode(%struct.em28xx* %156, i32 %157)
  ret void
}

declare dso_local i32 @em28xx_write_reg(%struct.em28xx*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @em28xx_write_regs(%struct.em28xx*, i32, i8*, i32) #1

declare dso_local i32 @em28xx_gpio_set(%struct.em28xx*, i32) #1

declare dso_local i32 @em28xx_set_mode(%struct.em28xx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
