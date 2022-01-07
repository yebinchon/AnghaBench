; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_wm8739.c_wm8739_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_wm8739.c_wm8739_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32 }
%struct.v4l2_subdev = type { i32 }
%struct.wm8739_state = type { %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@R0 = common dso_local global i32 0, align 4
@R1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*)* @wm8739_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8739_s_ctrl(%struct.v4l2_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_ctrl*, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.wm8739_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %3, align 8
  %11 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %12 = call %struct.v4l2_subdev* @to_sd(%struct.v4l2_ctrl* %11)
  store %struct.v4l2_subdev* %12, %struct.v4l2_subdev** %4, align 8
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %14 = call %struct.wm8739_state* @to_state(%struct.v4l2_subdev* %13)
  store %struct.wm8739_state* %14, %struct.wm8739_state** %5, align 8
  %15 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %16 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %19 [
    i32 128, label %18
  ]

18:                                               ; preds = %1
  br label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %82

22:                                               ; preds = %18
  %23 = load %struct.wm8739_state*, %struct.wm8739_state** %5, align 8
  %24 = getelementptr inbounds %struct.wm8739_state, %struct.wm8739_state* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 65536, %27
  %29 = call i32 @min(i64 %28, i32 32768)
  %30 = load %struct.wm8739_state*, %struct.wm8739_state** %5, align 8
  %31 = getelementptr inbounds %struct.wm8739_state, %struct.wm8739_state* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %29, %34
  %36 = sdiv i32 %35, 32768
  store i32 %36, i32* %6, align 4
  %37 = load %struct.wm8739_state*, %struct.wm8739_state** %5, align 8
  %38 = getelementptr inbounds %struct.wm8739_state, %struct.wm8739_state* %37, i32 0, i32 2
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @min(i64 %41, i32 32768)
  %43 = load %struct.wm8739_state*, %struct.wm8739_state** %5, align 8
  %44 = getelementptr inbounds %struct.wm8739_state, %struct.wm8739_state* %43, i32 0, i32 1
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %42, %47
  %49 = sdiv i32 %48, 32768
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %6, align 4
  %51 = zext i32 %50 to i64
  %52 = mul nsw i64 %51, 31
  %53 = sdiv i64 %52, 65535
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %7, align 4
  %56 = zext i32 %55 to i64
  %57 = mul nsw i64 %56, 31
  %58 = sdiv i64 %57, 65535
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %9, align 4
  %60 = load %struct.wm8739_state*, %struct.wm8739_state** %5, align 8
  %61 = getelementptr inbounds %struct.wm8739_state, %struct.wm8739_state* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 128, i32 0
  store i32 %67, i32* %10, align 4
  %68 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %69 = load i32, i32* @R0, align 4
  %70 = load i32, i32* %8, align 4
  %71 = and i32 %70, 31
  %72 = load i32, i32* %10, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @wm8739_write(%struct.v4l2_subdev* %68, i32 %69, i32 %73)
  %75 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %76 = load i32, i32* @R1, align 4
  %77 = load i32, i32* %9, align 4
  %78 = and i32 %77, 31
  %79 = load i32, i32* %10, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @wm8739_write(%struct.v4l2_subdev* %75, i32 %76, i32 %80)
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %22, %19
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local %struct.v4l2_subdev* @to_sd(%struct.v4l2_ctrl*) #1

declare dso_local %struct.wm8739_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @min(i64, i32) #1

declare dso_local i32 @wm8739_write(%struct.v4l2_subdev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
