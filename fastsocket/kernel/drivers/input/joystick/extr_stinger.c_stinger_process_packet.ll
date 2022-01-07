; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_stinger.c_stinger_process_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_stinger.c_stinger_process_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stinger = type { i8*, i32, %struct.input_dev* }
%struct.input_dev = type { i32 }

@BTN_A = common dso_local global i32 0, align 4
@BTN_B = common dso_local global i32 0, align 4
@BTN_C = common dso_local global i32 0, align 4
@BTN_X = common dso_local global i32 0, align 4
@BTN_Y = common dso_local global i32 0, align 4
@BTN_Z = common dso_local global i32 0, align 4
@BTN_TL = common dso_local global i32 0, align 4
@BTN_TR = common dso_local global i32 0, align 4
@BTN_SELECT = common dso_local global i32 0, align 4
@BTN_START = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stinger*)* @stinger_process_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stinger_process_packet(%struct.stinger* %0) #0 {
  %2 = alloca %struct.stinger*, align 8
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca i8*, align 8
  store %struct.stinger* %0, %struct.stinger** %2, align 8
  %5 = load %struct.stinger*, %struct.stinger** %2, align 8
  %6 = getelementptr inbounds %struct.stinger, %struct.stinger* %5, i32 0, i32 2
  %7 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  store %struct.input_dev* %7, %struct.input_dev** %3, align 8
  %8 = load %struct.stinger*, %struct.stinger** %2, align 8
  %9 = getelementptr inbounds %struct.stinger, %struct.stinger* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %4, align 8
  %11 = load %struct.stinger*, %struct.stinger** %2, align 8
  %12 = getelementptr inbounds %struct.stinger, %struct.stinger* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %150

16:                                               ; preds = %1
  %17 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %18 = load i32, i32* @BTN_A, align 4
  %19 = load i8*, i8** %4, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = and i32 %22, 32
  %24 = ashr i32 %23, 5
  %25 = trunc i32 %24 to i8
  %26 = call i32 @input_report_key(%struct.input_dev* %17, i32 %18, i8 zeroext %25)
  %27 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %28 = load i32, i32* @BTN_B, align 4
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = and i32 %32, 16
  %34 = ashr i32 %33, 4
  %35 = trunc i32 %34 to i8
  %36 = call i32 @input_report_key(%struct.input_dev* %27, i32 %28, i8 zeroext %35)
  %37 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %38 = load i32, i32* @BTN_C, align 4
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = and i32 %42, 8
  %44 = ashr i32 %43, 3
  %45 = trunc i32 %44 to i8
  %46 = call i32 @input_report_key(%struct.input_dev* %37, i32 %38, i8 zeroext %45)
  %47 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %48 = load i32, i32* @BTN_X, align 4
  %49 = load i8*, i8** %4, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = and i32 %52, 4
  %54 = ashr i32 %53, 2
  %55 = trunc i32 %54 to i8
  %56 = call i32 @input_report_key(%struct.input_dev* %47, i32 %48, i8 zeroext %55)
  %57 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %58 = load i32, i32* @BTN_Y, align 4
  %59 = load i8*, i8** %4, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 3
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = and i32 %62, 32
  %64 = ashr i32 %63, 5
  %65 = trunc i32 %64 to i8
  %66 = call i32 @input_report_key(%struct.input_dev* %57, i32 %58, i8 zeroext %65)
  %67 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %68 = load i32, i32* @BTN_Z, align 4
  %69 = load i8*, i8** %4, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 3
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = and i32 %72, 16
  %74 = ashr i32 %73, 4
  %75 = trunc i32 %74 to i8
  %76 = call i32 @input_report_key(%struct.input_dev* %67, i32 %68, i8 zeroext %75)
  %77 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %78 = load i32, i32* @BTN_TL, align 4
  %79 = load i8*, i8** %4, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 3
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = and i32 %82, 8
  %84 = ashr i32 %83, 3
  %85 = trunc i32 %84 to i8
  %86 = call i32 @input_report_key(%struct.input_dev* %77, i32 %78, i8 zeroext %85)
  %87 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %88 = load i32, i32* @BTN_TR, align 4
  %89 = load i8*, i8** %4, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 3
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = and i32 %92, 4
  %94 = ashr i32 %93, 2
  %95 = trunc i32 %94 to i8
  %96 = call i32 @input_report_key(%struct.input_dev* %87, i32 %88, i8 zeroext %95)
  %97 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %98 = load i32, i32* @BTN_SELECT, align 4
  %99 = load i8*, i8** %4, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 3
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = and i32 %102, 2
  %104 = ashr i32 %103, 1
  %105 = trunc i32 %104 to i8
  %106 = call i32 @input_report_key(%struct.input_dev* %97, i32 %98, i8 zeroext %105)
  %107 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %108 = load i32, i32* @BTN_START, align 4
  %109 = load i8*, i8** %4, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 3
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i32
  %113 = and i32 %112, 1
  %114 = trunc i32 %113 to i8
  %115 = call i32 @input_report_key(%struct.input_dev* %107, i32 %108, i8 zeroext %114)
  %116 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %117 = load i32, i32* @ABS_X, align 4
  %118 = load i8*, i8** %4, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 1
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  %122 = and i32 %121, 63
  %123 = load i8*, i8** %4, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 0
  %125 = load i8, i8* %124, align 1
  %126 = zext i8 %125 to i32
  %127 = and i32 %126, 1
  %128 = shl i32 %127, 6
  %129 = sub nsw i32 %122, %128
  %130 = trunc i32 %129 to i8
  %131 = call i32 @input_report_abs(%struct.input_dev* %116, i32 %117, i8 zeroext %130)
  %132 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %133 = load i32, i32* @ABS_Y, align 4
  %134 = load i8*, i8** %4, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 0
  %136 = load i8, i8* %135, align 1
  %137 = zext i8 %136 to i32
  %138 = and i32 %137, 2
  %139 = shl i32 %138, 5
  %140 = load i8*, i8** %4, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 2
  %142 = load i8, i8* %141, align 1
  %143 = zext i8 %142 to i32
  %144 = and i32 %143, 63
  %145 = sub nsw i32 %139, %144
  %146 = trunc i32 %145 to i8
  %147 = call i32 @input_report_abs(%struct.input_dev* %132, i32 %133, i8 zeroext %146)
  %148 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %149 = call i32 @input_sync(%struct.input_dev* %148)
  br label %150

150:                                              ; preds = %16, %15
  ret void
}

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i8 zeroext) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i8 zeroext) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
