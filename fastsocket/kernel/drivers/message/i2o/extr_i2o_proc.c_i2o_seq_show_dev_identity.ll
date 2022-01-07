; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_i2o_proc.c_i2o_seq_show_dev_identity.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_i2o_proc.c_i2o_seq_show_dev_identity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i64 }
%struct.i2o_device = type { i32 }

@i2o_seq_show_dev_identity.work32 = internal global [128 x i32] zeroinitializer, align 16
@i2o_seq_show_dev_identity.work16 = internal global i32* getelementptr inbounds ([128 x i32], [128 x i32]* @i2o_seq_show_dev_identity.work32, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [23 x i8] c"0xF100 Device Identity\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Device Class  : %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Owner TID     : %0#5x\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Parent TID    : %0#5x\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Vendor info   : %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Product info  : %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Description   : %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Product rev.  : %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"Serial number : \00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @i2o_seq_show_dev_identity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2o_seq_show_dev_identity(%struct.seq_file* %0, i8* %1) #0 {
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
  %13 = call i32 @i2o_parm_field_get(%struct.i2o_device* %12, i32 61696, i32 -1, i32** bitcast ([128 x i32]* @i2o_seq_show_dev_identity.work32 to i32**), i32 512)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @i2o_report_query_status(%struct.seq_file* %17, i32 %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %55

20:                                               ; preds = %2
  %21 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %22 = load i32*, i32** @i2o_seq_show_dev_identity.work16, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @i2o_get_class_name(i32 %24)
  %26 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %28 = load i32*, i32** @i2o_seq_show_dev_identity.work16, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  %32 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %33 = load i32*, i32** @i2o_seq_show_dev_identity.work16, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %35)
  %37 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %38 = call i32 @chtostr(i32* getelementptr inbounds ([128 x i32], [128 x i32]* @i2o_seq_show_dev_identity.work32, i64 0, i64 2), i32 16)
  %39 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %37, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %38)
  %40 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %41 = call i32 @chtostr(i32* getelementptr inbounds ([128 x i32], [128 x i32]* @i2o_seq_show_dev_identity.work32, i64 0, i64 6), i32 16)
  %42 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %41)
  %43 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %44 = call i32 @chtostr(i32* getelementptr inbounds ([128 x i32], [128 x i32]* @i2o_seq_show_dev_identity.work32, i64 0, i64 10), i32 16)
  %45 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %44)
  %46 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %47 = call i32 @chtostr(i32* getelementptr inbounds ([128 x i32], [128 x i32]* @i2o_seq_show_dev_identity.work32, i64 0, i64 14), i32 8)
  %48 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %46, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %47)
  %49 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %50 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %49, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %51 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %52 = call i32 @print_serial_number(%struct.seq_file* %51, i32* getelementptr inbounds ([128 x i32], [128 x i32]* @i2o_seq_show_dev_identity.work32, i64 0, i64 16), i32 446)
  %53 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %54 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %20, %16
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @i2o_parm_field_get(%struct.i2o_device*, i32, i32, i32**, i32) #1

declare dso_local i32 @i2o_report_query_status(%struct.seq_file*, i32, i8*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @i2o_get_class_name(i32) #1

declare dso_local i32 @chtostr(i32*, i32) #1

declare dso_local i32 @print_serial_number(%struct.seq_file*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
