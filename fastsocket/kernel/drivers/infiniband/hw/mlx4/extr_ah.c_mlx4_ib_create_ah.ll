; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_ah.c_mlx4_ib_create_ah.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_ah.c_mlx4_ib_create_ah.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ah = type { i32 }
%struct.ib_pd = type { i32 }
%struct.ib_ah_attr = type { i32, i32 }
%struct.mlx4_ib_ah = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IB_LINK_LAYER_ETHERNET = common dso_local global i64 0, align 8
@IB_AH_GRH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_ah* @mlx4_ib_create_ah(%struct.ib_pd* %0, %struct.ib_ah_attr* %1) #0 {
  %3 = alloca %struct.ib_ah*, align 8
  %4 = alloca %struct.ib_pd*, align 8
  %5 = alloca %struct.ib_ah_attr*, align 8
  %6 = alloca %struct.mlx4_ib_ah*, align 8
  %7 = alloca %struct.ib_ah*, align 8
  store %struct.ib_pd* %0, %struct.ib_pd** %4, align 8
  store %struct.ib_ah_attr* %1, %struct.ib_ah_attr** %5, align 8
  %8 = load i32, i32* @GFP_ATOMIC, align 4
  %9 = call %struct.mlx4_ib_ah* @kzalloc(i32 4, i32 %8)
  store %struct.mlx4_ib_ah* %9, %struct.mlx4_ib_ah** %6, align 8
  %10 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %6, align 8
  %11 = icmp ne %struct.mlx4_ib_ah* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.ib_ah* @ERR_PTR(i32 %14)
  store %struct.ib_ah* %15, %struct.ib_ah** %3, align 8
  br label %56

16:                                               ; preds = %2
  %17 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %18 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %21 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @rdma_port_get_link_layer(i32 %19, i32 %22)
  %24 = load i64, i64* @IB_LINK_LAYER_ETHERNET, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %51

26:                                               ; preds = %16
  %27 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %28 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IB_AH_GRH, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  %36 = call %struct.ib_ah* @ERR_PTR(i32 %35)
  store %struct.ib_ah* %36, %struct.ib_ah** %7, align 8
  br label %42

37:                                               ; preds = %26
  %38 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %39 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %40 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %6, align 8
  %41 = call %struct.ib_ah* @create_iboe_ah(%struct.ib_pd* %38, %struct.ib_ah_attr* %39, %struct.mlx4_ib_ah* %40)
  store %struct.ib_ah* %41, %struct.ib_ah** %7, align 8
  br label %42

42:                                               ; preds = %37, %33
  %43 = load %struct.ib_ah*, %struct.ib_ah** %7, align 8
  %44 = call i64 @IS_ERR(%struct.ib_ah* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %6, align 8
  %48 = call i32 @kfree(%struct.mlx4_ib_ah* %47)
  br label %49

49:                                               ; preds = %46, %42
  %50 = load %struct.ib_ah*, %struct.ib_ah** %7, align 8
  store %struct.ib_ah* %50, %struct.ib_ah** %3, align 8
  br label %56

51:                                               ; preds = %16
  %52 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %53 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %54 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %6, align 8
  %55 = call %struct.ib_ah* @create_ib_ah(%struct.ib_pd* %52, %struct.ib_ah_attr* %53, %struct.mlx4_ib_ah* %54)
  store %struct.ib_ah* %55, %struct.ib_ah** %3, align 8
  br label %56

56:                                               ; preds = %51, %49, %12
  %57 = load %struct.ib_ah*, %struct.ib_ah** %3, align 8
  ret %struct.ib_ah* %57
}

declare dso_local %struct.mlx4_ib_ah* @kzalloc(i32, i32) #1

declare dso_local %struct.ib_ah* @ERR_PTR(i32) #1

declare dso_local i64 @rdma_port_get_link_layer(i32, i32) #1

declare dso_local %struct.ib_ah* @create_iboe_ah(%struct.ib_pd*, %struct.ib_ah_attr*, %struct.mlx4_ib_ah*) #1

declare dso_local i64 @IS_ERR(%struct.ib_ah*) #1

declare dso_local i32 @kfree(%struct.mlx4_ib_ah*) #1

declare dso_local %struct.ib_ah* @create_ib_ah(%struct.ib_pd*, %struct.ib_ah_attr*, %struct.mlx4_ib_ah*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
