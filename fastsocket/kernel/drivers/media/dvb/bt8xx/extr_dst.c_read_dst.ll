; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_dst.c_read_dst.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_dst.c_read_dst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_state = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_msg = type { i32*, i32, i32, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@DST_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"read_dst error (err == %i, len == 0x%02x, b0 == 0x%02x)\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"RDC 8820 RESET\00", align 1
@DST_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"reply is 0x%x\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" 0x%x\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_dst(%struct.dst_state* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dst_state*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_msg, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dst_state* %0, %struct.dst_state** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 0
  %12 = load i32*, i32** %6, align 8
  store i32* %12, i32** %11, align 8
  %13 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 1
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %13, align 8
  %15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 2
  %16 = load i32, i32* @I2C_M_RD, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 3
  %18 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %19 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %17, align 8
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %44, %3
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 2
  br i1 %25, label %26, label %47

26:                                               ; preds = %23
  %27 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %28 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @i2c_transfer(i32 %29, %struct.i2c_msg* %8, i32 1)
  store i32 %30, i32* %9, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %26
  %33 = load i32, i32* @verbose, align 4
  %34 = load i32, i32* @DST_INFO, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %33, i32 %34, i32 1, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36, i32 %39)
  %41 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %42 = call i32 @dst_error_recovery(%struct.dst_state* %41)
  br label %44

43:                                               ; preds = %26
  br label %47

44:                                               ; preds = %32
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %10, align 4
  br label %23

47:                                               ; preds = %43, %23
  %48 = load i32, i32* %10, align 4
  %49 = icmp sge i32 %48, 2
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load i32, i32* @verbose, align 4
  %52 = load i32, i32* @DST_INFO, align 4
  %53 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %51, i32 %52, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %54 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %55 = call i32 @dst_error_bailout(%struct.dst_state* %54)
  store i32 -1, i32* %4, align 4
  br label %87

56:                                               ; preds = %47
  %57 = load i32, i32* @verbose, align 4
  %58 = load i32, i32* @DST_DEBUG, align 4
  %59 = load i32*, i32** %6, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %57, i32 %58, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  store i32 1, i32* %9, align 4
  br label %63

63:                                               ; preds = %76, %56
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %79

67:                                               ; preds = %63
  %68 = load i32, i32* @verbose, align 4
  %69 = load i32, i32* @DST_DEBUG, align 4
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %68, i32 %69, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %67
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %9, align 4
  br label %63

79:                                               ; preds = %63
  %80 = load i32, i32* %9, align 4
  %81 = icmp sgt i32 %80, 1
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load i32, i32* @verbose, align 4
  %84 = load i32, i32* @DST_DEBUG, align 4
  %85 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %83, i32 %84, i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %86

86:                                               ; preds = %82, %79
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %86, %50
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @dprintk(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @dst_error_recovery(%struct.dst_state*) #1

declare dso_local i32 @dst_error_bailout(%struct.dst_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
