; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_uinput.c_uinput_dev_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_uinput.c_uinput_dev_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.uinput_device = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@UINPUT_BUFFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, i32, i32, i32)* @uinput_dev_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uinput_dev_event(%struct.input_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.uinput_device*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %11 = call %struct.uinput_device* @input_get_drvdata(%struct.input_dev* %10)
  store %struct.uinput_device* %11, %struct.uinput_device** %9, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.uinput_device*, %struct.uinput_device** %9, align 8
  %14 = getelementptr inbounds %struct.uinput_device, %struct.uinput_device* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load %struct.uinput_device*, %struct.uinput_device** %9, align 8
  %17 = getelementptr inbounds %struct.uinput_device, %struct.uinput_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 %12, i32* %20, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.uinput_device*, %struct.uinput_device** %9, align 8
  %23 = getelementptr inbounds %struct.uinput_device, %struct.uinput_device* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load %struct.uinput_device*, %struct.uinput_device** %9, align 8
  %26 = getelementptr inbounds %struct.uinput_device, %struct.uinput_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  store i32 %21, i32* %29, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.uinput_device*, %struct.uinput_device** %9, align 8
  %32 = getelementptr inbounds %struct.uinput_device, %struct.uinput_device* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load %struct.uinput_device*, %struct.uinput_device** %9, align 8
  %35 = getelementptr inbounds %struct.uinput_device, %struct.uinput_device* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  store i32 %30, i32* %38, align 4
  %39 = load %struct.uinput_device*, %struct.uinput_device** %9, align 8
  %40 = getelementptr inbounds %struct.uinput_device, %struct.uinput_device* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load %struct.uinput_device*, %struct.uinput_device** %9, align 8
  %43 = getelementptr inbounds %struct.uinput_device, %struct.uinput_device* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 3
  %47 = call i32 @do_gettimeofday(i32* %46)
  %48 = load %struct.uinput_device*, %struct.uinput_device** %9, align 8
  %49 = getelementptr inbounds %struct.uinput_device, %struct.uinput_device* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add i64 %50, 1
  %52 = load i32, i32* @UINPUT_BUFFER_SIZE, align 4
  %53 = sext i32 %52 to i64
  %54 = urem i64 %51, %53
  %55 = load %struct.uinput_device*, %struct.uinput_device** %9, align 8
  %56 = getelementptr inbounds %struct.uinput_device, %struct.uinput_device* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load %struct.uinput_device*, %struct.uinput_device** %9, align 8
  %58 = getelementptr inbounds %struct.uinput_device, %struct.uinput_device* %57, i32 0, i32 1
  %59 = call i32 @wake_up_interruptible(i32* %58)
  ret i32 0
}

declare dso_local %struct.uinput_device* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @do_gettimeofday(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
