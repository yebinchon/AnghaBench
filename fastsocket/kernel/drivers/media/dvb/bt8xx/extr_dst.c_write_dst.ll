; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_dst.c_write_dst.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_dst.c_write_dst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_state = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_msg = type { i64*, i64, i32, i32 }

@verbose = common dso_local global i32 0, align 4
@DST_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"writing [ \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@DST_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [58 x i8] c"_write_dst error (err == %i, len == 0x%02x, b0 == 0x%02x)\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"RDC 8820 RESET\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @write_dst(%struct.dst_state* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dst_state*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.i2c_msg, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.dst_state* %0, %struct.dst_state** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 0
  %13 = load i64*, i64** %6, align 8
  store i64* %13, i64** %12, align 8
  %14 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 1
  %15 = load i64, i64* %7, align 8
  store i64 %15, i64* %14, align 8
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 2
  store i32 0, i32* %16, align 8
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 3
  %18 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %19 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %17, align 4
  %23 = load i32, i32* @verbose, align 4
  %24 = load i32, i32* @DST_NOTICE, align 4
  %25 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %23, i32 %24, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %11, align 8
  br label %26

26:                                               ; preds = %38, %3
  %27 = load i64, i64* %11, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %26
  %31 = load i32, i32* @verbose, align 4
  %32 = load i32, i32* @DST_NOTICE, align 4
  %33 = load i64*, i64** %6, align 8
  %34 = load i64, i64* %11, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %31, i32 %32, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %36)
  br label %38

38:                                               ; preds = %30
  %39 = load i64, i64* %11, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %11, align 8
  br label %26

41:                                               ; preds = %26
  %42 = load i32, i32* @verbose, align 4
  %43 = load i32, i32* @DST_NOTICE, align 4
  %44 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %42, i32 %43, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i64 0, i64* %10, align 8
  br label %45

45:                                               ; preds = %66, %41
  %46 = load i64, i64* %10, align 8
  %47 = icmp ult i64 %46, 2
  br i1 %47, label %48, label %69

48:                                               ; preds = %45
  %49 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %50 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @i2c_transfer(i32 %51, %struct.i2c_msg* %8, i32 1)
  store i32 %52, i32* %9, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %48
  %55 = load i32, i32* @verbose, align 4
  %56 = load i32, i32* @DST_INFO, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i64, i64* %7, align 8
  %59 = load i64*, i64** %6, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %55, i32 %56, i32 1, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i32 %57, i64 %58, i64 %61)
  %63 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %64 = call i32 @dst_error_recovery(%struct.dst_state* %63)
  br label %66

65:                                               ; preds = %48
  br label %69

66:                                               ; preds = %54
  %67 = load i64, i64* %10, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %10, align 8
  br label %45

69:                                               ; preds = %65, %45
  %70 = load i64, i64* %10, align 8
  %71 = icmp uge i64 %70, 2
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load i32, i32* @verbose, align 4
  %74 = load i32, i32* @DST_INFO, align 4
  %75 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %73, i32 %74, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %76 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %77 = call i32 @dst_error_bailout(%struct.dst_state* %76)
  store i32 -1, i32* %4, align 4
  br label %79

78:                                               ; preds = %69
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %78, %72
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @dprintk(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @dst_error_recovery(%struct.dst_state*) #1

declare dso_local i32 @dst_error_bailout(%struct.dst_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
