; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_fc_autoneg_fiber.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_fc_autoneg_fiber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@IXGBE_ERR_FC_NOT_NEGOTIATED = common dso_local global i32 0, align 4
@IXGBE_PCS1GLSTA = common dso_local global i32 0, align 4
@IXGBE_PCS1GLSTA_AN_COMPLETE = common dso_local global i32 0, align 4
@IXGBE_PCS1GLSTA_AN_TIMED_OUT = common dso_local global i32 0, align 4
@IXGBE_PCS1GANA = common dso_local global i32 0, align 4
@IXGBE_PCS1GANLP = common dso_local global i32 0, align 4
@IXGBE_PCS1GANA_SYM_PAUSE = common dso_local global i32 0, align 4
@IXGBE_PCS1GANA_ASM_PAUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*)* @ixgbe_fc_autoneg_fiber to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_fc_autoneg_fiber(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %7 = load i32, i32* @IXGBE_ERR_FC_NOT_NEGOTIATED, align 4
  store i32 %7, i32* %6, align 4
  %8 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %9 = load i32, i32* @IXGBE_PCS1GLSTA, align 4
  %10 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @IXGBE_PCS1GLSTA_AN_COMPLETE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @IXGBE_PCS1GLSTA_AN_TIMED_OUT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %29

28:                                               ; preds = %19, %1
  br label %44

29:                                               ; preds = %19
  %30 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %31 = load i32, i32* @IXGBE_PCS1GANA, align 4
  %32 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %30, i32 %31)
  store i32 %32, i32* %3, align 4
  %33 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %34 = load i32, i32* @IXGBE_PCS1GANLP, align 4
  %35 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %33, i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @IXGBE_PCS1GANA_SYM_PAUSE, align 4
  %40 = load i32, i32* @IXGBE_PCS1GANA_ASM_PAUSE, align 4
  %41 = load i32, i32* @IXGBE_PCS1GANA_SYM_PAUSE, align 4
  %42 = load i32, i32* @IXGBE_PCS1GANA_ASM_PAUSE, align 4
  %43 = call i32 @ixgbe_negotiate_fc(%struct.ixgbe_hw* %36, i32 %37, i32 %38, i32 %39, i32 %40, i32 %41, i32 %42)
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %29, %28
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @ixgbe_negotiate_fc(%struct.ixgbe_hw*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
