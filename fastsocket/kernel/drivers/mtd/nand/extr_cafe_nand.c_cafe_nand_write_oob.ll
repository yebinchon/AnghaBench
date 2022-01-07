; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_cafe_nand.c_cafe_nand_write_oob.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_cafe_nand.c_cafe_nand_write_oob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32, i32 }
%struct.nand_chip = type { i32 (%struct.mtd_info.0*, %struct.nand_chip*)*, i32 (%struct.mtd_info.1*, i32, i32, i32)*, i32, i32 (%struct.mtd_info.2*, i32, i32)* }
%struct.mtd_info.0 = type opaque
%struct.mtd_info.1 = type opaque
%struct.mtd_info.2 = type opaque

@NAND_CMD_SEQIN = common dso_local global i32 0, align 4
@NAND_CMD_PAGEPROG = common dso_local global i32 0, align 4
@NAND_STATUS_FAIL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.nand_chip*, i32)* @cafe_nand_write_oob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cafe_nand_write_oob(%struct.mtd_info* %0, %struct.nand_chip* %1, i32 %2) #0 {
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store %struct.nand_chip* %1, %struct.nand_chip** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %9 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %8, i32 0, i32 1
  %10 = load i32 (%struct.mtd_info.1*, i32, i32, i32)*, i32 (%struct.mtd_info.1*, i32, i32, i32)** %9, align 8
  %11 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %12 = bitcast %struct.mtd_info* %11 to %struct.mtd_info.1*
  %13 = load i32, i32* @NAND_CMD_SEQIN, align 4
  %14 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %15 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 %10(%struct.mtd_info.1* %12, i32 %13, i32 %16, i32 %17)
  %19 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %20 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %19, i32 0, i32 3
  %21 = load i32 (%struct.mtd_info.2*, i32, i32)*, i32 (%struct.mtd_info.2*, i32, i32)** %20, align 8
  %22 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %23 = bitcast %struct.mtd_info* %22 to %struct.mtd_info.2*
  %24 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %25 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %28 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 %21(%struct.mtd_info.2* %23, i32 %26, i32 %29)
  %31 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %32 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %31, i32 0, i32 1
  %33 = load i32 (%struct.mtd_info.1*, i32, i32, i32)*, i32 (%struct.mtd_info.1*, i32, i32, i32)** %32, align 8
  %34 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %35 = bitcast %struct.mtd_info* %34 to %struct.mtd_info.1*
  %36 = load i32, i32* @NAND_CMD_PAGEPROG, align 4
  %37 = call i32 %33(%struct.mtd_info.1* %35, i32 %36, i32 -1, i32 -1)
  %38 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %39 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %38, i32 0, i32 0
  %40 = load i32 (%struct.mtd_info.0*, %struct.nand_chip*)*, i32 (%struct.mtd_info.0*, %struct.nand_chip*)** %39, align 8
  %41 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %42 = bitcast %struct.mtd_info* %41 to %struct.mtd_info.0*
  %43 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %44 = call i32 %40(%struct.mtd_info.0* %42, %struct.nand_chip* %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @NAND_STATUS_FAIL, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %3
  %50 = load i32, i32* @EIO, align 4
  %51 = sub nsw i32 0, %50
  br label %53

52:                                               ; preds = %3
  br label %53

53:                                               ; preds = %52, %49
  %54 = phi i32 [ %51, %49 ], [ 0, %52 ]
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
