; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpfe_capture.c_vdint1_isr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpfe_capture.c_vdint1_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpfe_device = type { i64, i64, i32, i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"\0AInside vdint1_isr...\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @vdint1_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdint1_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.vpfe_device*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.vpfe_device*
  store %struct.vpfe_device* %8, %struct.vpfe_device** %6, align 8
  %9 = load i32, i32* @debug, align 4
  %10 = load %struct.vpfe_device*, %struct.vpfe_device** %6, align 8
  %11 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %10, i32 0, i32 6
  %12 = call i32 @v4l2_dbg(i32 1, i32 %9, i32* %11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.vpfe_device*, %struct.vpfe_device** %6, align 8
  %14 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %18, i32* %3, align 4
  br label %52

19:                                               ; preds = %2
  %20 = load %struct.vpfe_device*, %struct.vpfe_device** %6, align 8
  %21 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %20, i32 0, i32 2
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load %struct.vpfe_device*, %struct.vpfe_device** %6, align 8
  %24 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @V4L2_FIELD_NONE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %19
  %32 = load %struct.vpfe_device*, %struct.vpfe_device** %6, align 8
  %33 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %32, i32 0, i32 3
  %34 = call i32 @list_empty(i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %47, label %36

36:                                               ; preds = %31
  %37 = load %struct.vpfe_device*, %struct.vpfe_device** %6, align 8
  %38 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.vpfe_device*, %struct.vpfe_device** %6, align 8
  %41 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %39, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load %struct.vpfe_device*, %struct.vpfe_device** %6, align 8
  %46 = call i32 @vpfe_schedule_next_buffer(%struct.vpfe_device* %45)
  br label %47

47:                                               ; preds = %44, %36, %31, %19
  %48 = load %struct.vpfe_device*, %struct.vpfe_device** %6, align 8
  %49 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %48, i32 0, i32 2
  %50 = call i32 @spin_unlock(i32* %49)
  %51 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %47, %17
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @vpfe_schedule_next_buffer(%struct.vpfe_device*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
