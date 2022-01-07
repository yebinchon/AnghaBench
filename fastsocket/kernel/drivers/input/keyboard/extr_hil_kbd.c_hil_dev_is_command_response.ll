; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_hil_kbd.c_hil_dev_is_command_response.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_hil_kbd.c_hil_dev_is_command_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HIL_CMDCT_POL = common dso_local global i32 0, align 4
@HIL_ERR_INT = common dso_local global i32 0, align 4
@HIL_PKT_CMD = common dso_local global i32 0, align 4
@HIL_CMD_POL = common dso_local global i32 0, align 4
@HIL_CMDCT_RPL = common dso_local global i32 0, align 4
@HIL_CMD_RPL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @hil_dev_is_command_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hil_dev_is_command_response(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @HIL_CMDCT_POL, align 4
  %6 = xor i32 %5, -1
  %7 = and i32 %4, %6
  %8 = load i32, i32* @HIL_ERR_INT, align 4
  %9 = load i32, i32* @HIL_PKT_CMD, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @HIL_CMD_POL, align 4
  %12 = or i32 %10, %11
  %13 = icmp eq i32 %7, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %28

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @HIL_CMDCT_RPL, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  %20 = load i32, i32* @HIL_ERR_INT, align 4
  %21 = load i32, i32* @HIL_PKT_CMD, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @HIL_CMD_RPL, align 4
  %24 = or i32 %22, %23
  %25 = icmp eq i32 %19, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %28

27:                                               ; preds = %15
  store i32 1, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %26, %14
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
