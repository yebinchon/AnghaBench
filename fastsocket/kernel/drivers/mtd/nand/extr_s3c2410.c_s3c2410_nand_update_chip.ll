; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_s3c2410.c_s3c2410_nand_update_chip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_s3c2410.c_s3c2410_nand_update_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c2410_nand_info = type { i32 }
%struct.s3c2410_nand_mtd = type { %struct.nand_chip }
%struct.nand_chip = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32, i32* }

@.str = private unnamed_addr constant [26 x i8] c"chip %p => page shift %d\0A\00", align 1
@NAND_ECC_HW = common dso_local global i64 0, align 8
@nand_hw_eccoob = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s3c2410_nand_info*, %struct.s3c2410_nand_mtd*)* @s3c2410_nand_update_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c2410_nand_update_chip(%struct.s3c2410_nand_info* %0, %struct.s3c2410_nand_mtd* %1) #0 {
  %3 = alloca %struct.s3c2410_nand_info*, align 8
  %4 = alloca %struct.s3c2410_nand_mtd*, align 8
  %5 = alloca %struct.nand_chip*, align 8
  store %struct.s3c2410_nand_info* %0, %struct.s3c2410_nand_info** %3, align 8
  store %struct.s3c2410_nand_mtd* %1, %struct.s3c2410_nand_mtd** %4, align 8
  %6 = load %struct.s3c2410_nand_mtd*, %struct.s3c2410_nand_mtd** %4, align 8
  %7 = getelementptr inbounds %struct.s3c2410_nand_mtd, %struct.s3c2410_nand_mtd* %6, i32 0, i32 0
  store %struct.nand_chip* %7, %struct.nand_chip** %5, align 8
  %8 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %3, align 8
  %9 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %12 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %13 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @dev_dbg(i32 %10, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.nand_chip* %11, i32 %14)
  %16 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %17 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @NAND_ECC_HW, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %45

23:                                               ; preds = %2
  %24 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %25 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp sgt i32 %26, 10
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %30 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i32 256, i32* %31, align 8
  %32 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %33 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  store i32 3, i32* %34, align 4
  br label %45

35:                                               ; preds = %23
  %36 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %37 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store i32 512, i32* %38, align 8
  %39 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %40 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  store i32 3, i32* %41, align 4
  %42 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %43 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 3
  store i32* @nand_hw_eccoob, i32** %44, align 8
  br label %45

45:                                               ; preds = %22, %35, %28
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, %struct.nand_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
