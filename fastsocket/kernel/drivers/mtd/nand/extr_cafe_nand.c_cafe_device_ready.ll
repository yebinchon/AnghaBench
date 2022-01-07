; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_cafe_nand.c_cafe_device_ready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_cafe_nand.c_cafe_device_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.cafe_priv* }
%struct.cafe_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@NAND_STATUS = common dso_local global i32 0, align 4
@NAND_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"NAND device is%s ready, IRQ %x (%x) (%x,%x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" not\00", align 1
@GLOBAL_IRQ = common dso_local global i32 0, align 4
@GLOBAL_IRQ_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*)* @cafe_device_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cafe_device_ready(%struct.mtd_info* %0) #0 {
  %2 = alloca %struct.mtd_info*, align 8
  %3 = alloca %struct.cafe_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %2, align 8
  %6 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %7 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %6, i32 0, i32 0
  %8 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  store %struct.cafe_priv* %8, %struct.cafe_priv** %3, align 8
  %9 = load %struct.cafe_priv*, %struct.cafe_priv** %3, align 8
  %10 = load i32, i32* @NAND_STATUS, align 4
  %11 = call i32 @cafe_readl(%struct.cafe_priv* %9, i32 %10)
  %12 = or i32 %11, 1073741824
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %4, align 4
  %17 = load %struct.cafe_priv*, %struct.cafe_priv** %3, align 8
  %18 = load i32, i32* @NAND_IRQ, align 4
  %19 = call i32 @cafe_readl(%struct.cafe_priv* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.cafe_priv*, %struct.cafe_priv** %3, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @NAND_IRQ, align 4
  %23 = call i32 @cafe_writel(%struct.cafe_priv* %20, i32 %21, i32 %22)
  %24 = load %struct.cafe_priv*, %struct.cafe_priv** %3, align 8
  %25 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.cafe_priv*, %struct.cafe_priv** %3, align 8
  %34 = load i32, i32* @NAND_IRQ, align 4
  %35 = call i32 @cafe_readl(%struct.cafe_priv* %33, i32 %34)
  %36 = load %struct.cafe_priv*, %struct.cafe_priv** %3, align 8
  %37 = load i32, i32* @GLOBAL_IRQ, align 4
  %38 = call i32 @cafe_readl(%struct.cafe_priv* %36, i32 %37)
  %39 = load %struct.cafe_priv*, %struct.cafe_priv** %3, align 8
  %40 = load i32, i32* @GLOBAL_IRQ_MASK, align 4
  %41 = call i32 @cafe_readl(%struct.cafe_priv* %39, i32 %40)
  %42 = call i32 @cafe_dev_dbg(i32* %27, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %31, i32 %32, i32 %35, i32 %38, i32 %41)
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @cafe_readl(%struct.cafe_priv*, i32) #1

declare dso_local i32 @cafe_writel(%struct.cafe_priv*, i32, i32) #1

declare dso_local i32 @cafe_dev_dbg(i32*, i8*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
