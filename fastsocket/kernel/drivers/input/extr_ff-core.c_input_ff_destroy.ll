; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_ff-core.c_input_ff_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_ff-core.c_input_ff_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { %struct.ff_device*, i32 }
%struct.ff_device = type { %struct.ff_device*, i32 (%struct.ff_device*)* }

@EV_FF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @input_ff_destroy(%struct.input_dev* %0) #0 {
  %2 = alloca %struct.input_dev*, align 8
  %3 = alloca %struct.ff_device*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %2, align 8
  %4 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %5 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %4, i32 0, i32 0
  %6 = load %struct.ff_device*, %struct.ff_device** %5, align 8
  store %struct.ff_device* %6, %struct.ff_device** %3, align 8
  %7 = load i32, i32* @EV_FF, align 4
  %8 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %9 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @__clear_bit(i32 %7, i32 %10)
  %12 = load %struct.ff_device*, %struct.ff_device** %3, align 8
  %13 = icmp ne %struct.ff_device* %12, null
  br i1 %13, label %14, label %34

14:                                               ; preds = %1
  %15 = load %struct.ff_device*, %struct.ff_device** %3, align 8
  %16 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %15, i32 0, i32 1
  %17 = load i32 (%struct.ff_device*)*, i32 (%struct.ff_device*)** %16, align 8
  %18 = icmp ne i32 (%struct.ff_device*)* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load %struct.ff_device*, %struct.ff_device** %3, align 8
  %21 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %20, i32 0, i32 1
  %22 = load i32 (%struct.ff_device*)*, i32 (%struct.ff_device*)** %21, align 8
  %23 = load %struct.ff_device*, %struct.ff_device** %3, align 8
  %24 = call i32 %22(%struct.ff_device* %23)
  br label %25

25:                                               ; preds = %19, %14
  %26 = load %struct.ff_device*, %struct.ff_device** %3, align 8
  %27 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %26, i32 0, i32 0
  %28 = load %struct.ff_device*, %struct.ff_device** %27, align 8
  %29 = call i32 @kfree(%struct.ff_device* %28)
  %30 = load %struct.ff_device*, %struct.ff_device** %3, align 8
  %31 = call i32 @kfree(%struct.ff_device* %30)
  %32 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %33 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %32, i32 0, i32 0
  store %struct.ff_device* null, %struct.ff_device** %33, align 8
  br label %34

34:                                               ; preds = %25, %1
  ret void
}

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i32 @kfree(%struct.ff_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
