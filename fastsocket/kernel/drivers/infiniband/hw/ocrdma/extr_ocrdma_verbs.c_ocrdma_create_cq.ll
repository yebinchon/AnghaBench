; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_create_cq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_create_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.ib_device = type { i32 }
%struct.ib_ucontext = type { i32 }
%struct.ib_udata = type { i32 }
%struct.ocrdma_cq = type { i32, i64, %struct.ib_cq, i32, %struct.ocrdma_dev*, i32, i32, i32, i32 }
%struct.ocrdma_dev = type { %struct.ocrdma_cq** }
%struct.ocrdma_create_cq_ureq = type { i64 }

@EFAULT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OCRDMA_CQE_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_cq* @ocrdma_create_cq(%struct.ib_device* %0, i32 %1, i32 %2, %struct.ib_ucontext* %3, %struct.ib_udata* %4) #0 {
  %6 = alloca %struct.ib_cq*, align 8
  %7 = alloca %struct.ib_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ib_ucontext*, align 8
  %11 = alloca %struct.ib_udata*, align 8
  %12 = alloca %struct.ocrdma_cq*, align 8
  %13 = alloca %struct.ocrdma_dev*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.ocrdma_create_cq_ureq, align 8
  store %struct.ib_device* %0, %struct.ib_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.ib_ucontext* %3, %struct.ib_ucontext** %10, align 8
  store %struct.ib_udata* %4, %struct.ib_udata** %11, align 8
  %16 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %17 = call %struct.ocrdma_dev* @get_ocrdma_dev(%struct.ib_device* %16)
  store %struct.ocrdma_dev* %17, %struct.ocrdma_dev** %13, align 8
  %18 = load %struct.ib_udata*, %struct.ib_udata** %11, align 8
  %19 = icmp ne %struct.ib_udata* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %5
  %21 = load %struct.ib_udata*, %struct.ib_udata** %11, align 8
  %22 = call i64 @ib_copy_from_udata(%struct.ocrdma_create_cq_ureq* %15, %struct.ib_udata* %21, i32 8)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i32, i32* @EFAULT, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.ib_cq* @ERR_PTR(i32 %26)
  store %struct.ib_cq* %27, %struct.ib_cq** %6, align 8
  br label %105

28:                                               ; preds = %20
  br label %31

29:                                               ; preds = %5
  %30 = getelementptr inbounds %struct.ocrdma_create_cq_ureq, %struct.ocrdma_create_cq_ureq* %15, i32 0, i32 0
  store i64 0, i64* %30, align 8
  br label %31

31:                                               ; preds = %29, %28
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.ocrdma_cq* @kzalloc(i32 48, i32 %32)
  store %struct.ocrdma_cq* %33, %struct.ocrdma_cq** %12, align 8
  %34 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %12, align 8
  %35 = icmp ne %struct.ocrdma_cq* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  %39 = call %struct.ib_cq* @ERR_PTR(i32 %38)
  store %struct.ib_cq* %39, %struct.ib_cq** %6, align 8
  br label %105

40:                                               ; preds = %31
  %41 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %12, align 8
  %42 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %41, i32 0, i32 8
  %43 = call i32 @spin_lock_init(i32* %42)
  %44 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %12, align 8
  %45 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %44, i32 0, i32 7
  %46 = call i32 @spin_lock_init(i32* %45)
  %47 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %12, align 8
  %48 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %47, i32 0, i32 6
  %49 = call i32 @INIT_LIST_HEAD(i32* %48)
  %50 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %12, align 8
  %51 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %50, i32 0, i32 5
  %52 = call i32 @INIT_LIST_HEAD(i32* %51)
  %53 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %13, align 8
  %54 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %12, align 8
  %55 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %54, i32 0, i32 4
  store %struct.ocrdma_dev* %53, %struct.ocrdma_dev** %55, align 8
  %56 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %13, align 8
  %57 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %12, align 8
  %58 = load i32, i32* %8, align 4
  %59 = getelementptr inbounds %struct.ocrdma_create_cq_ureq, %struct.ocrdma_create_cq_ureq* %15, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @ocrdma_mbx_create_cq(%struct.ocrdma_dev* %56, %struct.ocrdma_cq* %57, i32 %58, i64 %60)
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %14, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %40
  %65 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %12, align 8
  %66 = call i32 @kfree(%struct.ocrdma_cq* %65)
  %67 = load i32, i32* %14, align 4
  %68 = call %struct.ib_cq* @ERR_PTR(i32 %67)
  store %struct.ib_cq* %68, %struct.ib_cq** %6, align 8
  br label %105

