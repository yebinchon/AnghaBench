; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_rc-main.c_rc_allocate_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_rc-main.c_rc_allocate_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { %struct.TYPE_7__, i32, i32, %struct.TYPE_5__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32*, i32* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ir_getkeycode = common dso_local global i32 0, align 4
@ir_setkeycode = common dso_local global i32 0, align 4
@ir_timer_keyup = common dso_local global i32 0, align 4
@rc_dev_type = common dso_local global i32 0, align 4
@ir_input_class = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rc_dev* @rc_allocate_device() #0 {
  %1 = alloca %struct.rc_dev*, align 8
  %2 = alloca %struct.rc_dev*, align 8
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.rc_dev* @kzalloc(i32 40, i32 %3)
  store %struct.rc_dev* %4, %struct.rc_dev** %2, align 8
  %5 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %6 = icmp ne %struct.rc_dev* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.rc_dev* null, %struct.rc_dev** %1, align 8
  br label %60

8:                                                ; preds = %0
  %9 = call %struct.TYPE_6__* (...) @input_allocate_device()
  %10 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %11 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %10, i32 0, i32 4
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %11, align 8
  %12 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %13 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %12, i32 0, i32 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = icmp ne %struct.TYPE_6__* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %8
  %17 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %18 = call i32 @kfree(%struct.rc_dev* %17)
  store %struct.rc_dev* null, %struct.rc_dev** %1, align 8
  br label %60

19:                                               ; preds = %8
  %20 = load i32, i32* @ir_getkeycode, align 4
  %21 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %22 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %21, i32 0, i32 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  store i32 %20, i32* %24, align 4
  %25 = load i32, i32* @ir_setkeycode, align 4
  %26 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %27 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %26, i32 0, i32 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i32 %25, i32* %29, align 4
  %30 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %31 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %30, i32 0, i32 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %34 = call i32 @input_set_drvdata(%struct.TYPE_6__* %32, %struct.rc_dev* %33)
  %35 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %36 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = call i32 @spin_lock_init(i32* %37)
  %39 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %40 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %39, i32 0, i32 2
  %41 = call i32 @spin_lock_init(i32* %40)
  %42 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %43 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %42, i32 0, i32 1
  %44 = load i32, i32* @ir_timer_keyup, align 4
  %45 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %46 = ptrtoint %struct.rc_dev* %45 to i64
  %47 = call i32 @setup_timer(i32* %43, i32 %44, i64 %46)
  %48 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %49 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  store i32* @rc_dev_type, i32** %50, align 8
  %51 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %52 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  store i32* @ir_input_class, i32** %53, align 8
  %54 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %55 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %54, i32 0, i32 0
  %56 = call i32 @device_initialize(%struct.TYPE_7__* %55)
  %57 = load i32, i32* @THIS_MODULE, align 4
  %58 = call i32 @__module_get(i32 %57)
  %59 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  store %struct.rc_dev* %59, %struct.rc_dev** %1, align 8
  br label %60

60:                                               ; preds = %19, %16, %7
  %61 = load %struct.rc_dev*, %struct.rc_dev** %1, align 8
  ret %struct.rc_dev* %61
}

declare dso_local %struct.rc_dev* @kzalloc(i32, i32) #1

declare dso_local %struct.TYPE_6__* @input_allocate_device(...) #1

declare dso_local i32 @kfree(%struct.rc_dev*) #1

declare dso_local i32 @input_set_drvdata(%struct.TYPE_6__*, %struct.rc_dev*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @setup_timer(i32*, i32, i64) #1

declare dso_local i32 @device_initialize(%struct.TYPE_7__*) #1

declare dso_local i32 @__module_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
