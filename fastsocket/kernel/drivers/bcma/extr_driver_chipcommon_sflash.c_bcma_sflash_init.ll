; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bcma/extr_driver_chipcommon_sflash.c_bcma_sflash_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bcma/extr_driver_chipcommon_sflash.c_bcma_sflash_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_sflash_tbl_e = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { %struct.bcma_sflash* }
%struct.bcma_sflash = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.bcma_drv_cc = type { i32, %struct.bcma_sflash, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.bcma_bus* }
%struct.bcma_bus = type { i32 }

@BCMA_CC_CAP_FLASHT = common dso_local global i32 0, align 4
@BCMA_CC_FLASHCTL_ST_DP = common dso_local global i32 0, align 4
@BCMA_CC_FLASHADDR = common dso_local global i32 0, align 4
@BCMA_CC_FLASHCTL_ST_RES = common dso_local global i32 0, align 4
@BCMA_CC_FLASHDATA = common dso_local global i32 0, align 4
@bcma_sflash_sst_tbl = common dso_local global %struct.bcma_sflash_tbl_e* null, align 8
@ENOTSUPP = common dso_local global i32 0, align 4
@bcma_sflash_st_tbl = common dso_local global %struct.bcma_sflash_tbl_e* null, align 8
@.str = private unnamed_addr constant [51 x i8] c"Unsupported ST serial flash (id: 0x%X, id2: 0x%X)\0A\00", align 1
@BCMA_CC_FLASHCTL_AT_STATUS = common dso_local global i32 0, align 4
@bcma_sflash_at_tbl = common dso_local global %struct.bcma_sflash_tbl_e* null, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"Unsupported Atmel serial flash (id: 0x%X)\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Unsupported flash type\0A\00", align 1
@BCMA_SOC_FLASH2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [66 x i8] c"Found %s serial flash (size: %dKiB, blocksize: 0x%X, blocks: %d)\0A\00", align 1
@bcma_sflash_dev = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcma_sflash_init(%struct.bcma_drv_cc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcma_drv_cc*, align 8
  %4 = alloca %struct.bcma_bus*, align 8
  %5 = alloca %struct.bcma_sflash*, align 8
  %6 = alloca %struct.bcma_sflash_tbl_e*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bcma_drv_cc* %0, %struct.bcma_drv_cc** %3, align 8
  %9 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %10 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %9, i32 0, i32 2
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.bcma_bus*, %struct.bcma_bus** %12, align 8
  store %struct.bcma_bus* %13, %struct.bcma_bus** %4, align 8
  %14 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %15 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %14, i32 0, i32 1
  store %struct.bcma_sflash* %15, %struct.bcma_sflash** %5, align 8
  %16 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %17 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @BCMA_CC_CAP_FLASHT, align 4
  %20 = and i32 %18, %19
  switch i32 %20, label %135 [
    i32 128, label %21
    i32 129, label %98
  ]

21:                                               ; preds = %1
  %22 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %23 = load i32, i32* @BCMA_CC_FLASHCTL_ST_DP, align 4
  %24 = call i32 @bcma_sflash_cmd(%struct.bcma_drv_cc* %22, i32 %23)
  %25 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %26 = load i32, i32* @BCMA_CC_FLASHADDR, align 4
  %27 = call i32 @bcma_cc_write32(%struct.bcma_drv_cc* %25, i32 %26, i32 0)
  %28 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %29 = load i32, i32* @BCMA_CC_FLASHCTL_ST_RES, align 4
  %30 = call i32 @bcma_sflash_cmd(%struct.bcma_drv_cc* %28, i32 %29)
  %31 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %32 = load i32, i32* @BCMA_CC_FLASHDATA, align 4
  %33 = call i32 @bcma_cc_read32(%struct.bcma_drv_cc* %31, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %35 = load i32, i32* @BCMA_CC_FLASHADDR, align 4
  %36 = call i32 @bcma_cc_write32(%struct.bcma_drv_cc* %34, i32 %35, i32 1)
  %37 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %38 = load i32, i32* @BCMA_CC_FLASHCTL_ST_RES, align 4
  %39 = call i32 @bcma_sflash_cmd(%struct.bcma_drv_cc* %37, i32 %38)
  %40 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %41 = load i32, i32* @BCMA_CC_FLASHDATA, align 4
  %42 = call i32 @bcma_cc_read32(%struct.bcma_drv_cc* %40, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %7, align 4
  switch i32 %43, label %66 [
    i32 191, label %44
    i32 19, label %63
  ]

44:                                               ; preds = %21
  %45 = load %struct.bcma_sflash_tbl_e*, %struct.bcma_sflash_tbl_e** @bcma_sflash_sst_tbl, align 8
  store %struct.bcma_sflash_tbl_e* %45, %struct.bcma_sflash_tbl_e** %6, align 8
  br label %46

46:                                               ; preds = %59, %44
  %47 = load %struct.bcma_sflash_tbl_e*, %struct.bcma_sflash_tbl_e** %6, align 8
  %48 = getelementptr inbounds %struct.bcma_sflash_tbl_e, %struct.bcma_sflash_tbl_e* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %46
  %52 = load %struct.bcma_sflash_tbl_e*, %struct.bcma_sflash_tbl_e** %6, align 8
  %53 = getelementptr inbounds %struct.bcma_sflash_tbl_e, %struct.bcma_sflash_tbl_e* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %62

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.bcma_sflash_tbl_e*, %struct.bcma_sflash_tbl_e** %6, align 8
  %61 = getelementptr inbounds %struct.bcma_sflash_tbl_e, %struct.bcma_sflash_tbl_e* %60, i32 1
  store %struct.bcma_sflash_tbl_e* %61, %struct.bcma_sflash_tbl_e** %6, align 8
  br label %46

62:                                               ; preds = %57, %46
  br label %85

63:                                               ; preds = %21
  %64 = load i32, i32* @ENOTSUPP, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %193

66:                                               ; preds = %21
  %67 = load %struct.bcma_sflash_tbl_e*, %struct.bcma_sflash_tbl_e** @bcma_sflash_st_tbl, align 8
  store %struct.bcma_sflash_tbl_e* %67, %struct.bcma_sflash_tbl_e** %6, align 8
  br label %68

68:                                               ; preds = %81, %66
  %69 = load %struct.bcma_sflash_tbl_e*, %struct.bcma_sflash_tbl_e** %6, align 8
  %70 = getelementptr inbounds %struct.bcma_sflash_tbl_e, %struct.bcma_sflash_tbl_e* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %68
  %74 = load %struct.bcma_sflash_tbl_e*, %struct.bcma_sflash_tbl_e** %6, align 8
  %75 = getelementptr inbounds %struct.bcma_sflash_tbl_e, %struct.bcma_sflash_tbl_e* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %84

80:                                               ; preds = %73
  br label %81

81:                                               ; preds = %80
  %82 = load %struct.bcma_sflash_tbl_e*, %struct.bcma_sflash_tbl_e** %6, align 8
  %83 = getelementptr inbounds %struct.bcma_sflash_tbl_e, %struct.bcma_sflash_tbl_e* %82, i32 1
  store %struct.bcma_sflash_tbl_e* %83, %struct.bcma_sflash_tbl_e** %6, align 8
  br label %68

84:                                               ; preds = %79, %68
  br label %85

85:                                               ; preds = %84, %62
  %86 = load %struct.bcma_sflash_tbl_e*, %struct.bcma_sflash_tbl_e** %6, align 8
  %87 = getelementptr inbounds %struct.bcma_sflash_tbl_e, %struct.bcma_sflash_tbl_e* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %85
  %91 = load %struct.bcma_bus*, %struct.bcma_bus** %4, align 8
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %8, align 4
  %94 = call i32 (%struct.bcma_bus*, i8*, ...) @bcma_err(%struct.bcma_bus* %91, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %92, i32 %93)
  %95 = load i32, i32* @ENOTSUPP, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %2, align 4
  br label %193

97:                                               ; preds = %85
  br label %140

98:                                               ; preds = %1
  %99 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %100 = load i32, i32* @BCMA_CC_FLASHCTL_AT_STATUS, align 4
  %101 = call i32 @bcma_sflash_cmd(%struct.bcma_drv_cc* %99, i32 %100)
  %102 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %103 = load i32, i32* @BCMA_CC_FLASHDATA, align 4
  %104 = call i32 @bcma_cc_read32(%struct.bcma_drv_cc* %102, i32 %103)
  %105 = and i32 %104, 60
  store i32 %105, i32* %7, align 4
  %106 = load %struct.bcma_sflash_tbl_e*, %struct.bcma_sflash_tbl_e** @bcma_sflash_at_tbl, align 8
  store %struct.bcma_sflash_tbl_e* %106, %struct.bcma_sflash_tbl_e** %6, align 8
  br label %107

107:                                              ; preds = %120, %98
  %108 = load %struct.bcma_sflash_tbl_e*, %struct.bcma_sflash_tbl_e** %6, align 8
  %109 = getelementptr inbounds %struct.bcma_sflash_tbl_e, %struct.bcma_sflash_tbl_e* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %123

112:                                              ; preds = %107
  %113 = load %struct.bcma_sflash_tbl_e*, %struct.bcma_sflash_tbl_e** %6, align 8
  %114 = getelementptr inbounds %struct.bcma_sflash_tbl_e, %struct.bcma_sflash_tbl_e* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %7, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  br label %123

119:                                              ; preds = %112
  br label %120

120:                                              ; preds = %119
  %121 = load %struct.bcma_sflash_tbl_e*, %struct.bcma_sflash_tbl_e** %6, align 8
  %122 = getelementptr inbounds %struct.bcma_sflash_tbl_e, %struct.bcma_sflash_tbl_e* %121, i32 1
  store %struct.bcma_sflash_tbl_e* %122, %struct.bcma_sflash_tbl_e** %6, align 8
  br label %107

123:                                              ; preds = %118, %107
  %124 = load %struct.bcma_sflash_tbl_e*, %struct.bcma_sflash_tbl_e** %6, align 8
  %125 = getelementptr inbounds %struct.bcma_sflash_tbl_e, %struct.bcma_sflash_tbl_e* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %134, label %128

128:                                              ; preds = %123
  %129 = load %struct.bcma_bus*, %struct.bcma_bus** %4, align 8
  %130 = load i32, i32* %7, align 4
  %131 = call i32 (%struct.bcma_bus*, i8*, ...) @bcma_err(%struct.bcma_bus* %129, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %130)
  %132 = load i32, i32* @ENOTSUPP, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %2, align 4
  br label %193

134:                                              ; preds = %123
  br label %140

135:                                              ; preds = %1
  %136 = load %struct.bcma_bus*, %struct.bcma_bus** %4, align 8
  %137 = call i32 (%struct.bcma_bus*, i8*, ...) @bcma_err(%struct.bcma_bus* %136, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %138 = load i32, i32* @ENOTSUPP, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %2, align 4
  br label %193

140:                                              ; preds = %134, %97
  %141 = load i32, i32* @BCMA_SOC_FLASH2, align 4
  %142 = load %struct.bcma_sflash*, %struct.bcma_sflash** %5, align 8
  %143 = getelementptr inbounds %struct.bcma_sflash, %struct.bcma_sflash* %142, i32 0, i32 4
  store i32 %141, i32* %143, align 4
  %144 = load %struct.bcma_sflash_tbl_e*, %struct.bcma_sflash_tbl_e** %6, align 8
  %145 = getelementptr inbounds %struct.bcma_sflash_tbl_e, %struct.bcma_sflash_tbl_e* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.bcma_sflash*, %struct.bcma_sflash** %5, align 8
  %148 = getelementptr inbounds %struct.bcma_sflash, %struct.bcma_sflash* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 4
  %149 = load %struct.bcma_sflash_tbl_e*, %struct.bcma_sflash_tbl_e** %6, align 8
  %150 = getelementptr inbounds %struct.bcma_sflash_tbl_e, %struct.bcma_sflash_tbl_e* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.bcma_sflash*, %struct.bcma_sflash** %5, align 8
  %153 = getelementptr inbounds %struct.bcma_sflash, %struct.bcma_sflash* %152, i32 0, i32 1
  store i32 %151, i32* %153, align 4
  %154 = load %struct.bcma_sflash*, %struct.bcma_sflash** %5, align 8
  %155 = getelementptr inbounds %struct.bcma_sflash, %struct.bcma_sflash* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.bcma_sflash*, %struct.bcma_sflash** %5, align 8
  %158 = getelementptr inbounds %struct.bcma_sflash, %struct.bcma_sflash* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = mul nsw i32 %156, %159
  %161 = load %struct.bcma_sflash*, %struct.bcma_sflash** %5, align 8
  %162 = getelementptr inbounds %struct.bcma_sflash, %struct.bcma_sflash* %161, i32 0, i32 2
  store i32 %160, i32* %162, align 4
  %163 = load %struct.bcma_sflash*, %struct.bcma_sflash** %5, align 8
  %164 = getelementptr inbounds %struct.bcma_sflash, %struct.bcma_sflash* %163, i32 0, i32 3
  store i32 1, i32* %164, align 4
  %165 = load %struct.bcma_bus*, %struct.bcma_bus** %4, align 8
  %166 = load %struct.bcma_sflash_tbl_e*, %struct.bcma_sflash_tbl_e** %6, align 8
  %167 = getelementptr inbounds %struct.bcma_sflash_tbl_e, %struct.bcma_sflash_tbl_e* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.bcma_sflash*, %struct.bcma_sflash** %5, align 8
  %170 = getelementptr inbounds %struct.bcma_sflash, %struct.bcma_sflash* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = sdiv i32 %171, 1024
  %173 = load %struct.bcma_sflash*, %struct.bcma_sflash** %5, align 8
  %174 = getelementptr inbounds %struct.bcma_sflash, %struct.bcma_sflash* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.bcma_sflash*, %struct.bcma_sflash** %5, align 8
  %177 = getelementptr inbounds %struct.bcma_sflash, %struct.bcma_sflash* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @bcma_info(%struct.bcma_bus* %165, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0), i32 %168, i32 %172, i32 %175, i32 %178)
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @bcma_sflash_dev, i32 0, i32 1), align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i64 0
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.bcma_sflash*, %struct.bcma_sflash** %5, align 8
  %185 = getelementptr inbounds %struct.bcma_sflash, %struct.bcma_sflash* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = sext i32 %186 to i64
  %188 = add nsw i64 %183, %187
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @bcma_sflash_dev, i32 0, i32 1), align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i64 0
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 1
  store i64 %188, i64* %191, align 8
  %192 = load %struct.bcma_sflash*, %struct.bcma_sflash** %5, align 8
  store %struct.bcma_sflash* %192, %struct.bcma_sflash** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @bcma_sflash_dev, i32 0, i32 0, i32 0), align 8
  store i32 0, i32* %2, align 4
  br label %193

193:                                              ; preds = %140, %135, %128, %90, %63
  %194 = load i32, i32* %2, align 4
  ret i32 %194
}

declare dso_local i32 @bcma_sflash_cmd(%struct.bcma_drv_cc*, i32) #1

declare dso_local i32 @bcma_cc_write32(%struct.bcma_drv_cc*, i32, i32) #1

declare dso_local i32 @bcma_cc_read32(%struct.bcma_drv_cc*, i32) #1

declare dso_local i32 @bcma_err(%struct.bcma_bus*, i8*, ...) #1

declare dso_local i32 @bcma_info(%struct.bcma_bus*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
