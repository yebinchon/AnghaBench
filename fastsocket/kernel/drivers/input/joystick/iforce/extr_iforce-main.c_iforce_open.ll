; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/iforce/extr_iforce-main.c_iforce_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/iforce/extr_iforce-main.c_iforce_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.iforce = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@EV_FF = common dso_local global i32 0, align 4
@FF_CMD_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\04\00", align 1
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*)* @iforce_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iforce_open(%struct.input_dev* %0) #0 {
  %2 = alloca %struct.input_dev*, align 8
  %3 = alloca %struct.iforce*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %2, align 8
  %4 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %5 = call %struct.iforce* @input_get_drvdata(%struct.input_dev* %4)
  store %struct.iforce* %5, %struct.iforce** %3, align 8
  %6 = load %struct.iforce*, %struct.iforce** %3, align 8
  %7 = getelementptr inbounds %struct.iforce, %struct.iforce* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %9 [
  ]

9:                                                ; preds = %1
  %10 = load i32, i32* @EV_FF, align 4
  %11 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %12 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @test_bit(i32 %10, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %9
  %17 = load %struct.iforce*, %struct.iforce** %3, align 8
  %18 = load i32, i32* @FF_CMD_ENABLE, align 4
  %19 = call i32 @iforce_send_packet(%struct.iforce* %17, i32 %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %16, %9
  ret i32 0
}

declare dso_local %struct.iforce* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @iforce_send_packet(%struct.iforce*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
