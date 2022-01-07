; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_wm97xx-core.c_wm97xx_read_aux_adc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_wm97xx-core.c_wm97xx_read_aux_adc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm97xx = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.wm97xx*)*, i32 (%struct.wm97xx*, i32, i32*)*, i32 (%struct.wm97xx*)* }

@WM9713_ID2 = common dso_local global i64 0, align 8
@AC97_EXTENDED_MID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wm97xx_read_aux_adc(%struct.wm97xx* %0, i32 %1) #0 {
  %3 = alloca %struct.wm97xx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.wm97xx* %0, %struct.wm97xx** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %9 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %8, i32 0, i32 2
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %12 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @WM9713_ID2, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %2
  %17 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %18 = load i32, i32* @AC97_EXTENDED_MID, align 4
  %19 = call i32 @wm97xx_reg_read(%struct.wm97xx* %17, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = and i32 %19, 32768
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  store i32 1, i32* %5, align 4
  %23 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %24 = load i32, i32* @AC97_EXTENDED_MID, align 4
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, 32767
  %27 = call i32 @wm97xx_reg_write(%struct.wm97xx* %23, i32 %24, i32 %26)
  br label %28

28:                                               ; preds = %22, %16, %2
  %29 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %30 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %29, i32 0, i32 3
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i32 (%struct.wm97xx*)*, i32 (%struct.wm97xx*)** %32, align 8
  %34 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %35 = call i32 %33(%struct.wm97xx* %34)
  %36 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %37 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %36, i32 0, i32 1
  store i32 1, i32* %37, align 8
  %38 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %39 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %38, i32 0, i32 3
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32 (%struct.wm97xx*, i32, i32*)*, i32 (%struct.wm97xx*, i32, i32*)** %41, align 8
  %43 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 %42(%struct.wm97xx* %43, i32 %44, i32* %6)
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %28
  %49 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %50 = load i32, i32* @AC97_EXTENDED_MID, align 4
  %51 = load i32, i32* %7, align 4
  %52 = or i32 %51, 32768
  %53 = call i32 @wm97xx_reg_write(%struct.wm97xx* %49, i32 %50, i32 %52)
  br label %54

54:                                               ; preds = %48, %28
  %55 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %56 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %55, i32 0, i32 3
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32 (%struct.wm97xx*)*, i32 (%struct.wm97xx*)** %58, align 8
  %60 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %61 = call i32 %59(%struct.wm97xx* %60)
  %62 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %63 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %62, i32 0, i32 1
  store i32 0, i32* %63, align 8
  %64 = load %struct.wm97xx*, %struct.wm97xx** %3, align 8
  %65 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %64, i32 0, i32 2
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = load i32, i32* %6, align 4
  %68 = and i32 %67, 4095
  ret i32 %68
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wm97xx_reg_read(%struct.wm97xx*, i32) #1

declare dso_local i32 @wm97xx_reg_write(%struct.wm97xx*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
