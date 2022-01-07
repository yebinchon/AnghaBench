; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_find_input_index.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_find_input_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }
%struct.vino_channel_settings = type { i32 }

@vino_drvdata = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vino_channel_settings*)* @vino_find_input_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vino_find_input_index(%struct.vino_channel_settings* %0) #0 {
  %2 = alloca %struct.vino_channel_settings*, align 8
  %3 = alloca i32, align 4
  store %struct.vino_channel_settings* %0, %struct.vino_channel_settings** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vino_drvdata, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vino_drvdata, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %8
  %14 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %2, align 8
  %15 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %20 [
    i32 130, label %17
    i32 128, label %18
    i32 129, label %19
  ]

17:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %20

18:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %20

19:                                               ; preds = %13
  store i32 2, i32* %3, align 4
  br label %20

20:                                               ; preds = %13, %19, %18, %17
  br label %46

21:                                               ; preds = %8, %1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vino_drvdata, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %2, align 8
  %28 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %32 [
    i32 130, label %30
    i32 128, label %31
  ]

30:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %32

31:                                               ; preds = %26
  store i32 1, i32* %3, align 4
  br label %32

32:                                               ; preds = %26, %31, %30
  br label %45

33:                                               ; preds = %21
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vino_drvdata, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %2, align 8
  %40 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %43 [
    i32 129, label %42
  ]

42:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %38, %42
  br label %44

44:                                               ; preds = %43, %33
  br label %45

45:                                               ; preds = %44, %32
  br label %46

46:                                               ; preds = %45, %20
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
