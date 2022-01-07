; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_int_enum_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_int_enum_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64 }
%struct.vino_channel_settings = type { i32 }

@VINO_INPUT_NONE = common dso_local global i32 0, align 4
@vino_drvdata = common dso_local global %struct.TYPE_2__* null, align 8
@VINO_INPUT_COMPOSITE = common dso_local global i32 0, align 4
@VINO_INPUT_SVIDEO = common dso_local global i32 0, align 4
@VINO_INPUT_D1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vino_channel_settings*, i32)* @vino_int_enum_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vino_int_enum_input(%struct.vino_channel_settings* %0, i32 %1) #0 {
  %3 = alloca %struct.vino_channel_settings*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.vino_channel_settings* %0, %struct.vino_channel_settings** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @VINO_INPUT_NONE, align 4
  store i32 %7, i32* %5, align 4
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vino_drvdata, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vino_drvdata, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vino_drvdata, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %16
  %22 = load i32, i32* %4, align 4
  switch i32 %22, label %29 [
    i32 0, label %23
    i32 1, label %25
    i32 2, label %27
  ]

23:                                               ; preds = %21
  %24 = load i32, i32* @VINO_INPUT_COMPOSITE, align 4
  store i32 %24, i32* %5, align 4
  br label %29

25:                                               ; preds = %21
  %26 = load i32, i32* @VINO_INPUT_SVIDEO, align 4
  store i32 %26, i32* %5, align 4
  br label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @VINO_INPUT_D1, align 4
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %21, %27, %25, %23
  br label %54

30:                                               ; preds = %16, %2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vino_drvdata, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4
  switch i32 %36, label %41 [
    i32 0, label %37
    i32 1, label %39
  ]

37:                                               ; preds = %35
  %38 = load i32, i32* @VINO_INPUT_COMPOSITE, align 4
  store i32 %38, i32* %5, align 4
  br label %41

39:                                               ; preds = %35
  %40 = load i32, i32* @VINO_INPUT_SVIDEO, align 4
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %35, %39, %37
  br label %53

42:                                               ; preds = %30
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vino_drvdata, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load i32, i32* %4, align 4
  switch i32 %48, label %51 [
    i32 0, label %49
  ]

49:                                               ; preds = %47
  %50 = load i32, i32* @VINO_INPUT_D1, align 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %47, %49
  br label %52

52:                                               ; preds = %51, %42
  br label %53

53:                                               ; preds = %52, %41
  br label %54

54:                                               ; preds = %53, %29
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vino_drvdata, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %6, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
