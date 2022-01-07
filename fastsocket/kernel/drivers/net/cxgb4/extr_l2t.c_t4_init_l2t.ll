; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_l2t.c_t4_init_l2t.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_l2t.c_t4_init_l2t.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2t_data = type { %struct.TYPE_2__*, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@L2T_SIZE = common dso_local global i32 0, align 4
@L2T_STATE_UNUSED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.l2t_data* @t4_init_l2t() #0 {
  %1 = alloca %struct.l2t_data*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.l2t_data*, align 8
  %4 = call %struct.l2t_data* @t4_alloc_mem(i32 24)
  store %struct.l2t_data* %4, %struct.l2t_data** %3, align 8
  %5 = load %struct.l2t_data*, %struct.l2t_data** %3, align 8
  %6 = icmp ne %struct.l2t_data* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.l2t_data* null, %struct.l2t_data** %1, align 8
  br label %63

8:                                                ; preds = %0
  %9 = load %struct.l2t_data*, %struct.l2t_data** %3, align 8
  %10 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = load %struct.l2t_data*, %struct.l2t_data** %3, align 8
  %13 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %12, i32 0, i32 3
  store %struct.TYPE_2__* %11, %struct.TYPE_2__** %13, align 8
  %14 = load %struct.l2t_data*, %struct.l2t_data** %3, align 8
  %15 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %14, i32 0, i32 2
  %16 = load i32, i32* @L2T_SIZE, align 4
  %17 = call i32 @atomic_set(i32* %15, i32 %16)
  %18 = load %struct.l2t_data*, %struct.l2t_data** %3, align 8
  %19 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %18, i32 0, i32 1
  %20 = call i32 @rwlock_init(i32* %19)
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %58, %8
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @L2T_SIZE, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %61

25:                                               ; preds = %21
  %26 = load i32, i32* %2, align 4
  %27 = load %struct.l2t_data*, %struct.l2t_data** %3, align 8
  %28 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %2, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %26, i32* %33, align 4
  %34 = load i32, i32* @L2T_STATE_UNUSED, align 4
  %35 = load %struct.l2t_data*, %struct.l2t_data** %3, align 8
  %36 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %2, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 3
  store i32 %34, i32* %41, align 4
  %42 = load %struct.l2t_data*, %struct.l2t_data** %3, align 8
  %43 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %2, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = call i32 @spin_lock_init(i32* %48)
  %50 = load %struct.l2t_data*, %struct.l2t_data** %3, align 8
  %51 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %2, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = call i32 @atomic_set(i32* %56, i32 0)
  br label %58

58:                                               ; preds = %25
  %59 = load i32, i32* %2, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %2, align 4
  br label %21

61:                                               ; preds = %21
  %62 = load %struct.l2t_data*, %struct.l2t_data** %3, align 8
  store %struct.l2t_data* %62, %struct.l2t_data** %1, align 8
  br label %63

63:                                               ; preds = %61, %7
  %64 = load %struct.l2t_data*, %struct.l2t_data** %1, align 8
  ret %struct.l2t_data* %64
}

declare dso_local %struct.l2t_data* @t4_alloc_mem(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
