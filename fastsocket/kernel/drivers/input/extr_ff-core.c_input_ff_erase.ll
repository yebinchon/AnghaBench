; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_ff-core.c_input_ff_erase.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_ff-core.c_input_ff_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32, %struct.ff_device* }
%struct.ff_device = type { i32 }
%struct.file = type { i32 }

@EV_FF = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @input_ff_erase(%struct.input_dev* %0, i32 %1, %struct.file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.ff_device*, align 8
  %9 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.file* %2, %struct.file** %7, align 8
  %10 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %11 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %10, i32 0, i32 1
  %12 = load %struct.ff_device*, %struct.ff_device** %11, align 8
  store %struct.ff_device* %12, %struct.ff_device** %8, align 8
  %13 = load i32, i32* @EV_FF, align 4
  %14 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %15 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @test_bit(i32 %13, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOSYS, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %34

22:                                               ; preds = %3
  %23 = load %struct.ff_device*, %struct.ff_device** %8, align 8
  %24 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.file*, %struct.file** %7, align 8
  %29 = call i32 @erase_effect(%struct.input_dev* %26, i32 %27, %struct.file* %28)
  store i32 %29, i32* %9, align 4
  %30 = load %struct.ff_device*, %struct.ff_device** %8, align 8
  %31 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %30, i32 0, i32 0
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %22, %19
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @erase_effect(%struct.input_dev*, i32, %struct.file*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
