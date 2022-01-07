; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_srq.c_mlx4_srq_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_srq.c_mlx4_srq_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mlx4_srq_table = type { i32, i32 }
%struct.mlx4_srq = type { i32, i32, i32 (%struct.mlx4_srq*, i32)* }
%struct.TYPE_4__ = type { %struct.mlx4_srq_table }

@.str = private unnamed_addr constant [32 x i8] c"Async event for bogus SRQ %08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_srq_event(%struct.mlx4_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mlx4_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_srq_table*, align 8
  %8 = alloca %struct.mlx4_srq*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %10 = call %struct.TYPE_4__* @mlx4_priv(%struct.mlx4_dev* %9)
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store %struct.mlx4_srq_table* %11, %struct.mlx4_srq_table** %7, align 8
  %12 = load %struct.mlx4_srq_table*, %struct.mlx4_srq_table** %7, align 8
  %13 = getelementptr inbounds %struct.mlx4_srq_table, %struct.mlx4_srq_table* %12, i32 0, i32 0
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.mlx4_srq_table*, %struct.mlx4_srq_table** %7, align 8
  %16 = getelementptr inbounds %struct.mlx4_srq_table, %struct.mlx4_srq_table* %15, i32 0, i32 1
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %19 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %21, 1
  %23 = and i32 %17, %22
  %24 = call %struct.mlx4_srq* @radix_tree_lookup(i32* %16, i32 %23)
  store %struct.mlx4_srq* %24, %struct.mlx4_srq** %8, align 8
  %25 = load %struct.mlx4_srq*, %struct.mlx4_srq** %8, align 8
  %26 = icmp ne %struct.mlx4_srq* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %3
  %28 = load %struct.mlx4_srq*, %struct.mlx4_srq** %8, align 8
  %29 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %28, i32 0, i32 1
  %30 = call i32 @atomic_inc(i32* %29)
  br label %31

31:                                               ; preds = %27, %3
  %32 = load %struct.mlx4_srq_table*, %struct.mlx4_srq_table** %7, align 8
  %33 = getelementptr inbounds %struct.mlx4_srq_table, %struct.mlx4_srq_table* %32, i32 0, i32 0
  %34 = call i32 @spin_unlock(i32* %33)
  %35 = load %struct.mlx4_srq*, %struct.mlx4_srq** %8, align 8
  %36 = icmp ne %struct.mlx4_srq* %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %31
  %38 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @mlx4_warn(%struct.mlx4_dev* %38, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %56

41:                                               ; preds = %31
  %42 = load %struct.mlx4_srq*, %struct.mlx4_srq** %8, align 8
  %43 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %42, i32 0, i32 2
  %44 = load i32 (%struct.mlx4_srq*, i32)*, i32 (%struct.mlx4_srq*, i32)** %43, align 8
  %45 = load %struct.mlx4_srq*, %struct.mlx4_srq** %8, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 %44(%struct.mlx4_srq* %45, i32 %46)
  %48 = load %struct.mlx4_srq*, %struct.mlx4_srq** %8, align 8
  %49 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %48, i32 0, i32 1
  %50 = call i64 @atomic_dec_and_test(i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %41
  %53 = load %struct.mlx4_srq*, %struct.mlx4_srq** %8, align 8
  %54 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %53, i32 0, i32 0
  %55 = call i32 @complete(i32* %54)
  br label %56

56:                                               ; preds = %37, %52, %41
  ret void
}

declare dso_local %struct.TYPE_4__* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.mlx4_srq* @radix_tree_lookup(i32*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_dev*, i8*, i32) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
