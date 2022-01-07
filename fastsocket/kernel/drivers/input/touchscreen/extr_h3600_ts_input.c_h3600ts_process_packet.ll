; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_h3600_ts_input.c_h3600ts_process_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_h3600_ts_input.c_h3600ts_process_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.h3600_dev = type { i32, i32*, i32, %struct.input_dev* }
%struct.input_dev = type { i32 }

@h3600ts_process_packet.touched = internal global i32 0, align 4
@KEY_RECORD = common dso_local global i32 0, align 4
@KEY_PROG1 = common dso_local global i32 0, align 4
@KEY_PROG2 = common dso_local global i32 0, align 4
@KEY_Q = common dso_local global i32 0, align 4
@KEY_PROG3 = common dso_local global i32 0, align 4
@KEY_UP = common dso_local global i32 0, align 4
@KEY_RIGHT = common dso_local global i32 0, align 4
@KEY_LEFT = common dso_local global i32 0, align 4
@KEY_DOWN = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.h3600_dev*)* @h3600ts_process_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @h3600ts_process_packet(%struct.h3600_dev* %0) #0 {
  %2 = alloca %struct.h3600_dev*, align 8
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  store %struct.h3600_dev* %0, %struct.h3600_dev** %2, align 8
  %8 = load %struct.h3600_dev*, %struct.h3600_dev** %2, align 8
  %9 = getelementptr inbounds %struct.h3600_dev, %struct.h3600_dev* %8, i32 0, i32 3
  %10 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  store %struct.input_dev* %10, %struct.input_dev** %3, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.h3600_dev*, %struct.h3600_dev** %2, align 8
  %12 = getelementptr inbounds %struct.h3600_dev, %struct.h3600_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %122 [
    i32 129, label %14
    i32 128, label %58
  ]

14:                                               ; preds = %1
  %15 = load %struct.h3600_dev*, %struct.h3600_dev** %2, align 8
  %16 = getelementptr inbounds %struct.h3600_dev, %struct.h3600_dev* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 128
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 0, i32 1
  store i32 %23, i32* %5, align 4
  %24 = load %struct.h3600_dev*, %struct.h3600_dev** %2, align 8
  %25 = getelementptr inbounds %struct.h3600_dev, %struct.h3600_dev* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 127
  switch i32 %29, label %48 [
    i32 133, label %30
    i32 138, label %32
    i32 137, label %34
    i32 134, label %36
    i32 131, label %38
    i32 130, label %40
    i32 132, label %42
    i32 135, label %44
    i32 136, label %46
  ]

30:                                               ; preds = %14
  %31 = load i32, i32* @KEY_RECORD, align 4
  store i32 %31, i32* %4, align 4
  br label %49

32:                                               ; preds = %14
  %33 = load i32, i32* @KEY_PROG1, align 4
  store i32 %33, i32* %4, align 4
  br label %49

34:                                               ; preds = %14
  %35 = load i32, i32* @KEY_PROG2, align 4
  store i32 %35, i32* %4, align 4
  br label %49

36:                                               ; preds = %14
  %37 = load i32, i32* @KEY_Q, align 4
  store i32 %37, i32* %4, align 4
  br label %49

38:                                               ; preds = %14
  %39 = load i32, i32* @KEY_PROG3, align 4
  store i32 %39, i32* %4, align 4
  br label %49

40:                                               ; preds = %14
  %41 = load i32, i32* @KEY_UP, align 4
  store i32 %41, i32* %4, align 4
  br label %49

42:                                               ; preds = %14
  %43 = load i32, i32* @KEY_RIGHT, align 4
  store i32 %43, i32* %4, align 4
  br label %49

44:                                               ; preds = %14
  %45 = load i32, i32* @KEY_LEFT, align 4
  store i32 %45, i32* %4, align 4
  br label %49

46:                                               ; preds = %14
  %47 = load i32, i32* @KEY_DOWN, align 4
  store i32 %47, i32* %4, align 4
  br label %49

48:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %46, %44, %42, %40, %38, %36, %34, %32, %30
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @input_report_key(%struct.input_dev* %53, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %52, %49
  br label %123

58:                                               ; preds = %1
  %59 = load i32, i32* @h3600ts_process_packet.touched, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %58
  %62 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %63 = load i32, i32* @BTN_TOUCH, align 4
  %64 = call i32 @input_report_key(%struct.input_dev* %62, i32 %63, i32 1)
  store i32 1, i32* @h3600ts_process_packet.touched, align 4
  br label %65

65:                                               ; preds = %61, %58
  %66 = load %struct.h3600_dev*, %struct.h3600_dev** %2, align 8
  %67 = getelementptr inbounds %struct.h3600_dev, %struct.h3600_dev* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %117

70:                                               ; preds = %65
  %71 = load %struct.h3600_dev*, %struct.h3600_dev** %2, align 8
  %72 = getelementptr inbounds %struct.h3600_dev, %struct.h3600_dev* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = trunc i32 %75 to i16
  store i16 %76, i16* %6, align 2
  %77 = load i16, i16* %6, align 2
  %78 = zext i16 %77 to i32
  %79 = shl i32 %78, 8
  %80 = trunc i32 %79 to i16
  store i16 %80, i16* %6, align 2
  %81 = load %struct.h3600_dev*, %struct.h3600_dev** %2, align 8
  %82 = getelementptr inbounds %struct.h3600_dev, %struct.h3600_dev* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = load i16, i16* %6, align 2
  %87 = zext i16 %86 to i32
  %88 = add nsw i32 %87, %85
  %89 = trunc i32 %88 to i16
  store i16 %89, i16* %6, align 2
  %90 = load %struct.h3600_dev*, %struct.h3600_dev** %2, align 8
  %91 = getelementptr inbounds %struct.h3600_dev, %struct.h3600_dev* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 2
  %94 = load i32, i32* %93, align 4
  %95 = trunc i32 %94 to i16
  store i16 %95, i16* %7, align 2
  %96 = load i16, i16* %7, align 2
  %97 = zext i16 %96 to i32
  %98 = shl i32 %97, 8
  %99 = trunc i32 %98 to i16
  store i16 %99, i16* %7, align 2
  %100 = load %struct.h3600_dev*, %struct.h3600_dev** %2, align 8
  %101 = getelementptr inbounds %struct.h3600_dev, %struct.h3600_dev* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 3
  %104 = load i32, i32* %103, align 4
  %105 = load i16, i16* %7, align 2
  %106 = zext i16 %105 to i32
  %107 = add nsw i32 %106, %104
  %108 = trunc i32 %107 to i16
  store i16 %108, i16* %7, align 2
  %109 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %110 = load i32, i32* @ABS_X, align 4
  %111 = load i16, i16* %6, align 2
  %112 = call i32 @input_report_abs(%struct.input_dev* %109, i32 %110, i16 zeroext %111)
  %113 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %114 = load i32, i32* @ABS_Y, align 4
  %115 = load i16, i16* %7, align 2
  %116 = call i32 @input_report_abs(%struct.input_dev* %113, i32 %114, i16 zeroext %115)
  br label %121

117:                                              ; preds = %65
  %118 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %119 = load i32, i32* @BTN_TOUCH, align 4
  %120 = call i32 @input_report_key(%struct.input_dev* %118, i32 %119, i32 0)
  store i32 0, i32* @h3600ts_process_packet.touched, align 4
  br label %121

121:                                              ; preds = %117, %70
  br label %123

122:                                              ; preds = %1
  br label %123

123:                                              ; preds = %122, %121, %57
  %124 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %125 = call i32 @input_sync(%struct.input_dev* %124)
  ret void
}

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i16 zeroext) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
