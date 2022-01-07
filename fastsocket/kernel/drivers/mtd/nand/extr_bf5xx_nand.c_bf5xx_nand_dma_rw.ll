; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_bf5xx_nand.c_bf5xx_nand_dma_rw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_bf5xx_nand.c_bf5xx_nand_dma_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.bf5xx_nand_info = type { i32, i32, %struct.bf5xx_nand_platform* }
%struct.bf5xx_nand_platform = type { i16 }

@.str = private unnamed_addr constant [31 x i8] c" mtd->%p, buf->%p, is_read %d\0A\00", align 1
@CH_NFC = common dso_local global i32 0, align 4
@WNR = common dso_local global i16 0, align 2
@DI_EN = common dso_local global i16 0, align 2
@WDSIZE_16 = common dso_local global i16 0, align 2
@WDSIZE_32 = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i32*, i32)* @bf5xx_nand_dma_rw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bf5xx_nand_dma_rw(%struct.mtd_info* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bf5xx_nand_info*, align 8
  %8 = alloca %struct.bf5xx_nand_platform*, align 8
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %12 = call %struct.bf5xx_nand_info* @mtd_to_nand_info(%struct.mtd_info* %11)
  store %struct.bf5xx_nand_info* %12, %struct.bf5xx_nand_info** %7, align 8
  %13 = load %struct.bf5xx_nand_info*, %struct.bf5xx_nand_info** %7, align 8
  %14 = getelementptr inbounds %struct.bf5xx_nand_info, %struct.bf5xx_nand_info* %13, i32 0, i32 2
  %15 = load %struct.bf5xx_nand_platform*, %struct.bf5xx_nand_platform** %14, align 8
  store %struct.bf5xx_nand_platform* %15, %struct.bf5xx_nand_platform** %8, align 8
  %16 = load %struct.bf5xx_nand_platform*, %struct.bf5xx_nand_platform** %8, align 8
  %17 = getelementptr inbounds %struct.bf5xx_nand_platform, %struct.bf5xx_nand_platform* %16, i32 0, i32 0
  %18 = load i16, i16* %17, align 2
  %19 = sext i16 %18 to i32
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 512, i32 256
  %23 = trunc i32 %22 to i16
  store i16 %23, i16* %9, align 2
  %24 = load %struct.bf5xx_nand_info*, %struct.bf5xx_nand_info** %7, align 8
  %25 = getelementptr inbounds %struct.bf5xx_nand_info, %struct.bf5xx_nand_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @dev_dbg(i32 %26, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.mtd_info* %27, i32* %28, i32 %29)
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %3
  %34 = load i32*, i32** %5, align 8
  %35 = ptrtoint i32* %34 to i32
  %36 = load i32*, i32** %5, align 8
  %37 = load i16, i16* %9, align 2
  %38 = zext i16 %37 to i32
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = ptrtoint i32* %40 to i32
  %42 = call i32 @invalidate_dcache_range(i32 %35, i32 %41)
  br label %53

43:                                               ; preds = %3
  %44 = load i32*, i32** %5, align 8
  %45 = ptrtoint i32* %44 to i32
  %46 = load i32*, i32** %5, align 8
  %47 = load i16, i16* %9, align 2
  %48 = zext i16 %47 to i32
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = ptrtoint i32* %50 to i32
  %52 = call i32 @flush_dcache_range(i32 %45, i32 %51)
  br label %53

53:                                               ; preds = %43, %33
  %54 = call i32 @bfin_write_NFC_RST(i32 1)
  %55 = call i32 (...) @SSYNC()
  %56 = load i32, i32* @CH_NFC, align 4
  %57 = call i32 @disable_dma(i32 %56)
  %58 = load i32, i32* @CH_NFC, align 4
  %59 = call i32 @clear_dma_irqstat(i32 %58)
  %60 = load i32, i32* @CH_NFC, align 4
  %61 = call i32 @set_dma_config(i32 %60, i16 zeroext 0)
  %62 = load i32, i32* @CH_NFC, align 4
  %63 = load i32*, i32** %5, align 8
  %64 = ptrtoint i32* %63 to i64
  %65 = call i32 @set_dma_start_addr(i32 %62, i64 %64)
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %53
  %69 = load i16, i16* @WNR, align 2
  %70 = zext i16 %69 to i32
  %71 = load i16, i16* %10, align 2
  %72 = zext i16 %71 to i32
  %73 = or i32 %72, %70
  %74 = trunc i32 %73 to i16
  store i16 %74, i16* %10, align 2
  br label %75

75:                                               ; preds = %68, %53
  %76 = load i32, i32* @CH_NFC, align 4
  %77 = load i16, i16* %10, align 2
  %78 = call i32 @set_dma_config(i32 %76, i16 zeroext %77)
  %79 = load i32, i32* @CH_NFC, align 4
  %80 = call i32 @enable_dma(i32 %79)
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %75
  %84 = call i32 @bfin_write_NFC_PGCTL(i32 1)
  br label %87

85:                                               ; preds = %75
  %86 = call i32 @bfin_write_NFC_PGCTL(i32 2)
  br label %87

87:                                               ; preds = %85, %83
  %88 = load %struct.bf5xx_nand_info*, %struct.bf5xx_nand_info** %7, align 8
  %89 = getelementptr inbounds %struct.bf5xx_nand_info, %struct.bf5xx_nand_info* %88, i32 0, i32 0
  %90 = call i32 @wait_for_completion(i32* %89)
  ret void
}

declare dso_local %struct.bf5xx_nand_info* @mtd_to_nand_info(%struct.mtd_info*) #1

declare dso_local i32 @dev_dbg(i32, i8*, %struct.mtd_info*, i32*, i32) #1

declare dso_local i32 @invalidate_dcache_range(i32, i32) #1

declare dso_local i32 @flush_dcache_range(i32, i32) #1

declare dso_local i32 @bfin_write_NFC_RST(i32) #1

declare dso_local i32 @SSYNC(...) #1

declare dso_local i32 @disable_dma(i32) #1

declare dso_local i32 @clear_dma_irqstat(i32) #1

declare dso_local i32 @set_dma_config(i32, i16 zeroext) #1

declare dso_local i32 @set_dma_start_addr(i32, i64) #1

declare dso_local i32 @enable_dma(i32) #1

declare dso_local i32 @bfin_write_NFC_PGCTL(i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
