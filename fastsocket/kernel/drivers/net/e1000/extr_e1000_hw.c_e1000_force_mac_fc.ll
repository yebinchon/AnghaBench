; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_force_mac_fc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_force_mac_fc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32, i64 }

@.str = private unnamed_addr constant [19 x i8] c"e1000_force_mac_fc\00", align 1
@CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_TFCE = common dso_local global i32 0, align 4
@E1000_CTRL_RFCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Flow control param set incorrectly\0A\00", align 1
@E1000_ERR_CONFIG = common dso_local global i32 0, align 4
@e1000_82542_rev2_0 = common dso_local global i64 0, align 8
@E1000_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000_force_mac_fc(%struct.e1000_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %5 = call i32 @e_dbg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @CTRL, align 4
  %7 = call i32 @er32(i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %40 [
    i32 130, label %11
    i32 129, label %18
    i32 128, label %26
    i32 131, label %34
  ]

11:                                               ; preds = %1
  %12 = load i32, i32* @E1000_CTRL_TFCE, align 4
  %13 = load i32, i32* @E1000_CTRL_RFCE, align 4
  %14 = or i32 %12, %13
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %4, align 4
  br label %44

18:                                               ; preds = %1
  %19 = load i32, i32* @E1000_CTRL_TFCE, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %4, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* @E1000_CTRL_RFCE, align 4
  %24 = load i32, i32* %4, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %4, align 4
  br label %44

26:                                               ; preds = %1
  %27 = load i32, i32* @E1000_CTRL_RFCE, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %4, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* @E1000_CTRL_TFCE, align 4
  %32 = load i32, i32* %4, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %4, align 4
  br label %44

34:                                               ; preds = %1
  %35 = load i32, i32* @E1000_CTRL_TFCE, align 4
  %36 = load i32, i32* @E1000_CTRL_RFCE, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %4, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %4, align 4
  br label %44

40:                                               ; preds = %1
  %41 = call i32 @e_dbg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @E1000_ERR_CONFIG, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %60

44:                                               ; preds = %34, %26, %18, %11
  %45 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %46 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @e1000_82542_rev2_0, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load i32, i32* @E1000_CTRL_TFCE, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %4, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %50, %44
  %56 = load i32, i32* @CTRL, align 4
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @ew32(i32 %56, i32 %57)
  %59 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %55, %40
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
