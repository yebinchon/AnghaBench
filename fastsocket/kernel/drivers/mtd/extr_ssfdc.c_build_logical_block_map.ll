; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_ssfdc.c_build_logical_block_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_ssfdc.c_build_logical_block_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssfdcr_record = type { i32, i64, i32, i16*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mtd_info* }
%struct.mtd_info = type { i64 (%struct.mtd_info*, i64)* }

@OOB_SIZE = common dso_local global i32 0, align 4
@MTD_DEBUG_LEVEL1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"SSFDC_RO: build_block_map() nblks=%d (%luK)\0A\00", align 1
@MTD_DEBUG_LEVEL0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"SSFDC_RO: mtd read_oob() failed at %lu\0A\00", align 1
@MAX_LOGIC_BLK_PER_ZONE = common dso_local global i32 0, align 4
@MAX_PHYS_BLK_PER_ZONE = common dso_local global i32 0, align 4
@MTD_DEBUG_LEVEL2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [72 x i8] c"SSFDC_RO: build_block_map() phys_block=%d,logic_block_addr=%d, zone=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssfdcr_record*)* @build_logical_block_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_logical_block_map(%struct.ssfdcr_record* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ssfdcr_record*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mtd_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ssfdcr_record* %0, %struct.ssfdcr_record** %3, align 8
  %13 = load i32, i32* @OOB_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %5, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %6, align 8
  %17 = load %struct.ssfdcr_record*, %struct.ssfdcr_record** %3, align 8
  %18 = getelementptr inbounds %struct.ssfdcr_record, %struct.ssfdcr_record* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.mtd_info*, %struct.mtd_info** %19, align 8
  store %struct.mtd_info* %20, %struct.mtd_info** %10, align 8
  %21 = load i32, i32* @MTD_DEBUG_LEVEL1, align 4
  %22 = load %struct.ssfdcr_record*, %struct.ssfdcr_record** %3, align 8
  %23 = getelementptr inbounds %struct.ssfdcr_record, %struct.ssfdcr_record* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.ssfdcr_record*, %struct.ssfdcr_record** %3, align 8
  %26 = getelementptr inbounds %struct.ssfdcr_record, %struct.ssfdcr_record* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = load %struct.ssfdcr_record*, %struct.ssfdcr_record** %3, align 8
  %30 = getelementptr inbounds %struct.ssfdcr_record, %struct.ssfdcr_record* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = mul i64 %28, %31
  %33 = udiv i64 %32, 1024
  %34 = call i32 (i32, i8*, i32, ...) @DEBUG(i32 %21, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %24, i64 %33)
  %35 = load %struct.ssfdcr_record*, %struct.ssfdcr_record** %3, align 8
  %36 = getelementptr inbounds %struct.ssfdcr_record, %struct.ssfdcr_record* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %102, %1
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.ssfdcr_record*, %struct.ssfdcr_record** %3, align 8
  %42 = getelementptr inbounds %struct.ssfdcr_record, %struct.ssfdcr_record* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %105

45:                                               ; preds = %39
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = load %struct.ssfdcr_record*, %struct.ssfdcr_record** %3, align 8
  %49 = getelementptr inbounds %struct.ssfdcr_record, %struct.ssfdcr_record* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = mul i64 %47, %50
  store i64 %51, i64* %4, align 8
  %52 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %53 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %52, i32 0, i32 0
  %54 = load i64 (%struct.mtd_info*, i64)*, i64 (%struct.mtd_info*, i64)** %53, align 8
  %55 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %56 = load i64, i64* %4, align 8
  %57 = call i64 %54(%struct.mtd_info* %55, i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %45
  br label %102

60:                                               ; preds = %45
  %61 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %62 = load i64, i64* %4, align 8
  %63 = call i32 @read_raw_oob(%struct.mtd_info* %61, i64 %62, i32* %16)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  %67 = load i32, i32* @MTD_DEBUG_LEVEL0, align 4
  %68 = load i64, i64* %4, align 8
  %69 = trunc i64 %68 to i32
  %70 = call i32 (i32, i8*, i32, ...) @DEBUG(i32 %67, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %106

71:                                               ; preds = %60
  %72 = call i32 @get_logical_address(i32* %16)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp sge i32 %73, 0
  br i1 %74, label %75, label %101

75:                                               ; preds = %71
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @MAX_LOGIC_BLK_PER_ZONE, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %101

79:                                               ; preds = %75
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @MAX_PHYS_BLK_PER_ZONE, align 4
  %82 = sdiv i32 %80, %81
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* @MAX_LOGIC_BLK_PER_ZONE, align 4
  %85 = mul nsw i32 %83, %84
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %9, align 4
  %89 = trunc i32 %88 to i16
  %90 = load %struct.ssfdcr_record*, %struct.ssfdcr_record** %3, align 8
  %91 = getelementptr inbounds %struct.ssfdcr_record, %struct.ssfdcr_record* %90, i32 0, i32 3
  %92 = load i16*, i16** %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i16, i16* %92, i64 %94
  store i16 %89, i16* %95, align 2
  %96 = load i32, i32* @MTD_DEBUG_LEVEL2, align 4
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %12, align 4
  %100 = call i32 (i32, i8*, i32, ...) @DEBUG(i32 %96, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0), i32 %97, i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %79, %75, %71
  br label %102

102:                                              ; preds = %101, %59
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %9, align 4
  br label %39

105:                                              ; preds = %39
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %106

106:                                              ; preds = %105, %66
  %107 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %107)
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @DEBUG(i32, i8*, i32, ...) #2

declare dso_local i32 @read_raw_oob(%struct.mtd_info*, i64, i32*) #2

declare dso_local i32 @get_logical_address(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
