; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_bf5xx_nand.c_bf5xx_nand_correct_data_256.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_bf5xx_nand.c_bf5xx_nand_correct_data_256.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.bf5xx_nand_info = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"ECC data was incorrect!\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"syndrome[%d] 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"calced[0x%08x], stored[0x%08x]\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"1-bit correctable error, correct it.\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"syndrome[1] 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"More than 1-bit error, non-correctable error.\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Please discard data, mark bad block\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32*, i32*, i32*)* @bf5xx_nand_correct_data_256 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bf5xx_nand_correct_data_256(%struct.mtd_info* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.bf5xx_nand_info*, align 8
  %11 = alloca [5 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i16, align 2
  %16 = alloca i16, align 2
  %17 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %19 = call %struct.bf5xx_nand_info* @mtd_to_nand_info(%struct.mtd_info* %18)
  store %struct.bf5xx_nand_info* %19, %struct.bf5xx_nand_info** %10, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %9, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 8
  %27 = or i32 %22, %26
  %28 = load i32*, i32** %9, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %30, 16
  %32 = or i32 %27, %31
  store i32 %32, i32* %12, align 4
  %33 = load i32*, i32** %8, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %38, 8
  %40 = or i32 %35, %39
  %41 = load i32*, i32** %8, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 %43, 16
  %45 = or i32 %40, %44
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %13, align 4
  %48 = xor i32 %46, %47
  %49 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 0
  store i32 %48, i32* %49, align 16
  %50 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 0
  %51 = load i32, i32* %50, align 16
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %4
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32, i32* %13, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %56, %53, %4
  store i32 0, i32* %5, align 4
  br label %173

60:                                               ; preds = %56
  %61 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 0
  %62 = load i32, i32* %61, align 16
  %63 = call i32 @hweight32(i32 %62)
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load %struct.bf5xx_nand_info*, %struct.bf5xx_nand_info** %10, align 8
  %67 = getelementptr inbounds %struct.bf5xx_nand_info, %struct.bf5xx_nand_info* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @dev_err(i32 %68, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %173

70:                                               ; preds = %60
  %71 = load i32, i32* %12, align 4
  %72 = and i32 %71, 2047
  %73 = load i32, i32* %13, align 4
  %74 = and i32 %73, 2047
  %75 = xor i32 %72, %74
  %76 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 1
  store i32 %75, i32* %76, align 4
  %77 = load i32, i32* %12, align 4
  %78 = and i32 %77, 2047
  %79 = load i32, i32* %12, align 4
  %80 = ashr i32 %79, 11
  %81 = and i32 %80, 2047
  %82 = xor i32 %78, %81
  %83 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 2
  store i32 %82, i32* %83, align 8
  %84 = load i32, i32* %13, align 4
  %85 = and i32 %84, 2047
  %86 = load i32, i32* %13, align 4
  %87 = ashr i32 %86, 11
  %88 = and i32 %87, 2047
  %89 = xor i32 %85, %88
  %90 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 3
  store i32 %89, i32* %90, align 4
  %91 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 2
  %92 = load i32, i32* %91, align 8
  %93 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 3
  %94 = load i32, i32* %93, align 4
  %95 = xor i32 %92, %94
  %96 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 4
  store i32 %95, i32* %96, align 16
  store i32 0, i32* %14, align 4
  br label %97

97:                                               ; preds = %110, %70
  %98 = load i32, i32* %14, align 4
  %99 = icmp slt i32 %98, 5
  br i1 %99, label %100, label %113

100:                                              ; preds = %97
  %101 = load %struct.bf5xx_nand_info*, %struct.bf5xx_nand_info** %10, align 8
  %102 = getelementptr inbounds %struct.bf5xx_nand_info, %struct.bf5xx_nand_info* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* %14, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (i32, i8*, ...) @dev_info(i32 %103, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %104, i32 %108)
  br label %110

110:                                              ; preds = %100
  %111 = load i32, i32* %14, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %14, align 4
  br label %97

113:                                              ; preds = %97
  %114 = load %struct.bf5xx_nand_info*, %struct.bf5xx_nand_info** %10, align 8
  %115 = getelementptr inbounds %struct.bf5xx_nand_info, %struct.bf5xx_nand_info* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* %13, align 4
  %119 = call i32 (i32, i8*, ...) @dev_info(i32 %116, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %117, i32 %118)
  %120 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 0
  %121 = load i32, i32* %120, align 16
  %122 = call i32 @hweight32(i32 %121)
  %123 = icmp eq i32 %122, 11
  br i1 %123, label %124, label %164

124:                                              ; preds = %113
  %125 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 4
  %126 = load i32, i32* %125, align 16
  %127 = icmp eq i32 %126, 2047
  br i1 %127, label %128, label %164

128:                                              ; preds = %124
  %129 = load %struct.bf5xx_nand_info*, %struct.bf5xx_nand_info** %10, align 8
  %130 = getelementptr inbounds %struct.bf5xx_nand_info, %struct.bf5xx_nand_info* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 (i32, i8*, ...) @dev_info(i32 %131, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %133 = load %struct.bf5xx_nand_info*, %struct.bf5xx_nand_info** %10, align 8
  %134 = getelementptr inbounds %struct.bf5xx_nand_info, %struct.bf5xx_nand_info* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 (i32, i8*, ...) @dev_info(i32 %135, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %137)
  %139 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 1
  %140 = load i32, i32* %139, align 4
  %141 = and i32 %140, 7
  %142 = trunc i32 %141 to i16
  store i16 %142, i16* %15, align 2
  %143 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 1
  %144 = load i32, i32* %143, align 4
  %145 = ashr i32 %144, 3
  %146 = trunc i32 %145 to i16
  store i16 %146, i16* %16, align 2
  %147 = load i32*, i32** %7, align 8
  %148 = load i16, i16* %16, align 2
  %149 = zext i16 %148 to i32
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %147, i64 %150
  %152 = load i32, i32* %151, align 4
  store i32 %152, i32* %17, align 4
  %153 = load i32, i32* %17, align 4
  %154 = load i16, i16* %15, align 2
  %155 = zext i16 %154 to i32
  %156 = shl i32 1, %155
  %157 = xor i32 %153, %156
  store i32 %157, i32* %17, align 4
  %158 = load i32, i32* %17, align 4
  %159 = load i32*, i32** %7, align 8
  %160 = load i16, i16* %16, align 2
  %161 = zext i16 %160 to i32
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %159, i64 %162
  store i32 %158, i32* %163, align 4
  store i32 0, i32* %5, align 4
  br label %173

164:                                              ; preds = %124, %113
  %165 = load %struct.bf5xx_nand_info*, %struct.bf5xx_nand_info** %10, align 8
  %166 = getelementptr inbounds %struct.bf5xx_nand_info, %struct.bf5xx_nand_info* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @dev_err(i32 %167, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0))
  %169 = load %struct.bf5xx_nand_info*, %struct.bf5xx_nand_info** %10, align 8
  %170 = getelementptr inbounds %struct.bf5xx_nand_info, %struct.bf5xx_nand_info* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @dev_err(i32 %171, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %173

173:                                              ; preds = %164, %128, %65, %59
  %174 = load i32, i32* %5, align 4
  ret i32 %174
}

declare dso_local %struct.bf5xx_nand_info* @mtd_to_nand_info(%struct.mtd_info*) #1

declare dso_local i32 @hweight32(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_info(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
