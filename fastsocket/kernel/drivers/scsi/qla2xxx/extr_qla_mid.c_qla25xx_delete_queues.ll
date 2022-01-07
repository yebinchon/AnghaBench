; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_mid.c_qla25xx_delete_queues.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_mid.c_qla25xx_delete_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, i32, %struct.rsp_que**, %struct.req_que** }
%struct.rsp_que = type { i32 }
%struct.req_que = type { i32 }

@QLA_SUCCESS = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Couldn't delete req que %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Couldn't delete rsp que %d.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla25xx_delete_queues(%struct.scsi_qla_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_qla_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.req_que*, align 8
  %7 = alloca %struct.rsp_que*, align 8
  %8 = alloca %struct.qla_hw_data*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %3, align 8
  store i32 0, i32* %5, align 4
  store %struct.req_que* null, %struct.req_que** %6, align 8
  store %struct.rsp_que* null, %struct.rsp_que** %7, align 8
  %9 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %10 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %9, i32 0, i32 0
  %11 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  store %struct.qla_hw_data* %11, %struct.qla_hw_data** %8, align 8
  store i32 1, i32* %4, align 4
  br label %12

12:                                               ; preds = %45, %1
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %15 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %48

18:                                               ; preds = %12
  %19 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %20 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %19, i32 0, i32 3
  %21 = load %struct.req_que**, %struct.req_que*** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.req_que*, %struct.req_que** %21, i64 %23
  %25 = load %struct.req_que*, %struct.req_que** %24, align 8
  store %struct.req_que* %25, %struct.req_que** %6, align 8
  %26 = load %struct.req_que*, %struct.req_que** %6, align 8
  %27 = icmp ne %struct.req_que* %26, null
  br i1 %27, label %28, label %44

28:                                               ; preds = %18
  %29 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %30 = load %struct.req_que*, %struct.req_que** %6, align 8
  %31 = call i32 @qla25xx_delete_req_que(%struct.scsi_qla_host* %29, %struct.req_que* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @QLA_SUCCESS, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = load i32, i32* @ql_log_warn, align 4
  %37 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %38 = load %struct.req_que*, %struct.req_que** %6, align 8
  %39 = getelementptr inbounds %struct.req_que, %struct.req_que* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ql_log(i32 %36, %struct.scsi_qla_host* %37, i32 234, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %87

43:                                               ; preds = %28
  br label %44

44:                                               ; preds = %43, %18
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %12

48:                                               ; preds = %12
  store i32 1, i32* %4, align 4
  br label %49

49:                                               ; preds = %82, %48
  %50 = load i32, i32* %4, align 4
  %51 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %52 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %85

55:                                               ; preds = %49
  %56 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %57 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %56, i32 0, i32 2
  %58 = load %struct.rsp_que**, %struct.rsp_que*** %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.rsp_que*, %struct.rsp_que** %58, i64 %60
  %62 = load %struct.rsp_que*, %struct.rsp_que** %61, align 8
  store %struct.rsp_que* %62, %struct.rsp_que** %7, align 8
  %63 = load %struct.rsp_que*, %struct.rsp_que** %7, align 8
  %64 = icmp ne %struct.rsp_que* %63, null
  br i1 %64, label %65, label %81

65:                                               ; preds = %55
  %66 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %67 = load %struct.rsp_que*, %struct.rsp_que** %7, align 8
  %68 = call i32 @qla25xx_delete_rsp_que(%struct.scsi_qla_host* %66, %struct.rsp_que* %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @QLA_SUCCESS, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %65
  %73 = load i32, i32* @ql_log_warn, align 4
  %74 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %75 = load %struct.rsp_que*, %struct.rsp_que** %7, align 8
  %76 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @ql_log(i32 %73, %struct.scsi_qla_host* %74, i32 235, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* %5, align 4
  store i32 %79, i32* %2, align 4
  br label %87

80:                                               ; preds = %65
  br label %81

81:                                               ; preds = %80, %55
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %4, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %4, align 4
  br label %49

85:                                               ; preds = %49
  %86 = load i32, i32* %5, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %85, %72, %35
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @qla25xx_delete_req_que(%struct.scsi_qla_host*, %struct.req_que*) #1

declare dso_local i32 @ql_log(i32, %struct.scsi_qla_host*, i32, i8*, i32) #1

declare dso_local i32 @qla25xx_delete_rsp_que(%struct.scsi_qla_host*, %struct.rsp_que*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
