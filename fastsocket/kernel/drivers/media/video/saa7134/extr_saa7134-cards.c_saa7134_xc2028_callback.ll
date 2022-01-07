; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-cards.c_saa7134_xc2028_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-cards.c_saa7134_xc2028_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { i32 }

@SAA7134_GPIO_GPSTATUS0 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7134_dev*, i32, i32)* @saa7134_xc2028_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7134_xc2028_callback(%struct.saa7134_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.saa7134_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %38 [
    i32 128, label %9
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* @SAA7134_GPIO_GPSTATUS0, align 4
  %11 = ashr i32 %10, 2
  %12 = call i32 @saa_andorl(i32 %11, i32 32768, i32 0)
  %13 = load i32, i32* @SAA7134_GPIO_GPSTATUS0, align 4
  %14 = ashr i32 %13, 2
  %15 = call i32 @saa_andorl(i32 %14, i32 32768, i32 32768)
  %16 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %17 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %37 [
    i32 130, label %19
    i32 129, label %19
    i32 132, label %25
    i32 131, label %31
  ]

19:                                               ; preds = %9, %9
  %20 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %21 = call i32 @saa7134_set_gpio(%struct.saa7134_dev* %20, i32 23, i32 0)
  %22 = call i32 @msleep(i32 10)
  %23 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %24 = call i32 @saa7134_set_gpio(%struct.saa7134_dev* %23, i32 23, i32 1)
  br label %37

25:                                               ; preds = %9
  %26 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %27 = call i32 @saa7134_set_gpio(%struct.saa7134_dev* %26, i32 21, i32 0)
  %28 = call i32 @msleep(i32 10)
  %29 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %30 = call i32 @saa7134_set_gpio(%struct.saa7134_dev* %29, i32 21, i32 1)
  br label %37

31:                                               ; preds = %9
  %32 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %33 = call i32 @saa7134_set_gpio(%struct.saa7134_dev* %32, i32 18, i32 0)
  %34 = call i32 @msleep(i32 10)
  %35 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %36 = call i32 @saa7134_set_gpio(%struct.saa7134_dev* %35, i32 18, i32 1)
  br label %37

37:                                               ; preds = %9, %31, %25, %19
  store i32 0, i32* %4, align 4
  br label %41

38:                                               ; preds = %3
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %38, %37
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @saa_andorl(i32, i32, i32) #1

declare dso_local i32 @saa7134_set_gpio(%struct.saa7134_dev*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
