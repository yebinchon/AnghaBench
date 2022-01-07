; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx25840/extr_cx25840-audio.c_cx25840_set_audclk_freq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx25840/extr_cx25840-audio.c_cx25840_set_audclk_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.cx25840_state = type { i64, i32 }

@CX25840_AUDIO_SERIAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32)* @cx25840_set_audclk_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx25840_set_audclk_freq(%struct.i2c_client* %0, i32 %1) #0 {
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
  br i1 %13, label %14, label %71

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  switch i32 %15, label %70 [
    i32 32000, label %16
    i32 44100, label %34
    i32 48000, label %52
  ]

16:                                               ; preds = %14
  %17 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %18 = call i32 @cx25840_write4(%struct.i2c_client* %17, i32 264, i32 268829711)
  %19 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %20 = call i32 @cx25840_write4(%struct.i2c_client* %19, i32 272, i32 29047278)
  %21 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %22 = call i32 @cx25840_write(%struct.i2c_client* %21, i32 295, i32 80)
  %23 = load %struct.cx25840_state*, %struct.cx25840_state** %5, align 8
  %24 = call i32 @is_cx2583x(%struct.cx25840_state* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  br label %70

27:                                               ; preds = %16
  %28 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %29 = call i32 @cx25840_write4(%struct.i2c_client* %28, i32 2304, i32 134346623)
  %30 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %31 = call i32 @cx25840_write4(%struct.i2c_client* %30, i32 2308, i32 134346623)
  %32 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %33 = call i32 @cx25840_write4(%struct.i2c_client* %32, i32 2316, i32 134346623)
  br label %70

34:                                               ; preds = %14
  %35 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %36 = call i32 @cx25840_write4(%struct.i2c_client* %35, i32 264, i32 269026319)
  %37 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %38 = call i32 @cx25840_write4(%struct.i2c_client* %37, i32 272, i32 15494102)
  %39 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %40 = call i32 @cx25840_write(%struct.i2c_client* %39, i32 295, i32 80)
  %41 = load %struct.cx25840_state*, %struct.cx25840_state** %5, align 8
  %42 = call i32 @is_cx2583x(%struct.cx25840_state* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  br label %70

45:                                               ; preds = %34
  %46 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %47 = call i32 @cx25840_write4(%struct.i2c_client* %46, i32 2304, i32 134311257)
  %48 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %49 = call i32 @cx25840_write4(%struct.i2c_client* %48, i32 2308, i32 134311257)
  %50 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %51 = call i32 @cx25840_write4(%struct.i2c_client* %50, i32 2316, i32 134311257)
  br label %70

52:                                               ; preds = %14
  %53 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %54 = call i32 @cx25840_write4(%struct.i2c_client* %53, i32 264, i32 269091855)
  %55 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %56 = call i32 @cx25840_write4(%struct.i2c_client* %55, i32 272, i32 10016485)
  %57 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %58 = call i32 @cx25840_write(%struct.i2c_client* %57, i32 295, i32 80)
  %59 = load %struct.cx25840_state*, %struct.cx25840_state** %5, align 8
  %60 = call i32 @is_cx2583x(%struct.cx25840_state* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  br label %70

63:                                               ; preds = %52
  %64 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %65 = call i32 @cx25840_write4(%struct.i2c_client* %64, i32 2304, i32 134303658)
  %66 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %67 = call i32 @cx25840_write4(%struct.i2c_client* %66, i32 2308, i32 134303658)
  %68 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %69 = call i32 @cx25840_write4(%struct.i2c_client* %68, i32 2316, i32 134303658)
  br label %70

70:                                               ; preds = %14, %63, %62, %45, %44, %27, %26
  br label %134

71:                                               ; preds = %2
  %72 = load i32, i32* %4, align 4
  switch i32 %72, label %133 [
    i32 32000, label %73
    i32 44100, label %93
    i32 48000, label %113
  ]

73:                                               ; preds = %71
  %74 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %75 = call i32 @cx25840_write4(%struct.i2c_client* %74, i32 264, i32 503841807)
  %76 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %77 = call i32 @cx25840_write4(%struct.i2c_client* %76, i32 272, i32 19531881)
  %78 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %79 = call i32 @cx25840_write(%struct.i2c_client* %78, i32 295, i32 84)
  %80 = load %struct.cx25840_state*, %struct.cx25840_state** %5, align 8
  %81 = call i32 @is_cx2583x(%struct.cx25840_state* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %73
  br label %133

84:                                               ; preds = %73
  %85 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %86 = call i32 @cx25840_write4(%struct.i2c_client* %85, i32 2296, i32 134283264)
  %87 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %88 = call i32 @cx25840_write4(%struct.i2c_client* %87, i32 2304, i32 134348800)
  %89 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %90 = call i32 @cx25840_write4(%struct.i2c_client* %89, i32 2308, i32 134348800)
  %91 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %92 = call i32 @cx25840_write4(%struct.i2c_client* %91, i32 2316, i32 134348800)
  br label %133

93:                                               ; preds = %71
  %94 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %95 = call i32 @cx25840_write4(%struct.i2c_client* %94, i32 264, i32 403244047)
  %96 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %97 = call i32 @cx25840_write4(%struct.i2c_client* %96, i32 272, i32 15494102)
  %98 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %99 = call i32 @cx25840_write(%struct.i2c_client* %98, i32 295, i32 80)
  %100 = load %struct.cx25840_state*, %struct.cx25840_state** %5, align 8
  %101 = call i32 @is_cx2583x(%struct.cx25840_state* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %93
  br label %133

104:                                              ; preds = %93
  %105 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %106 = call i32 @cx25840_write4(%struct.i2c_client* %105, i32 2296, i32 134308045)
  %107 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %108 = call i32 @cx25840_write4(%struct.i2c_client* %107, i32 2304, i32 134312837)
  %109 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %110 = call i32 @cx25840_write4(%struct.i2c_client* %109, i32 2308, i32 134312837)
  %111 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %112 = call i32 @cx25840_write4(%struct.i2c_client* %111, i32 2316, i32 134312837)
  br label %133

113:                                              ; preds = %71
  %114 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %115 = call i32 @cx25840_write4(%struct.i2c_client* %114, i32 264, i32 403309583)
  %116 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %117 = call i32 @cx25840_write4(%struct.i2c_client* %116, i32 272, i32 10016485)
  %118 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %119 = call i32 @cx25840_write(%struct.i2c_client* %118, i32 295, i32 80)
  %120 = load %struct.cx25840_state*, %struct.cx25840_state** %5, align 8
  %121 = call i32 @is_cx2583x(%struct.cx25840_state* %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %113
  br label %133

124:                                              ; preds = %113
  %125 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %126 = call i32 @cx25840_write4(%struct.i2c_client* %125, i32 2296, i32 134316032)
  %127 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %128 = call i32 @cx25840_write4(%struct.i2c_client* %127, i32 2304, i32 134305109)
  %129 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %130 = call i32 @cx25840_write4(%struct.i2c_client* %129, i32 2308, i32 134305109)
  %131 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %132 = call i32 @cx25840_write4(%struct.i2c_client* %131, i32 2316, i32 134305109)
  br label %133

133:                                              ; preds = %71, %124, %123, %104, %103, %84, %83
  br label %134

134:                                              ; preds = %133, %70
  %135 = load i32, i32* %4, align 4
  %136 = load %struct.cx25840_state*, %struct.cx25840_state** %5, align 8
  %137 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 8
  ret i32 0
}

declare dso_local %struct.cx25840_state* @to_state(i32) #1

declare dso_local i32 @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @cx25840_write4(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @cx25840_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @is_cx2583x(%struct.cx25840_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
