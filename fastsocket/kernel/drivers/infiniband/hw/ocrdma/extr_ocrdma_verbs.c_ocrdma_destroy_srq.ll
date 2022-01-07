; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_destroy_srq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_destroy_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_srq = type { i32 }
%struct.ocrdma_srq = type { %struct.ocrdma_srq*, %struct.ocrdma_srq*, %struct.TYPE_3__, %struct.TYPE_4__*, %struct.ocrdma_dev* }
%struct.TYPE_3__ = type { i32, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.ocrdma_dev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocrdma_destroy_srq(%struct.ib_srq* %0) #0 {
  %2 = alloca %struct.ib_srq*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocrdma_srq*, align 8
  %5 = alloca %struct.ocrdma_dev*, align 8
  store %struct.ib_srq* %0, %struct.ib_srq** %2, align 8
  %6 = load %struct.ib_srq*, %struct.ib_srq** %2, align 8
  %7 = call %struct.ocrdma_srq* @get_ocrdma_srq(%struct.ib_srq* %6)
  store %struct.ocrdma_srq* %7, %struct.ocrdma_srq** %4, align 8
  %8 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %4, align 8
  %9 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %8, i32 0, i32 4
  %10 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %9, align 8
  store %struct.ocrdma_dev* %10, %struct.ocrdma_dev** %5, align 8
  %11 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %5, align 8
  %12 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %4, align 8
  %13 = call i32 @ocrdma_mbx_destroy_srq(%struct.ocrdma_dev* %11, %struct.ocrdma_srq* %12)
  store i32 %13, i32* %3, align 4
  %14 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %4, align 8
  %15 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %14, i32 0, i32 3
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %1
  %21 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %4, align 8
  %22 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %21, i32 0, i32 3
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %4, align 8
  %27 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %4, align 8
  %32 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @ocrdma_del_mmap(i64 %25, i32 %30, i32 %34)
  br label %36

36:                                               ; preds = %20, %1
  %37 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %4, align 8
  %38 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %37, i32 0, i32 1
  %39 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %38, align 8
  %40 = call i32 @kfree(%struct.ocrdma_srq* %39)
  %41 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %4, align 8
  %42 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %41, i32 0, i32 0
  %43 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %42, align 8
  %44 = call i32 @kfree(%struct.ocrdma_srq* %43)
  %45 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %4, align 8
  %46 = call i32 @kfree(%struct.ocrdma_srq* %45)
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.ocrdma_srq* @get_ocrdma_srq(%struct.ib_srq*) #1

declare dso_local i32 @ocrdma_mbx_destroy_srq(%struct.ocrdma_dev*, %struct.ocrdma_srq*) #1

declare dso_local i32 @ocrdma_del_mmap(i64, i32, i32) #1

declare dso_local i32 @kfree(%struct.ocrdma_srq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
