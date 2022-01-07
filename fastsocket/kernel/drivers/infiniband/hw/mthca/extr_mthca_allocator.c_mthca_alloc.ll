; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_allocator.c_mthca_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_allocator.c_mthca_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_alloc = type { i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mthca_alloc(%struct.mthca_alloc* %0) #0 {
  %2 = alloca %struct.mthca_alloc*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.mthca_alloc* %0, %struct.mthca_alloc** %2, align 8
  %5 = load %struct.mthca_alloc*, %struct.mthca_alloc** %2, align 8
  %6 = getelementptr inbounds %struct.mthca_alloc, %struct.mthca_alloc* %5, i32 0, i32 3
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.mthca_alloc*, %struct.mthca_alloc** %2, align 8
  %10 = getelementptr inbounds %struct.mthca_alloc, %struct.mthca_alloc* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.mthca_alloc*, %struct.mthca_alloc** %2, align 8
  %13 = getelementptr inbounds %struct.mthca_alloc, %struct.mthca_alloc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.mthca_alloc*, %struct.mthca_alloc** %2, align 8
  %16 = getelementptr inbounds %struct.mthca_alloc, %struct.mthca_alloc* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @find_next_zero_bit(i32 %11, i32 %14, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.mthca_alloc*, %struct.mthca_alloc** %2, align 8
  %21 = getelementptr inbounds %struct.mthca_alloc, %struct.mthca_alloc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp sge i32 %19, %22
  br i1 %23, label %24, label %45

24:                                               ; preds = %1
  %25 = load %struct.mthca_alloc*, %struct.mthca_alloc** %2, align 8
  %26 = getelementptr inbounds %struct.mthca_alloc, %struct.mthca_alloc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mthca_alloc*, %struct.mthca_alloc** %2, align 8
  %29 = getelementptr inbounds %struct.mthca_alloc, %struct.mthca_alloc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %27, %30
  %32 = load %struct.mthca_alloc*, %struct.mthca_alloc** %2, align 8
  %33 = getelementptr inbounds %struct.mthca_alloc, %struct.mthca_alloc* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %31, %34
  %36 = load %struct.mthca_alloc*, %struct.mthca_alloc** %2, align 8
  %37 = getelementptr inbounds %struct.mthca_alloc, %struct.mthca_alloc* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.mthca_alloc*, %struct.mthca_alloc** %2, align 8
  %39 = getelementptr inbounds %struct.mthca_alloc, %struct.mthca_alloc* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.mthca_alloc*, %struct.mthca_alloc** %2, align 8
  %42 = getelementptr inbounds %struct.mthca_alloc, %struct.mthca_alloc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @find_first_zero_bit(i32 %40, i32 %43)
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %24, %1
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.mthca_alloc*, %struct.mthca_alloc** %2, align 8
  %48 = getelementptr inbounds %struct.mthca_alloc, %struct.mthca_alloc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %45
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.mthca_alloc*, %struct.mthca_alloc** %2, align 8
  %54 = getelementptr inbounds %struct.mthca_alloc, %struct.mthca_alloc* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @set_bit(i32 %52, i32 %55)
  %57 = load %struct.mthca_alloc*, %struct.mthca_alloc** %2, align 8
  %58 = getelementptr inbounds %struct.mthca_alloc, %struct.mthca_alloc* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %4, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %4, align 4
  br label %63

62:                                               ; preds = %45
  store i32 -1, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %51
  %64 = load %struct.mthca_alloc*, %struct.mthca_alloc** %2, align 8
  %65 = getelementptr inbounds %struct.mthca_alloc, %struct.mthca_alloc* %64, i32 0, i32 3
  %66 = load i64, i64* %3, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32* %65, i64 %66)
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @find_next_zero_bit(i32, i32, i32) #1

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
