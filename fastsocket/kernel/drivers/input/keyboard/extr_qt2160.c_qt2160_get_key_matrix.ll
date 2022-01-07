; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_qt2160.c_qt2160_get_key_matrix.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_qt2160.c_qt2160_get_key_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qt2160_data = type { i32, i32*, %struct.input_dev*, %struct.i2c_client* }
%struct.input_dev = type { i32 }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"requesting keys...\0A\00", align 1
@QT2160_CMD_GSTAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"could not perform chip read.\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"key %d %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"pressed\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"released\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qt2160_data*)* @qt2160_get_key_matrix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qt2160_get_key_matrix(%struct.qt2160_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qt2160_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca [6 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.qt2160_data* %0, %struct.qt2160_data** %3, align 8
  %13 = load %struct.qt2160_data*, %struct.qt2160_data** %3, align 8
  %14 = getelementptr inbounds %struct.qt2160_data, %struct.qt2160_data* %13, i32 0, i32 3
  %15 = load %struct.i2c_client*, %struct.i2c_client** %14, align 8
  store %struct.i2c_client* %15, %struct.i2c_client** %4, align 8
  %16 = load %struct.qt2160_data*, %struct.qt2160_data** %3, align 8
  %17 = getelementptr inbounds %struct.qt2160_data, %struct.qt2160_data* %16, i32 0, i32 2
  %18 = load %struct.input_dev*, %struct.input_dev** %17, align 8
  store %struct.input_dev* %18, %struct.input_dev** %5, align 8
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 0
  %21 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = load i32, i32* @QT2160_CMD_GSTAT, align 4
  %24 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  %25 = call i32 @qt2160_read_block(%struct.i2c_client* %22, i32 %23, i32* %24, i32 6)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %1
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 0
  %31 = call i32 @dev_err(i32* %30, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %2, align 4
  br label %85

33:                                               ; preds = %1
  %34 = load %struct.qt2160_data*, %struct.qt2160_data** %3, align 8
  %35 = getelementptr inbounds %struct.qt2160_data, %struct.qt2160_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %7, align 4
  %37 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 2
  %38 = load i32, i32* %37, align 8
  %39 = shl i32 %38, 8
  %40 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %39, %41
  store i32 %42, i32* %8, align 4
  %43 = load %struct.qt2160_data*, %struct.qt2160_data** %3, align 8
  %44 = getelementptr inbounds %struct.qt2160_data, %struct.qt2160_data* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  store i32 1, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %45

45:                                               ; preds = %77, %33
  %46 = load i32, i32* %10, align 4
  %47 = icmp slt i32 %46, 16
  br i1 %47, label %48, label %82

48:                                               ; preds = %45
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %11, align 4
  %51 = and i32 %49, %50
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %11, align 4
  %54 = and i32 %52, %53
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %76

57:                                               ; preds = %48
  %58 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %59 = load %struct.qt2160_data*, %struct.qt2160_data** %3, align 8
  %60 = getelementptr inbounds %struct.qt2160_data, %struct.qt2160_data* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @input_report_key(%struct.input_dev* %58, i32 %65, i32 %66)
  %68 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %69 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %68, i32 0, i32 0
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)
  %75 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %69, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %70, i8* %74)
  br label %76

76:                                               ; preds = %57, %48
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %11, align 4
  %81 = shl i32 %80, 1
  store i32 %81, i32* %11, align 4
  br label %45

82:                                               ; preds = %45
  %83 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %84 = call i32 @input_sync(%struct.input_dev* %83)
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %82, %28
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @qt2160_read_block(%struct.i2c_client*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
