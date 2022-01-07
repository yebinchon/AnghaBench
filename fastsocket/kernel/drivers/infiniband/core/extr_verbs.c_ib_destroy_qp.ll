; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_verbs.c_ib_destroy_qp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_verbs.c_ib_destroy_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { %struct.TYPE_2__*, %struct.ib_srq*, %struct.ib_cq*, %struct.ib_cq*, %struct.ib_pd*, %struct.ib_qp*, i32 }
%struct.TYPE_2__ = type { {}* }
%struct.ib_srq = type { i32 }
%struct.ib_cq = type { i32 }
%struct.ib_pd = type { i32 }

@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_destroy_qp(%struct.ib_qp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ib_qp*, align 8
  %4 = alloca %struct.ib_pd*, align 8
  %5 = alloca %struct.ib_cq*, align 8
  %6 = alloca %struct.ib_cq*, align 8
  %7 = alloca %struct.ib_srq*, align 8
  %8 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %3, align 8
  %9 = load %struct.ib_qp*, %struct.ib_qp** %3, align 8
  %10 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %9, i32 0, i32 6
  %11 = call i64 @atomic_read(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EBUSY, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %79

16:                                               ; preds = %1
  %17 = load %struct.ib_qp*, %struct.ib_qp** %3, align 8
  %18 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %17, i32 0, i32 5
  %19 = load %struct.ib_qp*, %struct.ib_qp** %18, align 8
  %20 = load %struct.ib_qp*, %struct.ib_qp** %3, align 8
  %21 = icmp ne %struct.ib_qp* %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load %struct.ib_qp*, %struct.ib_qp** %3, align 8
  %24 = call i32 @__ib_destroy_shared_qp(%struct.ib_qp* %23)
  store i32 %24, i32* %2, align 4
  br label %79

25:                                               ; preds = %16
  %26 = load %struct.ib_qp*, %struct.ib_qp** %3, align 8
  %27 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %26, i32 0, i32 4
  %28 = load %struct.ib_pd*, %struct.ib_pd** %27, align 8
  store %struct.ib_pd* %28, %struct.ib_pd** %4, align 8
  %29 = load %struct.ib_qp*, %struct.ib_qp** %3, align 8
  %30 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %29, i32 0, i32 3
  %31 = load %struct.ib_cq*, %struct.ib_cq** %30, align 8
  store %struct.ib_cq* %31, %struct.ib_cq** %5, align 8
  %32 = load %struct.ib_qp*, %struct.ib_qp** %3, align 8
  %33 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %32, i32 0, i32 2
  %34 = load %struct.ib_cq*, %struct.ib_cq** %33, align 8
  store %struct.ib_cq* %34, %struct.ib_cq** %6, align 8
  %35 = load %struct.ib_qp*, %struct.ib_qp** %3, align 8
  %36 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %35, i32 0, i32 1
  %37 = load %struct.ib_srq*, %struct.ib_srq** %36, align 8
  store %struct.ib_srq* %37, %struct.ib_srq** %7, align 8
  %38 = load %struct.ib_qp*, %struct.ib_qp** %3, align 8
  %39 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = bitcast {}** %41 to i32 (%struct.ib_qp*)**
  %43 = load i32 (%struct.ib_qp*)*, i32 (%struct.ib_qp*)** %42, align 8
  %44 = load %struct.ib_qp*, %struct.ib_qp** %3, align 8
  %45 = call i32 %43(%struct.ib_qp* %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %77, label %48

48:                                               ; preds = %25
  %49 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %50 = icmp ne %struct.ib_pd* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %53 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %52, i32 0, i32 0
  %54 = call i32 @atomic_dec(i32* %53)
  br label %55

55:                                               ; preds = %51, %48
  %56 = load %struct.ib_cq*, %struct.ib_cq** %5, align 8
  %57 = icmp ne %struct.ib_cq* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load %struct.ib_cq*, %struct.ib_cq** %5, align 8
  %60 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %59, i32 0, i32 0
  %61 = call i32 @atomic_dec(i32* %60)
  br label %62

62:                                               ; preds = %58, %55
  %63 = load %struct.ib_cq*, %struct.ib_cq** %6, align 8
  %64 = icmp ne %struct.ib_cq* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load %struct.ib_cq*, %struct.ib_cq** %6, align 8
  %67 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %66, i32 0, i32 0
  %68 = call i32 @atomic_dec(i32* %67)
  br label %69

69:                                               ; preds = %65, %62
  %70 = load %struct.ib_srq*, %struct.ib_srq** %7, align 8
  %71 = icmp ne %struct.ib_srq* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load %struct.ib_srq*, %struct.ib_srq** %7, align 8
  %74 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %73, i32 0, i32 0
  %75 = call i32 @atomic_dec(i32* %74)
  br label %76

76:                                               ; preds = %72, %69
  br label %77

77:                                               ; preds = %76, %25
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %77, %22, %13
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @__ib_destroy_shared_qp(%struct.ib_qp*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
