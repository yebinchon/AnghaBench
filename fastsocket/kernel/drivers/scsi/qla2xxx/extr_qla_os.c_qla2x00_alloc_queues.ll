; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_alloc_queues.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_alloc_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_hw_data = type { i32, i32, %struct.req_que**, i32, i32, %struct.rsp_que**, i32 }
%struct.req_que = type { i32 }
%struct.rsp_que = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ql_log_fatal = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Unable to allocate memory for request queue ptrs.\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Unable to allocate memory for response queue ptrs.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qla_hw_data*, %struct.req_que*, %struct.rsp_que*)* @qla2x00_alloc_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla2x00_alloc_queues(%struct.qla_hw_data* %0, %struct.req_que* %1, %struct.rsp_que* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qla_hw_data*, align 8
  %6 = alloca %struct.req_que*, align 8
  %7 = alloca %struct.rsp_que*, align 8
  %8 = alloca i32*, align 8
  store %struct.qla_hw_data* %0, %struct.qla_hw_data** %5, align 8
  store %struct.req_que* %1, %struct.req_que** %6, align 8
  store %struct.rsp_que* %2, %struct.rsp_que** %7, align 8
  %9 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %10 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 8
  %12 = call i32* @pci_get_drvdata(i32 %11)
  store i32* %12, i32** %8, align 8
  %13 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %14 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = mul i64 8, %16
  %18 = trunc i64 %17 to i32
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i8* @kzalloc(i32 %18, i32 %19)
  %21 = bitcast i8* %20 to %struct.req_que**
  %22 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %23 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %22, i32 0, i32 2
  store %struct.req_que** %21, %struct.req_que*** %23, align 8
  %24 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %25 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %24, i32 0, i32 2
  %26 = load %struct.req_que**, %struct.req_que*** %25, align 8
  %27 = icmp ne %struct.req_que** %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* @ql_log_fatal, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @ql_log(i32 %29, i32* %30, i32 59, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %78

32:                                               ; preds = %3
  %33 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %34 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 8, %36
  %38 = trunc i64 %37 to i32
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i8* @kzalloc(i32 %38, i32 %39)
  %41 = bitcast i8* %40 to %struct.rsp_que**
  %42 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %43 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %42, i32 0, i32 5
  store %struct.rsp_que** %41, %struct.rsp_que*** %43, align 8
  %44 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %45 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %44, i32 0, i32 5
  %46 = load %struct.rsp_que**, %struct.rsp_que*** %45, align 8
  %47 = icmp ne %struct.rsp_que** %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %32
  %49 = load i32, i32* @ql_log_fatal, align 4
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @ql_log(i32 %49, i32* %50, i32 60, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  br label %71

52:                                               ; preds = %32
  %53 = load %struct.rsp_que*, %struct.rsp_que** %7, align 8
  %54 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %55 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %54, i32 0, i32 5
  %56 = load %struct.rsp_que**, %struct.rsp_que*** %55, align 8
  %57 = getelementptr inbounds %struct.rsp_que*, %struct.rsp_que** %56, i64 0
  store %struct.rsp_que* %53, %struct.rsp_que** %57, align 8
  %58 = load %struct.req_que*, %struct.req_que** %6, align 8
  %59 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %60 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %59, i32 0, i32 2
  %61 = load %struct.req_que**, %struct.req_que*** %60, align 8
  %62 = getelementptr inbounds %struct.req_que*, %struct.req_que** %61, i64 0
  store %struct.req_que* %58, %struct.req_que** %62, align 8
  %63 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %64 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @set_bit(i32 0, i32 %65)
  %67 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %68 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @set_bit(i32 0, i32 %69)
  store i32 1, i32* %4, align 4
  br label %81

71:                                               ; preds = %48
  %72 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %73 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %72, i32 0, i32 2
  %74 = load %struct.req_que**, %struct.req_que*** %73, align 8
  %75 = call i32 @kfree(%struct.req_que** %74)
  %76 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %77 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %76, i32 0, i32 2
  store %struct.req_que** null, %struct.req_que*** %77, align 8
  br label %78

78:                                               ; preds = %71, %28
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %78, %52
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32* @pci_get_drvdata(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @ql_log(i32, i32*, i32, i8*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @kfree(%struct.req_que**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
