; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_bf5xx_nand.c_bf5xx_nand_read_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_bf5xx_nand.c_bf5xx_nand_read_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }

@WB_FULL = common dso_local global i32 0, align 4
@RD_RDY = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i32*, i32)* @bf5xx_nand_read_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bf5xx_nand_read_buf(%struct.mtd_info* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %51, %3
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %54

13:                                               ; preds = %9
  br label %14

14:                                               ; preds = %19, %13
  %15 = call i32 (...) @bfin_read_NFC_STAT()
  %16 = load i32, i32* @WB_FULL, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = call i32 (...) @cpu_relax()
  br label %14

21:                                               ; preds = %14
  %22 = call i32 @bfin_write_NFC_DATA_RD(i32 0)
  %23 = call i32 (...) @SSYNC()
  br label %24

24:                                               ; preds = %33, %21
  %25 = call zeroext i16 (...) @bfin_read_NFC_IRQSTAT()
  %26 = zext i16 %25 to i32
  %27 = load i16, i16* @RD_RDY, align 2
  %28 = zext i16 %27 to i32
  %29 = and i32 %26, %28
  %30 = load i16, i16* @RD_RDY, align 2
  %31 = zext i16 %30 to i32
  %32 = icmp ne i32 %29, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = call i32 (...) @cpu_relax()
  br label %24

35:                                               ; preds = %24
  %36 = call i32 (...) @bfin_read_NFC_READ()
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %36, i32* %40, align 4
  %41 = call zeroext i16 (...) @bfin_read_NFC_IRQSTAT()
  store i16 %41, i16* %8, align 2
  %42 = load i16, i16* @RD_RDY, align 2
  %43 = zext i16 %42 to i32
  %44 = load i16, i16* %8, align 2
  %45 = zext i16 %44 to i32
  %46 = or i32 %45, %43
  %47 = trunc i32 %46 to i16
  store i16 %47, i16* %8, align 2
  %48 = load i16, i16* %8, align 2
  %49 = call i32 @bfin_write_NFC_IRQSTAT(i16 zeroext %48)
  %50 = call i32 (...) @SSYNC()
  br label %51

51:                                               ; preds = %35
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %9

54:                                               ; preds = %9
  ret void
}

declare dso_local i32 @bfin_read_NFC_STAT(...) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @bfin_write_NFC_DATA_RD(i32) #1

declare dso_local i32 @SSYNC(...) #1

declare dso_local zeroext i16 @bfin_read_NFC_IRQSTAT(...) #1

declare dso_local i32 @bfin_read_NFC_READ(...) #1

declare dso_local i32 @bfin_write_NFC_IRQSTAT(i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
