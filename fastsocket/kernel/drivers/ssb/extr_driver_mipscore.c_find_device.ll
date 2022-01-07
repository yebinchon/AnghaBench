; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ssb/extr_driver_mipscore.c_find_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ssb/extr_driver_mipscore.c_find_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_device = type { %struct.ssb_bus* }
%struct.ssb_bus = type { i32, %struct.ssb_device* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ssb_device* (%struct.ssb_device*, i32)* @find_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ssb_device* @find_device(%struct.ssb_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ssb_device*, align 8
  %4 = alloca %struct.ssb_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ssb_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ssb_device*, align 8
  store %struct.ssb_device* %0, %struct.ssb_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %10 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %9, i32 0, i32 0
  %11 = load %struct.ssb_bus*, %struct.ssb_bus** %10, align 8
  store %struct.ssb_bus* %11, %struct.ssb_bus** %6, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %32, %2
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.ssb_bus*, %struct.ssb_bus** %6, align 8
  %15 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %12
  %19 = load %struct.ssb_bus*, %struct.ssb_bus** %6, align 8
  %20 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %19, i32 0, i32 1
  %21 = load %struct.ssb_device*, %struct.ssb_device** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %21, i64 %23
  store %struct.ssb_device* %24, %struct.ssb_device** %8, align 8
  %25 = load %struct.ssb_device*, %struct.ssb_device** %8, align 8
  %26 = call i32 @ssb_irqflag(%struct.ssb_device* %25)
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %18
  %30 = load %struct.ssb_device*, %struct.ssb_device** %8, align 8
  store %struct.ssb_device* %30, %struct.ssb_device** %3, align 8
  br label %36

31:                                               ; preds = %18
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  br label %12

35:                                               ; preds = %12
  store %struct.ssb_device* null, %struct.ssb_device** %3, align 8
  br label %36

36:                                               ; preds = %35, %29
  %37 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  ret %struct.ssb_device* %37
}

declare dso_local i32 @ssb_irqflag(%struct.ssb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
