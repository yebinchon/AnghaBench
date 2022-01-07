; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_i2o_proc.c_i2o_seq_show_sgl_limits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_i2o_proc.c_i2o_seq_show_sgl_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i64 }
%struct.i2o_device = type { i32 }

@i2o_seq_show_sgl_limits.work32 = internal global [12 x i32] zeroinitializer, align 16
@i2o_seq_show_sgl_limits.work16 = internal global i32* getelementptr inbounds ([12 x i32], [12 x i32]* @i2o_seq_show_sgl_limits.work32, i32 0, i32 0), align 8
@i2o_seq_show_sgl_limits.work8 = internal global i32* getelementptr inbounds ([12 x i32], [12 x i32]* @i2o_seq_show_sgl_limits.work32, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [28 x i8] c"0xF103 SGL Operating Limits\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"SGL chain size        : %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Max SGL chain size    : %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"SGL chain size target : %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"SGL frag count        : %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Max SGL frag count    : %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"SGL frag count target : %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"SGL data alignment    : %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"SGL addr limit        : %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"SGL addr sizes supported : \00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"32 bit \00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"64 bit \00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"96 bit \00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"128 bit \00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @i2o_seq_show_sgl_limits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2o_seq_show_sgl_limits(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.i2o_device*, align 8
  %7 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %9 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.i2o_device*
  store %struct.i2o_device* %11, %struct.i2o_device** %6, align 8
  %12 = load %struct.i2o_device*, %struct.i2o_device** %6, align 8
  %13 = call i32 @i2o_parm_field_get(%struct.i2o_device* %12, i32 61699, i32 -1, i32** bitcast ([12 x i32]* @i2o_seq_show_sgl_limits.work32 to i32**), i32 48)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @i2o_report_query_status(%struct.seq_file* %17, i32 %18, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %95

20:                                               ; preds = %2
  %21 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %22 = load i32, i32* getelementptr inbounds ([12 x i32], [12 x i32]* @i2o_seq_show_sgl_limits.work32, i64 0, i64 0), align 16
  %23 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %25 = load i32, i32* getelementptr inbounds ([12 x i32], [12 x i32]* @i2o_seq_show_sgl_limits.work32, i64 0, i64 1), align 4
  %26 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %24, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  %27 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %28 = load i32, i32* getelementptr inbounds ([12 x i32], [12 x i32]* @i2o_seq_show_sgl_limits.work32, i64 0, i64 2), align 8
  %29 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %28)
  %30 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %31 = load i32*, i32** @i2o_seq_show_sgl_limits.work16, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 6
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %33)
  %35 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %36 = load i32*, i32** @i2o_seq_show_sgl_limits.work16, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 7
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %35, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %38)
  %40 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %41 = load i32*, i32** @i2o_seq_show_sgl_limits.work16, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 8
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %43)
  %45 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %46 = load i32*, i32** @i2o_seq_show_sgl_limits.work16, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 8
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %48)
  %50 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %51 = load i32*, i32** @i2o_seq_show_sgl_limits.work8, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 20
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %50, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %53)
  %55 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %56 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %55, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %57 = load i32*, i32** @i2o_seq_show_sgl_limits.work8, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 21
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 1
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %20
  %63 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %64 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  br label %65

65:                                               ; preds = %62, %20
  %66 = load i32*, i32** @i2o_seq_show_sgl_limits.work8, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 21
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, 2
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %73 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  br label %74

74:                                               ; preds = %71, %65
  %75 = load i32*, i32** @i2o_seq_show_sgl_limits.work8, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 21
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %82 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %81, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  br label %83

83:                                               ; preds = %80, %74
  %84 = load i32*, i32** @i2o_seq_show_sgl_limits.work8, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 21
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %83
  %90 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %91 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %90, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  br label %92

92:                                               ; preds = %89, %83
  %93 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %94 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %92, %16
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @i2o_parm_field_get(%struct.i2o_device*, i32, i32, i32**, i32) #1

declare dso_local i32 @i2o_report_query_status(%struct.seq_file*, i32, i8*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
