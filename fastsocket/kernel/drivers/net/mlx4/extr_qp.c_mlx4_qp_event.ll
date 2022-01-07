; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_qp.c_mlx4_qp_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_qp.c_mlx4_qp_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_qp_table = type { i32 }
%struct.mlx4_qp = type { i32, i32, i32 (%struct.mlx4_qp*, i32)* }
%struct.TYPE_2__ = type { %struct.mlx4_qp_table }

@.str = private unnamed_addr constant [39 x i8] c"Async event for none existent QP %08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_qp_event(%struct.mlx4_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mlx4_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_qp_table*, align 8
  %8 = alloca %struct.mlx4_qp*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %10 = call %struct.TYPE_2__* @mlx4_priv(%struct.mlx4_dev* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.mlx4_qp_table* %11, %struct.mlx4_qp_table** %7, align 8
  %12 = load %struct.mlx4_qp_table*, %struct.mlx4_qp_table** %7, align 8
  %13 = getelementptr inbounds %struct.mlx4_qp_table, %struct.mlx4_qp_table* %12, i32 0, i32 0
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call %struct.mlx4_qp* @__mlx4_qp_lookup(%struct.mlx4_dev* %15, i32 %16)
  store %struct.mlx4_qp* %17, %struct.mlx4_qp** %8, align 8
  %18 = load %struct.mlx4_qp*, %struct.mlx4_qp** %8, align 8
  %19 = icmp ne %struct.mlx4_qp* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load %struct.mlx4_qp*, %struct.mlx4_qp** %8, align 8
  %22 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %21, i32 0, i32 1
  %23 = call i32 @atomic_inc(i32* %22)
  br label %24

24:                                               ; preds = %20, %3
  %25 = load %struct.mlx4_qp_table*, %struct.mlx4_qp_table** %7, align 8
  %26 = getelementptr inbounds %struct.mlx4_qp_table, %struct.mlx4_qp_table* %25, i32 0, i32 0
  %27 = call i32 @spin_unlock(i32* %26)
  %28 = load %struct.mlx4_qp*, %struct.mlx4_qp** %8, align 8
  %29 = icmp ne %struct.mlx4_qp* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %24
  %31 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @mlx4_dbg(%struct.mlx4_dev* %31, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %49

34:                                               ; preds = %24
  %35 = load %struct.mlx4_qp*, %struct.mlx4_qp** %8, align 8
  %36 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %35, i32 0, i32 2
  %37 = load i32 (%struct.mlx4_qp*, i32)*, i32 (%struct.mlx4_qp*, i32)** %36, align 8
  %38 = load %struct.mlx4_qp*, %struct.mlx4_qp** %8, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 %37(%struct.mlx4_qp* %38, i32 %39)
  %41 = load %struct.mlx4_qp*, %struct.mlx4_qp** %8, align 8
  %42 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %41, i32 0, i32 1
  %43 = call i64 @atomic_dec_and_test(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %34
  %46 = load %struct.mlx4_qp*, %struct.mlx4_qp** %8, align 8
  %47 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %46, i32 0, i32 0
  %48 = call i32 @complete(i32* %47)
  br label %49

49:                                               ; preds = %30, %45, %34
  ret void
}

declare dso_local %struct.TYPE_2__* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.mlx4_qp* @__mlx4_qp_lookup(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mlx4_dbg(%struct.mlx4_dev*, i8*, i32) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
