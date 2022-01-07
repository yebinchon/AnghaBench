; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/rb532/extr_devices.c_rb532_cmd_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/rb532/extr_devices.c_rb532_cmd_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.nand_chip* }
%struct.nand_chip = type { i32 }

@NAND_CTRL_CHANGE = common dso_local global i32 0, align 4
@NAND_CLE = common dso_local global i32 0, align 4
@NAND_ALE = common dso_local global i32 0, align 4
@NAND_CMD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i32, i32)* @rb532_cmd_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rb532_cmd_ctrl(%struct.mtd_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nand_chip*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %11 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %10, i32 0, i32 0
  %12 = load %struct.nand_chip*, %struct.nand_chip** %11, align 8
  store %struct.nand_chip* %12, %struct.nand_chip** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @NAND_CTRL_CHANGE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %49

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @NAND_CLE, align 4
  %20 = and i32 %18, %19
  %21 = shl i32 %20, 1
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %8, align 1
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @NAND_ALE, align 4
  %25 = and i32 %23, %24
  %26 = lshr i32 %25, 1
  %27 = load i8, i8* %8, align 1
  %28 = zext i8 %27 to i32
  %29 = or i32 %28, %26
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %8, align 1
  %31 = load i32, i32* %6, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* @NAND_CLE, align 4
  %34 = and i32 %32, %33
  %35 = shl i32 %34, 1
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* %9, align 1
  %37 = load i32, i32* %6, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* @NAND_ALE, align 4
  %40 = and i32 %38, %39
  %41 = lshr i32 %40, 1
  %42 = load i8, i8* %9, align 1
  %43 = zext i8 %42 to i32
  %44 = or i32 %43, %41
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %9, align 1
  %46 = load i8, i8* %8, align 1
  %47 = load i8, i8* %9, align 1
  %48 = call i32 @set_latch_u5(i8 zeroext %46, i8 zeroext %47)
  br label %49

49:                                               ; preds = %17, %3
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @NAND_CMD_NONE, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %56 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @writeb(i32 %54, i32 %57)
  br label %59

59:                                               ; preds = %53, %49
  ret void
}

declare dso_local i32 @set_latch_u5(i8 zeroext, i8 zeroext) #1

declare dso_local i32 @writeb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
