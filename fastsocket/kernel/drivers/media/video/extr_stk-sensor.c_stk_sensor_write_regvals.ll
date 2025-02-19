; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stk-sensor.c_stk_sensor_write_regvals.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stk-sensor.c_stk_sensor_write_regvals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stk_camera = type { i32 }
%struct.regval = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stk_camera*, %struct.regval*)* @stk_sensor_write_regvals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stk_sensor_write_regvals(%struct.stk_camera* %0, %struct.regval* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stk_camera*, align 8
  %5 = alloca %struct.regval*, align 8
  %6 = alloca i32, align 4
  store %struct.stk_camera* %0, %struct.stk_camera** %4, align 8
  store %struct.regval* %1, %struct.regval** %5, align 8
  %7 = load %struct.regval*, %struct.regval** %5, align 8
  %8 = icmp eq %struct.regval* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %40

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %36, %10
  %12 = load %struct.regval*, %struct.regval** %5, align 8
  %13 = getelementptr inbounds %struct.regval, %struct.regval* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 255
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = load %struct.regval*, %struct.regval** %5, align 8
  %18 = getelementptr inbounds %struct.regval, %struct.regval* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 255
  br label %21

21:                                               ; preds = %16, %11
  %22 = phi i1 [ true, %11 ], [ %20, %16 ]
  br i1 %22, label %23, label %39

23:                                               ; preds = %21
  %24 = load %struct.stk_camera*, %struct.stk_camera** %4, align 8
  %25 = load %struct.regval*, %struct.regval** %5, align 8
  %26 = getelementptr inbounds %struct.regval, %struct.regval* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.regval*, %struct.regval** %5, align 8
  %29 = getelementptr inbounds %struct.regval, %struct.regval* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @stk_sensor_outb(%struct.stk_camera* %24, i32 %27, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %40

36:                                               ; preds = %23
  %37 = load %struct.regval*, %struct.regval** %5, align 8
  %38 = getelementptr inbounds %struct.regval, %struct.regval* %37, i32 1
  store %struct.regval* %38, %struct.regval** %5, align 8
  br label %11

39:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %34, %9
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @stk_sensor_outb(%struct.stk_camera*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
