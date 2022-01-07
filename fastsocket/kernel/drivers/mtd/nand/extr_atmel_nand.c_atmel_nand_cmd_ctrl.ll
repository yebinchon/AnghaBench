; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_atmel_nand.c_atmel_nand_cmd_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_atmel_nand.c_atmel_nand_cmd_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.nand_chip* }
%struct.nand_chip = type { %struct.atmel_nand_host* }
%struct.atmel_nand_host = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@NAND_CTRL_CHANGE = common dso_local global i32 0, align 4
@NAND_NCE = common dso_local global i32 0, align 4
@NAND_CMD_NONE = common dso_local global i32 0, align 4
@NAND_CLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i32, i32)* @atmel_nand_cmd_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_nand_cmd_ctrl(%struct.mtd_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nand_chip*, align 8
  %8 = alloca %struct.atmel_nand_host*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %10 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %9, i32 0, i32 0
  %11 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  store %struct.nand_chip* %11, %struct.nand_chip** %7, align 8
  %12 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %13 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %12, i32 0, i32 0
  %14 = load %struct.atmel_nand_host*, %struct.atmel_nand_host** %13, align 8
  store %struct.atmel_nand_host* %14, %struct.atmel_nand_host** %8, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @NAND_CTRL_CHANGE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @NAND_NCE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct.atmel_nand_host*, %struct.atmel_nand_host** %8, align 8
  %26 = call i32 @atmel_nand_enable(%struct.atmel_nand_host* %25)
  br label %30

27:                                               ; preds = %19
  %28 = load %struct.atmel_nand_host*, %struct.atmel_nand_host** %8, align 8
  %29 = call i32 @atmel_nand_disable(%struct.atmel_nand_host* %28)
  br label %30

30:                                               ; preds = %27, %24
  br label %31

31:                                               ; preds = %30, %3
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @NAND_CMD_NONE, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %69

36:                                               ; preds = %31
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @NAND_CLE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %36
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.atmel_nand_host*, %struct.atmel_nand_host** %8, align 8
  %44 = getelementptr inbounds %struct.atmel_nand_host, %struct.atmel_nand_host* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.atmel_nand_host*, %struct.atmel_nand_host** %8, align 8
  %47 = getelementptr inbounds %struct.atmel_nand_host, %struct.atmel_nand_host* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 1, %50
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %45, %52
  %54 = call i32 @writeb(i32 %42, i64 %53)
  br label %69

55:                                               ; preds = %36
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.atmel_nand_host*, %struct.atmel_nand_host** %8, align 8
  %58 = getelementptr inbounds %struct.atmel_nand_host, %struct.atmel_nand_host* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.atmel_nand_host*, %struct.atmel_nand_host** %8, align 8
  %61 = getelementptr inbounds %struct.atmel_nand_host, %struct.atmel_nand_host* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = shl i32 1, %64
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %59, %66
  %68 = call i32 @writeb(i32 %56, i64 %67)
  br label %69

69:                                               ; preds = %35, %55, %41
  ret void
}

declare dso_local i32 @atmel_nand_enable(%struct.atmel_nand_host*) #1

declare dso_local i32 @atmel_nand_disable(%struct.atmel_nand_host*) #1

declare dso_local i32 @writeb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
