; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_pxa3xx_nand.c_pxa3xx_nand_config_flash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_pxa3xx_nand.c_pxa3xx_nand_config_flash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa3xx_nand_info = type { i32, i32, i32, i32, i32, %struct.pxa3xx_nand_flash*, %struct.platform_device* }
%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.pxa3xx_nand_platform_data* }
%struct.pxa3xx_nand_platform_data = type { i64 }
%struct.pxa3xx_nand_flash = type { i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@NDCR_ND_ARB_EN = common dso_local global i32 0, align 4
@NDCR_RA_START = common dso_local global i32 0, align 4
@NDCR_PG_PER_BLK = common dso_local global i32 0, align 4
@NDCR_PAGE_SZ = common dso_local global i32 0, align 4
@NDCR_DWIDTH_M = common dso_local global i32 0, align 4
@NDCR_DWIDTH_C = common dso_local global i32 0, align 4
@NDCR_SPARE_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_flash*)* @pxa3xx_nand_config_flash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa3xx_nand_config_flash(%struct.pxa3xx_nand_info* %0, %struct.pxa3xx_nand_flash* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pxa3xx_nand_info*, align 8
  %5 = alloca %struct.pxa3xx_nand_flash*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.pxa3xx_nand_platform_data*, align 8
  %8 = alloca i32, align 4
  store %struct.pxa3xx_nand_info* %0, %struct.pxa3xx_nand_info** %4, align 8
  store %struct.pxa3xx_nand_flash* %1, %struct.pxa3xx_nand_flash** %5, align 8
  %9 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %4, align 8
  %10 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %9, i32 0, i32 6
  %11 = load %struct.platform_device*, %struct.platform_device** %10, align 8
  store %struct.platform_device* %11, %struct.platform_device** %6, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.pxa3xx_nand_platform_data*, %struct.pxa3xx_nand_platform_data** %14, align 8
  store %struct.pxa3xx_nand_platform_data* %15, %struct.pxa3xx_nand_platform_data** %7, align 8
  store i32 4095, i32* %8, align 4
  %16 = load %struct.pxa3xx_nand_flash*, %struct.pxa3xx_nand_flash** %5, align 8
  %17 = getelementptr inbounds %struct.pxa3xx_nand_flash, %struct.pxa3xx_nand_flash* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 2048
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load %struct.pxa3xx_nand_flash*, %struct.pxa3xx_nand_flash** %5, align 8
  %22 = getelementptr inbounds %struct.pxa3xx_nand_flash, %struct.pxa3xx_nand_flash* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 512
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %167

28:                                               ; preds = %20, %2
  %29 = load %struct.pxa3xx_nand_flash*, %struct.pxa3xx_nand_flash** %5, align 8
  %30 = getelementptr inbounds %struct.pxa3xx_nand_flash, %struct.pxa3xx_nand_flash* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 16
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load %struct.pxa3xx_nand_flash*, %struct.pxa3xx_nand_flash** %5, align 8
  %35 = getelementptr inbounds %struct.pxa3xx_nand_flash, %struct.pxa3xx_nand_flash* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 8
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %167

41:                                               ; preds = %33, %28
  %42 = load %struct.pxa3xx_nand_flash*, %struct.pxa3xx_nand_flash** %5, align 8
  %43 = getelementptr inbounds %struct.pxa3xx_nand_flash, %struct.pxa3xx_nand_flash* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 2048
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 64, i32 16
  %48 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %4, align 8
  %49 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.pxa3xx_nand_flash*, %struct.pxa3xx_nand_flash** %5, align 8
  %51 = getelementptr inbounds %struct.pxa3xx_nand_flash, %struct.pxa3xx_nand_flash* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 2048
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 4, i32 2
  %56 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %4, align 8
  %57 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.pxa3xx_nand_flash*, %struct.pxa3xx_nand_flash** %5, align 8
  %59 = getelementptr inbounds %struct.pxa3xx_nand_flash, %struct.pxa3xx_nand_flash* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 2048
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 2, i32 1
  %64 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %4, align 8
  %65 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load %struct.pxa3xx_nand_flash*, %struct.pxa3xx_nand_flash** %5, align 8
  %67 = getelementptr inbounds %struct.pxa3xx_nand_flash, %struct.pxa3xx_nand_flash* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.pxa3xx_nand_flash*, %struct.pxa3xx_nand_flash** %5, align 8
  %70 = getelementptr inbounds %struct.pxa3xx_nand_flash, %struct.pxa3xx_nand_flash* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = mul nsw i32 %68, %71
  %73 = icmp sgt i32 %72, 65536
  br i1 %73, label %74, label %77

74:                                               ; preds = %41
  %75 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %4, align 8
  %76 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %75, i32 0, i32 3
  store i32 3, i32* %76, align 4
  br label %80

77:                                               ; preds = %41
  %78 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %4, align 8
  %79 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %78, i32 0, i32 3
  store i32 2, i32* %79, align 4
  br label %80

80:                                               ; preds = %77, %74
  %81 = load %struct.pxa3xx_nand_platform_data*, %struct.pxa3xx_nand_platform_data** %7, align 8
  %82 = getelementptr inbounds %struct.pxa3xx_nand_platform_data, %struct.pxa3xx_nand_platform_data* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i32, i32* @NDCR_ND_ARB_EN, align 4
  br label %88

87:                                               ; preds = %80
  br label %88

88:                                               ; preds = %87, %85
  %89 = phi i32 [ %86, %85 ], [ 0, %87 ]
  %90 = load i32, i32* %8, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %8, align 4
  %92 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %4, align 8
  %93 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = icmp eq i32 %94, 2
  br i1 %95, label %96, label %98

96:                                               ; preds = %88
  %97 = load i32, i32* @NDCR_RA_START, align 4
  br label %99

98:                                               ; preds = %88
  br label %99

99:                                               ; preds = %98, %96
  %100 = phi i32 [ %97, %96 ], [ 0, %98 ]
  %101 = load i32, i32* %8, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %8, align 4
  %103 = load %struct.pxa3xx_nand_flash*, %struct.pxa3xx_nand_flash** %5, align 8
  %104 = getelementptr inbounds %struct.pxa3xx_nand_flash, %struct.pxa3xx_nand_flash* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %105, 64
  br i1 %106, label %107, label %109

107:                                              ; preds = %99
  %108 = load i32, i32* @NDCR_PG_PER_BLK, align 4
  br label %110

109:                                              ; preds = %99
  br label %110

110:                                              ; preds = %109, %107
  %111 = phi i32 [ %108, %107 ], [ 0, %109 ]
  %112 = load i32, i32* %8, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %8, align 4
  %114 = load %struct.pxa3xx_nand_flash*, %struct.pxa3xx_nand_flash** %5, align 8
  %115 = getelementptr inbounds %struct.pxa3xx_nand_flash, %struct.pxa3xx_nand_flash* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %116, 2048
  br i1 %117, label %118, label %120

118:                                              ; preds = %110
  %119 = load i32, i32* @NDCR_PAGE_SZ, align 4
  br label %121

120:                                              ; preds = %110
  br label %121

121:                                              ; preds = %120, %118
  %122 = phi i32 [ %119, %118 ], [ 0, %120 ]
  %123 = load i32, i32* %8, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %8, align 4
  %125 = load %struct.pxa3xx_nand_flash*, %struct.pxa3xx_nand_flash** %5, align 8
  %126 = getelementptr inbounds %struct.pxa3xx_nand_flash, %struct.pxa3xx_nand_flash* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = icmp eq i32 %127, 16
  br i1 %128, label %129, label %131

129:                                              ; preds = %121
  %130 = load i32, i32* @NDCR_DWIDTH_M, align 4
  br label %132

131:                                              ; preds = %121
  br label %132

132:                                              ; preds = %131, %129
  %133 = phi i32 [ %130, %129 ], [ 0, %131 ]
  %134 = load i32, i32* %8, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %8, align 4
  %136 = load %struct.pxa3xx_nand_flash*, %struct.pxa3xx_nand_flash** %5, align 8
  %137 = getelementptr inbounds %struct.pxa3xx_nand_flash, %struct.pxa3xx_nand_flash* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 4
  %139 = icmp eq i32 %138, 16
  br i1 %139, label %140, label %142

140:                                              ; preds = %132
  %141 = load i32, i32* @NDCR_DWIDTH_C, align 4
  br label %143

142:                                              ; preds = %132
  br label %143

143:                                              ; preds = %142, %140
  %144 = phi i32 [ %141, %140 ], [ 0, %142 ]
  %145 = load i32, i32* %8, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %8, align 4
  %147 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %4, align 8
  %148 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @NDCR_RD_ID_CNT(i32 %149)
  %151 = load i32, i32* %8, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %8, align 4
  %153 = load i32, i32* @NDCR_SPARE_EN, align 4
  %154 = load i32, i32* %8, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %8, align 4
  %156 = load i32, i32* %8, align 4
  %157 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %4, align 8
  %158 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %157, i32 0, i32 4
  store i32 %156, i32* %158, align 8
  %159 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %4, align 8
  %160 = load %struct.pxa3xx_nand_flash*, %struct.pxa3xx_nand_flash** %5, align 8
  %161 = getelementptr inbounds %struct.pxa3xx_nand_flash, %struct.pxa3xx_nand_flash* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @pxa3xx_nand_set_timing(%struct.pxa3xx_nand_info* %159, i32 %162)
  %164 = load %struct.pxa3xx_nand_flash*, %struct.pxa3xx_nand_flash** %5, align 8
  %165 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %4, align 8
  %166 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %165, i32 0, i32 5
  store %struct.pxa3xx_nand_flash* %164, %struct.pxa3xx_nand_flash** %166, align 8
  store i32 0, i32* %3, align 4
  br label %167

167:                                              ; preds = %143, %38, %25
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local i32 @NDCR_RD_ID_CNT(i32) #1

declare dso_local i32 @pxa3xx_nand_set_timing(%struct.pxa3xx_nand_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
