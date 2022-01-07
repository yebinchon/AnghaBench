; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_mainstone-wm97xx.c_wm97xx_acc_startup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_mainstone-wm97xx.c_wm97xx_acc_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32 }
%struct.wm97xx = type { i64, i32, i32, i32, i32, i32, i32* }

@ENODEV = common dso_local global i32 0, align 4
@cinfo = common dso_local global %struct.TYPE_3__* null, align 8
@sp_idx = common dso_local global i64 0, align 8
@cont_rate = common dso_local global i64 0, align 8
@ac97_touch_slot = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"mainstone accelerated touchscreen driver, %d samples/sec\0A\00", align 1
@pen_int = common dso_local global i32 0, align 4
@irq = common dso_local global i32 0, align 4
@WM97xx_WM1613 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Touchscreen IRQ\00", align 1
@IRQ_TYPE_EDGE_BOTH = common dso_local global i32 0, align 4
@WM97XX_GPIO_13 = common dso_local global i32 0, align 4
@WM97XX_GPIO_IN = common dso_local global i32 0, align 4
@WM97XX_GPIO_POL_HIGH = common dso_local global i32 0, align 4
@WM97XX_GPIO_STICKY = common dso_local global i32 0, align 4
@WM97XX_GPIO_WAKE = common dso_local global i32 0, align 4
@WM97XX_GPIO_2 = common dso_local global i32 0, align 4
@WM97XX_GPIO_OUT = common dso_local global i32 0, align 4
@WM97XX_GPIO_NOTSTICKY = common dso_local global i32 0, align 4
@WM97XX_GPIO_NOWAKE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"pen down irq not supported on this device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm97xx*)* @wm97xx_acc_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm97xx_acc_startup(%struct.wm97xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wm97xx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.wm97xx* %0, %struct.wm97xx** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %7 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %6, i32 0, i32 6
  %8 = load i32*, i32** %7, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %147

13:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %44, %13
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinfo, align 8
  %17 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %16)
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %47

19:                                               ; preds = %14
  %20 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %21 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinfo, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %22, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  br label %44

31:                                               ; preds = %19
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  store i64 %33, i64* @sp_idx, align 8
  %34 = load i64, i64* @cont_rate, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinfo, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp sle i64 %34, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  br label %47

43:                                               ; preds = %31
  br label %44

44:                                               ; preds = %43, %30
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %14

47:                                               ; preds = %42, %14
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinfo, align 8
  %49 = load i64, i64* @sp_idx, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %54 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @ac97_touch_slot, align 4
  %56 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %57 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 4
  %58 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %59 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinfo, align 8
  %62 = load i64, i64* @sp_idx, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @dev_info(i32 %60, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i64 %65)
  %67 = call i64 (...) @machine_is_palmt5()
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %47
  %70 = call i64 (...) @machine_is_palmtx()
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = call i64 (...) @machine_is_palmld()
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72, %69, %47
  store i32 1, i32* @pen_int, align 4
  store i32 27, i32* @irq, align 4
  %76 = load i32, i32* @WM97xx_WM1613, align 4
  %77 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %78 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 8
  br label %87

79:                                               ; preds = %72
  %80 = call i64 (...) @machine_is_mainstone()
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load i32, i32* @pen_int, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  store i32 4, i32* @irq, align 4
  br label %86

86:                                               ; preds = %85, %82, %79
  br label %87

87:                                               ; preds = %86, %75
  %88 = load i32, i32* @irq, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %114

90:                                               ; preds = %87
  %91 = load i32, i32* @irq, align 4
  %92 = call i32 @gpio_request(i32 %91, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %5, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  br label %145

96:                                               ; preds = %90
  %97 = load i32, i32* @irq, align 4
  %98 = call i32 @gpio_direction_input(i32 %97)
  store i32 %98, i32* %5, align 4
  %99 = load i32, i32* %5, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load i32, i32* @irq, align 4
  %103 = call i32 @gpio_free(i32 %102)
  br label %145

104:                                              ; preds = %96
  %105 = load i32, i32* @irq, align 4
  %106 = call i32 @gpio_to_irq(i32 %105)
  %107 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %108 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 4
  %109 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %110 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @IRQ_TYPE_EDGE_BOTH, align 4
  %113 = call i32 @set_irq_type(i32 %111, i32 %112)
  br label %115

114:                                              ; preds = %87
  store i32 0, i32* @pen_int, align 4
  br label %115

115:                                              ; preds = %114, %104
  %116 = load i32, i32* @pen_int, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %144

118:                                              ; preds = %115
  %119 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %120 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  switch i64 %121, label %138 [
    i64 130, label %122
    i64 129, label %123
    i64 128, label %123
  ]

122:                                              ; preds = %118
  br label %143

123:                                              ; preds = %118, %118
  %124 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %125 = load i32, i32* @WM97XX_GPIO_13, align 4
  %126 = load i32, i32* @WM97XX_GPIO_IN, align 4
  %127 = load i32, i32* @WM97XX_GPIO_POL_HIGH, align 4
  %128 = load i32, i32* @WM97XX_GPIO_STICKY, align 4
  %129 = load i32, i32* @WM97XX_GPIO_WAKE, align 4
  %130 = call i32 @wm97xx_config_gpio(%struct.wm97xx* %124, i32 %125, i32 %126, i32 %127, i32 %128, i32 %129)
  %131 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %132 = load i32, i32* @WM97XX_GPIO_2, align 4
  %133 = load i32, i32* @WM97XX_GPIO_OUT, align 4
  %134 = load i32, i32* @WM97XX_GPIO_POL_HIGH, align 4
  %135 = load i32, i32* @WM97XX_GPIO_NOTSTICKY, align 4
  %136 = load i32, i32* @WM97XX_GPIO_NOWAKE, align 4
  %137 = call i32 @wm97xx_config_gpio(%struct.wm97xx* %131, i32 %132, i32 %133, i32 %134, i32 %135, i32 %136)
  br label %143

138:                                              ; preds = %118
  %139 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %140 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @dev_err(i32 %141, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* @pen_int, align 4
  br label %143

143:                                              ; preds = %138, %123, %122
  br label %144

144:                                              ; preds = %143, %115
  br label %145

145:                                              ; preds = %144, %101, %95
  %146 = load i32, i32* %5, align 4
  store i32 %146, i32* %2, align 4
  br label %147

147:                                              ; preds = %145, %10
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @dev_info(i32, i8*, i64) #1

declare dso_local i64 @machine_is_palmt5(...) #1

declare dso_local i64 @machine_is_palmtx(...) #1

declare dso_local i64 @machine_is_palmld(...) #1

declare dso_local i64 @machine_is_mainstone(...) #1

declare dso_local i32 @gpio_request(i32, i8*) #1

declare dso_local i32 @gpio_direction_input(i32) #1

declare dso_local i32 @gpio_free(i32) #1

declare dso_local i32 @gpio_to_irq(i32) #1

declare dso_local i32 @set_irq_type(i32, i32) #1

declare dso_local i32 @wm97xx_config_gpio(%struct.wm97xx*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
