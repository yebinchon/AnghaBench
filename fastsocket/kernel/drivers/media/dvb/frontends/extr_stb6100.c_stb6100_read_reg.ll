; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stb6100.c_stb6100_read_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stb6100.c_stb6100_read_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stb6100_state = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.i2c_msg = type { i32*, i32, i32, i64 }

@STB6100_NUMREGS = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@verbose = common dso_local global i64 0, align 8
@FE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Invalid register offset 0x%x\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@FE_DEBUG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"    Read from 0x%02x\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"        %s: 0x%02x\00", align 1
@stb6100_regnames = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stb6100_state*, i32)* @stb6100_read_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stb6100_read_reg(%struct.stb6100_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stb6100_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.i2c_msg, align 8
  %10 = alloca i32, align 4
  store %struct.stb6100_state* %0, %struct.stb6100_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @STB6100_NUMREGS, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 0
  store i32* %14, i32** %15, align 8
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 1
  store i32 1, i32* %16, align 8
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 2
  %18 = load i32, i32* @I2C_M_RD, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 3
  %20 = load %struct.stb6100_state*, %struct.stb6100_state** %4, align 8
  %21 = getelementptr inbounds %struct.stb6100_state, %struct.stb6100_state* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %24, %26
  store i64 %27, i64* %19, align 8
  %28 = load %struct.stb6100_state*, %struct.stb6100_state** %4, align 8
  %29 = getelementptr inbounds %struct.stb6100_state, %struct.stb6100_state* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @i2c_transfer(i32 %30, %struct.i2c_msg* %9, i32 1)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @STB6100_NUMREGS, align 4
  %34 = icmp sge i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %2
  %39 = load i64, i64* @verbose, align 8
  %40 = load i32, i32* @FE_ERROR, align 4
  %41 = sext i32 %40 to i64
  %42 = load i32, i32* %5, align 4
  %43 = call i32 (i64, i64, i32, i8*, i32, ...) @dprintk(i64 %39, i64 %41, i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %76

46:                                               ; preds = %2
  %47 = load i64, i64* @verbose, align 8
  %48 = load i64, i64* @FE_DEBUG, align 8
  %49 = icmp sgt i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %73

53:                                               ; preds = %46
  %54 = load i64, i64* @verbose, align 8
  %55 = load i64, i64* @FE_DEBUG, align 8
  %56 = load %struct.stb6100_state*, %struct.stb6100_state** %4, align 8
  %57 = getelementptr inbounds %struct.stb6100_state, %struct.stb6100_state* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = call i32 (i64, i64, i32, i8*, i32, ...) @dprintk(i64 %54, i64 %55, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load i64, i64* @verbose, align 8
  %64 = load i64, i64* @FE_DEBUG, align 8
  %65 = load i32*, i32** @stb6100_regnames, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds i32, i32* %14, i64 0
  %71 = load i32, i32* %70, align 16
  %72 = call i32 (i64, i64, i32, i8*, i32, ...) @dprintk(i64 %63, i64 %64, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %69, i32 %71)
  br label %73

73:                                               ; preds = %53, %46
  %74 = getelementptr inbounds i32, i32* %14, i64 0
  %75 = load i32, i32* %74, align 16
  store i32 %75, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %76

76:                                               ; preds = %73, %38
  %77 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %77)
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @dprintk(i64, i64, i32, i8*, i32, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
