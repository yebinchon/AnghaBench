; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx25840/extr_cx25840-audio.c_cx231xx_set_audclk_freq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx25840/extr_cx25840-audio.c_cx231xx_set_audclk_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.cx25840_state = type { i64, i32 }

@CX25840_AUDIO_SERIAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32)* @cx231xx_set_audclk_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx231xx_set_audclk_freq(%struct.i2c_client* %0, i32 %1) #0 {
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cx25840_state*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %7 = call i32 @i2c_get_clientdata(%struct.i2c_client* %6)
  %8 = call %struct.cx25840_state* @to_state(i32 %7)
  store %struct.cx25840_state* %8, %struct.cx25840_state** %5, align 8
  %9 = load %struct.cx25840_state*, %struct.cx25840_state** %5, align 8
  %10 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CX25840_AUDIO_SERIAL, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %38

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  switch i32 %15, label %37 [
    i32 32000, label %16
    i32 44100, label %23
    i32 48000, label %30
  ]

16:                                               ; preds = %14
  %17 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %18 = call i32 @cx25840_write4(%struct.i2c_client* %17, i32 2304, i32 134346623)
  %19 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %20 = call i32 @cx25840_write4(%struct.i2c_client* %19, i32 2308, i32 134346623)
  %21 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %22 = call i32 @cx25840_write4(%struct.i2c_client* %21, i32 2316, i32 134346623)
  br label %37

23:                                               ; preds = %14
  %24 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %25 = call i32 @cx25840_write4(%struct.i2c_client* %24, i32 2304, i32 134311257)
  %26 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %27 = call i32 @cx25840_write4(%struct.i2c_client* %26, i32 2308, i32 134311257)
  %28 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %29 = call i32 @cx25840_write4(%struct.i2c_client* %28, i32 2316, i32 134311257)
  br label %37

30:                                               ; preds = %14
  %31 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %32 = call i32 @cx25840_write4(%struct.i2c_client* %31, i32 2304, i32 134303658)
  %33 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %34 = call i32 @cx25840_write4(%struct.i2c_client* %33, i32 2308, i32 134303658)
  %35 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %36 = call i32 @cx25840_write4(%struct.i2c_client* %35, i32 2316, i32 134303658)
  br label %37

37:                                               ; preds = %14, %30, %23, %16
  br label %68

38:                                               ; preds = %2
  %39 = load i32, i32* %4, align 4
  switch i32 %39, label %67 [
    i32 32000, label %40
    i32 44100, label %49
    i32 48000, label %58
  ]

40:                                               ; preds = %38
  %41 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %42 = call i32 @cx25840_write4(%struct.i2c_client* %41, i32 2296, i32 134283264)
  %43 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %44 = call i32 @cx25840_write4(%struct.i2c_client* %43, i32 2304, i32 134348800)
  %45 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %46 = call i32 @cx25840_write4(%struct.i2c_client* %45, i32 2308, i32 134348800)
  %47 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %48 = call i32 @cx25840_write4(%struct.i2c_client* %47, i32 2316, i32 134348800)
  br label %67

49:                                               ; preds = %38
  %50 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %51 = call i32 @cx25840_write4(%struct.i2c_client* %50, i32 2296, i32 134308045)
  %52 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %53 = call i32 @cx25840_write4(%struct.i2c_client* %52, i32 2304, i32 134312837)
  %54 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %55 = call i32 @cx25840_write4(%struct.i2c_client* %54, i32 2308, i32 134312837)
  %56 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %57 = call i32 @cx25840_write4(%struct.i2c_client* %56, i32 2316, i32 134312837)
  br label %67

58:                                               ; preds = %38
  %59 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %60 = call i32 @cx25840_write4(%struct.i2c_client* %59, i32 2296, i32 134317692)
  %61 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %62 = call i32 @cx25840_write4(%struct.i2c_client* %61, i32 2304, i32 134303658)
  %63 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %64 = call i32 @cx25840_write4(%struct.i2c_client* %63, i32 2308, i32 134303658)
  %65 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %66 = call i32 @cx25840_write4(%struct.i2c_client* %65, i32 2316, i32 134303658)
  br label %67

67:                                               ; preds = %38, %58, %49, %40
  br label %68

68:                                               ; preds = %67, %37
  %69 = load i32, i32* %4, align 4
  %70 = load %struct.cx25840_state*, %struct.cx25840_state** %5, align 8
  %71 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  ret i32 0
}

declare dso_local %struct.cx25840_state* @to_state(i32) #1

declare dso_local i32 @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @cx25840_write4(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
