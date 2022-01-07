; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_qp.c_mlx4_qp_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_qp.c_mlx4_qp_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mlx4_qp = type { i32, i32, i32 }
%struct.mlx4_priv = type { %struct.mlx4_qp_table }
%struct.mlx4_qp_table = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_qp_alloc(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_qp* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_qp*, align 8
  %8 = alloca %struct.mlx4_priv*, align 8
  %9 = alloca %struct.mlx4_qp_table*, align 8
  %10 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mlx4_qp* %2, %struct.mlx4_qp** %7, align 8
  %11 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %12 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %11)
  store %struct.mlx4_priv* %12, %struct.mlx4_priv** %8, align 8
  %13 = load %struct.mlx4_priv*, %struct.mlx4_priv** %8, align 8
  %14 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %13, i32 0, i32 0
  store %struct.mlx4_qp_table* %14, %struct.mlx4_qp_table** %9, align 8
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %66

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.mlx4_qp*, %struct.mlx4_qp** %7, align 8
  %23 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @mlx4_qp_alloc_icm(%struct.mlx4_dev* %24, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %4, align 4
  br label %66

31:                                               ; preds = %20
  %32 = load %struct.mlx4_qp_table*, %struct.mlx4_qp_table** %9, align 8
  %33 = getelementptr inbounds %struct.mlx4_qp_table, %struct.mlx4_qp_table* %32, i32 0, i32 0
  %34 = call i32 @spin_lock_irq(i32* %33)
  %35 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %36 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %35, i32 0, i32 1
  %37 = load %struct.mlx4_qp*, %struct.mlx4_qp** %7, align 8
  %38 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %41 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %43, 1
  %45 = and i32 %39, %44
  %46 = load %struct.mlx4_qp*, %struct.mlx4_qp** %7, align 8
  %47 = call i32 @radix_tree_insert(i32* %36, i32 %45, %struct.mlx4_qp* %46)
  store i32 %47, i32* %10, align 4
  %48 = load %struct.mlx4_qp_table*, %struct.mlx4_qp_table** %9, align 8
  %49 = getelementptr inbounds %struct.mlx4_qp_table, %struct.mlx4_qp_table* %48, i32 0, i32 0
  %50 = call i32 @spin_unlock_irq(i32* %49)
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %31
  br label %61

54:                                               ; preds = %31
  %55 = load %struct.mlx4_qp*, %struct.mlx4_qp** %7, align 8
  %56 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %55, i32 0, i32 2
  %57 = call i32 @atomic_set(i32* %56, i32 1)
  %58 = load %struct.mlx4_qp*, %struct.mlx4_qp** %7, align 8
  %59 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %58, i32 0, i32 1
  %60 = call i32 @init_completion(i32* %59)
  store i32 0, i32* %4, align 4
  br label %66

61:                                               ; preds = %53
  %62 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @mlx4_qp_free_icm(%struct.mlx4_dev* %62, i32 %63)
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %61, %54, %29, %17
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_qp_alloc_icm(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @radix_tree_insert(i32*, i32, %struct.mlx4_qp*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @mlx4_qp_free_icm(%struct.mlx4_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
