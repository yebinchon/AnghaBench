; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_i2o_proc.c_i2o_seq_show_hw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_i2o_proc.c_i2o_seq_show_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i64 }
%struct.i2o_controller = type { i32 }

@i2o_seq_show_hw.work32 = internal global [5 x i32] zeroinitializer, align 16
@i2o_seq_show_hw.work8 = internal global i32* getelementptr inbounds ([5 x i32], [5 x i32]* @i2o_seq_show_hw.work32, i32 0, i32 0), align 8
@i2o_seq_show_hw.work16 = internal global i8** bitcast ([5 x i32]* @i2o_seq_show_hw.work32 to i8**), align 8
@i2o_seq_show_hw.cpu_table = internal global [8 x i8*] [i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [19 x i8] c"Intel 80960 series\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"AMD2900 series\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Motorola 68000 series\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"ARM series\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"MIPS series\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"Sparc series\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"PowerPC series\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"Intel x86 series\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"0x0000 IOP Hardware\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"I2O Vendor ID    : %0#6x\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"Product ID       : %0#6x\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"CPU              : \00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"Unknown\0A\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"RAM              : %dkB\0A\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"Non-Volatile Mem : %dkB\0A\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"Capabilities : 0x%08x\0A\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"   [%s] Self booting\0A\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"   [%s] Upgradable IRTOS\0A\00", align 1
@.str.21 = private unnamed_addr constant [35 x i8] c"   [%s] Supports downloading DDMs\0A\00", align 1
@.str.22 = private unnamed_addr constant [34 x i8] c"   [%s] Supports installing DDMs\0A\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"   [%s] Battery-backed RAM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @i2o_seq_show_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2o_seq_show_hw(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.i2o_controller*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %10 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.i2o_controller*
  store %struct.i2o_controller* %12, %struct.i2o_controller** %6, align 8
  %13 = load %struct.i2o_controller*, %struct.i2o_controller** %6, align 8
  %14 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @i2o_parm_field_get(i32 %15, i32 0, i32 -1, i32** bitcast ([5 x i32]* @i2o_seq_show_hw.work32 to i32**), i32 20)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @i2o_report_query_status(%struct.seq_file* %20, i32 %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %100

23:                                               ; preds = %2
  %24 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %25 = load i8**, i8*** @i2o_seq_show_hw.work16, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i8* %27)
  %29 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %30 = load i8**, i8*** @i2o_seq_show_hw.work16, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %29, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i8* %32)
  %34 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %35 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %34, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  %36 = load i32*, i32** @i2o_seq_show_hw.work8, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 16
  %38 = load i32, i32* %37, align 4
  %39 = icmp sgt i32 %38, 8
  br i1 %39, label %40, label %43

40:                                               ; preds = %23
  %41 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %42 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  br label %52

43:                                               ; preds = %23
  %44 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %45 = load i32*, i32** @i2o_seq_show_hw.work8, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 16
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [8 x i8*], [8 x i8*]* @i2o_seq_show_hw.cpu_table, i64 0, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* %50)
  br label %52

52:                                               ; preds = %43, %40
  %53 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %54 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @i2o_seq_show_hw.work32, i64 0, i64 1), align 4
  %55 = ashr i32 %54, 10
  %56 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %53, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 %55)
  %57 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %58 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @i2o_seq_show_hw.work32, i64 0, i64 2), align 8
  %59 = ashr i32 %58, 10
  %60 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @i2o_seq_show_hw.work32, i64 0, i64 3), align 4
  store i32 %61, i32* %8, align 4
  %62 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %62, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 %63)
  %65 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %66 = load i32, i32* %8, align 4
  %67 = and i32 %66, 1
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)
  %71 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %65, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i8* %70)
  %72 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %73 = load i32, i32* %8, align 4
  %74 = and i32 %73, 2
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)
  %78 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %72, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0), i8* %77)
  %79 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %80 = load i32, i32* %8, align 4
  %81 = and i32 %80, 4
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)
  %85 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %79, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.21, i64 0, i64 0), i8* %84)
  %86 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %87 = load i32, i32* %8, align 4
  %88 = and i32 %87, 8
  %89 = icmp ne i32 %88, 0
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)
  %92 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %86, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.22, i64 0, i64 0), i8* %91)
  %93 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %94 = load i32, i32* %8, align 4
  %95 = and i32 %94, 16
  %96 = icmp ne i32 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)
  %99 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %93, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.23, i64 0, i64 0), i8* %98)
  store i32 0, i32* %3, align 4
  br label %100

100:                                              ; preds = %52, %19
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @i2o_parm_field_get(i32, i32, i32, i32**, i32) #1

declare dso_local i32 @i2o_report_query_status(%struct.seq_file*, i32, i8*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
