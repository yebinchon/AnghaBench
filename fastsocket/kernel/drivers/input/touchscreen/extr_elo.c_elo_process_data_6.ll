; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_elo.c_elo_process_data_6.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_elo.c_elo_process_data_6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elo = type { i8*, i64, i32, %struct.input_dev* }
%struct.input_dev = type { i32 }

@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elo*, i8)* @elo_process_data_6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elo_process_data_6(%struct.elo* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.elo*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.input_dev*, align 8
  store %struct.elo* %0, %struct.elo** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load %struct.elo*, %struct.elo** %3, align 8
  %7 = getelementptr inbounds %struct.elo, %struct.elo* %6, i32 0, i32 3
  %8 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  store %struct.input_dev* %8, %struct.input_dev** %5, align 8
  %9 = load i8, i8* %4, align 1
  %10 = load %struct.elo*, %struct.elo** %3, align 8
  %11 = getelementptr inbounds %struct.elo, %struct.elo* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = load %struct.elo*, %struct.elo** %3, align 8
  %14 = getelementptr inbounds %struct.elo, %struct.elo* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds i8, i8* %12, i64 %15
  store i8 %9, i8* %16, align 1
  %17 = load %struct.elo*, %struct.elo** %3, align 8
  %18 = getelementptr inbounds %struct.elo, %struct.elo* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = add i64 %19, 1
  store i64 %20, i64* %18, align 8
  switch i64 %19, label %149 [
    i64 0, label %21
    i64 1, label %30
    i64 2, label %39
    i64 3, label %48
    i64 4, label %108
    i64 5, label %117
  ]

21:                                               ; preds = %2
  %22 = load i8, i8* %4, align 1
  %23 = zext i8 %22 to i32
  %24 = and i32 %23, 192
  %25 = icmp ne i32 %24, 192
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.elo*, %struct.elo** %3, align 8
  %28 = getelementptr inbounds %struct.elo, %struct.elo* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  br label %29

29:                                               ; preds = %26, %21
  br label %149

30:                                               ; preds = %2
  %31 = load i8, i8* %4, align 1
  %32 = zext i8 %31 to i32
  %33 = and i32 %32, 192
  %34 = icmp ne i32 %33, 128
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.elo*, %struct.elo** %3, align 8
  %37 = getelementptr inbounds %struct.elo, %struct.elo* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  br label %38

38:                                               ; preds = %35, %30
  br label %149

39:                                               ; preds = %2
  %40 = load i8, i8* %4, align 1
  %41 = zext i8 %40 to i32
  %42 = and i32 %41, 192
  %43 = icmp ne i32 %42, 64
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.elo*, %struct.elo** %3, align 8
  %46 = getelementptr inbounds %struct.elo, %struct.elo* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  br label %47

47:                                               ; preds = %44, %39
  br label %149

48:                                               ; preds = %2
  %49 = load i8, i8* %4, align 1
  %50 = zext i8 %49 to i32
  %51 = and i32 %50, 192
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load %struct.elo*, %struct.elo** %3, align 8
  %55 = getelementptr inbounds %struct.elo, %struct.elo* %54, i32 0, i32 1
  store i64 0, i64* %55, align 8
  br label %149

56:                                               ; preds = %48
  %57 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %58 = load i32, i32* @ABS_X, align 4
  %59 = load %struct.elo*, %struct.elo** %3, align 8
  %60 = getelementptr inbounds %struct.elo, %struct.elo* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = and i32 %64, 63
  %66 = shl i32 %65, 6
  %67 = load %struct.elo*, %struct.elo** %3, align 8
  %68 = getelementptr inbounds %struct.elo, %struct.elo* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = and i32 %72, 63
  %74 = or i32 %66, %73
  %75 = call i32 @input_report_abs(%struct.input_dev* %57, i32 %58, i32 %74)
  %76 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %77 = load i32, i32* @ABS_Y, align 4
  %78 = load %struct.elo*, %struct.elo** %3, align 8
  %79 = getelementptr inbounds %struct.elo, %struct.elo* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 2
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = and i32 %83, 63
  %85 = shl i32 %84, 6
  %86 = load %struct.elo*, %struct.elo** %3, align 8
  %87 = getelementptr inbounds %struct.elo, %struct.elo* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 3
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = and i32 %91, 63
  %93 = or i32 %85, %92
  %94 = call i32 @input_report_abs(%struct.input_dev* %76, i32 %77, i32 %93)
  %95 = load %struct.elo*, %struct.elo** %3, align 8
  %96 = getelementptr inbounds %struct.elo, %struct.elo* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = icmp eq i32 %97, 2
  br i1 %98, label %99, label %107

99:                                               ; preds = %56
  %100 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %101 = load i32, i32* @BTN_TOUCH, align 4
  %102 = call i32 @input_report_key(%struct.input_dev* %100, i32 %101, i32 1)
  %103 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %104 = call i32 @input_sync(%struct.input_dev* %103)
  %105 = load %struct.elo*, %struct.elo** %3, align 8
  %106 = getelementptr inbounds %struct.elo, %struct.elo* %105, i32 0, i32 1
  store i64 0, i64* %106, align 8
  br label %107

107:                                              ; preds = %99, %56
  br label %149

108:                                              ; preds = %2
  %109 = load i8, i8* %4, align 1
  %110 = icmp ne i8 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %108
  %112 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %113 = call i32 @input_sync(%struct.input_dev* %112)
  %114 = load %struct.elo*, %struct.elo** %3, align 8
  %115 = getelementptr inbounds %struct.elo, %struct.elo* %114, i32 0, i32 1
  store i64 0, i64* %115, align 8
  br label %116

116:                                              ; preds = %111, %108
  br label %149

117:                                              ; preds = %2
  %118 = load i8, i8* %4, align 1
  %119 = zext i8 %118 to i32
  %120 = and i32 %119, 240
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %144

122:                                              ; preds = %117
  %123 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %124 = load i32, i32* @ABS_PRESSURE, align 4
  %125 = load %struct.elo*, %struct.elo** %3, align 8
  %126 = getelementptr inbounds %struct.elo, %struct.elo* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 5
  %129 = load i8, i8* %128, align 1
  %130 = zext i8 %129 to i32
  %131 = call i32 @input_report_abs(%struct.input_dev* %123, i32 %124, i32 %130)
  %132 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %133 = load i32, i32* @BTN_TOUCH, align 4
  %134 = load %struct.elo*, %struct.elo** %3, align 8
  %135 = getelementptr inbounds %struct.elo, %struct.elo* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 5
  %138 = load i8, i8* %137, align 1
  %139 = icmp ne i8 %138, 0
  %140 = xor i1 %139, true
  %141 = xor i1 %140, true
  %142 = zext i1 %141 to i32
  %143 = call i32 @input_report_key(%struct.input_dev* %132, i32 %133, i32 %142)
  br label %144

144:                                              ; preds = %122, %117
  %145 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %146 = call i32 @input_sync(%struct.input_dev* %145)
  %147 = load %struct.elo*, %struct.elo** %3, align 8
  %148 = getelementptr inbounds %struct.elo, %struct.elo* %147, i32 0, i32 1
  store i64 0, i64* %148, align 8
  br label %149

149:                                              ; preds = %2, %144, %116, %107, %53, %47, %38, %29
  ret void
}

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
