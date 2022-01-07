; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_wm9713.c_wm9713_aux_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_wm9713.c_wm9713_aux_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm97xx = type { i32, i32 }

@AC97_WM9713_DIG1 = common dso_local global i32 0, align 4
@AC97_WM9713_DIG2 = common dso_local global i32 0, align 4
@AC97_WM9713_DIG3 = common dso_local global i32 0, align 4
@WM97XX_PRP_DET_DIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wm97xx*)* @wm9713_aux_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm9713_aux_prepare(%struct.wm97xx* %0) #0 {
  %2 = alloca %struct.wm97xx*, align 8
  store %struct.wm97xx* %0, %struct.wm97xx** %2, align 8
  %3 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %4 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %7 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @memcpy(i32 %5, i32 %8, i32 4)
  %10 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %11 = load i32, i32* @AC97_WM9713_DIG1, align 4
  %12 = call i32 @wm97xx_reg_write(%struct.wm97xx* %10, i32 %11, i32 0)
  %13 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %14 = load i32, i32* @AC97_WM9713_DIG2, align 4
  %15 = call i32 @wm97xx_reg_write(%struct.wm97xx* %13, i32 %14, i32 0)
  %16 = load %struct.wm97xx*, %struct.wm97xx** %2, align 8
  %17 = load i32, i32* @AC97_WM9713_DIG3, align 4
  %18 = load i32, i32* @WM97XX_PRP_DET_DIG, align 4
  %19 = call i32 @wm97xx_reg_write(%struct.wm97xx* %16, i32 %17, i32 %18)
  ret void
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @wm97xx_reg_write(%struct.wm97xx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
