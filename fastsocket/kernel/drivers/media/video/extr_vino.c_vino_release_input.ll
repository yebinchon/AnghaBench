; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_release_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_release_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32, %struct.vino_channel_settings, %struct.vino_channel_settings }
%struct.vino_channel_settings = type { i64, i64 }

@VINO_CHANNEL_A = common dso_local global i64 0, align 8
@vino_drvdata = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"vino_release_input():\0A\00", align 1
@VINO_INPUT_D1 = common dso_local global i64 0, align 8
@VINO_NO_CHANNEL = common dso_local global i8* null, align 8
@VINO_INPUT_COMPOSITE = common dso_local global i64 0, align 8
@VINO_INPUT_SVIDEO = common dso_local global i64 0, align 8
@VINO_INPUT_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vino_channel_settings*)* @vino_release_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vino_release_input(%struct.vino_channel_settings* %0) #0 {
  %2 = alloca %struct.vino_channel_settings*, align 8
  %3 = alloca %struct.vino_channel_settings*, align 8
  %4 = alloca i64, align 8
  store %struct.vino_channel_settings* %0, %struct.vino_channel_settings** %2, align 8
  %5 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %2, align 8
  %6 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @VINO_CHANNEL_A, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vino_drvdata, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 4
  br label %16

13:                                               ; preds = %1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vino_drvdata, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 3
  br label %16

16:                                               ; preds = %13, %10
  %17 = phi %struct.vino_channel_settings* [ %12, %10 ], [ %15, %13 ]
  store %struct.vino_channel_settings* %17, %struct.vino_channel_settings** %3, align 8
  %18 = call i32 @dprintk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vino_drvdata, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vino_drvdata, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %2, align 8
  %27 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %16
  %31 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %3, align 8
  %32 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @VINO_INPUT_D1, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %3, align 8
  %38 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vino_drvdata, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  br label %47

42:                                               ; preds = %30
  %43 = load i8*, i8** @VINO_NO_CHANNEL, align 8
  %44 = ptrtoint i8* %43 to i64
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vino_drvdata, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %42, %36
  br label %81

48:                                               ; preds = %16
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vino_drvdata, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %2, align 8
  %53 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %51, %54
  br i1 %55, label %56, label %80

56:                                               ; preds = %48
  %57 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %3, align 8
  %58 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @VINO_INPUT_COMPOSITE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %68, label %62

62:                                               ; preds = %56
  %63 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %3, align 8
  %64 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @VINO_INPUT_SVIDEO, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %62, %56
  %69 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %3, align 8
  %70 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vino_drvdata, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  store i64 %71, i64* %73, align 8
  br label %79

74:                                               ; preds = %62
  %75 = load i8*, i8** @VINO_NO_CHANNEL, align 8
  %76 = ptrtoint i8* %75 to i64
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vino_drvdata, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  store i64 %76, i64* %78, align 8
  br label %79

79:                                               ; preds = %74, %68
  br label %80

80:                                               ; preds = %79, %48
  br label %81

81:                                               ; preds = %80, %47
  %82 = load i64, i64* @VINO_INPUT_NONE, align 8
  %83 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %2, align 8
  %84 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %83, i32 0, i32 1
  store i64 %82, i64* %84, align 8
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vino_drvdata, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 2
  %87 = load i64, i64* %4, align 8
  %88 = call i32 @spin_unlock_irqrestore(i32* %86, i64 %87)
  ret void
}

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
