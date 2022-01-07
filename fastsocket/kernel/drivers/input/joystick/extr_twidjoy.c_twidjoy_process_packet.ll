; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_twidjoy.c_twidjoy_process_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_twidjoy.c_twidjoy_process_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twidjoy_button_spec = type { i32, i32, i32* }
%struct.twidjoy = type { i8*, %struct.input_dev* }
%struct.input_dev = type { i32 }

@twidjoy_buttons = common dso_local global %struct.twidjoy_button_spec* null, align 8
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.twidjoy*)* @twidjoy_process_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @twidjoy_process_packet(%struct.twidjoy* %0) #0 {
  %2 = alloca %struct.twidjoy*, align 8
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.twidjoy_button_spec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.twidjoy* %0, %struct.twidjoy** %2, align 8
  %11 = load %struct.twidjoy*, %struct.twidjoy** %2, align 8
  %12 = getelementptr inbounds %struct.twidjoy, %struct.twidjoy* %11, i32 0, i32 1
  %13 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  store %struct.input_dev* %13, %struct.input_dev** %3, align 8
  %14 = load %struct.twidjoy*, %struct.twidjoy** %2, align 8
  %15 = getelementptr inbounds %struct.twidjoy, %struct.twidjoy* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %4, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = and i32 %20, 127
  %22 = shl i32 %21, 7
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = and i32 %26, 127
  %28 = or i32 %22, %27
  store i32 %28, i32* %6, align 4
  %29 = load %struct.twidjoy_button_spec*, %struct.twidjoy_button_spec** @twidjoy_buttons, align 8
  store %struct.twidjoy_button_spec* %29, %struct.twidjoy_button_spec** %5, align 8
  br label %30

30:                                               ; preds = %74, %1
  %31 = load %struct.twidjoy_button_spec*, %struct.twidjoy_button_spec** %5, align 8
  %32 = getelementptr inbounds %struct.twidjoy_button_spec, %struct.twidjoy_button_spec* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %77

35:                                               ; preds = %30
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.twidjoy_button_spec*, %struct.twidjoy_button_spec** %5, align 8
  %38 = getelementptr inbounds %struct.twidjoy_button_spec, %struct.twidjoy_button_spec* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.twidjoy_button_spec*, %struct.twidjoy_button_spec** %5, align 8
  %41 = getelementptr inbounds %struct.twidjoy_button_spec, %struct.twidjoy_button_spec* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 %39, %42
  %44 = and i32 %36, %43
  %45 = load %struct.twidjoy_button_spec*, %struct.twidjoy_button_spec** %5, align 8
  %46 = getelementptr inbounds %struct.twidjoy_button_spec, %struct.twidjoy_button_spec* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = ashr i32 %44, %47
  store i32 %48, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %49

49:                                               ; preds = %70, %35
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.twidjoy_button_spec*, %struct.twidjoy_button_spec** %5, align 8
  %52 = getelementptr inbounds %struct.twidjoy_button_spec, %struct.twidjoy_button_spec* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %73

55:                                               ; preds = %49
  %56 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %57 = load %struct.twidjoy_button_spec*, %struct.twidjoy_button_spec** %5, align 8
  %58 = getelementptr inbounds %struct.twidjoy_button_spec, %struct.twidjoy_button_spec* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, 1
  %66 = load i32, i32* %9, align 4
  %67 = icmp eq i32 %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @input_report_key(%struct.input_dev* %56, i32 %63, i32 %68)
  br label %70

70:                                               ; preds = %55
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %10, align 4
  br label %49

73:                                               ; preds = %49
  br label %74

74:                                               ; preds = %73
  %75 = load %struct.twidjoy_button_spec*, %struct.twidjoy_button_spec** %5, align 8
  %76 = getelementptr inbounds %struct.twidjoy_button_spec, %struct.twidjoy_button_spec* %75, i32 1
  store %struct.twidjoy_button_spec* %76, %struct.twidjoy_button_spec** %5, align 8
  br label %30

77:                                               ; preds = %30
  %78 = load i8*, i8** %4, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 4
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = and i32 %81, 7
  %83 = shl i32 %82, 5
  %84 = load i8*, i8** %4, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 3
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = and i32 %87, 124
  %89 = ashr i32 %88, 2
  %90 = or i32 %83, %89
  store i32 %90, i32* %7, align 4
  %91 = load i8*, i8** %4, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 4
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = and i32 %94, 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %77
  %98 = load i32, i32* %7, align 4
  %99 = sub nsw i32 %98, 256
  store i32 %99, i32* %7, align 4
  br label %100

100:                                              ; preds = %97, %77
  %101 = load i8*, i8** %4, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 3
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = and i32 %104, 1
  %106 = shl i32 %105, 7
  %107 = load i8*, i8** %4, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 2
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  %111 = and i32 %110, 127
  %112 = ashr i32 %111, 0
  %113 = or i32 %106, %112
  store i32 %113, i32* %8, align 4
  %114 = load i8*, i8** %4, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 3
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = and i32 %117, 2
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %100
  %121 = load i32, i32* %8, align 4
  %122 = sub nsw i32 %121, 256
  store i32 %122, i32* %8, align 4
  br label %123

123:                                              ; preds = %120, %100
  %124 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %125 = load i32, i32* @ABS_X, align 4
  %126 = load i32, i32* %7, align 4
  %127 = sub nsw i32 0, %126
  %128 = call i32 @input_report_abs(%struct.input_dev* %124, i32 %125, i32 %127)
  %129 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %130 = load i32, i32* @ABS_Y, align 4
  %131 = load i32, i32* %8, align 4
  %132 = call i32 @input_report_abs(%struct.input_dev* %129, i32 %130, i32 %131)
  %133 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %134 = call i32 @input_sync(%struct.input_dev* %133)
  ret void
}

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
