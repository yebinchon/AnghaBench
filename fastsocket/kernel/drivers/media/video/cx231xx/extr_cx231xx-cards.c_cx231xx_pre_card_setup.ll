; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-cards.c_cx231xx_pre_card_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-cards.c_cx231xx_pre_card_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [28 x i8] c"Identified as %s (card=%d)\0A\00", align 1
@CX231XX_ANALOG_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx231xx_pre_card_setup(%struct.cx231xx* %0) #0 {
  %2 = alloca %struct.cx231xx*, align 8
  store %struct.cx231xx* %0, %struct.cx231xx** %2, align 8
  %3 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %4 = call i32 @cx231xx_set_model(%struct.cx231xx* %3)
  %5 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %6 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %10 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @cx231xx_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %11)
  %13 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %14 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  br i1 %17, label %18, label %35

18:                                               ; preds = %1
  %19 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %20 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %21 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @cx231xx_set_gpio_direction(%struct.cx231xx* %19, i64 %25, i32 1)
  %27 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %28 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %29 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @cx231xx_set_gpio_value(%struct.cx231xx* %27, i64 %33, i32 1)
  br label %35

35:                                               ; preds = %18, %1
  %36 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %37 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sge i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %43 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %44 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @cx231xx_set_gpio_direction(%struct.cx231xx* %42, i64 %46, i32 1)
  br label %48

48:                                               ; preds = %41, %35
  %49 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %50 = load i32, i32* @CX231XX_ANALOG_MODE, align 4
  %51 = call i32 @cx231xx_set_mode(%struct.cx231xx* %49, i32 %50)
  ret void
}

declare dso_local i32 @cx231xx_set_model(%struct.cx231xx*) #1

declare dso_local i32 @cx231xx_info(i8*, i32, i32) #1

declare dso_local i32 @cx231xx_set_gpio_direction(%struct.cx231xx*, i64, i32) #1

declare dso_local i32 @cx231xx_set_gpio_value(%struct.cx231xx*, i64, i32) #1

declare dso_local i32 @cx231xx_set_mode(%struct.cx231xx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
