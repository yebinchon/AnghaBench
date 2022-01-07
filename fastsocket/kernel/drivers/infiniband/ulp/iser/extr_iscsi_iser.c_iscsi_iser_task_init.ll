; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iscsi_iser.c_iscsi_iser_task_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iscsi_iser.c_iscsi_iser_task_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_task = type { i32, %struct.iscsi_iser_task* }
%struct.iscsi_iser_task = type { i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_task*)* @iscsi_iser_task_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_iser_task_init(%struct.iscsi_task* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iscsi_task*, align 8
  %4 = alloca %struct.iscsi_iser_task*, align 8
  store %struct.iscsi_task* %0, %struct.iscsi_task** %3, align 8
  %5 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %6 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %5, i32 0, i32 1
  %7 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %6, align 8
  store %struct.iscsi_iser_task* %7, %struct.iscsi_iser_task** %4, align 8
  %8 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %9 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %4, align 8
  %10 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %9, i32 0, i32 1
  %11 = call i64 @iser_initialize_task_headers(%struct.iscsi_task* %8, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %27

16:                                               ; preds = %1
  %17 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %18 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %27

22:                                               ; preds = %16
  %23 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %4, align 8
  %24 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %4, align 8
  %26 = call i32 @iser_task_rdma_init(%struct.iscsi_iser_task* %25)
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %22, %21, %13
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i64 @iser_initialize_task_headers(%struct.iscsi_task*, i32*) #1

declare dso_local i32 @iser_task_rdma_init(%struct.iscsi_iser_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
