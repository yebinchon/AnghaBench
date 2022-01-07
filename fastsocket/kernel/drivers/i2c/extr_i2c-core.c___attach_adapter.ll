; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/extr_i2c-core.c___attach_adapter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/extr_i2c-core.c___attach_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_driver = type { i32 (%struct.i2c_adapter.0*)* }
%struct.i2c_adapter.0 = type opaque

@i2c_adapter_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @__attach_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__attach_adapter(%struct.device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %struct.i2c_driver*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.i2c_driver*
  store %struct.i2c_driver* %9, %struct.i2c_driver** %7, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, @i2c_adapter_type
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %33

15:                                               ; preds = %2
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = call %struct.i2c_adapter* @to_i2c_adapter(%struct.device* %16)
  store %struct.i2c_adapter* %17, %struct.i2c_adapter** %6, align 8
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %19 = load %struct.i2c_driver*, %struct.i2c_driver** %7, align 8
  %20 = call i32 @i2c_detect(%struct.i2c_adapter* %18, %struct.i2c_driver* %19)
  %21 = load %struct.i2c_driver*, %struct.i2c_driver** %7, align 8
  %22 = getelementptr inbounds %struct.i2c_driver, %struct.i2c_driver* %21, i32 0, i32 0
  %23 = load i32 (%struct.i2c_adapter.0*)*, i32 (%struct.i2c_adapter.0*)** %22, align 8
  %24 = icmp ne i32 (%struct.i2c_adapter.0*)* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %15
  %26 = load %struct.i2c_driver*, %struct.i2c_driver** %7, align 8
  %27 = getelementptr inbounds %struct.i2c_driver, %struct.i2c_driver* %26, i32 0, i32 0
  %28 = load i32 (%struct.i2c_adapter.0*)*, i32 (%struct.i2c_adapter.0*)** %27, align 8
  %29 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %30 = bitcast %struct.i2c_adapter* %29 to %struct.i2c_adapter.0*
  %31 = call i32 %28(%struct.i2c_adapter.0* %30)
  br label %32

32:                                               ; preds = %25, %15
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %14
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.i2c_adapter* @to_i2c_adapter(%struct.device*) #1

declare dso_local i32 @i2c_detect(%struct.i2c_adapter*, %struct.i2c_driver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
