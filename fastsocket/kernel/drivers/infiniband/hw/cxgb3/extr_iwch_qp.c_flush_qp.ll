; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb3/extr_iwch_qp.c_flush_qp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb3/extr_iwch_qp.c_flush_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwch_qp = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.iwch_cq = type { i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32 (%struct.TYPE_7__*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwch_qp*)* @flush_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_qp(%struct.iwch_qp* %0) #0 {
  %2 = alloca %struct.iwch_qp*, align 8
  %3 = alloca %struct.iwch_cq*, align 8
  %4 = alloca %struct.iwch_cq*, align 8
  store %struct.iwch_qp* %0, %struct.iwch_qp** %2, align 8
  %5 = load %struct.iwch_qp*, %struct.iwch_qp** %2, align 8
  %6 = getelementptr inbounds %struct.iwch_qp, %struct.iwch_qp* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.iwch_qp*, %struct.iwch_qp** %2, align 8
  %9 = getelementptr inbounds %struct.iwch_qp, %struct.iwch_qp* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.iwch_cq* @get_chp(i32 %7, i32 %11)
  store %struct.iwch_cq* %12, %struct.iwch_cq** %3, align 8
  %13 = load %struct.iwch_qp*, %struct.iwch_qp** %2, align 8
  %14 = getelementptr inbounds %struct.iwch_qp, %struct.iwch_qp* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.iwch_qp*, %struct.iwch_qp** %2, align 8
  %17 = getelementptr inbounds %struct.iwch_qp, %struct.iwch_qp* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.iwch_cq* @get_chp(i32 %15, i32 %19)
  store %struct.iwch_cq* %20, %struct.iwch_cq** %4, align 8
  %21 = load %struct.iwch_qp*, %struct.iwch_qp** %2, align 8
  %22 = getelementptr inbounds %struct.iwch_qp, %struct.iwch_qp* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %75

26:                                               ; preds = %1
  %27 = load %struct.iwch_qp*, %struct.iwch_qp** %2, align 8
  %28 = getelementptr inbounds %struct.iwch_qp, %struct.iwch_qp* %27, i32 0, i32 0
  %29 = call i32 @cxio_set_wq_in_error(i32* %28)
  %30 = load %struct.iwch_cq*, %struct.iwch_cq** %3, align 8
  %31 = getelementptr inbounds %struct.iwch_cq, %struct.iwch_cq* %30, i32 0, i32 2
  %32 = call i32 @cxio_set_cq_in_error(i32* %31)
  %33 = load %struct.iwch_cq*, %struct.iwch_cq** %3, align 8
  %34 = getelementptr inbounds %struct.iwch_cq, %struct.iwch_cq* %33, i32 0, i32 0
  %35 = call i32 @spin_lock(i32* %34)
  %36 = load %struct.iwch_cq*, %struct.iwch_cq** %3, align 8
  %37 = getelementptr inbounds %struct.iwch_cq, %struct.iwch_cq* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)** %38, align 8
  %40 = load %struct.iwch_cq*, %struct.iwch_cq** %3, align 8
  %41 = getelementptr inbounds %struct.iwch_cq, %struct.iwch_cq* %40, i32 0, i32 1
  %42 = load %struct.iwch_cq*, %struct.iwch_cq** %3, align 8
  %43 = getelementptr inbounds %struct.iwch_cq, %struct.iwch_cq* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 %39(%struct.TYPE_7__* %41, i32 %45)
  %47 = load %struct.iwch_cq*, %struct.iwch_cq** %3, align 8
  %48 = getelementptr inbounds %struct.iwch_cq, %struct.iwch_cq* %47, i32 0, i32 0
  %49 = call i32 @spin_unlock(i32* %48)
  %50 = load %struct.iwch_cq*, %struct.iwch_cq** %4, align 8
  %51 = load %struct.iwch_cq*, %struct.iwch_cq** %3, align 8
  %52 = icmp ne %struct.iwch_cq* %50, %51
  br i1 %52, label %53, label %74

53:                                               ; preds = %26
  %54 = load %struct.iwch_cq*, %struct.iwch_cq** %4, align 8
  %55 = getelementptr inbounds %struct.iwch_cq, %struct.iwch_cq* %54, i32 0, i32 2
  %56 = call i32 @cxio_set_cq_in_error(i32* %55)
  %57 = load %struct.iwch_cq*, %struct.iwch_cq** %4, align 8
  %58 = getelementptr inbounds %struct.iwch_cq, %struct.iwch_cq* %57, i32 0, i32 0
  %59 = call i32 @spin_lock(i32* %58)
  %60 = load %struct.iwch_cq*, %struct.iwch_cq** %4, align 8
  %61 = getelementptr inbounds %struct.iwch_cq, %struct.iwch_cq* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)** %62, align 8
  %64 = load %struct.iwch_cq*, %struct.iwch_cq** %4, align 8
  %65 = getelementptr inbounds %struct.iwch_cq, %struct.iwch_cq* %64, i32 0, i32 1
  %66 = load %struct.iwch_cq*, %struct.iwch_cq** %4, align 8
  %67 = getelementptr inbounds %struct.iwch_cq, %struct.iwch_cq* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 %63(%struct.TYPE_7__* %65, i32 %69)
  %71 = load %struct.iwch_cq*, %struct.iwch_cq** %4, align 8
  %72 = getelementptr inbounds %struct.iwch_cq, %struct.iwch_cq* %71, i32 0, i32 0
  %73 = call i32 @spin_unlock(i32* %72)
  br label %74

74:                                               ; preds = %53, %26
  br label %80

75:                                               ; preds = %1
  %76 = load %struct.iwch_qp*, %struct.iwch_qp** %2, align 8
  %77 = load %struct.iwch_cq*, %struct.iwch_cq** %3, align 8
  %78 = load %struct.iwch_cq*, %struct.iwch_cq** %4, align 8
  %79 = call i32 @__flush_qp(%struct.iwch_qp* %76, %struct.iwch_cq* %77, %struct.iwch_cq* %78)
  br label %80

80:                                               ; preds = %75, %74
  ret void
}

declare dso_local %struct.iwch_cq* @get_chp(i32, i32) #1

declare dso_local i32 @cxio_set_wq_in_error(i32*) #1

declare dso_local i32 @cxio_set_cq_in_error(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @__flush_qp(%struct.iwch_qp*, %struct.iwch_cq*, %struct.iwch_cq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
