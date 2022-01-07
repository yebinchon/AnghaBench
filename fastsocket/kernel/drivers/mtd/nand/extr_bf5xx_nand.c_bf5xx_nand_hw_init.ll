; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_bf5xx_nand.c_bf5xx_nand_hw_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_bf5xx_nand.c_bf5xx_nand_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bf5xx_nand_info = type { i32, %struct.bf5xx_nand_platform* }
%struct.bf5xx_nand_platform = type { i32, i32, i16, i32 }

@.str = private unnamed_addr constant [51 x i8] c"page_size=%d, data_width=%d, wr_dly=%d, rd_dly=%d\0A\00", align 1
@NFC_PG_SIZE_OFFSET = common dso_local global i16 0, align 2
@NFC_NWIDTH_OFFSET = common dso_local global i16 0, align 2
@NFC_RDDLY_OFFSET = common dso_local global i16 0, align 2
@NFC_WRDLY_OFFSET = common dso_local global i16 0, align 2
@.str.1 = private unnamed_addr constant [19 x i8] c"NFC_CTL is 0x%04x\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bf5xx_nand_info*)* @bf5xx_nand_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bf5xx_nand_hw_init(%struct.bf5xx_nand_info* %0) #0 {
  %2 = alloca %struct.bf5xx_nand_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca %struct.bf5xx_nand_platform*, align 8
  store %struct.bf5xx_nand_info* %0, %struct.bf5xx_nand_info** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.bf5xx_nand_info*, %struct.bf5xx_nand_info** %2, align 8
  %7 = getelementptr inbounds %struct.bf5xx_nand_info, %struct.bf5xx_nand_info* %6, i32 0, i32 1
  %8 = load %struct.bf5xx_nand_platform*, %struct.bf5xx_nand_platform** %7, align 8
  store %struct.bf5xx_nand_platform* %8, %struct.bf5xx_nand_platform** %5, align 8
  %9 = load %struct.bf5xx_nand_info*, %struct.bf5xx_nand_info** %2, align 8
  %10 = getelementptr inbounds %struct.bf5xx_nand_info, %struct.bf5xx_nand_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.bf5xx_nand_platform*, %struct.bf5xx_nand_platform** %5, align 8
  %13 = getelementptr inbounds %struct.bf5xx_nand_platform, %struct.bf5xx_nand_platform* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 512, i32 256
  %18 = load %struct.bf5xx_nand_platform*, %struct.bf5xx_nand_platform** %5, align 8
  %19 = getelementptr inbounds %struct.bf5xx_nand_platform, %struct.bf5xx_nand_platform* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 16, i32 8
  %24 = load %struct.bf5xx_nand_platform*, %struct.bf5xx_nand_platform** %5, align 8
  %25 = getelementptr inbounds %struct.bf5xx_nand_platform, %struct.bf5xx_nand_platform* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.bf5xx_nand_platform*, %struct.bf5xx_nand_platform** %5, align 8
  %28 = getelementptr inbounds %struct.bf5xx_nand_platform, %struct.bf5xx_nand_platform* %27, i32 0, i32 2
  %29 = load i16, i16* %28, align 4
  %30 = call i32 @dev_info(i32 %11, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %23, i32 %26, i16 zeroext %29)
  %31 = load %struct.bf5xx_nand_platform*, %struct.bf5xx_nand_platform** %5, align 8
  %32 = getelementptr inbounds %struct.bf5xx_nand_platform, %struct.bf5xx_nand_platform* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i16, i16* @NFC_PG_SIZE_OFFSET, align 2
  %35 = zext i16 %34 to i32
  %36 = shl i32 %33, %35
  %37 = load %struct.bf5xx_nand_platform*, %struct.bf5xx_nand_platform** %5, align 8
  %38 = getelementptr inbounds %struct.bf5xx_nand_platform, %struct.bf5xx_nand_platform* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i16, i16* @NFC_NWIDTH_OFFSET, align 2
  %41 = zext i16 %40 to i32
  %42 = shl i32 %39, %41
  %43 = or i32 %36, %42
  %44 = load %struct.bf5xx_nand_platform*, %struct.bf5xx_nand_platform** %5, align 8
  %45 = getelementptr inbounds %struct.bf5xx_nand_platform, %struct.bf5xx_nand_platform* %44, i32 0, i32 2
  %46 = load i16, i16* %45, align 4
  %47 = zext i16 %46 to i32
  %48 = load i16, i16* @NFC_RDDLY_OFFSET, align 2
  %49 = zext i16 %48 to i32
  %50 = shl i32 %47, %49
  %51 = or i32 %43, %50
  %52 = load %struct.bf5xx_nand_platform*, %struct.bf5xx_nand_platform** %5, align 8
  %53 = getelementptr inbounds %struct.bf5xx_nand_platform, %struct.bf5xx_nand_platform* %52, i32 0, i32 2
  %54 = load i16, i16* %53, align 4
  %55 = zext i16 %54 to i32
  %56 = load i16, i16* @NFC_WRDLY_OFFSET, align 2
  %57 = zext i16 %56 to i32
  %58 = shl i32 %55, %57
  %59 = or i32 %51, %58
  %60 = trunc i32 %59 to i16
  store i16 %60, i16* %4, align 2
  %61 = load %struct.bf5xx_nand_info*, %struct.bf5xx_nand_info** %2, align 8
  %62 = getelementptr inbounds %struct.bf5xx_nand_info, %struct.bf5xx_nand_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i16, i16* %4, align 2
  %65 = call i32 @dev_dbg(i32 %63, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i16 zeroext %64)
  %66 = load i16, i16* %4, align 2
  %67 = call i32 @bfin_write_NFC_CTL(i16 zeroext %66)
  %68 = call i32 (...) @SSYNC()
  %69 = call i32 @bfin_write_NFC_IRQMASK(i32 0)
  %70 = call i32 (...) @SSYNC()
  %71 = call zeroext i16 (...) @bfin_read_NFC_IRQSTAT()
  store i16 %71, i16* %4, align 2
  %72 = load i16, i16* %4, align 2
  %73 = call i32 @bfin_write_NFC_IRQSTAT(i16 zeroext %72)
  %74 = call i32 (...) @SSYNC()
  %75 = load %struct.bf5xx_nand_info*, %struct.bf5xx_nand_info** %2, align 8
  %76 = call i64 @bf5xx_nand_dma_init(%struct.bf5xx_nand_info* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %1
  %79 = load i32, i32* @ENXIO, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %78, %1
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @dev_info(i32, i8*, i32, i32, i32, i16 zeroext) #1

declare dso_local i32 @dev_dbg(i32, i8*, i16 zeroext) #1

declare dso_local i32 @bfin_write_NFC_CTL(i16 zeroext) #1

declare dso_local i32 @SSYNC(...) #1

declare dso_local i32 @bfin_write_NFC_IRQMASK(i32) #1

declare dso_local zeroext i16 @bfin_read_NFC_IRQSTAT(...) #1

declare dso_local i32 @bfin_write_NFC_IRQSTAT(i16 zeroext) #1

declare dso_local i64 @bf5xx_nand_dma_init(%struct.bf5xx_nand_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
