; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_es2lan.c_e1000_get_cfg_done_80003es2lan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_es2lan.c_e1000_get_cfg_done_80003es2lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PHY_CFG_TIMEOUT = common dso_local global i64 0, align 8
@E1000_NVM_CFG_DONE_PORT_0 = common dso_local global i32 0, align 4
@E1000_NVM_CFG_DONE_PORT_1 = common dso_local global i32 0, align 4
@EEMNGCTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"MNG configuration cycle has not completed.\0A\00", align 1
@E1000_ERR_RESET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_get_cfg_done_80003es2lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_get_cfg_done_80003es2lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %6 = load i64, i64* @PHY_CFG_TIMEOUT, align 8
  store i64 %6, i64* %4, align 8
  %7 = load i32, i32* @E1000_NVM_CFG_DONE_PORT_0, align 4
  store i32 %7, i32* %5, align 4
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @E1000_NVM_CFG_DONE_PORT_1, align 4
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %13, %1
  br label %16

16:                                               ; preds = %26, %15
  %17 = load i64, i64* %4, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %16
  %20 = load i32, i32* @EEMNGCTL, align 4
  %21 = call i32 @er32(i32 %20)
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %30

26:                                               ; preds = %19
  %27 = call i32 @usleep_range(i32 1000, i32 2000)
  %28 = load i64, i64* %4, align 8
  %29 = add nsw i64 %28, -1
  store i64 %29, i64* %4, align 8
  br label %16

30:                                               ; preds = %25, %16
  %31 = load i64, i64* %4, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = call i32 @e_dbg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %35 = load i64, i64* @E1000_ERR_RESET, align 8
  %36 = sub nsw i64 0, %35
  store i64 %36, i64* %2, align 8
  br label %38

37:                                               ; preds = %30
  store i64 0, i64* %2, align 8
  br label %38

38:                                               ; preds = %37, %33
  %39 = load i64, i64* %2, align 8
  ret i64 %39
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @e_dbg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
