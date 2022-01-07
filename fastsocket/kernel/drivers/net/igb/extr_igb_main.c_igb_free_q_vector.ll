; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_free_q_vector.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_free_q_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { %struct.igb_q_vector**, i32** }
%struct.igb_q_vector = type { i32, %struct.TYPE_6__, %struct.TYPE_8__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igb_adapter*, i32)* @igb_free_q_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_free_q_vector(%struct.igb_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.igb_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.igb_q_vector*, align 8
  store %struct.igb_adapter* %0, %struct.igb_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %6, i32 0, i32 0
  %8 = load %struct.igb_q_vector**, %struct.igb_q_vector*** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.igb_q_vector*, %struct.igb_q_vector** %8, i64 %10
  %12 = load %struct.igb_q_vector*, %struct.igb_q_vector** %11, align 8
  store %struct.igb_q_vector* %12, %struct.igb_q_vector** %5, align 8
  %13 = load %struct.igb_q_vector*, %struct.igb_q_vector** %5, align 8
  %14 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = icmp ne %struct.TYPE_7__* %16, null
  br i1 %17, label %18, label %29

18:                                               ; preds = %2
  %19 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %20 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %19, i32 0, i32 1
  %21 = load i32**, i32*** %20, align 8
  %22 = load %struct.igb_q_vector*, %struct.igb_q_vector** %5, align 8
  %23 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i32*, i32** %21, i64 %27
  store i32* null, i32** %28, align 8
  br label %29

29:                                               ; preds = %18, %2
  %30 = load %struct.igb_q_vector*, %struct.igb_q_vector** %5, align 8
  %31 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = icmp ne %struct.TYPE_5__* %33, null
  br i1 %34, label %35, label %46

35:                                               ; preds = %29
  %36 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %37 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %36, i32 0, i32 1
  %38 = load i32**, i32*** %37, align 8
  %39 = load %struct.igb_q_vector*, %struct.igb_q_vector** %5, align 8
  %40 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i32*, i32** %38, i64 %44
  store i32* null, i32** %45, align 8
  br label %46

46:                                               ; preds = %35, %29
  %47 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %48 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %47, i32 0, i32 0
  %49 = load %struct.igb_q_vector**, %struct.igb_q_vector*** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.igb_q_vector*, %struct.igb_q_vector** %49, i64 %51
  store %struct.igb_q_vector* null, %struct.igb_q_vector** %52, align 8
  %53 = load %struct.igb_q_vector*, %struct.igb_q_vector** %5, align 8
  %54 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %53, i32 0, i32 0
  %55 = call i32 @netif_napi_del(i32* %54)
  %56 = load %struct.igb_q_vector*, %struct.igb_q_vector** %5, align 8
  %57 = load i32, i32* @rcu, align 4
  %58 = call i32 @kfree_rcu(%struct.igb_q_vector* %56, i32 %57)
  ret void
}

declare dso_local i32 @netif_napi_del(i32*) #1

declare dso_local i32 @kfree_rcu(%struct.igb_q_vector*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
