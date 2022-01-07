; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_alloc_av.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_alloc_av.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, %struct.ocrdma_av* }
%struct.ocrdma_av = type { i64 }
%struct.ocrdma_ah = type { i32, %struct.ocrdma_av* }

@EINVAL = common dso_local global i32 0, align 4
@OCRDMA_AV_VALID = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocrdma_alloc_av(%struct.ocrdma_dev* %0, %struct.ocrdma_ah* %1) #0 {
  %3 = alloca %struct.ocrdma_dev*, align 8
  %4 = alloca %struct.ocrdma_ah*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ocrdma_av*, align 8
  %8 = alloca i64, align 8
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %3, align 8
  store %struct.ocrdma_ah* %1, %struct.ocrdma_ah** %4, align 8
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %6, align 4
  %11 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %12 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load %struct.ocrdma_av*, %struct.ocrdma_av** %13, align 8
  store %struct.ocrdma_av* %14, %struct.ocrdma_av** %7, align 8
  %15 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %16 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %45, %2
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %23 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %21, %25
  br i1 %26, label %27, label %48

27:                                               ; preds = %20
  %28 = load %struct.ocrdma_av*, %struct.ocrdma_av** %7, align 8
  %29 = getelementptr inbounds %struct.ocrdma_av, %struct.ocrdma_av* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %27
  %33 = load i64, i64* @OCRDMA_AV_VALID, align 8
  %34 = load %struct.ocrdma_av*, %struct.ocrdma_av** %7, align 8
  %35 = getelementptr inbounds %struct.ocrdma_av, %struct.ocrdma_av* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.ocrdma_av*, %struct.ocrdma_av** %7, align 8
  %37 = load %struct.ocrdma_ah*, %struct.ocrdma_ah** %4, align 8
  %38 = getelementptr inbounds %struct.ocrdma_ah, %struct.ocrdma_ah* %37, i32 0, i32 1
  store %struct.ocrdma_av* %36, %struct.ocrdma_av** %38, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.ocrdma_ah*, %struct.ocrdma_ah** %4, align 8
  %41 = getelementptr inbounds %struct.ocrdma_ah, %struct.ocrdma_ah* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  store i32 0, i32* %6, align 4
  br label %48

42:                                               ; preds = %27
  %43 = load %struct.ocrdma_av*, %struct.ocrdma_av** %7, align 8
  %44 = getelementptr inbounds %struct.ocrdma_av, %struct.ocrdma_av* %43, i32 1
  store %struct.ocrdma_av* %44, %struct.ocrdma_av** %7, align 8
  br label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %20

48:                                               ; preds = %32, %20
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %51 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %49, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load i32, i32* @EAGAIN, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %55, %48
  %59 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %60 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
