; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_cq.c_mlx4_cq_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_cq.c_mlx4_cq_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_cq = type { i64, i32, i32, i32 }
%struct.mlx4_priv = type { %struct.TYPE_4__, %struct.mlx4_cq_table }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mlx4_cq_table = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"HW2SW_CQ failed (%d) for CQN %06x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_cq_free(%struct.mlx4_dev* %0, %struct.mlx4_cq* %1) #0 {
  %3 = alloca %struct.mlx4_dev*, align 8
  %4 = alloca %struct.mlx4_cq*, align 8
  %5 = alloca %struct.mlx4_priv*, align 8
  %6 = alloca %struct.mlx4_cq_table*, align 8
  %7 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %3, align 8
  store %struct.mlx4_cq* %1, %struct.mlx4_cq** %4, align 8
  %8 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %9 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %8)
  store %struct.mlx4_priv* %9, %struct.mlx4_priv** %5, align 8
  %10 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %11 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %10, i32 0, i32 1
  store %struct.mlx4_cq_table* %11, %struct.mlx4_cq_table** %6, align 8
  %12 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %13 = load %struct.mlx4_cq*, %struct.mlx4_cq** %4, align 8
  %14 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @mlx4_HW2SW_CQ(%struct.mlx4_dev* %12, i32* null, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.mlx4_cq*, %struct.mlx4_cq** %4, align 8
  %23 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @mlx4_warn(%struct.mlx4_dev* %20, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24)
  br label %26

26:                                               ; preds = %19, %2
  %27 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %28 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = load %struct.mlx4_cq*, %struct.mlx4_cq** %4, align 8
  %32 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @synchronize_irq(i32 %36)
  %38 = load %struct.mlx4_cq_table*, %struct.mlx4_cq_table** %6, align 8
  %39 = getelementptr inbounds %struct.mlx4_cq_table, %struct.mlx4_cq_table* %38, i32 0, i32 0
  %40 = call i32 @spin_lock_irq(i32* %39)
  %41 = load %struct.mlx4_cq_table*, %struct.mlx4_cq_table** %6, align 8
  %42 = getelementptr inbounds %struct.mlx4_cq_table, %struct.mlx4_cq_table* %41, i32 0, i32 1
  %43 = load %struct.mlx4_cq*, %struct.mlx4_cq** %4, align 8
  %44 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @radix_tree_delete(i32* %42, i32 %45)
  %47 = load %struct.mlx4_cq_table*, %struct.mlx4_cq_table** %6, align 8
  %48 = getelementptr inbounds %struct.mlx4_cq_table, %struct.mlx4_cq_table* %47, i32 0, i32 0
  %49 = call i32 @spin_unlock_irq(i32* %48)
  %50 = load %struct.mlx4_cq*, %struct.mlx4_cq** %4, align 8
  %51 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %50, i32 0, i32 3
  %52 = call i64 @atomic_dec_and_test(i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %26
  %55 = load %struct.mlx4_cq*, %struct.mlx4_cq** %4, align 8
  %56 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %55, i32 0, i32 2
  %57 = call i32 @complete(i32* %56)
  br label %58

58:                                               ; preds = %54, %26
  %59 = load %struct.mlx4_cq*, %struct.mlx4_cq** %4, align 8
  %60 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %59, i32 0, i32 2
  %61 = call i32 @wait_for_completion(i32* %60)
  %62 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %63 = load %struct.mlx4_cq*, %struct.mlx4_cq** %4, align 8
  %64 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @mlx4_cq_free_icm(%struct.mlx4_dev* %62, i32 %65)
  ret void
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_HW2SW_CQ(%struct.mlx4_dev*, i32*, i32) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_dev*, i8*, i32, i32) #1

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @radix_tree_delete(i32*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @mlx4_cq_free_icm(%struct.mlx4_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
