; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_am300epd.c_am300_init_gpio_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_am300epd.c_am300_init_gpio_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.broadsheetfb_par = type { i32 }

@gpios = common dso_local global i32* null, align 8
@gpio_names = common dso_local global i32* null, align 8
@am300_device = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"failed requesting gpio %s, err=%d\0A\00", align 1
@DB0_GPIO_PIN = common dso_local global i32 0, align 4
@DB15_GPIO_PIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"DB%d\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"failed requesting gpio %d, err=%d\0A\00", align 1
@PWR_GPIO_PIN = common dso_local global i32 0, align 4
@CFG_GPIO_PIN = common dso_local global i32 0, align 4
@DC_GPIO_PIN = common dso_local global i32 0, align 4
@RD_GPIO_PIN = common dso_local global i32 0, align 4
@WR_GPIO_PIN = common dso_local global i32 0, align 4
@CS_GPIO_PIN = common dso_local global i32 0, align 4
@RST_GPIO_PIN = common dso_local global i32 0, align 4
@RDY_GPIO_PIN = common dso_local global i32 0, align 4
@IRQ_GPIO_PIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.broadsheetfb_par*)* @am300_init_gpio_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @am300_init_gpio_regs(%struct.broadsheetfb_par* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.broadsheetfb_par*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [8 x i8], align 1
  store %struct.broadsheetfb_par* %0, %struct.broadsheetfb_par** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %37, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32*, i32** @gpios, align 8
  %10 = call i32 @ARRAY_SIZE(i32* %9)
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %40

12:                                               ; preds = %7
  %13 = load i32*, i32** @gpios, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** @gpio_names, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i32, ...) @gpio_request(i32 %17, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %12
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @am300_device, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32*, i32** @gpio_names, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @dev_err(i32* %28, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34)
  br label %118

36:                                               ; preds = %12
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %7

40:                                               ; preds = %7
  %41 = load i32, i32* @DB0_GPIO_PIN, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %74, %40
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @DB15_GPIO_PIN, align 4
  %45 = icmp sle i32 %43, %44
  br i1 %45, label %46, label %77

46:                                               ; preds = %42
  %47 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @sprintf(i8* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %4, align 4
  %51 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %52 = call i32 (i32, ...) @gpio_request(i32 %50, i8* %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %73

55:                                               ; preds = %46
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @am300_device, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @dev_err(i32* %57, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %65, %55
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @DB0_GPIO_PIN, align 4
  %64 = icmp sge i32 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %4, align 4
  %68 = call i32 @gpio_free(i32 %66)
  br label %61

69:                                               ; preds = %61
  %70 = load i32*, i32** @gpios, align 8
  %71 = call i32 @ARRAY_SIZE(i32* %70)
  %72 = sub nsw i32 %71, 1
  store i32 %72, i32* %4, align 4
  br label %118

73:                                               ; preds = %46
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %4, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %4, align 4
  br label %42

77:                                               ; preds = %42
  %78 = load i32, i32* @PWR_GPIO_PIN, align 4
  %79 = call i32 @gpio_direction_output(i32 %78, i32 0)
  %80 = load i32, i32* @CFG_GPIO_PIN, align 4
  %81 = call i32 @gpio_direction_output(i32 %80, i32 1)
  %82 = load i32, i32* @DC_GPIO_PIN, align 4
  %83 = call i32 @gpio_direction_output(i32 %82, i32 0)
  %84 = load i32, i32* @RD_GPIO_PIN, align 4
  %85 = call i32 @gpio_direction_output(i32 %84, i32 1)
  %86 = load i32, i32* @WR_GPIO_PIN, align 4
  %87 = call i32 @gpio_direction_output(i32 %86, i32 1)
  %88 = load i32, i32* @CS_GPIO_PIN, align 4
  %89 = call i32 @gpio_direction_output(i32 %88, i32 1)
  %90 = load i32, i32* @RST_GPIO_PIN, align 4
  %91 = call i32 @gpio_direction_output(i32 %90, i32 0)
  %92 = load i32, i32* @RDY_GPIO_PIN, align 4
  %93 = call i32 @gpio_direction_input(i32 %92)
  %94 = load i32, i32* @IRQ_GPIO_PIN, align 4
  %95 = call i32 @gpio_direction_input(i32 %94)
  %96 = load i32, i32* @DB0_GPIO_PIN, align 4
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %104, %77
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* @DB15_GPIO_PIN, align 4
  %100 = icmp sle i32 %98, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %97
  %102 = load i32, i32* %4, align 4
  %103 = call i32 @gpio_direction_output(i32 %102, i32 0)
  br label %104

104:                                              ; preds = %101
  %105 = load i32, i32* %4, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %4, align 4
  br label %97

107:                                              ; preds = %97
  %108 = load i32, i32* @CFG_GPIO_PIN, align 4
  %109 = call i32 @gpio_set_value(i32 %108, i32 1)
  %110 = load i32, i32* @RST_GPIO_PIN, align 4
  %111 = call i32 @gpio_set_value(i32 %110, i32 0)
  %112 = call i32 @msleep(i32 10)
  %113 = load i32, i32* @RST_GPIO_PIN, align 4
  %114 = call i32 @gpio_set_value(i32 %113, i32 1)
  %115 = call i32 @msleep(i32 10)
  %116 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %3, align 8
  %117 = call i32 @am300_wait_event(%struct.broadsheetfb_par* %116)
  store i32 0, i32* %2, align 4
  br label %132

118:                                              ; preds = %69, %26
  br label %119

119:                                              ; preds = %122, %118
  %120 = load i32, i32* %4, align 4
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %122, label %130

122:                                              ; preds = %119
  %123 = load i32*, i32** @gpios, align 8
  %124 = load i32, i32* %4, align 4
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* %4, align 4
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds i32, i32* %123, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @gpio_free(i32 %128)
  br label %119

130:                                              ; preds = %119
  %131 = load i32, i32* %5, align 4
  store i32 %131, i32* %2, align 4
  br label %132

132:                                              ; preds = %130, %107
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @gpio_request(i32, ...) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @gpio_free(i32) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @gpio_direction_input(i32) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @am300_wait_event(%struct.broadsheetfb_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
