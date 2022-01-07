; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb4/extr_qp.c_destroy_qp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb4/extr_qp.c_destroy_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_rdev = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.t4_wq = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }
%struct.c4iw_dev_ucontext = type { i32 }

@mapping = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.c4iw_rdev*, %struct.t4_wq*, %struct.c4iw_dev_ucontext*)* @destroy_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @destroy_qp(%struct.c4iw_rdev* %0, %struct.t4_wq* %1, %struct.c4iw_dev_ucontext* %2) #0 {
  %4 = alloca %struct.c4iw_rdev*, align 8
  %5 = alloca %struct.t4_wq*, align 8
  %6 = alloca %struct.c4iw_dev_ucontext*, align 8
  store %struct.c4iw_rdev* %0, %struct.c4iw_rdev** %4, align 8
  store %struct.t4_wq* %1, %struct.t4_wq** %5, align 8
  store %struct.c4iw_dev_ucontext* %2, %struct.c4iw_dev_ucontext** %6, align 8
  %7 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %4, align 8
  %8 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.t4_wq*, %struct.t4_wq** %5, align 8
  %13 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.t4_wq*, %struct.t4_wq** %5, align 8
  %17 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.t4_wq*, %struct.t4_wq** %5, align 8
  %21 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %20, i32 0, i32 1
  %22 = load i32, i32* @mapping, align 4
  %23 = call i32 @pci_unmap_addr(%struct.TYPE_7__* %21, i32 %22)
  %24 = call i32 @dma_free_coherent(i32* %11, i32 %15, i32 %19, i32 %23)
  %25 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %4, align 8
  %26 = load %struct.t4_wq*, %struct.t4_wq** %5, align 8
  %27 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %26, i32 0, i32 0
  %28 = call i32 @dealloc_sq(%struct.c4iw_rdev* %25, %struct.TYPE_8__* %27)
  %29 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %4, align 8
  %30 = load %struct.t4_wq*, %struct.t4_wq** %5, align 8
  %31 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.t4_wq*, %struct.t4_wq** %5, align 8
  %35 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @c4iw_rqtpool_free(%struct.c4iw_rdev* %29, i32 %33, i32 %37)
  %39 = load %struct.t4_wq*, %struct.t4_wq** %5, align 8
  %40 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @kfree(i32 %42)
  %44 = load %struct.t4_wq*, %struct.t4_wq** %5, align 8
  %45 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @kfree(i32 %47)
  %49 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %4, align 8
  %50 = load %struct.t4_wq*, %struct.t4_wq** %5, align 8
  %51 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.c4iw_dev_ucontext*, %struct.c4iw_dev_ucontext** %6, align 8
  %55 = call i32 @c4iw_put_qpid(%struct.c4iw_rdev* %49, i32 %53, %struct.c4iw_dev_ucontext* %54)
  %56 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %4, align 8
  %57 = load %struct.t4_wq*, %struct.t4_wq** %5, align 8
  %58 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.c4iw_dev_ucontext*, %struct.c4iw_dev_ucontext** %6, align 8
  %62 = call i32 @c4iw_put_qpid(%struct.c4iw_rdev* %56, i32 %60, %struct.c4iw_dev_ucontext* %61)
  ret i32 0
}

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

declare dso_local i32 @pci_unmap_addr(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @dealloc_sq(%struct.c4iw_rdev*, %struct.TYPE_8__*) #1

declare dso_local i32 @c4iw_rqtpool_free(%struct.c4iw_rdev*, i32, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @c4iw_put_qpid(%struct.c4iw_rdev*, i32, %struct.c4iw_dev_ucontext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
