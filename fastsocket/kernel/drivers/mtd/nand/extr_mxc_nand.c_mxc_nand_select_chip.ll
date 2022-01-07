; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_mxc_nand.c_mxc_nand_select_chip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_mxc_nand.c_mxc_nand_select_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.nand_chip* }
%struct.nand_chip = type { %struct.mxc_nand_host* }
%struct.mxc_nand_host = type { i32, i32, i64 }

@MTD_DEBUG_LEVEL0 = common dso_local global i32 0, align 4
@NFC_CE = common dso_local global i32 0, align 4
@NFC_CONFIG1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i32)* @mxc_nand_select_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxc_nand_select_chip(%struct.mtd_info* %0, i32 %1) #0 {
  %3 = alloca %struct.mtd_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca %struct.mxc_nand_host*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %8 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %7, i32 0, i32 0
  %9 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  store %struct.nand_chip* %9, %struct.nand_chip** %5, align 8
  %10 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %11 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %10, i32 0, i32 0
  %12 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %11, align 8
  store %struct.mxc_nand_host* %12, %struct.mxc_nand_host** %6, align 8
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %40 [
    i32 -1, label %14
    i32 0, label %27
  ]

14:                                               ; preds = %2
  %15 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %6, align 8
  %16 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %6, align 8
  %21 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @clk_disable(i32 %22)
  %24 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %6, align 8
  %25 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  br label %26

26:                                               ; preds = %19, %14
  br label %41

27:                                               ; preds = %2
  %28 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %6, align 8
  %29 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %27
  %33 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %6, align 8
  %34 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @clk_enable(i32 %35)
  %37 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %6, align 8
  %38 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  br label %39

39:                                               ; preds = %32, %27
  br label %41

40:                                               ; preds = %2
  br label %41

41:                                               ; preds = %40, %39, %26
  ret void
}

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @clk_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
