; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_mxc_nand.c_send_read_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_mxc_nand.c_send_read_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxc_nand_host = type { i64, i32 }

@MTD_DEBUG_LEVEL3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"send_read_page (%d)\0A\00", align 1
@NFC_BUF_ADDR = common dso_local global i64 0, align 8
@NFC_CONFIG1 = common dso_local global i64 0, align 8
@NFC_SP_EN = common dso_local global i32 0, align 4
@NFC_OUTPUT = common dso_local global i32 0, align 4
@NFC_CONFIG2 = common dso_local global i64 0, align 8
@TROP_US_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mxc_nand_host*, i32, i32)* @send_read_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_read_page(%struct.mxc_nand_host* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mxc_nand_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mxc_nand_host* %0, %struct.mxc_nand_host** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @MTD_DEBUG_LEVEL3, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @DEBUG(i32 %8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %4, align 8
  %13 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @NFC_BUF_ADDR, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @writew(i32 %11, i64 %16)
  %18 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %4, align 8
  %19 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %48, label %22

22:                                               ; preds = %3
  %23 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %4, align 8
  %24 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @NFC_CONFIG1, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @readw(i64 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %22
  %32 = load i32, i32* @NFC_SP_EN, align 4
  %33 = load i32, i32* %7, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %7, align 4
  br label %40

35:                                               ; preds = %22
  %36 = load i32, i32* @NFC_SP_EN, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %35, %31
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %4, align 8
  %43 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @NFC_CONFIG1, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writew(i32 %41, i64 %46)
  br label %48

48:                                               ; preds = %40, %3
  %49 = load i32, i32* @NFC_OUTPUT, align 4
  %50 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %4, align 8
  %51 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @NFC_CONFIG2, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writew(i32 %49, i64 %54)
  %56 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %4, align 8
  %57 = load i32, i32* @TROP_US_DELAY, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @wait_op_done(%struct.mxc_nand_host* %56, i32 %57, i32 %58, i32 1)
  ret void
}

declare dso_local i32 @DEBUG(i32, i8*, i32) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @wait_op_done(%struct.mxc_nand_host*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
