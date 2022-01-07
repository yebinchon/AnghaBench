; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_uinput.c_uinput_dev_erase_effect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_uinput.c_uinput_dev_erase_effect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.uinput_device = type { i32 }
%struct.uinput_request = type { i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@EV_FF = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@UI_FF_ERASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, i32)* @uinput_dev_erase_effect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uinput_dev_erase_effect(%struct.input_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.uinput_device*, align 8
  %7 = alloca %struct.uinput_request, align 4
  %8 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %10 = call %struct.uinput_device* @input_get_drvdata(%struct.input_dev* %9)
  store %struct.uinput_device* %10, %struct.uinput_device** %6, align 8
  %11 = load i32, i32* @EV_FF, align 4
  %12 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %13 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @test_bit(i32 %11, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOSYS, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %40

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.uinput_request, %struct.uinput_request* %7, i32 0, i32 0
  store i32 -1, i32* %21, align 4
  %22 = getelementptr inbounds %struct.uinput_request, %struct.uinput_request* %7, i32 0, i32 2
  %23 = call i32 @init_completion(i32* %22)
  %24 = load i32, i32* @UI_FF_ERASE, align 4
  %25 = getelementptr inbounds %struct.uinput_request, %struct.uinput_request* %7, i32 0, i32 4
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %5, align 4
  %27 = getelementptr inbounds %struct.uinput_request, %struct.uinput_request* %7, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.uinput_device*, %struct.uinput_device** %6, align 8
  %30 = call i32 @uinput_request_submit(%struct.uinput_device* %29, %struct.uinput_request* %7)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %20
  %34 = getelementptr inbounds %struct.uinput_request, %struct.uinput_request* %7, i32 0, i32 2
  %35 = call i32 @wait_for_completion(i32* %34)
  %36 = getelementptr inbounds %struct.uinput_request, %struct.uinput_request* %7, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %33, %20
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %38, %17
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.uinput_device* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @uinput_request_submit(%struct.uinput_device*, %struct.uinput_request*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
