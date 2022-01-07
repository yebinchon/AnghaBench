; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stk-sensor.c_stk_sensor_sleep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stk-sensor.c_stk_sensor_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stk_camera = type { i32 }

@REG_COM2 = common dso_local global i32 0, align 4
@COM2_SSLEEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stk_sensor_sleep(%struct.stk_camera* %0) #0 {
  %2 = alloca %struct.stk_camera*, align 8
  %3 = alloca i32, align 4
  store %struct.stk_camera* %0, %struct.stk_camera** %2, align 8
  %4 = load %struct.stk_camera*, %struct.stk_camera** %2, align 8
  %5 = load i32, i32* @REG_COM2, align 4
  %6 = call i64 @stk_sensor_inb(%struct.stk_camera* %4, i32 %5, i32* %3)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = load %struct.stk_camera*, %struct.stk_camera** %2, align 8
  %10 = load i32, i32* @REG_COM2, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @COM2_SSLEEP, align 4
  %13 = or i32 %11, %12
  %14 = call i64 @stk_sensor_outb(%struct.stk_camera* %9, i32 %10, i32 %13)
  %15 = icmp ne i64 %14, 0
  br label %16

16:                                               ; preds = %8, %1
  %17 = phi i1 [ true, %1 ], [ %15, %8 ]
  %18 = zext i1 %17 to i32
  ret i32 %18
}

declare dso_local i64 @stk_sensor_inb(%struct.stk_camera*, i32, i32*) #1

declare dso_local i64 @stk_sensor_outb(%struct.stk_camera*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
