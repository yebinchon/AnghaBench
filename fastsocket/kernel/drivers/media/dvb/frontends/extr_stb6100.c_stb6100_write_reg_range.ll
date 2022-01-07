; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stb6100.c_stb6100_write_reg_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stb6100.c_stb6100_write_reg_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stb6100_state = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.i2c_msg = type { i32*, i32, i32, i64 }

@STB6100_NUMREGS = common dso_local global i32 0, align 4
@verbose = common dso_local global i64 0, align 8
@FE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Invalid register range %d:%d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@FE_DEBUG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"    Write @ 0x%02x: [%d:%d]\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"        %s: 0x%02x\00", align 1
@stb6100_regnames = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"(0x%x) write err [%d:%d], rc=[%d]\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stb6100_state*, i32*, i32, i32)* @stb6100_write_reg_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stb6100_write_reg_range(%struct.stb6100_state* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.stb6100_state*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.i2c_msg, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.stb6100_state* %0, %struct.stb6100_state** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = add nsw i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %11, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %12, align 8
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i32 0, i32 0
  store i32* %20, i32** %21, align 8
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i32 0, i32 1
  %23 = load i32, i32* %9, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 8
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i32 0, i32 2
  store i32 0, i32* %25, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i32 0, i32 3
  %27 = load %struct.stb6100_state*, %struct.stb6100_state** %6, align 8
  %28 = getelementptr inbounds %struct.stb6100_state, %struct.stb6100_state* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %26, align 8
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 1
  br i1 %33, label %40, label %34

34:                                               ; preds = %4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %35, %36
  %38 = load i32, i32* @STB6100_NUMREGS, align 4
  %39 = icmp sgt i32 %37, %38
  br label %40

40:                                               ; preds = %34, %4
  %41 = phi i1 [ true, %4 ], [ %39, %34 ]
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %40
  %46 = load i64, i64* @verbose, align 8
  %47 = load i32, i32* @FE_ERROR, align 4
  %48 = sext i32 %47 to i64
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 (i64, i64, i32, i8*, i32, i32, ...) @dprintk(i64 %46, i64 %48, i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50)
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %130

54:                                               ; preds = %40
  %55 = getelementptr inbounds i32, i32* %20, i64 1
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @memcpy(i32* %55, i32* %56, i32 %57)
  %59 = load i32, i32* %8, align 4
  %60 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 %59, i32* %60, align 16
  %61 = load i64, i64* @verbose, align 8
  %62 = load i64, i64* @FE_DEBUG, align 8
  %63 = icmp sgt i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %103

67:                                               ; preds = %54
  %68 = load i64, i64* @verbose, align 8
  %69 = load i64, i64* @FE_DEBUG, align 8
  %70 = load %struct.stb6100_state*, %struct.stb6100_state** %6, align 8
  %71 = getelementptr inbounds %struct.stb6100_state, %struct.stb6100_state* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = trunc i64 %74 to i32
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %9, align 4
  %78 = call i32 (i64, i64, i32, i8*, i32, i32, ...) @dprintk(i64 %68, i64 %69, i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %75, i32 %76, i32 %77)
  store i32 0, i32* %15, align 4
  br label %79

79:                                               ; preds = %99, %67
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %102

83:                                               ; preds = %79
  %84 = load i64, i64* @verbose, align 8
  %85 = load i64, i64* @FE_DEBUG, align 8
  %86 = load i32*, i32** @stb6100_regnames, align 8
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %15, align 4
  %89 = add nsw i32 %87, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %86, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %7, align 8
  %94 = load i32, i32* %15, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (i64, i64, i32, i8*, i32, i32, ...) @dprintk(i64 %84, i64 %85, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %92, i32 %97)
  br label %99

99:                                               ; preds = %83
  %100 = load i32, i32* %15, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %15, align 4
  br label %79

102:                                              ; preds = %79
  br label %103

103:                                              ; preds = %102, %54
  %104 = load %struct.stb6100_state*, %struct.stb6100_state** %6, align 8
  %105 = getelementptr inbounds %struct.stb6100_state, %struct.stb6100_state* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @i2c_transfer(i32 %106, %struct.i2c_msg* %13, i32 1)
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp ne i32 %108, 1
  %110 = zext i1 %109 to i32
  %111 = call i64 @unlikely(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %129

113:                                              ; preds = %103
  %114 = load i64, i64* @verbose, align 8
  %115 = load i32, i32* @FE_ERROR, align 4
  %116 = sext i32 %115 to i64
  %117 = load %struct.stb6100_state*, %struct.stb6100_state** %6, align 8
  %118 = getelementptr inbounds %struct.stb6100_state, %struct.stb6100_state* %117, i32 0, i32 0
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = trunc i64 %121 to i32
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* %10, align 4
  %126 = call i32 (i64, i64, i32, i8*, i32, i32, ...) @dprintk(i64 %114, i64 %116, i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %122, i32 %123, i32 %124, i32 %125)
  %127 = load i32, i32* @EREMOTEIO, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %130

129:                                              ; preds = %103
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %130

130:                                              ; preds = %129, %113, %45
  %131 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %131)
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @dprintk(i64, i64, i32, i8*, i32, i32, ...) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
