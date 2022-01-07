; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_isr.c_qla2x00_get_link_speed_str.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_isr.c_qla2x00_get_link_speed_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_hw_data = type { i32 }

@qla2x00_get_link_speed_str.link_speeds = internal constant [7 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"8\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"16\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"10\00", align 1
@LS_UNKNOWN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @qla2x00_get_link_speed_str(%struct.qla_hw_data* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.qla_hw_data*, align 8
  %5 = alloca i32, align 4
  store %struct.qla_hw_data* %0, %struct.qla_hw_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %7 = call i64 @IS_QLA2100(%struct.qla_hw_data* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %11 = call i64 @IS_QLA2200(%struct.qla_hw_data* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9, %2
  %14 = load i8*, i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @qla2x00_get_link_speed_str.link_speeds, i64 0, i64 0), align 16
  store i8* %14, i8** %3, align 8
  br label %32

15:                                               ; preds = %9
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, 19
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i8*, i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @qla2x00_get_link_speed_str.link_speeds, i64 0, i64 6), align 16
  store i8* %19, i8** %3, align 8
  br label %32

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 6
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [7 x i8*], [7 x i8*]* @qla2x00_get_link_speed_str.link_speeds, i64 0, i64 %25
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %3, align 8
  br label %32

28:                                               ; preds = %20
  %29 = load i64, i64* @LS_UNKNOWN, align 8
  %30 = getelementptr inbounds [7 x i8*], [7 x i8*]* @qla2x00_get_link_speed_str.link_speeds, i64 0, i64 %29
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %3, align 8
  br label %32

32:                                               ; preds = %28, %23, %18, %13
  %33 = load i8*, i8** %3, align 8
  ret i8* %33
}

declare dso_local i64 @IS_QLA2100(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA2200(%struct.qla_hw_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
