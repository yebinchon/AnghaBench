; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_ixp4xx-beeper.c_ixp4xx_spkr_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_ixp4xx-beeper.c_ixp4xx_spkr_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }

@EV_SND = common dso_local global i32 0, align 4
@FREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, i32, i32, i32)* @ixp4xx_spkr_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixp4xx_spkr_event(%struct.input_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %13 = call i64 @input_get_drvdata(%struct.input_dev* %12)
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @EV_SND, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %44

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  switch i32 %20, label %27 [
    i32 129, label %21
    i32 128, label %26
  ]

21:                                               ; preds = %19
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 1000, i32* %9, align 4
  br label %25

25:                                               ; preds = %24, %21
  br label %26

26:                                               ; preds = %19, %25
  br label %28

27:                                               ; preds = %19
  store i32 -1, i32* %5, align 4
  br label %44

28:                                               ; preds = %26
  %29 = load i32, i32* %9, align 4
  %30 = icmp sgt i32 %29, 20
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 32767
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = call i32 (...) @ixp4xx_get_board_tick_rate()
  %36 = load i32, i32* %9, align 4
  %37 = mul nsw i32 %36, 4
  %38 = sdiv i32 %35, %37
  %39 = sub nsw i32 %38, 1
  store i32 %39, i32* %11, align 4
  br label %40

40:                                               ; preds = %34, %31, %28
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @ixp4xx_spkr_control(i32 %41, i32 %42)
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %40, %27, %18
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i64 @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @ixp4xx_get_board_tick_rate(...) #1

declare dso_local i32 @ixp4xx_spkr_control(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
