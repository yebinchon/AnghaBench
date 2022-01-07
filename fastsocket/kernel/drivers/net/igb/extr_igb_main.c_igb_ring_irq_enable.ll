; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_ring_irq_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_ring_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_q_vector = type { i32, %struct.TYPE_2__, %struct.igb_adapter* }
%struct.TYPE_2__ = type { i64 }
%struct.igb_adapter = type { i32, i32, i32, i64, i32, i32, %struct.e1000_hw }
%struct.e1000_hw = type { i32 }

@__IGB_DOWN = common dso_local global i32 0, align 4
@E1000_EIMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igb_q_vector*)* @igb_ring_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_ring_irq_enable(%struct.igb_q_vector* %0) #0 {
  %2 = alloca %struct.igb_q_vector*, align 8
  %3 = alloca %struct.igb_adapter*, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  store %struct.igb_q_vector* %0, %struct.igb_q_vector** %2, align 8
  %5 = load %struct.igb_q_vector*, %struct.igb_q_vector** %2, align 8
  %6 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %5, i32 0, i32 2
  %7 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  store %struct.igb_adapter* %7, %struct.igb_adapter** %3, align 8
  %8 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %8, i32 0, i32 6
  store %struct.e1000_hw* %9, %struct.e1000_hw** %4, align 8
  %10 = load %struct.igb_q_vector*, %struct.igb_q_vector** %2, align 8
  %11 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, 3
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %15, %1
  %22 = load %struct.igb_q_vector*, %struct.igb_q_vector** %2, align 8
  %23 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %50, label %27

27:                                               ; preds = %21
  %28 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %29 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 3
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %27, %15
  %34 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %35 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %40 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = load %struct.igb_q_vector*, %struct.igb_q_vector** %2, align 8
  %45 = call i32 @igb_set_itr(%struct.igb_q_vector* %44)
  br label %49

46:                                               ; preds = %38, %33
  %47 = load %struct.igb_q_vector*, %struct.igb_q_vector** %2, align 8
  %48 = call i32 @igb_update_ring_itr(%struct.igb_q_vector* %47)
  br label %49

49:                                               ; preds = %46, %43
  br label %50

50:                                               ; preds = %49, %27, %21
  %51 = load i32, i32* @__IGB_DOWN, align 4
  %52 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %53 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %52, i32 0, i32 4
  %54 = call i32 @test_bit(i32 %51, i32* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %71, label %56

56:                                               ; preds = %50
  %57 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %58 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load i32, i32* @E1000_EIMS, align 4
  %63 = load %struct.igb_q_vector*, %struct.igb_q_vector** %2, align 8
  %64 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @wr32(i32 %62, i32 %65)
  br label %70

67:                                               ; preds = %56
  %68 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %69 = call i32 @igb_irq_enable(%struct.igb_adapter* %68)
  br label %70

70:                                               ; preds = %67, %61
  br label %71

71:                                               ; preds = %70, %50
  ret void
}

declare dso_local i32 @igb_set_itr(%struct.igb_q_vector*) #1

declare dso_local i32 @igb_update_ring_itr(%struct.igb_q_vector*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i32 @igb_irq_enable(%struct.igb_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
