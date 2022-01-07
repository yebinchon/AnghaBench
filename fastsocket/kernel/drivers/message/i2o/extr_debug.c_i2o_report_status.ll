; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_debug.c_i2o_report_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_debug.c_i2o_report_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2o_message = type { i32 }

@I2O_CMD_UTIL_EVT_REGISTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s%s: \00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Cmd = %0#2x, \00", align 1
@MSG_FAIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c" / DetailedStatus = %0#4x.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i2o_report_status(i8* %0, i8* %1, %struct.i2o_message* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.i2o_message*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.i2o_message* %2, %struct.i2o_message** %6, align 8
  %11 = load %struct.i2o_message*, %struct.i2o_message** %6, align 8
  %12 = bitcast %struct.i2o_message* %11 to i32*
  store i32* %12, i32** %7, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = load i32, i32* %14, align 4
  %16 = ashr i32 %15, 24
  %17 = and i32 %16, 255
  store i32 %17, i32* %8, align 4
  %18 = load i32*, i32** %7, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 4
  %20 = load i32, i32* %19, align 4
  %21 = ashr i32 %20, 24
  %22 = and i32 %21, 255
  store i32 %22, i32* %9, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 4
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 65535
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @I2O_CMD_UTIL_EVT_REGISTER, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  br label %81

31:                                               ; preds = %3
  %32 = load i8*, i8** %4, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %32, i8* %33)
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 31
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @i2o_report_util_cmd(i32 %38)
  br label %53

40:                                               ; preds = %31
  %41 = load i32, i32* %8, align 4
  %42 = icmp sge i32 %41, 160
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load i32, i32* %8, align 4
  %45 = icmp sle i32 %44, 239
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @i2o_report_exec_cmd(i32 %47)
  br label %52

49:                                               ; preds = %43, %40
  %50 = load i32, i32* %8, align 4
  %51 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %49, %46
  br label %53

53:                                               ; preds = %52, %37
  %54 = load i32*, i32** %7, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @MSG_FAIL, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = load i32, i32* %9, align 4
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 @i2o_report_fail_status(i32 %61, i32* %62)
  br label %81

64:                                               ; preds = %53
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @i2o_report_common_status(i32 %65)
  %67 = load i32, i32* %8, align 4
  %68 = icmp slt i32 %67, 31
  br i1 %68, label %75, label %69

69:                                               ; preds = %64
  %70 = load i32, i32* %8, align 4
  %71 = icmp sge i32 %70, 160
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load i32, i32* %8, align 4
  %74 = icmp sle i32 %73, 239
  br i1 %74, label %75, label %78

75:                                               ; preds = %72, %64
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @i2o_report_common_dsc(i32 %76)
  br label %81

78:                                               ; preds = %72, %69
  %79 = load i32, i32* %10, align 4
  %80 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %30, %60, %78, %75
  ret void
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @i2o_report_util_cmd(i32) #1

declare dso_local i32 @i2o_report_exec_cmd(i32) #1

declare dso_local i32 @i2o_report_fail_status(i32, i32*) #1

declare dso_local i32 @i2o_report_common_status(i32) #1

declare dso_local i32 @i2o_report_common_dsc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
