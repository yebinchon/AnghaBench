; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_provider.c_mthca_alloc_resize_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_provider.c_mthca_alloc_resize_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { i32 }
%struct.mthca_cq = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CQ_RESIZE_ALLOC = common dso_local global i32 0, align 4
@CQ_RESIZE_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mthca_dev*, %struct.mthca_cq*, i32)* @mthca_alloc_resize_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mthca_alloc_resize_buf(%struct.mthca_dev* %0, %struct.mthca_cq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mthca_dev*, align 8
  %6 = alloca %struct.mthca_cq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %5, align 8
  store %struct.mthca_cq* %1, %struct.mthca_cq** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.mthca_cq*, %struct.mthca_cq** %6, align 8
  %10 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %9, i32 0, i32 0
  %11 = call i32 @spin_lock_irq(i32* %10)
  %12 = load %struct.mthca_cq*, %struct.mthca_cq** %6, align 8
  %13 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = icmp ne %struct.TYPE_3__* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %8, align 4
  br label %37

19:                                               ; preds = %3
  %20 = load i32, i32* @GFP_ATOMIC, align 4
  %21 = call %struct.TYPE_3__* @kmalloc(i32 12, i32 %20)
  %22 = load %struct.mthca_cq*, %struct.mthca_cq** %6, align 8
  %23 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %22, i32 0, i32 1
  store %struct.TYPE_3__* %21, %struct.TYPE_3__** %23, align 8
  %24 = load %struct.mthca_cq*, %struct.mthca_cq** %6, align 8
  %25 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = icmp ne %struct.TYPE_3__* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %19
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %8, align 4
  br label %37

31:                                               ; preds = %19
  %32 = load i32, i32* @CQ_RESIZE_ALLOC, align 4
  %33 = load %struct.mthca_cq*, %struct.mthca_cq** %6, align 8
  %34 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  store i32 %32, i32* %36, align 4
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %31, %28, %16
  %38 = load %struct.mthca_cq*, %struct.mthca_cq** %6, align 8
  %39 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %38, i32 0, i32 0
  %40 = call i32 @spin_unlock_irq(i32* %39)
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %4, align 4
  br label %87

45:                                               ; preds = %37
  %46 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %47 = load %struct.mthca_cq*, %struct.mthca_cq** %6, align 8
  %48 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @mthca_alloc_cq_buf(%struct.mthca_dev* %46, i32* %50, i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %45
  %56 = load %struct.mthca_cq*, %struct.mthca_cq** %6, align 8
  %57 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %56, i32 0, i32 0
  %58 = call i32 @spin_lock_irq(i32* %57)
  %59 = load %struct.mthca_cq*, %struct.mthca_cq** %6, align 8
  %60 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %59, i32 0, i32 1
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = call i32 @kfree(%struct.TYPE_3__* %61)
  %63 = load %struct.mthca_cq*, %struct.mthca_cq** %6, align 8
  %64 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %63, i32 0, i32 1
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %64, align 8
  %65 = load %struct.mthca_cq*, %struct.mthca_cq** %6, align 8
  %66 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %65, i32 0, i32 0
  %67 = call i32 @spin_unlock_irq(i32* %66)
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %4, align 4
  br label %87

69:                                               ; preds = %45
  %70 = load i32, i32* %7, align 4
  %71 = sub nsw i32 %70, 1
  %72 = load %struct.mthca_cq*, %struct.mthca_cq** %6, align 8
  %73 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %72, i32 0, i32 1
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  store i32 %71, i32* %75, align 4
  %76 = load %struct.mthca_cq*, %struct.mthca_cq** %6, align 8
  %77 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %76, i32 0, i32 0
  %78 = call i32 @spin_lock_irq(i32* %77)
  %79 = load i32, i32* @CQ_RESIZE_READY, align 4
  %80 = load %struct.mthca_cq*, %struct.mthca_cq** %6, align 8
  %81 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %80, i32 0, i32 1
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  store i32 %79, i32* %83, align 4
  %84 = load %struct.mthca_cq*, %struct.mthca_cq** %6, align 8
  %85 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %84, i32 0, i32 0
  %86 = call i32 @spin_unlock_irq(i32* %85)
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %69, %55, %43
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local %struct.TYPE_3__* @kmalloc(i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @mthca_alloc_cq_buf(%struct.mthca_dev*, i32*, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
