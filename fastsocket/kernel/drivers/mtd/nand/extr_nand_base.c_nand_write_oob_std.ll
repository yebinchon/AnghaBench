; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nand_base.c_nand_write_oob_std.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nand_base.c_nand_write_oob_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32, i32 }
%struct.nand_chip = type { i32 (%struct.mtd_info.0*, %struct.nand_chip*)*, i32 (%struct.mtd_info.1*, i32, i32, i32)*, i32 (%struct.mtd_info.2*, i32*, i32)*, i32* }
%struct.mtd_info.0 = type opaque
%struct.mtd_info.1 = type opaque
%struct.mtd_info.2 = type opaque

@NAND_CMD_SEQIN = common dso_local global i32 0, align 4
@NAND_CMD_PAGEPROG = common dso_local global i32 0, align 4
@NAND_STATUS_FAIL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.nand_chip*, i32)* @nand_write_oob_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nand_write_oob_std(%struct.mtd_info* %0, %struct.nand_chip* %1, i32 %2) #0 {
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store %struct.nand_chip* %1, %struct.nand_chip** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %11 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %10, i32 0, i32 3
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %8, align 8
  %13 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %14 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %17 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %16, i32 0, i32 1
  %18 = load i32 (%struct.mtd_info.1*, i32, i32, i32)*, i32 (%struct.mtd_info.1*, i32, i32, i32)** %17, align 8
  %19 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %20 = bitcast %struct.mtd_info* %19 to %struct.mtd_info.1*
  %21 = load i32, i32* @NAND_CMD_SEQIN, align 4
  %22 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %23 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 %18(%struct.mtd_info.1* %20, i32 %21, i32 %24, i32 %25)
  %27 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %28 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %27, i32 0, i32 2
  %29 = load i32 (%struct.mtd_info.2*, i32*, i32)*, i32 (%struct.mtd_info.2*, i32*, i32)** %28, align 8
  %30 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %31 = bitcast %struct.mtd_info* %30 to %struct.mtd_info.2*
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32 %29(%struct.mtd_info.2* %31, i32* %32, i32 %33)
  %35 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %36 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %35, i32 0, i32 1
  %37 = load i32 (%struct.mtd_info.1*, i32, i32, i32)*, i32 (%struct.mtd_info.1*, i32, i32, i32)** %36, align 8
  %38 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %39 = bitcast %struct.mtd_info* %38 to %struct.mtd_info.1*
  %40 = load i32, i32* @NAND_CMD_PAGEPROG, align 4
  %41 = call i32 %37(%struct.mtd_info.1* %39, i32 %40, i32 -1, i32 -1)
  %42 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %43 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %42, i32 0, i32 0
  %44 = load i32 (%struct.mtd_info.0*, %struct.nand_chip*)*, i32 (%struct.mtd_info.0*, %struct.nand_chip*)** %43, align 8
  %45 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %46 = bitcast %struct.mtd_info* %45 to %struct.mtd_info.0*
  %47 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %48 = call i32 %44(%struct.mtd_info.0* %46, %struct.nand_chip* %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @NAND_STATUS_FAIL, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %3
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  br label %57

56:                                               ; preds = %3
  br label %57

57:                                               ; preds = %56, %53
  %58 = phi i32 [ %55, %53 ], [ 0, %56 ]
  ret i32 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
