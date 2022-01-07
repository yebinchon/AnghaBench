; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_bf5xx_nand.c_bf5xx_nand_dma_write_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_bf5xx_nand.c_bf5xx_nand_dma_write_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.bf5xx_nand_info = type { i32, %struct.bf5xx_nand_platform* }
%struct.bf5xx_nand_platform = type { i16 }

@.str = private unnamed_addr constant [26 x i8] c"mtd->%p, buf->%p, len %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i32*, i32)* @bf5xx_nand_dma_write_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bf5xx_nand_dma_write_buf(%struct.mtd_info* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bf5xx_nand_info*, align 8
  %8 = alloca %struct.bf5xx_nand_platform*, align 8
  %9 = alloca i16, align 2
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %11 = call %struct.bf5xx_nand_info* @mtd_to_nand_info(%struct.mtd_info* %10)
  store %struct.bf5xx_nand_info* %11, %struct.bf5xx_nand_info** %7, align 8
  %12 = load %struct.bf5xx_nand_info*, %struct.bf5xx_nand_info** %7, align 8
  %13 = getelementptr inbounds %struct.bf5xx_nand_info, %struct.bf5xx_nand_info* %12, i32 0, i32 1
  %14 = load %struct.bf5xx_nand_platform*, %struct.bf5xx_nand_platform** %13, align 8
  store %struct.bf5xx_nand_platform* %14, %struct.bf5xx_nand_platform** %8, align 8
  %15 = load %struct.bf5xx_nand_platform*, %struct.bf5xx_nand_platform** %8, align 8
  %16 = getelementptr inbounds %struct.bf5xx_nand_platform, %struct.bf5xx_nand_platform* %15, i32 0, i32 0
  %17 = load i16, i16* %16, align 2
  %18 = sext i16 %17 to i32
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 512, i32 256
  %22 = trunc i32 %21 to i16
  store i16 %22, i16* %9, align 2
  %23 = load %struct.bf5xx_nand_info*, %struct.bf5xx_nand_info** %7, align 8
  %24 = getelementptr inbounds %struct.bf5xx_nand_info, %struct.bf5xx_nand_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @dev_dbg(i32 %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.mtd_info* %26, i32* %27, i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = load i16, i16* %9, align 2
  %32 = zext i16 %31 to i32
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %3
  %35 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @bf5xx_nand_dma_rw(%struct.mtd_info* %35, i32* %36, i32 0)
  br label %43

38:                                               ; preds = %3
  %39 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @bf5xx_nand_write_buf(%struct.mtd_info* %39, i32* %40, i32 %41)
  br label %43

43:                                               ; preds = %38, %34
  ret void
}

declare dso_local %struct.bf5xx_nand_info* @mtd_to_nand_info(%struct.mtd_info*) #1

declare dso_local i32 @dev_dbg(i32, i8*, %struct.mtd_info*, i32*, i32) #1

declare dso_local i32 @bf5xx_nand_dma_rw(%struct.mtd_info*, i32*, i32) #1

declare dso_local i32 @bf5xx_nand_write_buf(%struct.mtd_info*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
