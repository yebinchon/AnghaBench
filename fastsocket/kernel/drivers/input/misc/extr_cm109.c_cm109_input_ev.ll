; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_cm109.c_cm109_input_ev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_cm109.c_cm109_input_ev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.cm109_dev = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"input_ev: type=%u code=%u value=%d\0A\00", align 1
@EV_SND = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, i32, i32, i32)* @cm109_input_ev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm109_input_ev(%struct.input_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cm109_dev*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %12 = call %struct.cm109_dev* @input_get_drvdata(%struct.input_dev* %11)
  store %struct.cm109_dev* %12, %struct.cm109_dev** %10, align 8
  %13 = load %struct.cm109_dev*, %struct.cm109_dev** %10, align 8
  %14 = getelementptr inbounds %struct.cm109_dev, %struct.cm109_dev* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @dev_dbg(i32* %16, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18, i32 %19)
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @EV_SND, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %48

27:                                               ; preds = %4
  %28 = load i32, i32* %8, align 4
  switch i32 %28, label %45 [
    i32 128, label %29
    i32 129, label %29
  ]

29:                                               ; preds = %27, %27
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = load %struct.cm109_dev*, %struct.cm109_dev** %10, align 8
  %36 = getelementptr inbounds %struct.cm109_dev, %struct.cm109_dev* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.cm109_dev*, %struct.cm109_dev** %10, align 8
  %38 = getelementptr inbounds %struct.cm109_dev, %struct.cm109_dev* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %29
  %42 = load %struct.cm109_dev*, %struct.cm109_dev** %10, align 8
  %43 = call i32 @cm109_toggle_buzzer_async(%struct.cm109_dev* %42)
  br label %44

44:                                               ; preds = %41, %29
  store i32 0, i32* %5, align 4
  br label %48

45:                                               ; preds = %27
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %45, %44, %24
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local %struct.cm109_dev* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @cm109_toggle_buzzer_async(%struct.cm109_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
