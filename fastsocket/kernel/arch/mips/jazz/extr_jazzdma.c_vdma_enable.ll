; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/jazz/extr_jazzdma.c_vdma_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/jazz/extr_jazzdma.c_vdma_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vdma_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"vdma_enable: channel %d\0A\00", align 1
@JAZZ_R4030_CHNL_ENABLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"VDMA: Channel %d: Address error!\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"VDMA: Channel %d: Memory error!\0A\00", align 1
@R4030_TC_INTR = common dso_local global i32 0, align 4
@R4030_MEM_INTR = common dso_local global i32 0, align 4
@R4030_ADDR_INTR = common dso_local global i32 0, align 4
@R4030_CHNL_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vdma_enable(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* @vdma_debug, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %7)
  br label %9

9:                                                ; preds = %6, %1
  %10 = load i64, i64* @JAZZ_R4030_CHNL_ENABLE, align 8
  %11 = load i32, i32* %2, align 4
  %12 = shl i32 %11, 5
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %10, %13
  %15 = call i32 @r4030_read_reg32(i64 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, 1024
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %9
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %19, %9
  %23 = load i32, i32* %3, align 4
  %24 = and i32 %23, 512
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %26, %22
  %30 = load i64, i64* @JAZZ_R4030_CHNL_ENABLE, align 8
  %31 = load i32, i32* %2, align 4
  %32 = shl i32 %31, 5
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %30, %33
  %35 = load i64, i64* @JAZZ_R4030_CHNL_ENABLE, align 8
  %36 = load i32, i32* %2, align 4
  %37 = shl i32 %36, 5
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %35, %38
  %40 = call i32 @r4030_read_reg32(i64 %39)
  %41 = load i32, i32* @R4030_TC_INTR, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @R4030_MEM_INTR, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @R4030_ADDR_INTR, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @r4030_write_reg32(i64 %34, i32 %46)
  %48 = load i64, i64* @JAZZ_R4030_CHNL_ENABLE, align 8
  %49 = load i32, i32* %2, align 4
  %50 = shl i32 %49, 5
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %48, %51
  %53 = load i64, i64* @JAZZ_R4030_CHNL_ENABLE, align 8
  %54 = load i32, i32* %2, align 4
  %55 = shl i32 %54, 5
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %53, %56
  %58 = call i32 @r4030_read_reg32(i64 %57)
  %59 = load i32, i32* @R4030_CHNL_ENABLE, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @r4030_write_reg32(i64 %52, i32 %60)
  ret void
}

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @r4030_read_reg32(i64) #1

declare dso_local i32 @r4030_write_reg32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
