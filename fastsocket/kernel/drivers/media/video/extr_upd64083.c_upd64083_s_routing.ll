; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_upd64083.c_upd64083_s_routing.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_upd64083.c_upd64083_s_routing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.upd64083_state = type { i32, i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@UPD64083_EXT_Y_ADC = common dso_local global i32 0, align 4
@R00 = common dso_local global i64 0, align 8
@R02 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32, i32, i32)* @upd64083_s_routing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @upd64083_s_routing(%struct.v4l2_subdev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.upd64083_state*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %14 = call %struct.upd64083_state* @to_state(%struct.v4l2_subdev* %13)
  store %struct.upd64083_state* %14, %struct.upd64083_state** %10, align 8
  %15 = load i32, i32* %7, align 4
  %16 = icmp sgt i32 %15, 7
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* %7, align 4
  %19 = and i32 %18, 6
  %20 = icmp eq i32 %19, 6
  br i1 %20, label %21, label %24

21:                                               ; preds = %17, %4
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %66

24:                                               ; preds = %17
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, 3
  %27 = shl i32 %26, 6
  %28 = load %struct.upd64083_state*, %struct.upd64083_state** %10, align 8
  %29 = getelementptr inbounds %struct.upd64083_state, %struct.upd64083_state* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @UPD64083_EXT_Y_ADC, align 4
  %32 = and i32 %30, %31
  %33 = shl i32 %32, 3
  %34 = load %struct.upd64083_state*, %struct.upd64083_state** %10, align 8
  %35 = getelementptr inbounds %struct.upd64083_state, %struct.upd64083_state* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.upd64083_state*, %struct.upd64083_state** %10, align 8
  %37 = getelementptr inbounds %struct.upd64083_state, %struct.upd64083_state* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @R00, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, -193
  %43 = load %struct.upd64083_state*, %struct.upd64083_state** %10, align 8
  %44 = getelementptr inbounds %struct.upd64083_state, %struct.upd64083_state* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %42, %45
  store i32 %46, i32* %11, align 4
  %47 = load %struct.upd64083_state*, %struct.upd64083_state** %10, align 8
  %48 = getelementptr inbounds %struct.upd64083_state, %struct.upd64083_state* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* @R02, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, -33
  %54 = load %struct.upd64083_state*, %struct.upd64083_state** %10, align 8
  %55 = getelementptr inbounds %struct.upd64083_state, %struct.upd64083_state* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %53, %56
  store i32 %57, i32* %12, align 4
  %58 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %59 = load i64, i64* @R00, align 8
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @upd64083_write(%struct.v4l2_subdev* %58, i64 %59, i32 %60)
  %62 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %63 = load i64, i64* @R02, align 8
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @upd64083_write(%struct.v4l2_subdev* %62, i64 %63, i32 %64)
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %24, %21
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local %struct.upd64083_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @upd64083_write(%struct.v4l2_subdev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
