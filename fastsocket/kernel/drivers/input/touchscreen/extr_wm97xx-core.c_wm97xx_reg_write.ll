; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_wm97xx-core.c_wm97xx_reg_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_wm97xx-core.c_wm97xx_reg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm97xx = type { i32*, i32*, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_6__*, i32, i32)* }

@AC97_WM9713_DIG1 = common dso_local global i32 0, align 4
@AC97_WM9713_DIG3 = common dso_local global i32 0, align 4
@AC97_GPIO_CFG = common dso_local global i32 0, align 4
@AC97_MISC_AFE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wm97xx_reg_write(%struct.wm97xx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.wm97xx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.wm97xx* %0, %struct.wm97xx** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @AC97_WM9713_DIG1, align 4
  %9 = icmp sge i32 %7, %8
  br i1 %9, label %10, label %25

10:                                               ; preds = %3
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @AC97_WM9713_DIG3, align 4
  %13 = icmp sle i32 %11, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %10
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %17 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @AC97_WM9713_DIG1, align 4
  %21 = sub nsw i32 %19, %20
  %22 = ashr i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %18, i64 %23
  store i32 %15, i32* %24, align 4
  br label %25

25:                                               ; preds = %14, %10, %3
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @AC97_GPIO_CFG, align 4
  %28 = icmp sge i32 %26, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %25
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @AC97_MISC_AFE, align 4
  %32 = icmp sle i32 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %36 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @AC97_GPIO_CFG, align 4
  %40 = sub nsw i32 %38, %39
  %41 = ashr i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %37, i64 %42
  store i32 %34, i32* %43, align 4
  br label %44

44:                                               ; preds = %33, %29, %25
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %45, 90
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %50 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  br label %51

51:                                               ; preds = %47, %44
  %52 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %53 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %52, i32 0, i32 3
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = icmp ne %struct.TYPE_6__* %54, null
  br i1 %55, label %56, label %72

56:                                               ; preds = %51
  %57 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %58 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %57, i32 0, i32 3
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32 (%struct.TYPE_6__*, i32, i32)*, i32 (%struct.TYPE_6__*, i32, i32)** %64, align 8
  %66 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %67 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %66, i32 0, i32 3
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 %65(%struct.TYPE_6__* %68, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %56, %51
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
