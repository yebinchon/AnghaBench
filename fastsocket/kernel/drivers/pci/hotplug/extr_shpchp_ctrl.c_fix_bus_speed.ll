; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_shpchp_ctrl.c_fix_bus_speed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_shpchp_ctrl.c_fix_bus_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.controller = type { i32 }
%struct.slot = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"Speed of bus %x and adapter %x mismatch\0A\00", align 1
@WRONG_BUS_FREQUENCY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.controller*, %struct.slot*, i64, i32, i32, i32)* @fix_bus_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fix_bus_speed(%struct.controller* %0, %struct.slot* %1, i64 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.controller*, align 8
  %9 = alloca %struct.slot*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.controller* %0, %struct.controller** %8, align 8
  store %struct.slot* %1, %struct.slot** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %15 = load i64, i64* %10, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %6
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load %struct.controller*, %struct.controller** %8, align 8
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @ctrl_err(%struct.controller* %22, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  %26 = load i32, i32* @WRONG_BUS_FREQUENCY, align 4
  store i32 %26, i32* %14, align 4
  br label %27

27:                                               ; preds = %21, %17
  %28 = load i32, i32* %14, align 4
  store i32 %28, i32* %7, align 4
  br label %55

29:                                               ; preds = %6
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %29
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load %struct.controller*, %struct.controller** %8, align 8
  %39 = load %struct.slot*, %struct.slot** %9, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @change_bus_speed(%struct.controller* %38, %struct.slot* %39, i32 %40)
  store i32 %41, i32* %14, align 4
  br label %42

42:                                               ; preds = %37, %33
  br label %53

43:                                               ; preds = %29
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load %struct.controller*, %struct.controller** %8, align 8
  %49 = load %struct.slot*, %struct.slot** %9, align 8
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @change_bus_speed(%struct.controller* %48, %struct.slot* %49, i32 %50)
  store i32 %51, i32* %14, align 4
  br label %52

52:                                               ; preds = %47, %43
  br label %53

53:                                               ; preds = %52, %42
  %54 = load i32, i32* %14, align 4
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %53, %27
  %56 = load i32, i32* %7, align 4
  ret i32 %56
}

declare dso_local i32 @ctrl_err(%struct.controller*, i8*, i32, i32) #1

declare dso_local i32 @change_bus_speed(%struct.controller*, %struct.slot*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
