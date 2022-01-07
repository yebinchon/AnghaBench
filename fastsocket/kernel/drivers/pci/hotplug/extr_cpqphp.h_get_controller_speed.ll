; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_cpqphp.h_get_controller_speed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_cpqphp.h_get_controller_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.controller = type { i64, i64 }

@NEXT_CURR_FREQ = common dso_local global i64 0, align 8
@PCI_SPEED_133MHz_PCIX = common dso_local global i32 0, align 4
@PCI_SPEED_100MHz_PCIX = common dso_local global i32 0, align 4
@PCI_SPEED_66MHz_PCIX = common dso_local global i32 0, align 4
@PCI_SPEED_66MHz = common dso_local global i32 0, align 4
@PCI_SPEED_33MHz = common dso_local global i32 0, align 4
@MISC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.controller*)* @get_controller_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_controller_speed(%struct.controller* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.controller*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.controller* %0, %struct.controller** %3, align 8
  %6 = load %struct.controller*, %struct.controller** %3, align 8
  %7 = getelementptr inbounds %struct.controller, %struct.controller* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %42

10:                                               ; preds = %1
  %11 = load %struct.controller*, %struct.controller** %3, align 8
  %12 = getelementptr inbounds %struct.controller, %struct.controller* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @NEXT_CURR_FREQ, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readb(i64 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %17, 176
  %19 = icmp eq i32 %18, 176
  br i1 %19, label %20, label %22

20:                                               ; preds = %10
  %21 = load i32, i32* @PCI_SPEED_133MHz_PCIX, align 4
  store i32 %21, i32* %2, align 4
  br label %58

22:                                               ; preds = %10
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, 160
  %25 = icmp eq i32 %24, 160
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @PCI_SPEED_100MHz_PCIX, align 4
  store i32 %27, i32* %2, align 4
  br label %58

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4
  %30 = and i32 %29, 144
  %31 = icmp eq i32 %30, 144
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @PCI_SPEED_66MHz_PCIX, align 4
  store i32 %33, i32* %2, align 4
  br label %58

34:                                               ; preds = %28
  %35 = load i32, i32* %4, align 4
  %36 = and i32 %35, 16
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @PCI_SPEED_66MHz, align 4
  store i32 %39, i32* %2, align 4
  br label %58

40:                                               ; preds = %34
  %41 = load i32, i32* @PCI_SPEED_33MHz, align 4
  store i32 %41, i32* %2, align 4
  br label %58

42:                                               ; preds = %1
  %43 = load %struct.controller*, %struct.controller** %3, align 8
  %44 = getelementptr inbounds %struct.controller, %struct.controller* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @MISC, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @readw(i64 %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = and i32 %49, 2048
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %42
  %53 = load i32, i32* @PCI_SPEED_66MHz, align 4
  br label %56

54:                                               ; preds = %42
  %55 = load i32, i32* @PCI_SPEED_33MHz, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %56, %40, %38, %32, %26, %20
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @readw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
