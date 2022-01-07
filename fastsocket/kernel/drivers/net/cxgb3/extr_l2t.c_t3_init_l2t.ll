; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_l2t.c_t3_init_l2t.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_l2t.c_t3_init_l2t.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2t_data = type { i32, %struct.TYPE_2__*, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@L2T_STATE_UNUSED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.l2t_data* @t3_init_l2t(i32 %0) #0 {
  %2 = alloca %struct.l2t_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.l2t_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = zext i32 %7 to i64
  %9 = mul i64 %8, 4
  %10 = add i64 32, %9
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.l2t_data* @cxgb_alloc_mem(i32 %12)
  store %struct.l2t_data* %13, %struct.l2t_data** %4, align 8
  %14 = load %struct.l2t_data*, %struct.l2t_data** %4, align 8
  %15 = icmp ne %struct.l2t_data* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store %struct.l2t_data* null, %struct.l2t_data** %2, align 8
  br label %85

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.l2t_data*, %struct.l2t_data** %4, align 8
  %20 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.l2t_data*, %struct.l2t_data** %4, align 8
  %22 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 1
  %25 = load %struct.l2t_data*, %struct.l2t_data** %4, align 8
  %26 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %25, i32 0, i32 4
  store %struct.TYPE_2__* %24, %struct.TYPE_2__** %26, align 8
  %27 = load %struct.l2t_data*, %struct.l2t_data** %4, align 8
  %28 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %27, i32 0, i32 3
  %29 = load i32, i32* %3, align 4
  %30 = sub i32 %29, 1
  %31 = call i32 @atomic_set(i32* %28, i32 %30)
  %32 = load %struct.l2t_data*, %struct.l2t_data** %4, align 8
  %33 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %32, i32 0, i32 2
  %34 = call i32 @rwlock_init(i32* %33)
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %80, %17
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %3, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %83

39:                                               ; preds = %35
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.l2t_data*, %struct.l2t_data** %4, align 8
  %42 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 %40, i32* %47, align 4
  %48 = load i32, i32* @L2T_STATE_UNUSED, align 4
  %49 = load %struct.l2t_data*, %struct.l2t_data** %4, align 8
  %50 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 4
  store i32 %48, i32* %55, align 4
  %56 = load %struct.l2t_data*, %struct.l2t_data** %4, align 8
  %57 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 3
  %63 = call i32 @__skb_queue_head_init(i32* %62)
  %64 = load %struct.l2t_data*, %struct.l2t_data** %4, align 8
  %65 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  %71 = call i32 @spin_lock_init(i32* %70)
  %72 = load %struct.l2t_data*, %struct.l2t_data** %4, align 8
  %73 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = call i32 @atomic_set(i32* %78, i32 0)
  br label %80

80:                                               ; preds = %39
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %5, align 4
  br label %35

83:                                               ; preds = %35
  %84 = load %struct.l2t_data*, %struct.l2t_data** %4, align 8
  store %struct.l2t_data* %84, %struct.l2t_data** %2, align 8
  br label %85

85:                                               ; preds = %83, %16
  %86 = load %struct.l2t_data*, %struct.l2t_data** %2, align 8
  ret %struct.l2t_data* %86
}

declare dso_local %struct.l2t_data* @cxgb_alloc_mem(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @__skb_queue_head_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
