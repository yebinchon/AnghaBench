; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb4/extr_qp.c_flush_qp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb4/extr_qp.c_flush_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_qp = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.c4iw_cq = type { i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32 (%struct.TYPE_7__*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.c4iw_qp*)* @flush_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_qp(%struct.c4iw_qp* %0) #0 {
  %2 = alloca %struct.c4iw_qp*, align 8
  %3 = alloca %struct.c4iw_cq*, align 8
  %4 = alloca %struct.c4iw_cq*, align 8
  %5 = alloca i64, align 8
  store %struct.c4iw_qp* %0, %struct.c4iw_qp** %2, align 8
  %6 = load %struct.c4iw_qp*, %struct.c4iw_qp** %2, align 8
  %7 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.c4iw_qp*, %struct.c4iw_qp** %2, align 8
  %10 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.c4iw_cq* @get_chp(i32 %8, i32 %12)
  store %struct.c4iw_cq* %13, %struct.c4iw_cq** %3, align 8
  %14 = load %struct.c4iw_qp*, %struct.c4iw_qp** %2, align 8
  %15 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.c4iw_qp*, %struct.c4iw_qp** %2, align 8
  %18 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.c4iw_cq* @get_chp(i32 %16, i32 %20)
  store %struct.c4iw_cq* %21, %struct.c4iw_cq** %4, align 8
  %22 = load %struct.c4iw_qp*, %struct.c4iw_qp** %2, align 8
  %23 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %80

27:                                               ; preds = %1
  %28 = load %struct.c4iw_qp*, %struct.c4iw_qp** %2, align 8
  %29 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %28, i32 0, i32 0
  %30 = call i32 @t4_set_wq_in_error(i32* %29)
  %31 = load %struct.c4iw_cq*, %struct.c4iw_cq** %3, align 8
  %32 = getelementptr inbounds %struct.c4iw_cq, %struct.c4iw_cq* %31, i32 0, i32 2
  %33 = call i32 @t4_set_cq_in_error(i32* %32)
  %34 = load %struct.c4iw_cq*, %struct.c4iw_cq** %3, align 8
  %35 = getelementptr inbounds %struct.c4iw_cq, %struct.c4iw_cq* %34, i32 0, i32 0
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @spin_lock_irqsave(i32* %35, i64 %36)
  %38 = load %struct.c4iw_cq*, %struct.c4iw_cq** %3, align 8
  %39 = getelementptr inbounds %struct.c4iw_cq, %struct.c4iw_cq* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)** %40, align 8
  %42 = load %struct.c4iw_cq*, %struct.c4iw_cq** %3, align 8
  %43 = getelementptr inbounds %struct.c4iw_cq, %struct.c4iw_cq* %42, i32 0, i32 1
  %44 = load %struct.c4iw_cq*, %struct.c4iw_cq** %3, align 8
  %45 = getelementptr inbounds %struct.c4iw_cq, %struct.c4iw_cq* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 %41(%struct.TYPE_7__* %43, i32 %47)
  %49 = load %struct.c4iw_cq*, %struct.c4iw_cq** %3, align 8
  %50 = getelementptr inbounds %struct.c4iw_cq, %struct.c4iw_cq* %49, i32 0, i32 0
  %51 = load i64, i64* %5, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  %53 = load %struct.c4iw_cq*, %struct.c4iw_cq** %4, align 8
  %54 = load %struct.c4iw_cq*, %struct.c4iw_cq** %3, align 8
  %55 = icmp ne %struct.c4iw_cq* %53, %54
  br i1 %55, label %56, label %79

56:                                               ; preds = %27
  %57 = load %struct.c4iw_cq*, %struct.c4iw_cq** %4, align 8
  %58 = getelementptr inbounds %struct.c4iw_cq, %struct.c4iw_cq* %57, i32 0, i32 2
  %59 = call i32 @t4_set_cq_in_error(i32* %58)
  %60 = load %struct.c4iw_cq*, %struct.c4iw_cq** %4, align 8
  %61 = getelementptr inbounds %struct.c4iw_cq, %struct.c4iw_cq* %60, i32 0, i32 0
  %62 = load i64, i64* %5, align 8
  %63 = call i32 @spin_lock_irqsave(i32* %61, i64 %62)
  %64 = load %struct.c4iw_cq*, %struct.c4iw_cq** %4, align 8
  %65 = getelementptr inbounds %struct.c4iw_cq, %struct.c4iw_cq* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)** %66, align 8
  %68 = load %struct.c4iw_cq*, %struct.c4iw_cq** %4, align 8
  %69 = getelementptr inbounds %struct.c4iw_cq, %struct.c4iw_cq* %68, i32 0, i32 1
  %70 = load %struct.c4iw_cq*, %struct.c4iw_cq** %4, align 8
  %71 = getelementptr inbounds %struct.c4iw_cq, %struct.c4iw_cq* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 %67(%struct.TYPE_7__* %69, i32 %73)
  %75 = load %struct.c4iw_cq*, %struct.c4iw_cq** %4, align 8
  %76 = getelementptr inbounds %struct.c4iw_cq, %struct.c4iw_cq* %75, i32 0, i32 0
  %77 = load i64, i64* %5, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* %76, i64 %77)
  br label %79

79:                                               ; preds = %56, %27
  br label %85

80:                                               ; preds = %1
  %81 = load %struct.c4iw_qp*, %struct.c4iw_qp** %2, align 8
  %82 = load %struct.c4iw_cq*, %struct.c4iw_cq** %3, align 8
  %83 = load %struct.c4iw_cq*, %struct.c4iw_cq** %4, align 8
  %84 = call i32 @__flush_qp(%struct.c4iw_qp* %81, %struct.c4iw_cq* %82, %struct.c4iw_cq* %83)
  br label %85

85:                                               ; preds = %80, %79
  ret void
}

declare dso_local %struct.c4iw_cq* @get_chp(i32, i32) #1

declare dso_local i32 @t4_set_wq_in_error(i32*) #1

declare dso_local i32 @t4_set_cq_in_error(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @__flush_qp(%struct.c4iw_qp*, %struct.c4iw_cq*, %struct.c4iw_cq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
