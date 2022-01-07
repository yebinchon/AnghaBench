; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb3/extr_cxio_resource.c_cxio_init_qpid_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb3/extr_cxio_resource.c_cxio_init_qpid_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxio_rdev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@T3_MAX_NUM_QP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxio_rdev*)* @cxio_init_qpid_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxio_init_qpid_fifo(%struct.cxio_rdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cxio_rdev*, align 8
  %4 = alloca i32, align 4
  store %struct.cxio_rdev* %0, %struct.cxio_rdev** %3, align 8
  %5 = load %struct.cxio_rdev*, %struct.cxio_rdev** %3, align 8
  %6 = getelementptr inbounds %struct.cxio_rdev, %struct.cxio_rdev* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = call i32 @spin_lock_init(i32* %8)
  %10 = load i32, i32* @T3_MAX_NUM_QP, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 4
  %13 = trunc i64 %12 to i32
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = load %struct.cxio_rdev*, %struct.cxio_rdev** %3, align 8
  %16 = getelementptr inbounds %struct.cxio_rdev, %struct.cxio_rdev* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = call i32 @kfifo_alloc(i32 %13, i32 %14, i32* %18)
  %20 = load %struct.cxio_rdev*, %struct.cxio_rdev** %3, align 8
  %21 = getelementptr inbounds %struct.cxio_rdev, %struct.cxio_rdev* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %19, i32* %23, align 4
  %24 = load %struct.cxio_rdev*, %struct.cxio_rdev** %3, align 8
  %25 = getelementptr inbounds %struct.cxio_rdev, %struct.cxio_rdev* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @IS_ERR(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %1
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %59

34:                                               ; preds = %1
  store i32 16, i32* %4, align 4
  br label %35

35:                                               ; preds = %55, %34
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @T3_MAX_NUM_QP, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %58

39:                                               ; preds = %35
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.cxio_rdev*, %struct.cxio_rdev** %3, align 8
  %42 = getelementptr inbounds %struct.cxio_rdev, %struct.cxio_rdev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %40, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %39
  %47 = load %struct.cxio_rdev*, %struct.cxio_rdev** %3, align 8
  %48 = getelementptr inbounds %struct.cxio_rdev, %struct.cxio_rdev* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = bitcast i32* %4 to i8*
  %53 = call i32 @__kfifo_put(i32 %51, i8* %52, i32 4)
  br label %54

54:                                               ; preds = %46, %39
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %4, align 4
  br label %35

58:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %31
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @kfifo_alloc(i32, i32, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @__kfifo_put(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
