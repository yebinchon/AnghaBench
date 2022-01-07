; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_next_async_crq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_next_async_crq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvfc_async_crq = type { i32 }
%struct.ibmvfc_host = type { %struct.ibmvfc_async_crq_queue }
%struct.ibmvfc_async_crq_queue = type { i64, i64, %struct.ibmvfc_async_crq* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ibmvfc_async_crq* (%struct.ibmvfc_host*)* @ibmvfc_next_async_crq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ibmvfc_async_crq* @ibmvfc_next_async_crq(%struct.ibmvfc_host* %0) #0 {
  %2 = alloca %struct.ibmvfc_host*, align 8
  %3 = alloca %struct.ibmvfc_async_crq_queue*, align 8
  %4 = alloca %struct.ibmvfc_async_crq*, align 8
  store %struct.ibmvfc_host* %0, %struct.ibmvfc_host** %2, align 8
  %5 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %2, align 8
  %6 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %5, i32 0, i32 0
  store %struct.ibmvfc_async_crq_queue* %6, %struct.ibmvfc_async_crq_queue** %3, align 8
  %7 = load %struct.ibmvfc_async_crq_queue*, %struct.ibmvfc_async_crq_queue** %3, align 8
  %8 = getelementptr inbounds %struct.ibmvfc_async_crq_queue, %struct.ibmvfc_async_crq_queue* %7, i32 0, i32 2
  %9 = load %struct.ibmvfc_async_crq*, %struct.ibmvfc_async_crq** %8, align 8
  %10 = load %struct.ibmvfc_async_crq_queue*, %struct.ibmvfc_async_crq_queue** %3, align 8
  %11 = getelementptr inbounds %struct.ibmvfc_async_crq_queue, %struct.ibmvfc_async_crq_queue* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.ibmvfc_async_crq, %struct.ibmvfc_async_crq* %9, i64 %12
  store %struct.ibmvfc_async_crq* %13, %struct.ibmvfc_async_crq** %4, align 8
  %14 = load %struct.ibmvfc_async_crq*, %struct.ibmvfc_async_crq** %4, align 8
  %15 = getelementptr inbounds %struct.ibmvfc_async_crq, %struct.ibmvfc_async_crq* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 128
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %1
  %20 = load %struct.ibmvfc_async_crq_queue*, %struct.ibmvfc_async_crq_queue** %3, align 8
  %21 = getelementptr inbounds %struct.ibmvfc_async_crq_queue, %struct.ibmvfc_async_crq_queue* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %21, align 8
  %24 = load %struct.ibmvfc_async_crq_queue*, %struct.ibmvfc_async_crq_queue** %3, align 8
  %25 = getelementptr inbounds %struct.ibmvfc_async_crq_queue, %struct.ibmvfc_async_crq_queue* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load %struct.ibmvfc_async_crq_queue*, %struct.ibmvfc_async_crq_queue** %3, align 8
  %30 = getelementptr inbounds %struct.ibmvfc_async_crq_queue, %struct.ibmvfc_async_crq_queue* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  br label %31

31:                                               ; preds = %28, %19
  %32 = call i32 (...) @rmb()
  br label %34

33:                                               ; preds = %1
  store %struct.ibmvfc_async_crq* null, %struct.ibmvfc_async_crq** %4, align 8
  br label %34

34:                                               ; preds = %33, %31
  %35 = load %struct.ibmvfc_async_crq*, %struct.ibmvfc_async_crq** %4, align 8
  ret %struct.ibmvfc_async_crq* %35
}

declare dso_local i32 @rmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