69:                                               ; preds = %40
  %70 = load %struct.ib_ucontext*, %struct.ib_ucontext** %10, align 8
  %71 = icmp ne %struct.ib_ucontext* %70, null
  br i1 %71, label %72, label %81

72:                                               ; preds = %69
  %73 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %12, align 8
  %74 = load %struct.ib_udata*, %struct.ib_udata** %11, align 8
  %75 = load %struct.ib_ucontext*, %struct.ib_ucontext** %10, align 8
  %76 = call i32 @ocrdma_copy_cq_uresp(%struct.ocrdma_cq* %73, %struct.ib_udata* %74, %struct.ib_ucontext* %75)
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %14, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  br label %97

80:                                               ; preds = %72
  br label %81

81:                                               ; preds = %80, %69
  %82 = load i32, i32* @OCRDMA_CQE_VALID, align 4
  %83 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %12, align 8
  %84 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  %85 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %12, align 8
  %86 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %85, i32 0, i32 0
  store i32 1, i32* %86, align 8
  %87 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %12, align 8
  %88 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %13, align 8
  %89 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %88, i32 0, i32 0
  %90 = load %struct.ocrdma_cq**, %struct.ocrdma_cq*** %89, align 8
  %91 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %12, align 8
  %92 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.ocrdma_cq*, %struct.ocrdma_cq** %90, i64 %93
  store %struct.ocrdma_cq* %87, %struct.ocrdma_cq** %94, align 8
  %95 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %12, align 8
  %96 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %95, i32 0, i32 2
  store %struct.ib_cq* %96, %struct.ib_cq** %6, align 8
  br label %105

97:                                               ; preds = %79
  %98 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %13, align 8
  %99 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %12, align 8
  %100 = call i32 @ocrdma_mbx_destroy_cq(%struct.ocrdma_dev* %98, %struct.ocrdma_cq* %99)
  %101 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %12, align 8
  %102 = call i32 @kfree(%struct.ocrdma_cq* %101)
  %103 = load i32, i32* %14, align 4
  %104 = call %struct.ib_cq* @ERR_PTR(i32 %103)
  store %struct.ib_cq* %104, %struct.ib_cq** %6, align 8
  br label %105

105:                                              ; preds = %97, %81, %64, %36, %24
  %106 = load %struct.ib_cq*, %struct.ib_cq** %6, align 8
  ret %struct.ib_cq* %106
}

declare dso_local %struct.ocrdma_dev* @get_ocrdma_dev(%struct.ib_device*) #1

declare dso_local i64 @ib_copy_from_udata(%struct.ocrdma_create_cq_ureq*, %struct.ib_udata*, i32) #1

declare dso_local %struct.ib_cq* @ERR_PTR(i32) #1

declare dso_local %struct.ocrdma_cq* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ocrdma_mbx_create_cq(%struct.ocrdma_dev*, %struct.ocrdma_cq*, i32, i64) #1

declare dso_local i32 @kfree(%struct.ocrdma_cq*) #1

declare dso_local i32 @ocrdma_copy_cq_uresp(%struct.ocrdma_cq*, %struct.ib_udata*, %struct.ib_ucontext*) #1

declare dso_local i32 @ocrdma_mbx_destroy_cq(%struct.ocrdma_dev*, %struct.ocrdma_cq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
