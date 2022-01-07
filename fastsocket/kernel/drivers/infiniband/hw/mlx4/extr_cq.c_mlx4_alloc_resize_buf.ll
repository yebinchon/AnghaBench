; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_cq.c_mlx4_alloc_resize_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_cq.c_mlx4_alloc_resize_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { i32 }
%struct.mlx4_ib_cq = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_ib_dev*, %struct.mlx4_ib_cq*, i32)* @mlx4_alloc_resize_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_alloc_resize_buf(%struct.mlx4_ib_dev* %0, %struct.mlx4_ib_cq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_ib_dev*, align 8
  %6 = alloca %struct.mlx4_ib_cq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %5, align 8
  store %struct.mlx4_ib_cq* %1, %struct.mlx4_ib_cq** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %6, align 8
  %10 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = icmp ne %struct.TYPE_3__* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @EBUSY, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %53

16:                                               ; preds = %3
  %17 = load i32, i32* @GFP_ATOMIC, align 4
  %18 = call %struct.TYPE_3__* @kmalloc(i32 8, i32 %17)
  %19 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %6, align 8
  %20 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %19, i32 0, i32 0
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %20, align 8
  %21 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %6, align 8
  %22 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = icmp ne %struct.TYPE_3__* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %16
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %53

28:                                               ; preds = %16
  %29 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %30 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %6, align 8
  %31 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @mlx4_ib_alloc_cq_buf(%struct.mlx4_ib_dev* %29, i32* %33, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %28
  %39 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %6, align 8
  %40 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = call i32 @kfree(%struct.TYPE_3__* %41)
  %43 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %6, align 8
  %44 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %43, i32 0, i32 0
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %44, align 8
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %4, align 4
  br label %53

46:                                               ; preds = %28
  %47 = load i32, i32* %7, align 4
  %48 = sub nsw i32 %47, 1
  %49 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %6, align 8
  %50 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i32 %48, i32* %52, align 4
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %46, %38, %25, %13
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.TYPE_3__* @kmalloc(i32, i32) #1

declare dso_local i32 @mlx4_ib_alloc_cq_buf(%struct.mlx4_ib_dev*, i32*, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
