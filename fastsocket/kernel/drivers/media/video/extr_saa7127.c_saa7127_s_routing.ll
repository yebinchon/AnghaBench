; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa7127.c_saa7127_s_routing.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa7127.c_saa7127_s_routing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.saa7127_state = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i64, i64, i64)* @saa7127_s_routing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7127_s_routing(%struct.v4l2_subdev* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.saa7127_state*, align 8
  %10 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %12 = call %struct.saa7127_state* @to_state(%struct.v4l2_subdev* %11)
  store %struct.saa7127_state* %12, %struct.saa7127_state** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.saa7127_state*, %struct.saa7127_state** %9, align 8
  %14 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @saa7127_set_input_type(%struct.v4l2_subdev* %19, i64 %20)
  store i32 %21, i32* %10, align 4
  br label %22

22:                                               ; preds = %18, %4
  %23 = load i32, i32* %10, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %22
  %26 = load %struct.saa7127_state*, %struct.saa7127_state** %9, align 8
  %27 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @saa7127_set_output_type(%struct.v4l2_subdev* %32, i64 %33)
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %31, %25, %22
  %36 = load i32, i32* %10, align 4
  ret i32 %36
}

declare dso_local %struct.saa7127_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @saa7127_set_input_type(%struct.v4l2_subdev*, i64) #1

declare dso_local i32 @saa7127_set_output_type(%struct.v4l2_subdev*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
