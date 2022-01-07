; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx25840/extr_cx25840-audio.c_set_audclk_freq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx25840/extr_cx25840-audio.c_set_audclk_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.cx25840_state = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32)* @set_audclk_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_audclk_freq(%struct.i2c_client* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cx25840_state*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %8 = call i32 @i2c_get_clientdata(%struct.i2c_client* %7)
  %9 = call %struct.cx25840_state* @to_state(i32 %8)
  store %struct.cx25840_state* %9, %struct.cx25840_state** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 32000
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 44100
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 48000
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %49

21:                                               ; preds = %15, %12, %2
  %22 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %23 = call i64 @is_cx231xx(%struct.cx25840_state* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @cx231xx_set_audclk_freq(%struct.i2c_client* %26, i32 %27)
  store i32 %28, i32* %3, align 4
  br label %49

29:                                               ; preds = %21
  %30 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %31 = call i64 @is_cx2388x(%struct.cx25840_state* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @cx23885_set_audclk_freq(%struct.i2c_client* %34, i32 %35)
  store i32 %36, i32* %3, align 4
  br label %49

37:                                               ; preds = %29
  %38 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %39 = call i64 @is_cx2583x(%struct.cx25840_state* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @cx25836_set_audclk_freq(%struct.i2c_client* %42, i32 %43)
  store i32 %44, i32* %3, align 4
  br label %49

45:                                               ; preds = %37
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @cx25840_set_audclk_freq(%struct.i2c_client* %46, i32 %47)
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %45, %41, %33, %25, %18
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.cx25840_state* @to_state(i32) #1

declare dso_local i32 @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i64 @is_cx231xx(%struct.cx25840_state*) #1

declare dso_local i32 @cx231xx_set_audclk_freq(%struct.i2c_client*, i32) #1

declare dso_local i64 @is_cx2388x(%struct.cx25840_state*) #1

declare dso_local i32 @cx23885_set_audclk_freq(%struct.i2c_client*, i32) #1

declare dso_local i64 @is_cx2583x(%struct.cx25840_state*) #1

declare dso_local i32 @cx25836_set_audclk_freq(%struct.i2c_client*, i32) #1

declare dso_local i32 @cx25840_set_audclk_freq(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
