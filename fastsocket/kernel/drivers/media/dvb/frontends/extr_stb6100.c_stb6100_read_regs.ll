; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stb6100.c_stb6100_read_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stb6100.c_stb6100_read_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stb6100_state = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_msg = type { i32*, i32, i32, i32 }

@STB6100_NUMREGS = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@verbose = common dso_local global i64 0, align 8
@FE_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Read (0x%x) err, rc=[%d]\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@FE_DEBUG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"    Read from 0x%02x\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"        %s: 0x%02x\00", align 1
@stb6100_regnames = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stb6100_state*, i32*)* @stb6100_read_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stb6100_read_regs(%struct.stb6100_state* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stb6100_state*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_msg, align 8
  %8 = alloca i32, align 4
  store %struct.stb6100_state* %0, %struct.stb6100_state** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 0
  %10 = load i32*, i32** %5, align 8
  store i32* %10, i32** %9, align 8
  %11 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 1
  %12 = load i32, i32* @STB6100_NUMREGS, align 4
  store i32 %12, i32* %11, align 8
  %13 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 2
  %14 = load i32, i32* @I2C_M_RD, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 3
  %16 = load %struct.stb6100_state*, %struct.stb6100_state** %4, align 8
  %17 = getelementptr inbounds %struct.stb6100_state, %struct.stb6100_state* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %15, align 8
  %21 = load %struct.stb6100_state*, %struct.stb6100_state** %4, align 8
  %22 = getelementptr inbounds %struct.stb6100_state, %struct.stb6100_state* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @i2c_transfer(i32 %23, %struct.i2c_msg* %7, i32 1)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 1
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %2
  %31 = load i64, i64* @verbose, align 8
  %32 = load i64, i64* @FE_ERROR, align 8
  %33 = load %struct.stb6100_state*, %struct.stb6100_state** %4, align 8
  %34 = getelementptr inbounds %struct.stb6100_state, %struct.stb6100_state* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 (i64, i64, i32, i8*, i32, ...) @dprintk(i64 %31, i64 %32, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38)
  %40 = load i32, i32* @EREMOTEIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %81

42:                                               ; preds = %2
  %43 = load i64, i64* @verbose, align 8
  %44 = load i64, i64* @FE_DEBUG, align 8
  %45 = icmp sgt i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %80

49:                                               ; preds = %42
  %50 = load i64, i64* @verbose, align 8
  %51 = load i64, i64* @FE_DEBUG, align 8
  %52 = load %struct.stb6100_state*, %struct.stb6100_state** %4, align 8
  %53 = getelementptr inbounds %struct.stb6100_state, %struct.stb6100_state* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i64, i64, i32, i8*, i32, ...) @dprintk(i64 %50, i64 %51, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %76, %49
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @STB6100_NUMREGS, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %79

62:                                               ; preds = %58
  %63 = load i64, i64* @verbose, align 8
  %64 = load i64, i64* @FE_DEBUG, align 8
  %65 = load i32*, i32** @stb6100_regnames, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %5, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i64, i64, i32, i8*, i32, ...) @dprintk(i64 %63, i64 %64, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %69, i32 %74)
  br label %76

76:                                               ; preds = %62
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  br label %58

79:                                               ; preds = %58
  br label %80

80:                                               ; preds = %79, %42
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %30
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dprintk(i64, i64, i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
