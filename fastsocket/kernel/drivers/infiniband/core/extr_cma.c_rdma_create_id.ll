; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cma.c_rdma_create_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cma.c_rdma_create_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { i32, i32, i32, i8* }
%struct.rdma_id_private = type { %struct.rdma_cm_id, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@RDMA_CM_IDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rdma_cm_id* @rdma_create_id(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.rdma_cm_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rdma_id_private*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.rdma_id_private* @kzalloc(i32 64, i32 %11)
  store %struct.rdma_id_private* %12, %struct.rdma_id_private** %10, align 8
  %13 = load %struct.rdma_id_private*, %struct.rdma_id_private** %10, align 8
  %14 = icmp ne %struct.rdma_id_private* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.rdma_cm_id* @ERR_PTR(i32 %17)
  store %struct.rdma_cm_id* %18, %struct.rdma_cm_id** %5, align 8
  br label %69

19:                                               ; preds = %4
  %20 = load i32, i32* @current, align 4
  %21 = call i32 @task_pid_nr(i32 %20)
  %22 = load %struct.rdma_id_private*, %struct.rdma_id_private** %10, align 8
  %23 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %22, i32 0, i32 10
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @RDMA_CM_IDLE, align 4
  %25 = load %struct.rdma_id_private*, %struct.rdma_id_private** %10, align 8
  %26 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %25, i32 0, i32 9
  store i32 %24, i32* %26, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load %struct.rdma_id_private*, %struct.rdma_id_private** %10, align 8
  %29 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %29, i32 0, i32 3
  store i8* %27, i8** %30, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.rdma_id_private*, %struct.rdma_id_private** %10, align 8
  %33 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %33, i32 0, i32 2
  store i32 %31, i32* %34, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.rdma_id_private*, %struct.rdma_id_private** %10, align 8
  %37 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.rdma_id_private*, %struct.rdma_id_private** %10, align 8
  %41 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 4
  %43 = load %struct.rdma_id_private*, %struct.rdma_id_private** %10, align 8
  %44 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %43, i32 0, i32 8
  %45 = call i32 @spin_lock_init(i32* %44)
  %46 = load %struct.rdma_id_private*, %struct.rdma_id_private** %10, align 8
  %47 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %46, i32 0, i32 7
  %48 = call i32 @mutex_init(i32* %47)
  %49 = load %struct.rdma_id_private*, %struct.rdma_id_private** %10, align 8
  %50 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %49, i32 0, i32 6
  %51 = call i32 @init_completion(i32* %50)
  %52 = load %struct.rdma_id_private*, %struct.rdma_id_private** %10, align 8
  %53 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %52, i32 0, i32 5
  %54 = call i32 @atomic_set(i32* %53, i32 1)
  %55 = load %struct.rdma_id_private*, %struct.rdma_id_private** %10, align 8
  %56 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %55, i32 0, i32 4
  %57 = call i32 @mutex_init(i32* %56)
  %58 = load %struct.rdma_id_private*, %struct.rdma_id_private** %10, align 8
  %59 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %58, i32 0, i32 3
  %60 = call i32 @INIT_LIST_HEAD(i32* %59)
  %61 = load %struct.rdma_id_private*, %struct.rdma_id_private** %10, align 8
  %62 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %61, i32 0, i32 2
  %63 = call i32 @INIT_LIST_HEAD(i32* %62)
  %64 = load %struct.rdma_id_private*, %struct.rdma_id_private** %10, align 8
  %65 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %64, i32 0, i32 1
  %66 = call i32 @get_random_bytes(i32* %65, i32 4)
  %67 = load %struct.rdma_id_private*, %struct.rdma_id_private** %10, align 8
  %68 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %67, i32 0, i32 0
  store %struct.rdma_cm_id* %68, %struct.rdma_cm_id** %5, align 8
  br label %69

69:                                               ; preds = %19, %15
  %70 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  ret %struct.rdma_cm_id* %70
}

declare dso_local %struct.rdma_id_private* @kzalloc(i32, i32) #1

declare dso_local %struct.rdma_cm_id* @ERR_PTR(i32) #1

declare dso_local i32 @task_pid_nr(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @get_random_bytes(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
