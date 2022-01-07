; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_destroy_cq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_destroy_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.ocrdma_cq = type { i64, i64, i32, i64, %struct.ocrdma_dev* }
%struct.ocrdma_dev = type { i32**, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocrdma_destroy_cq(%struct.ib_cq* %0) #0 {
  %2 = alloca %struct.ib_cq*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocrdma_cq*, align 8
  %5 = alloca %struct.ocrdma_dev*, align 8
  store %struct.ib_cq* %0, %struct.ib_cq** %2, align 8
  %6 = load %struct.ib_cq*, %struct.ib_cq** %2, align 8
  %7 = call %struct.ocrdma_cq* @get_ocrdma_cq(%struct.ib_cq* %6)
  store %struct.ocrdma_cq* %7, %struct.ocrdma_cq** %4, align 8
  %8 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %4, align 8
  %9 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %8, i32 0, i32 4
  %10 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %9, align 8
  store %struct.ocrdma_dev* %10, %struct.ocrdma_dev** %5, align 8
  %11 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %5, align 8
  %12 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %4, align 8
  %13 = call i32 @ocrdma_mbx_destroy_cq(%struct.ocrdma_dev* %11, %struct.ocrdma_cq* %12)
  store i32 %13, i32* %3, align 4
  %14 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %4, align 8
  %15 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %42

18:                                               ; preds = %1
  %19 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %4, align 8
  %20 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %4, align 8
  %23 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %4, align 8
  %27 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @ocrdma_del_mmap(i64 %21, i32 %25, i32 %28)
  %30 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %4, align 8
  %31 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %5, align 8
  %34 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %5, align 8
  %38 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @ocrdma_del_mmap(i64 %32, i32 %36, i32 %40)
  br label %42

42:                                               ; preds = %18, %1
  %43 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %5, align 8
  %44 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %43, i32 0, i32 0
  %45 = load i32**, i32*** %44, align 8
  %46 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %4, align 8
  %47 = getelementptr inbounds %struct.ocrdma_cq, %struct.ocrdma_cq* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i32*, i32** %45, i64 %48
  store i32* null, i32** %49, align 8
  %50 = load %struct.ocrdma_cq*, %struct.ocrdma_cq** %4, align 8
  %51 = call i32 @kfree(%struct.ocrdma_cq* %50)
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.ocrdma_cq* @get_ocrdma_cq(%struct.ib_cq*) #1

declare dso_local i32 @ocrdma_mbx_destroy_cq(%struct.ocrdma_dev*, %struct.ocrdma_cq*) #1

declare dso_local i32 @ocrdma_del_mmap(i64, i32, i32) #1

declare dso_local i32 @kfree(%struct.ocrdma_cq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
