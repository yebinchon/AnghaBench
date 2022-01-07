; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_free_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_free_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, i32, %struct.msix_entry*, %struct.TYPE_6__, %struct.TYPE_5__, %struct.ixgbe_adapter**, %struct.TYPE_4__* }
%struct.msix_entry = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ixgbe_q_vector = type { i32, i32, %struct.msix_entry*, %struct.TYPE_6__, %struct.TYPE_5__, %struct.ixgbe_q_vector**, %struct.TYPE_4__* }

@IXGBE_FLAG_MSIX_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_adapter*)* @ixgbe_free_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_free_irq(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca %struct.ixgbe_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ixgbe_q_vector*, align 8
  %5 = alloca %struct.msix_entry*, align 8
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %2, align 8
  %6 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @IXGBE_FLAG_MSIX_ENABLED, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %1
  %13 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %13, i32 0, i32 6
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %19 = bitcast %struct.ixgbe_adapter* %18 to %struct.ixgbe_q_vector*
  %20 = call i32 @free_irq(i32 %17, %struct.ixgbe_q_vector* %19)
  br label %81

21:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %65, %21
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %25 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %68

28:                                               ; preds = %22
  %29 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %30 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %29, i32 0, i32 5
  %31 = load %struct.ixgbe_adapter**, %struct.ixgbe_adapter*** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %31, i64 %33
  %35 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %34, align 8
  %36 = bitcast %struct.ixgbe_adapter* %35 to %struct.ixgbe_q_vector*
  store %struct.ixgbe_q_vector* %36, %struct.ixgbe_q_vector** %4, align 8
  %37 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %38 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %37, i32 0, i32 2
  %39 = load %struct.msix_entry*, %struct.msix_entry** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %39, i64 %41
  store %struct.msix_entry* %42, %struct.msix_entry** %5, align 8
  %43 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %4, align 8
  %44 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %28
  %49 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %4, align 8
  %50 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %48
  br label %65

55:                                               ; preds = %48, %28
  %56 = load %struct.msix_entry*, %struct.msix_entry** %5, align 8
  %57 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @irq_set_affinity_hint(i32 %58, i32* null)
  %60 = load %struct.msix_entry*, %struct.msix_entry** %5, align 8
  %61 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %4, align 8
  %64 = call i32 @free_irq(i32 %62, %struct.ixgbe_q_vector* %63)
  br label %65

65:                                               ; preds = %55, %54
  %66 = load i32, i32* %3, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %3, align 4
  br label %22

68:                                               ; preds = %22
  %69 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %70 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %69, i32 0, i32 2
  %71 = load %struct.msix_entry*, %struct.msix_entry** %70, align 8
  %72 = load i32, i32* %3, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %3, align 4
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %71, i64 %74
  %76 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %79 = bitcast %struct.ixgbe_adapter* %78 to %struct.ixgbe_q_vector*
  %80 = call i32 @free_irq(i32 %77, %struct.ixgbe_q_vector* %79)
  br label %81

81:                                               ; preds = %68, %12
  ret void
}

declare dso_local i32 @free_irq(i32, %struct.ixgbe_q_vector*) #1

declare dso_local i32 @irq_set_affinity_hint(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
