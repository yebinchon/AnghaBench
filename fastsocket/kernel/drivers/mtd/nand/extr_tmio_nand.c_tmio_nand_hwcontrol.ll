; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_tmio_nand.c_tmio_nand_hwcontrol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_tmio_nand.c_tmio_nand_hwcontrol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.nand_chip* }
%struct.nand_chip = type { i64 }
%struct.tmio_nand = type { i64, i64 }

@NAND_CTRL_CHANGE = common dso_local global i32 0, align 4
@NAND_NCE = common dso_local global i32 0, align 4
@FCR_MODE_DATA = common dso_local global i32 0, align 4
@NAND_CLE = common dso_local global i32 0, align 4
@FCR_MODE_CLE = common dso_local global i32 0, align 4
@NAND_ALE = common dso_local global i32 0, align 4
@FCR_MODE_ALE = common dso_local global i32 0, align 4
@FCR_MODE_STANDBY = common dso_local global i32 0, align 4
@FCR_MODE = common dso_local global i64 0, align 8
@NAND_CMD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i32, i32)* @tmio_nand_hwcontrol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tmio_nand_hwcontrol(%struct.mtd_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tmio_nand*, align 8
  %8 = alloca %struct.nand_chip*, align 8
  %9 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %11 = call %struct.tmio_nand* @mtd_to_tmio(%struct.mtd_info* %10)
  store %struct.tmio_nand* %11, %struct.tmio_nand** %7, align 8
  %12 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %13 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %12, i32 0, i32 0
  %14 = load %struct.nand_chip*, %struct.nand_chip** %13, align 8
  store %struct.nand_chip* %14, %struct.nand_chip** %8, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @NAND_CTRL_CHANGE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %66

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @NAND_NCE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %54

24:                                               ; preds = %19
  %25 = load i32, i32* @FCR_MODE_DATA, align 4
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @NAND_CLE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i32, i32* @FCR_MODE_CLE, align 4
  %32 = load i32, i32* %9, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %9, align 4
  br label %39

34:                                               ; preds = %24
  %35 = load i32, i32* @FCR_MODE_CLE, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %9, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %34, %30
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @NAND_ALE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32, i32* @FCR_MODE_ALE, align 4
  %46 = load i32, i32* %9, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %9, align 4
  br label %53

48:                                               ; preds = %39
  %49 = load i32, i32* @FCR_MODE_ALE, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %9, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %48, %44
  br label %56

54:                                               ; preds = %19
  %55 = load i32, i32* @FCR_MODE_STANDBY, align 4
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %54, %53
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.tmio_nand*, %struct.tmio_nand** %7, align 8
  %59 = getelementptr inbounds %struct.tmio_nand, %struct.tmio_nand* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @FCR_MODE, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @tmio_iowrite8(i32 %57, i64 %62)
  %64 = load %struct.tmio_nand*, %struct.tmio_nand** %7, align 8
  %65 = getelementptr inbounds %struct.tmio_nand, %struct.tmio_nand* %64, i32 0, i32 0
  store i64 0, i64* %65, align 8
  br label %66

66:                                               ; preds = %56, %3
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @NAND_CMD_NONE, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %73 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @tmio_iowrite8(i32 %71, i64 %74)
  br label %76

76:                                               ; preds = %70, %66
  ret void
}

declare dso_local %struct.tmio_nand* @mtd_to_tmio(%struct.mtd_info*) #1

declare dso_local i32 @tmio_iowrite8(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
