; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_pxa3xx_nand.c_pxa3xx_nand_detect_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_pxa3xx_nand.c_pxa3xx_nand_detect_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32*, i32* }
%struct.nand_flash_dev = type { i32, i32, i32* }
%struct.pxa3xx_nand_info = type { i32, i32, i32, i32, i32, %struct.TYPE_2__* }

@NDCR = common dso_local global i32 0, align 4
@NDCR_PG_PER_BLK = common dso_local global i32 0, align 4
@default_flash = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@NDCR_PAGE_SZ = common dso_local global i32 0, align 4
@NDCR_DWIDTH_M = common dso_local global i32 0, align 4
@NDCR_DWIDTH_C = common dso_local global i32 0, align 4
@largepage_cmdset = common dso_local global i32 0, align 4
@smallpage_cmdset = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@nand_flash_ids = common dso_local global %struct.nand_flash_dev* null, align 8
@default_timing = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pxa3xx_nand_info*)* @pxa3xx_nand_detect_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa3xx_nand_detect_config(%struct.pxa3xx_nand_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pxa3xx_nand_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nand_flash_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pxa3xx_nand_info* %0, %struct.pxa3xx_nand_info** %3, align 8
  %8 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %3, align 8
  %9 = load i32, i32* @NDCR, align 4
  %10 = call i32 @nand_readl(%struct.pxa3xx_nand_info* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  store %struct.nand_flash_dev* null, %struct.nand_flash_dev** %5, align 8
  store i32 -1, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @NDCR_PG_PER_BLK, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 64, i32 32
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @default_flash, i32 0, i32 0), align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @NDCR_PAGE_SZ, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 2048, i32 512
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @default_flash, i32 0, i32 1), align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @NDCR_DWIDTH_M, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 16, i32 8
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @default_flash, i32 0, i32 2), align 8
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @NDCR_DWIDTH_C, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 16, i32 8
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @default_flash, i32 0, i32 3), align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @default_flash, i32 0, i32 1), align 4
  %36 = icmp eq i32 %35, 2048
  br i1 %36, label %37, label %38

37:                                               ; preds = %1
  store i32* @largepage_cmdset, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @default_flash, i32 0, i32 6), align 8
  br label %39

38:                                               ; preds = %1
  store i32* @smallpage_cmdset, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @default_flash, i32 0, i32 6), align 8
  br label %39

39:                                               ; preds = %38, %37
  %40 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %3, align 8
  %41 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %40, i32 0, i32 5
  store %struct.TYPE_2__* @default_flash, %struct.TYPE_2__** %41, align 8
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @default_flash, i32 0, i32 1), align 4
  %43 = icmp eq i32 %42, 2048
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 4, i32 2
  %46 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %3, align 8
  %47 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %3, align 8
  %50 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %3, align 8
  %52 = call i64 @__readid(%struct.pxa3xx_nand_info* %51, i32* %6)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %39
  %55 = load i32, i32* @ENODEV, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %129

57:                                               ; preds = %39
  %58 = load i32, i32* %6, align 4
  %59 = ashr i32 %58, 8
  %60 = and i32 %59, 255
  store i32 %60, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %61

61:                                               ; preds = %84, %57
  %62 = load %struct.nand_flash_dev*, %struct.nand_flash_dev** @nand_flash_ids, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.nand_flash_dev, %struct.nand_flash_dev* %62, i64 %64
  %66 = getelementptr inbounds %struct.nand_flash_dev, %struct.nand_flash_dev* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %87

69:                                               ; preds = %61
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.nand_flash_dev*, %struct.nand_flash_dev** @nand_flash_ids, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.nand_flash_dev, %struct.nand_flash_dev* %71, i64 %73
  %75 = getelementptr inbounds %struct.nand_flash_dev, %struct.nand_flash_dev* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp eq i32 %70, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %69
  %79 = load %struct.nand_flash_dev*, %struct.nand_flash_dev** @nand_flash_ids, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.nand_flash_dev, %struct.nand_flash_dev* %79, i64 %81
  store %struct.nand_flash_dev* %82, %struct.nand_flash_dev** %5, align 8
  br label %87

83:                                               ; preds = %69
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %7, align 4
  br label %61

87:                                               ; preds = %78, %61
  %88 = load %struct.nand_flash_dev*, %struct.nand_flash_dev** %5, align 8
  %89 = icmp ne %struct.nand_flash_dev* %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %87
  %91 = load i32, i32* @ENODEV, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %2, align 4
  br label %129

93:                                               ; preds = %87
  %94 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @default_flash, i32 0, i32 0), align 8
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @default_flash, i32 0, i32 1), align 4
  %96 = mul nsw i32 %94, %95
  %97 = call i32 @__ffs(i32 %96)
  store i32 %97, i32* %7, align 4
  %98 = load %struct.nand_flash_dev*, %struct.nand_flash_dev** %5, align 8
  %99 = getelementptr inbounds %struct.nand_flash_dev, %struct.nand_flash_dev* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %7, align 4
  %102 = sub nsw i32 20, %101
  %103 = shl i32 %100, %102
  store i32 %103, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @default_flash, i32 0, i32 4), align 8
  %104 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @default_flash, i32 0, i32 1), align 4
  %105 = icmp eq i32 %104, 2048
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i32 64, i32 16
  %108 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %3, align 8
  %109 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 8
  %110 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @default_flash, i32 0, i32 1), align 4
  %111 = icmp eq i32 %110, 2048
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i32 2, i32 1
  %114 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %3, align 8
  %115 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @default_flash, i32 0, i32 4), align 8
  %117 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @default_flash, i32 0, i32 0), align 8
  %118 = mul nsw i32 %116, %117
  %119 = icmp sgt i32 %118, 65536
  br i1 %119, label %120, label %123

120:                                              ; preds = %93
  %121 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %3, align 8
  %122 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %121, i32 0, i32 4
  store i32 3, i32* %122, align 8
  br label %126

123:                                              ; preds = %93
  %124 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %3, align 8
  %125 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %124, i32 0, i32 4
  store i32 2, i32* %125, align 8
  br label %126

126:                                              ; preds = %123, %120
  %127 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %3, align 8
  %128 = call i32 @pxa3xx_nand_detect_timing(%struct.pxa3xx_nand_info* %127, i32* @default_timing)
  store i32* @default_timing, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @default_flash, i32 0, i32 5), align 8
  store i32 0, i32* %2, align 4
  br label %129

129:                                              ; preds = %126, %90, %54
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local i32 @nand_readl(%struct.pxa3xx_nand_info*, i32) #1

declare dso_local i64 @__readid(%struct.pxa3xx_nand_info*, i32*) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @pxa3xx_nand_detect_timing(%struct.pxa3xx_nand_info*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
