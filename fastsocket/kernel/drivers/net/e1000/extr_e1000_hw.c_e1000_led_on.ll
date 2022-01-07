; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_led_on.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_led_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32, i32, i32 }

@CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"e1000_led_on\00", align 1
@E1000_CTRL_SWDPIN0 = common dso_local global i32 0, align 4
@E1000_CTRL_SWDPIO0 = common dso_local global i32 0, align 4
@e1000_media_type_fiber = common dso_local global i32 0, align 4
@e1000_media_type_copper = common dso_local global i32 0, align 4
@LEDCTL = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000_led_on(%struct.e1000_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %5 = load i32, i32* @CTRL, align 4
  %6 = call i32 @er32(i32 %5)
  store i32 %6, i32* %4, align 4
  %7 = call i32 @e_dbg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %40 [
    i32 131, label %11
    i32 130, label %11
    i32 129, label %11
    i32 128, label %18
  ]

11:                                               ; preds = %1, %1, %1
  %12 = load i32, i32* @E1000_CTRL_SWDPIN0, align 4
  %13 = load i32, i32* %4, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* @E1000_CTRL_SWDPIO0, align 4
  %16 = load i32, i32* %4, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %4, align 4
  br label %69

18:                                               ; preds = %1
  %19 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %20 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @e1000_media_type_fiber, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = load i32, i32* @E1000_CTRL_SWDPIN0, align 4
  %26 = load i32, i32* %4, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* @E1000_CTRL_SWDPIO0, align 4
  %29 = load i32, i32* %4, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %4, align 4
  br label %39

31:                                               ; preds = %18
  %32 = load i32, i32* @E1000_CTRL_SWDPIN0, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %4, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* @E1000_CTRL_SWDPIO0, align 4
  %37 = load i32, i32* %4, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %31, %24
  br label %69

40:                                               ; preds = %1
  %41 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %42 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @e1000_media_type_fiber, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %40
  %47 = load i32, i32* @E1000_CTRL_SWDPIN0, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %4, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* @E1000_CTRL_SWDPIO0, align 4
  %52 = load i32, i32* %4, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %4, align 4
  br label %68

54:                                               ; preds = %40
  %55 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %56 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @e1000_media_type_copper, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %54
  %61 = load i32, i32* @LEDCTL, align 4
  %62 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %63 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ew32(i32 %61, i32 %64)
  %66 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %66, i32* %2, align 4
  br label %74

67:                                               ; preds = %54
  br label %68

68:                                               ; preds = %67, %46
  br label %69

69:                                               ; preds = %68, %39, %11
  %70 = load i32, i32* @CTRL, align 4
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @ew32(i32 %70, i32 %71)
  %73 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %69, %60
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i32 @ew32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
