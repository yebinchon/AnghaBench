; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_rc-main.c_rc_unregister_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_rc-main.c_rc_unregister_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { i64, i32, i32, i32*, i32 }

@RC_DRIVER_IR_RAW = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Freed keycode table\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rc_unregister_device(%struct.rc_dev* %0) #0 {
  %2 = alloca %struct.rc_dev*, align 8
  store %struct.rc_dev* %0, %struct.rc_dev** %2, align 8
  %3 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %4 = icmp ne %struct.rc_dev* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %32

6:                                                ; preds = %1
  %7 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %8 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %7, i32 0, i32 4
  %9 = call i32 @del_timer_sync(i32* %8)
  %10 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %11 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @RC_DRIVER_IR_RAW, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %6
  %16 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %17 = call i32 @ir_raw_event_unregister(%struct.rc_dev* %16)
  br label %18

18:                                               ; preds = %15, %6
  %19 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %20 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @input_unregister_device(i32* %21)
  %23 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %24 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %23, i32 0, i32 3
  store i32* null, i32** %24, align 8
  %25 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %26 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %25, i32 0, i32 2
  %27 = call i32 @ir_free_table(i32* %26)
  %28 = call i32 @IR_dprintk(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %30 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %29, i32 0, i32 1
  %31 = call i32 @device_unregister(i32* %30)
  br label %32

32:                                               ; preds = %18, %5
  ret void
}

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @ir_raw_event_unregister(%struct.rc_dev*) #1

declare dso_local i32 @input_unregister_device(i32*) #1

declare dso_local i32 @ir_free_table(i32*) #1

declare dso_local i32 @IR_dprintk(i32, i8*) #1

declare dso_local i32 @device_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
