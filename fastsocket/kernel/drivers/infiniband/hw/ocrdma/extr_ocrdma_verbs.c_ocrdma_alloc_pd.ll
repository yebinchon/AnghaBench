; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_alloc_pd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_alloc_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pd = type { i32 }
%struct.ib_device = type { i32 }
%struct.ib_ucontext = type { i32 }
%struct.ib_udata = type { i32 }
%struct.ocrdma_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ocrdma_pd = type { i32, %struct.ib_pd, i32, %struct.ocrdma_dev* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OCRDMA_GEN2_FAMILY = common dso_local global i64 0, align 8
@OCRDMA_PD_MAX_DPP_ENABLED_QP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_pd* @ocrdma_alloc_pd(%struct.ib_device* %0, %struct.ib_ucontext* %1, %struct.ib_udata* %2) #0 {
  %4 = alloca %struct.ib_pd*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca %struct.ib_ucontext*, align 8
  %7 = alloca %struct.ib_udata*, align 8
  %8 = alloca %struct.ocrdma_dev*, align 8
  %9 = alloca %struct.ocrdma_pd*, align 8
  %10 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store %struct.ib_ucontext* %1, %struct.ib_ucontext** %6, align 8
  store %struct.ib_udata* %2, %struct.ib_udata** %7, align 8
  %11 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %12 = call %struct.ocrdma_dev* @get_ocrdma_dev(%struct.ib_device* %11)
  store %struct.ocrdma_dev* %12, %struct.ocrdma_dev** %8, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.ocrdma_pd* @kzalloc(i32 24, i32 %13)
  store %struct.ocrdma_pd* %14, %struct.ocrdma_pd** %9, align 8
  %15 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %9, align 8
  %16 = icmp ne %struct.ocrdma_pd* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.ib_pd* @ERR_PTR(i32 %19)
  store %struct.ib_pd* %20, %struct.ib_pd** %4, align 8
  br label %87

21:                                               ; preds = %3
  %22 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %8, align 8
  %23 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %9, align 8
  %24 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %23, i32 0, i32 3
  store %struct.ocrdma_dev* %22, %struct.ocrdma_dev** %24, align 8
  %25 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %26 = icmp ne %struct.ib_udata* %25, null
  br i1 %26, label %27, label %52

27:                                               ; preds = %21
  %28 = load %struct.ib_ucontext*, %struct.ib_ucontext** %6, align 8
  %29 = icmp ne %struct.ib_ucontext* %28, null
  br i1 %29, label %30, label %52

30:                                               ; preds = %27
  %31 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %8, align 8
  %32 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @OCRDMA_GEN2_FAMILY, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 1, i32 0
  %39 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %9, align 8
  %40 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %9, align 8
  %42 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %30
  %46 = load i32, i32* @OCRDMA_PD_MAX_DPP_ENABLED_QP, align 4
  br label %48

47:                                               ; preds = %30
  br label %48

48:                                               ; preds = %47, %45
  %49 = phi i32 [ %46, %45 ], [ 0, %47 ]
  %50 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %9, align 8
  %51 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  br label %52

52:                                               ; preds = %48, %27, %21
  %53 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %8, align 8
  %54 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %9, align 8
  %55 = call i32 @ocrdma_mbx_alloc_pd(%struct.ocrdma_dev* %53, %struct.ocrdma_pd* %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %9, align 8
  %60 = call i32 @kfree(%struct.ocrdma_pd* %59)
  %61 = load i32, i32* %10, align 4
  %62 = call %struct.ib_pd* @ERR_PTR(i32 %61)
  store %struct.ib_pd* %62, %struct.ib_pd** %4, align 8
  br label %87

63:                                               ; preds = %52
  %64 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %65 = icmp ne %struct.ib_udata* %64, null
  br i1 %65, label %66, label %78

66:                                               ; preds = %63
  %67 = load %struct.ib_ucontext*, %struct.ib_ucontext** %6, align 8
  %68 = icmp ne %struct.ib_ucontext* %67, null
  br i1 %68, label %69, label %78

69:                                               ; preds = %66
  %70 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %9, align 8
  %71 = load %struct.ib_ucontext*, %struct.ib_ucontext** %6, align 8
  %72 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %73 = call i32 @ocrdma_copy_pd_uresp(%struct.ocrdma_pd* %70, %struct.ib_ucontext* %71, %struct.ib_udata* %72)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %81

77:                                               ; preds = %69
  br label %78

78:                                               ; preds = %77, %66, %63
  %79 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %9, align 8
  %80 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %79, i32 0, i32 1
  store %struct.ib_pd* %80, %struct.ib_pd** %4, align 8
  br label %87

81:                                               ; preds = %76
  %82 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %9, align 8
  %83 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %82, i32 0, i32 1
  %84 = call i32 @ocrdma_dealloc_pd(%struct.ib_pd* %83)
  %85 = load i32, i32* %10, align 4
  %86 = call %struct.ib_pd* @ERR_PTR(i32 %85)
  store %struct.ib_pd* %86, %struct.ib_pd** %4, align 8
  br label %87

87:                                               ; preds = %81, %78, %58, %17
  %88 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  ret %struct.ib_pd* %88
}

declare dso_local %struct.ocrdma_dev* @get_ocrdma_dev(%struct.ib_device*) #1

declare dso_local %struct.ocrdma_pd* @kzalloc(i32, i32) #1

declare dso_local %struct.ib_pd* @ERR_PTR(i32) #1

declare dso_local i32 @ocrdma_mbx_alloc_pd(%struct.ocrdma_dev*, %struct.ocrdma_pd*) #1

declare dso_local i32 @kfree(%struct.ocrdma_pd*) #1

declare dso_local i32 @ocrdma_copy_pd_uresp(%struct.ocrdma_pd*, %struct.ib_ucontext*, %struct.ib_udata*) #1

declare dso_local i32 @ocrdma_dealloc_pd(%struct.ib_pd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
