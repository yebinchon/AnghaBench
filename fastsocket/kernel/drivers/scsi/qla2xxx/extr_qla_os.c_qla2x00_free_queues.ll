; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_free_queues.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_free_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_hw_data = type { i32, i32, %struct.rsp_que**, %struct.rsp_que** }
%struct.rsp_que = type { i32 }
%struct.req_que = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qla_hw_data*)* @qla2x00_free_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla2x00_free_queues(%struct.qla_hw_data* %0) #0 {
  %2 = alloca %struct.qla_hw_data*, align 8
  %3 = alloca %struct.req_que*, align 8
  %4 = alloca %struct.rsp_que*, align 8
  %5 = alloca i32, align 4
  store %struct.qla_hw_data* %0, %struct.qla_hw_data** %2, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %25, %1
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %9 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %28

12:                                               ; preds = %6
  %13 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %14 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %13, i32 0, i32 3
  %15 = load %struct.rsp_que**, %struct.rsp_que*** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.rsp_que*, %struct.rsp_que** %15, i64 %17
  %19 = load %struct.rsp_que*, %struct.rsp_que** %18, align 8
  %20 = bitcast %struct.rsp_que* %19 to %struct.req_que*
  store %struct.req_que* %20, %struct.req_que** %3, align 8
  %21 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %22 = load %struct.req_que*, %struct.req_que** %3, align 8
  %23 = bitcast %struct.req_que* %22 to %struct.rsp_que*
  %24 = call i32 @qla2x00_free_req_que(%struct.qla_hw_data* %21, %struct.rsp_que* %23)
  br label %25

25:                                               ; preds = %12
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %6

28:                                               ; preds = %6
  %29 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %30 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %29, i32 0, i32 3
  %31 = load %struct.rsp_que**, %struct.rsp_que*** %30, align 8
  %32 = call i32 @kfree(%struct.rsp_que** %31)
  %33 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %34 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %33, i32 0, i32 3
  store %struct.rsp_que** null, %struct.rsp_que*** %34, align 8
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %52, %28
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %38 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %35
  %42 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %43 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %42, i32 0, i32 2
  %44 = load %struct.rsp_que**, %struct.rsp_que*** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.rsp_que*, %struct.rsp_que** %44, i64 %46
  %48 = load %struct.rsp_que*, %struct.rsp_que** %47, align 8
  store %struct.rsp_que* %48, %struct.rsp_que** %4, align 8
  %49 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %50 = load %struct.rsp_que*, %struct.rsp_que** %4, align 8
  %51 = call i32 @qla2x00_free_rsp_que(%struct.qla_hw_data* %49, %struct.rsp_que* %50)
  br label %52

52:                                               ; preds = %41
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %35

55:                                               ; preds = %35
  %56 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %57 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %56, i32 0, i32 2
  %58 = load %struct.rsp_que**, %struct.rsp_que*** %57, align 8
  %59 = call i32 @kfree(%struct.rsp_que** %58)
  %60 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %61 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %60, i32 0, i32 2
  store %struct.rsp_que** null, %struct.rsp_que*** %61, align 8
  ret void
}

declare dso_local i32 @qla2x00_free_req_que(%struct.qla_hw_data*, %struct.rsp_que*) #1

declare dso_local i32 @kfree(%struct.rsp_que**) #1

declare dso_local i32 @qla2x00_free_rsp_que(%struct.qla_hw_data*, %struct.rsp_que*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
