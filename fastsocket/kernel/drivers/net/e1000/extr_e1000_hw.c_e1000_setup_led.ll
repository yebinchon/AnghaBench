; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_setup_led.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_setup_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32, i32, i32, i32, i32 }

@E1000_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"e1000_setup_led\00", align 1
@IGP01E1000_GMII_FIFO = common dso_local global i32 0, align 4
@IGP01E1000_GMII_SPD = common dso_local global i32 0, align 4
@e1000_media_type_fiber = common dso_local global i32 0, align 4
@LEDCTL = common dso_local global i32 0, align 4
@E1000_LEDCTL_LED0_IVRT = common dso_local global i32 0, align 4
@E1000_LEDCTL_LED0_BLINK = common dso_local global i32 0, align 4
@E1000_LEDCTL_LED0_MODE_MASK = common dso_local global i32 0, align 4
@E1000_LEDCTL_MODE_LED_OFF = common dso_local global i32 0, align 4
@E1000_LEDCTL_LED0_MODE_SHIFT = common dso_local global i32 0, align 4
@e1000_media_type_copper = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000_setup_led(%struct.e1000_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %6 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %6, i32* %5, align 4
  %7 = call i32 @e_dbg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %37 [
    i32 133, label %11
    i32 132, label %11
    i32 131, label %11
    i32 130, label %11
    i32 135, label %12
    i32 129, label %12
    i32 134, label %12
    i32 128, label %12
  ]

11:                                               ; preds = %1, %1, %1, %1
  br label %79

12:                                               ; preds = %1, %1, %1, %1
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %14 = load i32, i32* @IGP01E1000_GMII_FIFO, align 4
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %16 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %15, i32 0, i32 1
  %17 = call i32 @e1000_read_phy_reg(%struct.e1000_hw* %13, i32 %14, i32* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %81

22:                                               ; preds = %12
  %23 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %24 = load i32, i32* @IGP01E1000_GMII_FIFO, align 4
  %25 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %26 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @IGP01E1000_GMII_SPD, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  %31 = call i32 @e1000_write_phy_reg(%struct.e1000_hw* %23, i32 %24, i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %22
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %81

36:                                               ; preds = %22
  br label %37

37:                                               ; preds = %1, %36
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %39 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @e1000_media_type_fiber, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %65

43:                                               ; preds = %37
  %44 = load i32, i32* @LEDCTL, align 4
  %45 = call i32 @er32(i32 %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %48 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @E1000_LEDCTL_LED0_IVRT, align 4
  %50 = load i32, i32* @E1000_LEDCTL_LED0_BLINK, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @E1000_LEDCTL_LED0_MODE_MASK, align 4
  %53 = or i32 %51, %52
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %4, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* @E1000_LEDCTL_MODE_LED_OFF, align 4
  %58 = load i32, i32* @E1000_LEDCTL_LED0_MODE_SHIFT, align 4
  %59 = shl i32 %57, %58
  %60 = load i32, i32* %4, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* @LEDCTL, align 4
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @ew32(i32 %62, i32 %63)
  br label %78

65:                                               ; preds = %37
  %66 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %67 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @e1000_media_type_copper, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %65
  %72 = load i32, i32* @LEDCTL, align 4
  %73 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %74 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @ew32(i32 %72, i32 %75)
  br label %77

77:                                               ; preds = %71, %65
  br label %78

78:                                               ; preds = %77, %43
  br label %79

79:                                               ; preds = %78, %11
  %80 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %79, %34, %20
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i32 @e1000_read_phy_reg(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @e1000_write_phy_reg(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
