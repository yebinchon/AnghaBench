; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_wm9713.c_wm9713_dig_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_wm9713.c_wm9713_dig_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm97xx = type { i32* }

@AC97_EXTENDED_MID = common dso_local global i32 0, align 4
@AC97_WM9713_DIG3 = common dso_local global i32 0, align 4
@WM97XX_PRP_DET_DIG = common dso_local global i32 0, align 4
@AC97_WM97XX_DIGITISER_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wm97xx*, i32)* @wm9713_dig_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm9713_dig_enable(%struct.wm97xx* %0, i32 %1) #0 {
  %3 = alloca %struct.wm97xx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.wm97xx* %0, %struct.wm97xx** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %30

8:                                                ; preds = %2
  %9 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %10 = load i32, i32* @AC97_EXTENDED_MID, align 4
  %11 = call i32 @wm97xx_reg_read(%struct.wm97xx* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %13 = load i32, i32* @AC97_EXTENDED_MID, align 4
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, 32767
  %16 = call i32 @wm97xx_reg_write(%struct.wm97xx* %12, i32 %13, i32 %15)
  %17 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %18 = load i32, i32* @AC97_WM9713_DIG3, align 4
  %19 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %20 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @WM97XX_PRP_DET_DIG, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @wm97xx_reg_write(%struct.wm97xx* %17, i32 %18, i32 %25)
  %27 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %28 = load i32, i32* @AC97_WM97XX_DIGITISER_RD, align 4
  %29 = call i32 @wm97xx_reg_read(%struct.wm97xx* %27, i32 %28)
  br label %50

30:                                               ; preds = %2
  %31 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %32 = load i32, i32* @AC97_WM9713_DIG3, align 4
  %33 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %34 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @WM97XX_PRP_DET_DIG, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %37, %39
  %41 = call i32 @wm97xx_reg_write(%struct.wm97xx* %31, i32 %32, i32 %40)
  %42 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %43 = load i32, i32* @AC97_EXTENDED_MID, align 4
  %44 = call i32 @wm97xx_reg_read(%struct.wm97xx* %42, i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %46 = load i32, i32* @AC97_EXTENDED_MID, align 4
  %47 = load i32, i32* %5, align 4
  %48 = or i32 %47, 32768
  %49 = call i32 @wm97xx_reg_write(%struct.wm97xx* %45, i32 %46, i32 %48)
  br label %50

50:                                               ; preds = %30, %8
  ret void
}

declare dso_local i32 @wm97xx_reg_read(%struct.wm97xx*, i32) #1

declare dso_local i32 @wm97xx_reg_write(%struct.wm97xx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
