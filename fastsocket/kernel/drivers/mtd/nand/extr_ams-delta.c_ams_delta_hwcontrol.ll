; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_ams-delta.c_ams_delta_hwcontrol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_ams-delta.c_ams_delta_hwcontrol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }

@NAND_CTRL_CHANGE = common dso_local global i32 0, align 4
@NAND_NCE = common dso_local global i32 0, align 4
@AMS_DELTA_LATCH2_NAND_NCE = common dso_local global i64 0, align 8
@NAND_CLE = common dso_local global i32 0, align 4
@AMS_DELTA_LATCH2_NAND_CLE = common dso_local global i64 0, align 8
@NAND_ALE = common dso_local global i32 0, align 4
@AMS_DELTA_LATCH2_NAND_ALE = common dso_local global i64 0, align 8
@NAND_CMD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i32, i32)* @ams_delta_hwcontrol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ams_delta_hwcontrol(%struct.mtd_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @NAND_CTRL_CHANGE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %52

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* @NAND_NCE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i64, i64* @AMS_DELTA_LATCH2_NAND_NCE, align 8
  br label %21

20:                                               ; preds = %12
  br label %21

21:                                               ; preds = %20, %18
  %22 = phi i64 [ %19, %18 ], [ 0, %20 ]
  store i64 %22, i64* %7, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @NAND_CLE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i64, i64* @AMS_DELTA_LATCH2_NAND_CLE, align 8
  br label %30

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29, %27
  %31 = phi i64 [ %28, %27 ], [ 0, %29 ]
  %32 = load i64, i64* %7, align 8
  %33 = or i64 %32, %31
  store i64 %33, i64* %7, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @NAND_ALE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i64, i64* @AMS_DELTA_LATCH2_NAND_ALE, align 8
  br label %41

40:                                               ; preds = %30
  br label %41

41:                                               ; preds = %40, %38
  %42 = phi i64 [ %39, %38 ], [ 0, %40 ]
  %43 = load i64, i64* %7, align 8
  %44 = or i64 %43, %42
  store i64 %44, i64* %7, align 8
  %45 = load i64, i64* @AMS_DELTA_LATCH2_NAND_CLE, align 8
  %46 = load i64, i64* @AMS_DELTA_LATCH2_NAND_ALE, align 8
  %47 = or i64 %45, %46
  %48 = load i64, i64* @AMS_DELTA_LATCH2_NAND_NCE, align 8
  %49 = or i64 %47, %48
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @ams_delta_latch2_write(i64 %49, i64 %50)
  br label %52

52:                                               ; preds = %41, %3
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @NAND_CMD_NONE, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @ams_delta_write_byte(%struct.mtd_info* %57, i32 %58)
  br label %60

60:                                               ; preds = %56, %52
  ret void
}

declare dso_local i32 @ams_delta_latch2_write(i64, i64) #1

declare dso_local i32 @ams_delta_write_byte(%struct.mtd_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
