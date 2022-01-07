; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_init.c_qla2x00_alloc_outstanding_cmds.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_init.c_qla2x00_alloc_outstanding_cmds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_hw_data = type { i32, i32, i64 }
%struct.req_que = type { i32, i8* }

@QLA_SUCCESS = common dso_local global i32 0, align 4
@ql2xmultique_tag = common dso_local global i64 0, align 8
@ql2xmaxqueues = common dso_local global i32 0, align 4
@DEFAULT_OUTSTANDING_COMMANDS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@MIN_OUTSTANDING_COMMANDS = common dso_local global i32 0, align 4
@ql_log_fatal = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"Failed to allocate memory for outstanding_cmds for req_que %p.\0A\00", align 1
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla2x00_alloc_outstanding_cmds(%struct.qla_hw_data* %0, %struct.req_que* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qla_hw_data*, align 8
  %5 = alloca %struct.req_que*, align 8
  store %struct.qla_hw_data* %0, %struct.qla_hw_data** %4, align 8
  store %struct.req_que* %1, %struct.req_que** %5, align 8
  %6 = load %struct.req_que*, %struct.req_que** %5, align 8
  %7 = getelementptr inbounds %struct.req_que, %struct.req_que* %6, i32 0, i32 1
  %8 = load i8*, i8** %7, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %11, i32* %3, align 4
  br label %96

12:                                               ; preds = %2
  %13 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %14 = call i32 @IS_FWI2_CAPABLE(%struct.qla_hw_data* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %12
  %17 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %18 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %16
  %22 = load i64, i64* @ql2xmultique_tag, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* @ql2xmaxqueues, align 4
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %27, label %31

27:                                               ; preds = %24, %21, %12
  %28 = load i32, i32* @DEFAULT_OUTSTANDING_COMMANDS, align 4
  %29 = load %struct.req_que*, %struct.req_que** %5, align 8
  %30 = getelementptr inbounds %struct.req_que, %struct.req_que* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  br label %53

31:                                               ; preds = %24, %16
  %32 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %33 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %36 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @min(i32 %34, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %31
  %41 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %42 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.req_que*, %struct.req_que** %5, align 8
  %45 = getelementptr inbounds %struct.req_que, %struct.req_que* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  br label %52

46:                                               ; preds = %31
  %47 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %48 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.req_que*, %struct.req_que** %5, align 8
  %51 = getelementptr inbounds %struct.req_que, %struct.req_que* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  br label %52

52:                                               ; preds = %46, %40
  br label %53

53:                                               ; preds = %52, %27
  %54 = load %struct.req_que*, %struct.req_que** %5, align 8
  %55 = getelementptr inbounds %struct.req_que, %struct.req_que* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = mul i64 8, %57
  %59 = trunc i64 %58 to i32
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call i8* @kzalloc(i32 %59, i32 %60)
  %62 = load %struct.req_que*, %struct.req_que** %5, align 8
  %63 = getelementptr inbounds %struct.req_que, %struct.req_que* %62, i32 0, i32 1
  store i8* %61, i8** %63, align 8
  %64 = load %struct.req_que*, %struct.req_que** %5, align 8
  %65 = getelementptr inbounds %struct.req_que, %struct.req_que* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %94, label %68

68:                                               ; preds = %53
  %69 = load i32, i32* @MIN_OUTSTANDING_COMMANDS, align 4
  %70 = load %struct.req_que*, %struct.req_que** %5, align 8
  %71 = getelementptr inbounds %struct.req_que, %struct.req_que* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.req_que*, %struct.req_que** %5, align 8
  %73 = getelementptr inbounds %struct.req_que, %struct.req_que* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = mul i64 8, %75
  %77 = trunc i64 %76 to i32
  %78 = load i32, i32* @GFP_KERNEL, align 4
  %79 = call i8* @kzalloc(i32 %77, i32 %78)
  %80 = load %struct.req_que*, %struct.req_que** %5, align 8
  %81 = getelementptr inbounds %struct.req_que, %struct.req_que* %80, i32 0, i32 1
  store i8* %79, i8** %81, align 8
  %82 = load %struct.req_que*, %struct.req_que** %5, align 8
  %83 = getelementptr inbounds %struct.req_que, %struct.req_que* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %93, label %86

86:                                               ; preds = %68
  %87 = load i32, i32* @ql_log_fatal, align 4
  %88 = load %struct.req_que*, %struct.req_que** %5, align 8
  %89 = call i32 @ql_log(i32 %87, i32* null, i32 291, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), %struct.req_que* %88)
  %90 = load %struct.req_que*, %struct.req_que** %5, align 8
  %91 = getelementptr inbounds %struct.req_que, %struct.req_que* %90, i32 0, i32 0
  store i32 0, i32* %91, align 8
  %92 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %92, i32* %3, align 4
  br label %96

93:                                               ; preds = %68
  br label %94

94:                                               ; preds = %93, %53
  %95 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %94, %86, %10
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @IS_FWI2_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local i64 @min(i32, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @ql_log(i32, i32*, i32, i8*, %struct.req_que*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
