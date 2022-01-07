; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_srq.c_mlx4_srq_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_srq.c_mlx4_srq_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_srq = type { i32, i32, i32 }
%struct.mlx4_srq_table = type { i32, i32 }
%struct.TYPE_2__ = type { %struct.mlx4_srq_table }

@.str = private unnamed_addr constant [37 x i8] c"HW2SW_SRQ failed (%d) for SRQN %06x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_srq_free(%struct.mlx4_dev* %0, %struct.mlx4_srq* %1) #0 {
  %3 = alloca %struct.mlx4_dev*, align 8
  %4 = alloca %struct.mlx4_srq*, align 8
  %5 = alloca %struct.mlx4_srq_table*, align 8
  %6 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %3, align 8
  store %struct.mlx4_srq* %1, %struct.mlx4_srq** %4, align 8
  %7 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %8 = call %struct.TYPE_2__* @mlx4_priv(%struct.mlx4_dev* %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.mlx4_srq_table* %9, %struct.mlx4_srq_table** %5, align 8
  %10 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %11 = load %struct.mlx4_srq*, %struct.mlx4_srq** %4, align 8
  %12 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @mlx4_HW2SW_SRQ(%struct.mlx4_dev* %10, i32* null, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.mlx4_srq*, %struct.mlx4_srq** %4, align 8
  %21 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @mlx4_warn(%struct.mlx4_dev* %18, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22)
  br label %24

24:                                               ; preds = %17, %2
  %25 = load %struct.mlx4_srq_table*, %struct.mlx4_srq_table** %5, align 8
  %26 = getelementptr inbounds %struct.mlx4_srq_table, %struct.mlx4_srq_table* %25, i32 0, i32 0
  %27 = call i32 @spin_lock_irq(i32* %26)
  %28 = load %struct.mlx4_srq_table*, %struct.mlx4_srq_table** %5, align 8
  %29 = getelementptr inbounds %struct.mlx4_srq_table, %struct.mlx4_srq_table* %28, i32 0, i32 1
  %30 = load %struct.mlx4_srq*, %struct.mlx4_srq** %4, align 8
  %31 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @radix_tree_delete(i32* %29, i32 %32)
  %34 = load %struct.mlx4_srq_table*, %struct.mlx4_srq_table** %5, align 8
  %35 = getelementptr inbounds %struct.mlx4_srq_table, %struct.mlx4_srq_table* %34, i32 0, i32 0
  %36 = call i32 @spin_unlock_irq(i32* %35)
  %37 = load %struct.mlx4_srq*, %struct.mlx4_srq** %4, align 8
  %38 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %37, i32 0, i32 2
  %39 = call i64 @atomic_dec_and_test(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %24
  %42 = load %struct.mlx4_srq*, %struct.mlx4_srq** %4, align 8
  %43 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %42, i32 0, i32 1
  %44 = call i32 @complete(i32* %43)
  br label %45

45:                                               ; preds = %41, %24
  %46 = load %struct.mlx4_srq*, %struct.mlx4_srq** %4, align 8
  %47 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %46, i32 0, i32 1
  %48 = call i32 @wait_for_completion(i32* %47)
  %49 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %50 = load %struct.mlx4_srq*, %struct.mlx4_srq** %4, align 8
  %51 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @mlx4_srq_free_icm(%struct.mlx4_dev* %49, i32 %52)
  ret void
}

declare dso_local %struct.TYPE_2__* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_HW2SW_SRQ(%struct.mlx4_dev*, i32*, i32) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_dev*, i8*, i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @radix_tree_delete(i32*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @mlx4_srq_free_icm(%struct.mlx4_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
