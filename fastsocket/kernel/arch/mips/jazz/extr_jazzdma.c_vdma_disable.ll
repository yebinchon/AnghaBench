; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/jazz/extr_jazzdma.c_vdma_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/jazz/extr_jazzdma.c_vdma_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vdma_debug = common dso_local global i64 0, align 8
@JAZZ_R4030_CHNL_ENABLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"vdma_disable: channel %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [70 x i8] c"VDMA: channel %d status: %04x (%s) mode: %02x addr: %06x count: %06x\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@JAZZ_R4030_CHNL_MODE = common dso_local global i64 0, align 8
@JAZZ_R4030_CHNL_ADDR = common dso_local global i64 0, align 8
@JAZZ_R4030_CHNL_COUNT = common dso_local global i64 0, align 8
@R4030_CHNL_ENABLE = common dso_local global i32 0, align 4
@JAZZ_DUMMY_DEVICE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vdma_disable(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* @vdma_debug, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %41

6:                                                ; preds = %1
  %7 = load i64, i64* @JAZZ_R4030_CHNL_ENABLE, align 8
  %8 = load i32, i32* %2, align 4
  %9 = shl i32 %8, 5
  %10 = sext i32 %9 to i64
  %11 = add nsw i64 %7, %10
  %12 = call i32 @r4030_read_reg32(i64 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %2, align 4
  %14 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, 1536
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %22 = load i64, i64* @JAZZ_R4030_CHNL_MODE, align 8
  %23 = load i32, i32* %2, align 4
  %24 = shl i32 %23, 5
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %22, %25
  %27 = call i32 @r4030_read_reg32(i64 %26)
  %28 = load i64, i64* @JAZZ_R4030_CHNL_ADDR, align 8
  %29 = load i32, i32* %2, align 4
  %30 = shl i32 %29, 5
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %28, %31
  %33 = call i32 @r4030_read_reg32(i64 %32)
  %34 = load i64, i64* @JAZZ_R4030_CHNL_COUNT, align 8
  %35 = load i32, i32* %2, align 4
  %36 = shl i32 %35, 5
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %34, %37
  %39 = call i32 @r4030_read_reg32(i64 %38)
  %40 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 %15, i32 %16, i8* %21, i32 %27, i32 %33, i32 %39)
  br label %41

41:                                               ; preds = %6, %1
  %42 = load i64, i64* @JAZZ_R4030_CHNL_ENABLE, align 8
  %43 = load i32, i32* %2, align 4
  %44 = shl i32 %43, 5
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %42, %45
  %47 = load i64, i64* @JAZZ_R4030_CHNL_ENABLE, align 8
  %48 = load i32, i32* %2, align 4
  %49 = shl i32 %48, 5
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %47, %50
  %52 = call i32 @r4030_read_reg32(i64 %51)
  %53 = load i32, i32* @R4030_CHNL_ENABLE, align 4
  %54 = xor i32 %53, -1
  %55 = and i32 %52, %54
  %56 = call i32 @r4030_write_reg32(i64 %46, i32 %55)
  %57 = load i64, i64* @JAZZ_DUMMY_DEVICE, align 8
  %58 = inttoptr i64 %57 to i32*
  %59 = load volatile i32, i32* %58, align 4
  ret void
}

declare dso_local i32 @r4030_read_reg32(i64) #1

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local i32 @r4030_write_reg32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
