; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_init.c_qla2x00_try_to_stop_firmware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_init.c_qla2x00_try_to_stop_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { %struct.TYPE_10__*, i32, %struct.TYPE_11__ }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)* }
%struct.TYPE_11__ = type { i64 }

@QLA_SUCCESS = common dso_local global i32 0, align 4
@QLA_FUNCTION_TIMEOUT = common dso_local global i32 0, align 4
@QLA_INVALID_COMMAND = common dso_local global i32 0, align 4
@ql_log_info = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Attempting retry of stop-firmware command.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qla2x00_try_to_stop_firmware(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.qla_hw_data*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %8 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  store %struct.qla_hw_data* %8, %struct.qla_hw_data** %5, align 8
  %9 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %10 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %79

15:                                               ; preds = %1
  %16 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %17 = call i32 @IS_FWI2_CAPABLE(%struct.qla_hw_data* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  br label %79

20:                                               ; preds = %15
  %21 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %22 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  br label %79

26:                                               ; preds = %20
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %28 = call i32 @qla2x00_stop_firmware(%struct.TYPE_12__* %27)
  store i32 %28, i32* %3, align 4
  store i32 5, i32* %4, align 4
  br label %29

29:                                               ; preds = %76, %26
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @QLA_SUCCESS, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @QLA_FUNCTION_TIMEOUT, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @QLA_INVALID_COMMAND, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br label %44

44:                                               ; preds = %41, %37, %33, %29
  %45 = phi i1 [ false, %37 ], [ false, %33 ], [ false, %29 ], [ %43, %41 ]
  br i1 %45, label %46, label %79

46:                                               ; preds = %44
  %47 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %48 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %47, i32 0, i32 0
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** %50, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %53 = call i32 %51(%struct.TYPE_12__* %52)
  %54 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %55 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %54, i32 0, i32 0
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** %57, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %60 = call i32 %58(%struct.TYPE_12__* %59)
  %61 = load i32, i32* @QLA_SUCCESS, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %46
  br label %76

64:                                               ; preds = %46
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %66 = call i32 @qla2x00_setup_chip(%struct.TYPE_12__* %65)
  %67 = load i32, i32* @QLA_SUCCESS, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %76

70:                                               ; preds = %64
  %71 = load i32, i32* @ql_log_info, align 4
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %73 = call i32 @ql_log(i32 %71, %struct.TYPE_12__* %72, i32 32789, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %75 = call i32 @qla2x00_stop_firmware(%struct.TYPE_12__* %74)
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %70, %69, %63
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %4, align 4
  br label %29

79:                                               ; preds = %14, %19, %25, %44
  ret void
}

declare dso_local i32 @IS_FWI2_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local i32 @qla2x00_stop_firmware(%struct.TYPE_12__*) #1

declare dso_local i32 @qla2x00_setup_chip(%struct.TYPE_12__*) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_12__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
