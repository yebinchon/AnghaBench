; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_verbs.c___ib_open_qp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_verbs.c___ib_open_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { void (%struct.ib_event*, i8*)*, %struct.TYPE_2__*, i32, i32, i32, i8*, i32, %struct.ib_qp* }
%struct.ib_event = type opaque
%struct.TYPE_2__ = type { i32 }
%struct.ib_event.0 = type opaque

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_qp* (%struct.ib_qp*, void (%struct.ib_event.0*, i8*)*, i8*)* @__ib_open_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_qp* @__ib_open_qp(%struct.ib_qp* %0, void (%struct.ib_event.0*, i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.ib_qp*, align 8
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca void (%struct.ib_event.0*, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ib_qp*, align 8
  %9 = alloca i64, align 8
  store %struct.ib_qp* %0, %struct.ib_qp** %5, align 8
  store void (%struct.ib_event.0*, i8*)* %1, void (%struct.ib_event.0*, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.ib_qp* @kzalloc(i32 56, i32 %10)
  store %struct.ib_qp* %11, %struct.ib_qp** %8, align 8
  %12 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %13 = icmp ne %struct.ib_qp* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.ib_qp* @ERR_PTR(i32 %16)
  store %struct.ib_qp* %17, %struct.ib_qp** %4, align 8
  br label %65

18:                                               ; preds = %3
  %19 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %20 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %21 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %20, i32 0, i32 7
  store %struct.ib_qp* %19, %struct.ib_qp** %21, align 8
  %22 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %23 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %22, i32 0, i32 6
  %24 = call i32 @atomic_inc(i32* %23)
  %25 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %26 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %29 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %28, i32 0, i32 1
  store %struct.TYPE_2__* %27, %struct.TYPE_2__** %29, align 8
  %30 = load void (%struct.ib_event.0*, i8*)*, void (%struct.ib_event.0*, i8*)** %6, align 8
  %31 = bitcast void (%struct.ib_event.0*, i8*)* %30 to void (%struct.ib_event*, i8*)*
  %32 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %33 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %32, i32 0, i32 0
  store void (%struct.ib_event*, i8*)* %31, void (%struct.ib_event*, i8*)** %33, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %36 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %35, i32 0, i32 5
  store i8* %34, i8** %36, align 8
  %37 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %38 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %41 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 8
  %42 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %43 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %46 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %48 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %9, align 8
  %52 = call i32 @spin_lock_irqsave(i32* %50, i64 %51)
  %53 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %54 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %53, i32 0, i32 2
  %55 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %56 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %55, i32 0, i32 2
  %57 = call i32 @list_add(i32* %54, i32* %56)
  %58 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %59 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %9, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  %64 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  store %struct.ib_qp* %64, %struct.ib_qp** %4, align 8
  br label %65

65:                                               ; preds = %18, %14
  %66 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  ret %struct.ib_qp* %66
}

declare dso_local %struct.ib_qp* @kzalloc(i32, i32) #1

declare dso_local %struct.ib_qp* @ERR_PTR(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
