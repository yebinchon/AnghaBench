; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_mac.c_e1000_commit_fc_settings_generic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_mac.c_e1000_commit_fc_settings_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__, %struct.e1000_mac_info }
%struct.TYPE_2__ = type { i32 }
%struct.e1000_mac_info = type { i32 }

@E1000_TXCW_ANE = common dso_local global i32 0, align 4
@E1000_TXCW_FD = common dso_local global i32 0, align 4
@E1000_TXCW_PAUSE_MASK = common dso_local global i32 0, align 4
@E1000_TXCW_ASM_DIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Flow control param set incorrectly\0A\00", align 1
@E1000_ERR_CONFIG = common dso_local global i32 0, align 4
@TXCW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_commit_fc_settings_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_commit_fc_settings_generic(%struct.e1000_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_mac_info*, align 8
  %5 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %6 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %7 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %6, i32 0, i32 1
  store %struct.e1000_mac_info* %7, %struct.e1000_mac_info** %4, align 8
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %34 [
    i32 130, label %12
    i32 129, label %16
    i32 128, label %22
    i32 131, label %28
  ]

12:                                               ; preds = %1
  %13 = load i32, i32* @E1000_TXCW_ANE, align 4
  %14 = load i32, i32* @E1000_TXCW_FD, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %5, align 4
  br label %38

16:                                               ; preds = %1
  %17 = load i32, i32* @E1000_TXCW_ANE, align 4
  %18 = load i32, i32* @E1000_TXCW_FD, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @E1000_TXCW_PAUSE_MASK, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %5, align 4
  br label %38

22:                                               ; preds = %1
  %23 = load i32, i32* @E1000_TXCW_ANE, align 4
  %24 = load i32, i32* @E1000_TXCW_FD, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @E1000_TXCW_ASM_DIR, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %5, align 4
  br label %38

28:                                               ; preds = %1
  %29 = load i32, i32* @E1000_TXCW_ANE, align 4
  %30 = load i32, i32* @E1000_TXCW_FD, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @E1000_TXCW_PAUSE_MASK, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %5, align 4
  br label %38

34:                                               ; preds = %1
  %35 = call i32 @e_dbg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @E1000_ERR_CONFIG, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %45

38:                                               ; preds = %28, %22, %16, %12
  %39 = load i32, i32* @TXCW, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @ew32(i32 %39, i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %44 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %38, %34
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i32 @ew32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
