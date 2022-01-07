; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-stu300.c_stu300_set_clk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-stu300.c_stu300_set_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }
%struct.stu300_dev = type { i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@stu300_clktable = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [39 x i8] c"too %s clock rate requested (%lu Hz).\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@I2C_OAR2 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [52 x i8] c"Clock rate %lu Hz, I2C bus speed %d Hz virtbase %p\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"too low clock rate (%lu Hz).\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"too high clock rate (%lu Hz).\0A\00", align 1
@I2C_CCR_CC_MASK = common dso_local global i32 0, align 4
@I2C_CCR_FMSM = common dso_local global i32 0, align 4
@I2C_CCR = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [44 x i8] c"set clock divider to 0x%08x, Fast Mode I2C\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"set clock divider to 0x%08x, Standard Mode I2C\0A\00", align 1
@I2C_ECCR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stu300_dev*, i64)* @stu300_set_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stu300_set_clk(%struct.stu300_dev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stu300_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.stu300_dev* %0, %struct.stu300_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %24, %2
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** @stu300_clktable, align 8
  %11 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %10)
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** @stu300_clktable, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = icmp ult i64 %19, %20
  br label %22

22:                                               ; preds = %13, %8
  %23 = phi i1 [ false, %8 ], [ %21, %13 ]
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %7, align 4
  br label %8

27:                                               ; preds = %22
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** @stu300_clktable, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 255
  br i1 %34, label %35, label %48

35:                                               ; preds = %27
  %36 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %37 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %36, i32 0, i32 2
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %44 = load i64, i64* %5, align 8
  %45 = call i32 (i32*, i8*, ...) @dev_err(i32* %39, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %43, i64 %44)
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %174

48:                                               ; preds = %27
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** @stu300_clktable, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %56 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @I2C_OAR2, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @stu300_wr8(i32 %54, i64 %59)
  %61 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %62 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %61, i32 0, i32 2
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %5, align 8
  %66 = trunc i64 %65 to i32
  %67 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %68 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %71 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %64, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %66, i32 %69, i64 %72)
  %74 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %75 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp sgt i32 %76, 100000
  br i1 %77, label %78, label %89

78:                                               ; preds = %48
  %79 = load i64, i64* %5, align 8
  %80 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %81 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = udiv i64 %79, %83
  %85 = sub i64 %84, 9
  %86 = udiv i64 %85, 3
  %87 = add i64 %86, 1
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %6, align 4
  br label %100

89:                                               ; preds = %48
  %90 = load i64, i64* %5, align 8
  %91 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %92 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = udiv i64 %90, %94
  %96 = sub i64 %95, 7
  %97 = udiv i64 %96, 2
  %98 = add i64 %97, 1
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %6, align 4
  br label %100

100:                                              ; preds = %89, %78
  %101 = load i32, i32* %6, align 4
  %102 = icmp slt i32 %101, 2
  br i1 %102, label %103, label %112

103:                                              ; preds = %100
  %104 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %105 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %104, i32 0, i32 2
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i64, i64* %5, align 8
  %109 = call i32 (i32*, i8*, ...) @dev_err(i32* %107, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i64 %108)
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %3, align 4
  br label %174

112:                                              ; preds = %100
  %113 = load i32, i32* %6, align 4
  %114 = and i32 %113, -4096
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %112
  %117 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %118 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %117, i32 0, i32 2
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i64, i64* %5, align 8
  %122 = call i32 (i32*, i8*, ...) @dev_err(i32* %120, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i64 %121)
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %3, align 4
  br label %174

125:                                              ; preds = %112
  %126 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %127 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp sgt i32 %128, 100000
  br i1 %129, label %130, label %148

130:                                              ; preds = %125
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* @I2C_CCR_CC_MASK, align 4
  %133 = and i32 %131, %132
  %134 = load i32, i32* @I2C_CCR_FMSM, align 4
  %135 = or i32 %133, %134
  %136 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %137 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @I2C_CCR, align 8
  %140 = add nsw i64 %138, %139
  %141 = call i32 @stu300_wr8(i32 %135, i64 %140)
  %142 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %143 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %142, i32 0, i32 2
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i32, i32* %6, align 4
  %147 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %145, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i32 %146)
  br label %164

148:                                              ; preds = %125
  %149 = load i32, i32* %6, align 4
  %150 = load i32, i32* @I2C_CCR_CC_MASK, align 4
  %151 = and i32 %149, %150
  %152 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %153 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @I2C_CCR, align 8
  %156 = add nsw i64 %154, %155
  %157 = call i32 @stu300_wr8(i32 %151, i64 %156)
  %158 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %159 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %158, i32 0, i32 2
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = load i32, i32* %6, align 4
  %163 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %161, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i32 %162)
  br label %164

164:                                              ; preds = %148, %130
  %165 = load i32, i32* %6, align 4
  %166 = ashr i32 %165, 7
  %167 = and i32 %166, 31
  %168 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %169 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @I2C_ECCR, align 8
  %172 = add nsw i64 %170, %171
  %173 = call i32 @stu300_wr8(i32 %167, i64 %172)
  store i32 0, i32* %3, align 4
  br label %174

174:                                              ; preds = %164, %116, %103, %35
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @stu300_wr8(i32, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
