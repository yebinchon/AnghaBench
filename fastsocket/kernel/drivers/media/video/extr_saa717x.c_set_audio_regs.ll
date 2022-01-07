; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa717x.c_set_audio_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa717x.c_set_audio_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.saa717x_state = type { i32, i32, i64, i64, i32, i32, i64, i64 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"set audio input %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.saa717x_state*)* @set_audio_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_audio_regs(%struct.v4l2_subdev* %0, %struct.saa717x_state* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.saa717x_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.saa717x_state* %1, %struct.saa717x_state** %4, align 8
  store i32 172, i32* %5, align 4
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %10 = load %struct.saa717x_state*, %struct.saa717x_state** %4, align 8
  %11 = getelementptr inbounds %struct.saa717x_state, %struct.saa717x_state* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @saa717x_write(%struct.v4l2_subdev* %9, i32 1428, i32 %12)
  %14 = load i32, i32* @debug, align 4
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %16 = load %struct.saa717x_state*, %struct.saa717x_state** %4, align 8
  %17 = getelementptr inbounds %struct.saa717x_state, %struct.saa717x_state* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @v4l2_dbg(i32 1, i32 %14, %struct.v4l2_subdev* %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.saa717x_state*, %struct.saa717x_state** %4, align 8
  %21 = getelementptr inbounds %struct.saa717x_state, %struct.saa717x_state* %20, i32 0, i32 7
  %22 = load i64, i64* %21, align 8
  %23 = sub nsw i64 65536, %22
  %24 = call i32 @min(i64 %23, i32 32768)
  %25 = load %struct.saa717x_state*, %struct.saa717x_state** %4, align 8
  %26 = getelementptr inbounds %struct.saa717x_state, %struct.saa717x_state* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %24, %27
  %29 = sdiv i32 %28, 32768
  store i32 %29, i32* %7, align 4
  %30 = load %struct.saa717x_state*, %struct.saa717x_state** %4, align 8
  %31 = getelementptr inbounds %struct.saa717x_state, %struct.saa717x_state* %30, i32 0, i32 7
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @min(i64 %32, i32 32768)
  %34 = load %struct.saa717x_state*, %struct.saa717x_state** %4, align 8
  %35 = getelementptr inbounds %struct.saa717x_state, %struct.saa717x_state* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %33, %36
  %38 = sdiv i32 %37, 32768
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %7, align 4
  %40 = zext i32 %39 to i64
  %41 = mul nsw i64 %40, 64
  %42 = sdiv i64 %41, 65535
  %43 = sub nsw i64 %42, 40
  %44 = load %struct.saa717x_state*, %struct.saa717x_state** %4, align 8
  %45 = getelementptr inbounds %struct.saa717x_state, %struct.saa717x_state* %44, i32 0, i32 2
  store i64 %43, i64* %45, align 8
  %46 = load i32, i32* %8, align 4
  %47 = zext i32 %46 to i64
  %48 = mul nsw i64 %47, 64
  %49 = sdiv i64 %48, 65535
  %50 = sub nsw i64 %49, 40
  %51 = load %struct.saa717x_state*, %struct.saa717x_state** %4, align 8
  %52 = getelementptr inbounds %struct.saa717x_state, %struct.saa717x_state* %51, i32 0, i32 3
  store i64 %50, i64* %52, align 8
  %53 = load %struct.saa717x_state*, %struct.saa717x_state** %4, align 8
  %54 = getelementptr inbounds %struct.saa717x_state, %struct.saa717x_state* %53, i32 0, i32 6
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %2
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = shl i32 %59, 8
  %61 = or i32 %58, %60
  store i32 %61, i32* %6, align 4
  br label %73

62:                                               ; preds = %2
  %63 = load %struct.saa717x_state*, %struct.saa717x_state** %4, align 8
  %64 = getelementptr inbounds %struct.saa717x_state, %struct.saa717x_state* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = load %struct.saa717x_state*, %struct.saa717x_state** %4, align 8
  %68 = getelementptr inbounds %struct.saa717x_state, %struct.saa717x_state* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = shl i32 %70, 8
  %72 = or i32 %66, %71
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %62, %57
  %74 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @saa717x_write(%struct.v4l2_subdev* %74, i32 1152, i32 %75)
  %77 = load %struct.saa717x_state*, %struct.saa717x_state** %4, align 8
  %78 = getelementptr inbounds %struct.saa717x_state, %struct.saa717x_state* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = and i32 %79, 31
  store i32 %80, i32* %6, align 4
  %81 = load %struct.saa717x_state*, %struct.saa717x_state** %4, align 8
  %82 = getelementptr inbounds %struct.saa717x_state, %struct.saa717x_state* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, 31
  %85 = shl i32 %84, 5
  %86 = load i32, i32* %6, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %6, align 4
  %88 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @saa717x_write(%struct.v4l2_subdev* %88, i32 1160, i32 %89)
  ret i32 0
}

declare dso_local i32 @saa717x_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32) #1

declare dso_local i32 @min(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
