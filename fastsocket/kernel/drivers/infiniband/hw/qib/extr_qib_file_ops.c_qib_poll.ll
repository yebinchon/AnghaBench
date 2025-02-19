; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_file_ops.c_qib_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_file_ops.c_qib_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.poll_table_struct = type { i32 }
%struct.qib_ctxtdata = type { i64 }

@POLLERR = common dso_local global i32 0, align 4
@QIB_POLL_TYPE_URGENT = common dso_local global i64 0, align 8
@QIB_POLL_TYPE_ANYRCV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.poll_table_struct*)* @qib_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_poll(%struct.file* %0, %struct.poll_table_struct* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.poll_table_struct*, align 8
  %5 = alloca %struct.qib_ctxtdata*, align 8
  %6 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.poll_table_struct* %1, %struct.poll_table_struct** %4, align 8
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = call %struct.qib_ctxtdata* @ctxt_fp(%struct.file* %7)
  store %struct.qib_ctxtdata* %8, %struct.qib_ctxtdata** %5, align 8
  %9 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %10 = icmp ne %struct.qib_ctxtdata* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @POLLERR, align 4
  store i32 %12, i32* %6, align 4
  br label %39

13:                                               ; preds = %2
  %14 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %15 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @QIB_POLL_TYPE_URGENT, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %21 = load %struct.file*, %struct.file** %3, align 8
  %22 = load %struct.poll_table_struct*, %struct.poll_table_struct** %4, align 8
  %23 = call i32 @qib_poll_urgent(%struct.qib_ctxtdata* %20, %struct.file* %21, %struct.poll_table_struct* %22)
  store i32 %23, i32* %6, align 4
  br label %38

24:                                               ; preds = %13
  %25 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %26 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @QIB_POLL_TYPE_ANYRCV, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %32 = load %struct.file*, %struct.file** %3, align 8
  %33 = load %struct.poll_table_struct*, %struct.poll_table_struct** %4, align 8
  %34 = call i32 @qib_poll_next(%struct.qib_ctxtdata* %31, %struct.file* %32, %struct.poll_table_struct* %33)
  store i32 %34, i32* %6, align 4
  br label %37

35:                                               ; preds = %24
  %36 = load i32, i32* @POLLERR, align 4
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %35, %30
  br label %38

38:                                               ; preds = %37, %19
  br label %39

39:                                               ; preds = %38, %11
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local %struct.qib_ctxtdata* @ctxt_fp(%struct.file*) #1

declare dso_local i32 @qib_poll_urgent(%struct.qib_ctxtdata*, %struct.file*, %struct.poll_table_struct*) #1

declare dso_local i32 @qib_poll_next(%struct.qib_ctxtdata*, %struct.file*, %struct.poll_table_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
