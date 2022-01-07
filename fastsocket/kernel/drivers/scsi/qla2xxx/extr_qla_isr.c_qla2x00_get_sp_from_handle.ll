; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_isr.c_qla2x00_get_sp_from_handle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_isr.c_qla2x00_get_sp_from_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i32, %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32 }
%struct.req_que = type { i64, %struct.TYPE_8__** }
%struct.TYPE_7__ = type { i32 }

@ql_log_warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Invalid command index (%x).\0A\00", align 1
@FCOE_CTX_RESET_NEEDED = common dso_local global i32 0, align 4
@ISP_ABORT_NEEDED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Invalid completion handle (%x) -- timed-out.\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"SRB handle (%x) mismatch %x.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @qla2x00_get_sp_from_handle(%struct.TYPE_9__* %0, i8* %1, %struct.req_que* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.req_que*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.qla_hw_data*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.req_que* %2, %struct.req_que** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %16 = load %struct.qla_hw_data*, %struct.qla_hw_data** %15, align 8
  store %struct.qla_hw_data* %16, %struct.qla_hw_data** %10, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %11, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %12, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @LSW(i32 %21)
  store i64 %22, i64* %13, align 8
  %23 = load i64, i64* %13, align 8
  %24 = load %struct.req_que*, %struct.req_que** %8, align 8
  %25 = getelementptr inbounds %struct.req_que, %struct.req_que* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp uge i64 %23, %26
  br i1 %27, label %28, label %47

28:                                               ; preds = %4
  %29 = load i32, i32* @ql_log_warn, align 4
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %31 = load i64, i64* %13, align 8
  %32 = call i32 (i32, %struct.TYPE_9__*, i32, i8*, i64, ...) @ql_log(i32 %29, %struct.TYPE_9__* %30, i32 20529, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %31)
  %33 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %34 = call i64 @IS_QLA82XX(%struct.qla_hw_data* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %28
  %37 = load i32, i32* @FCOE_CTX_RESET_NEEDED, align 4
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = call i32 @set_bit(i32 %37, i32* %39)
  br label %46

41:                                               ; preds = %28
  %42 = load i32, i32* @ISP_ABORT_NEEDED, align 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = call i32 @set_bit(i32 %42, i32* %44)
  br label %46

46:                                               ; preds = %41, %36
  br label %82

47:                                               ; preds = %4
  %48 = load %struct.req_que*, %struct.req_que** %8, align 8
  %49 = getelementptr inbounds %struct.req_que, %struct.req_que* %48, i32 0, i32 1
  %50 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %49, align 8
  %51 = load i64, i64* %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %50, i64 %51
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  store %struct.TYPE_8__* %53, %struct.TYPE_8__** %12, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %55 = icmp ne %struct.TYPE_8__* %54, null
  br i1 %55, label %62, label %56

56:                                               ; preds = %47
  %57 = load i32, i32* @ql_log_warn, align 4
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %59 = load i64, i64* %13, align 8
  %60 = call i32 (i32, %struct.TYPE_9__*, i32, i8*, i64, ...) @ql_log(i32 %57, %struct.TYPE_9__* %58, i32 20530, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %59)
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  store %struct.TYPE_8__* %61, %struct.TYPE_8__** %5, align 8
  br label %84

62:                                               ; preds = %47
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %13, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %62
  %69 = load i32, i32* @ql_log_warn, align 4
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %13, align 8
  %75 = call i32 (i32, %struct.TYPE_9__*, i32, i8*, i64, ...) @ql_log(i32 %69, %struct.TYPE_9__* %70, i32 20531, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %73, i64 %74)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %5, align 8
  br label %84

76:                                               ; preds = %62
  %77 = load %struct.req_que*, %struct.req_que** %8, align 8
  %78 = getelementptr inbounds %struct.req_que, %struct.req_que* %77, i32 0, i32 1
  %79 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %78, align 8
  %80 = load i64, i64* %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %79, i64 %80
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %81, align 8
  br label %82

82:                                               ; preds = %76, %46
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  store %struct.TYPE_8__* %83, %struct.TYPE_8__** %5, align 8
  br label %84

84:                                               ; preds = %82, %68, %56
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  ret %struct.TYPE_8__* %85
}

declare dso_local i64 @LSW(i32) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_9__*, i32, i8*, i64, ...) #1

declare dso_local i64 @IS_QLA82XX(%struct.qla_hw_data*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
