; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_alps.c_alps_process_packet_v4.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_alps.c_alps_process_packet_v4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i8*, %struct.input_dev* }
%struct.input_dev = type { i32 }

@BTN_TOUCH = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@BTN_TOOL_FINGER = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.psmouse*)* @alps_process_packet_v4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alps_process_packet_v4(%struct.psmouse* %0) #0 {
  %2 = alloca %struct.psmouse*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %2, align 8
  %10 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %11 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %3, align 8
  %13 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %14 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %13, i32 0, i32 1
  %15 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  store %struct.input_dev* %15, %struct.input_dev** %4, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 4
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = and i32 %19, 1
  store i32 %20, i32* %8, align 4
  %21 = load i8*, i8** %3, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 4
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = and i32 %24, 2
  store i32 %25, i32* %9, align 4
  %26 = load i8*, i8** %3, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = and i32 %29, 127
  %31 = shl i32 %30, 4
  %32 = load i8*, i8** %3, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 3
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = and i32 %35, 48
  %37 = ashr i32 %36, 2
  %38 = or i32 %31, %37
  %39 = load i8*, i8** %3, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = and i32 %42, 48
  %44 = ashr i32 %43, 4
  %45 = or i32 %38, %44
  store i32 %45, i32* %5, align 4
  %46 = load i8*, i8** %3, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 2
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = and i32 %49, 127
  %51 = shl i32 %50, 4
  %52 = load i8*, i8** %3, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 3
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = and i32 %55, 15
  %57 = or i32 %51, %56
  store i32 %57, i32* %6, align 4
  %58 = load i8*, i8** %3, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 5
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = and i32 %61, 127
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp sge i32 %63, 64
  br i1 %64, label %65, label %69

65:                                               ; preds = %1
  %66 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %67 = load i32, i32* @BTN_TOUCH, align 4
  %68 = call i32 @input_report_key(%struct.input_dev* %66, i32 %67, i32 1)
  br label %73

69:                                               ; preds = %1
  %70 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %71 = load i32, i32* @BTN_TOUCH, align 4
  %72 = call i32 @input_report_key(%struct.input_dev* %70, i32 %71, i32 0)
  br label %73

73:                                               ; preds = %69, %65
  %74 = load i32, i32* %7, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %73
  %77 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %78 = load i32, i32* @ABS_X, align 4
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @input_report_abs(%struct.input_dev* %77, i32 %78, i32 %79)
  %81 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %82 = load i32, i32* @ABS_Y, align 4
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @input_report_abs(%struct.input_dev* %81, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %76, %73
  %86 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %87 = load i32, i32* @ABS_PRESSURE, align 4
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @input_report_abs(%struct.input_dev* %86, i32 %87, i32 %88)
  %90 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %91 = load i32, i32* @BTN_TOOL_FINGER, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp sgt i32 %92, 0
  %94 = zext i1 %93 to i32
  %95 = call i32 @input_report_key(%struct.input_dev* %90, i32 %91, i32 %94)
  %96 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %97 = load i32, i32* @BTN_LEFT, align 4
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @input_report_key(%struct.input_dev* %96, i32 %97, i32 %98)
  %100 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %101 = load i32, i32* @BTN_RIGHT, align 4
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @input_report_key(%struct.input_dev* %100, i32 %101, i32 %102)
  %104 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %105 = call i32 @input_sync(%struct.input_dev* %104)
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
