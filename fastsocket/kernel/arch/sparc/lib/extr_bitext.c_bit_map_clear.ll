; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/lib/extr_bitext.c_bit_map_clear.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/lib/extr_bitext.c_bit_map_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bit_map = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bit_map_clear(%struct.bit_map* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bit_map*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bit_map* %0, %struct.bit_map** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.bit_map*, %struct.bit_map** %4, align 8
  %9 = getelementptr inbounds %struct.bit_map, %struct.bit_map* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = call i32 (...) @BUG()
  br label %15

15:                                               ; preds = %13, %3
  %16 = load %struct.bit_map*, %struct.bit_map** %4, align 8
  %17 = getelementptr inbounds %struct.bit_map, %struct.bit_map* %16, i32 0, i32 2
  %18 = call i32 @spin_lock(i32* %17)
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %42, %15
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %45

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %24, %25
  %27 = load %struct.bit_map*, %struct.bit_map** %4, align 8
  %28 = getelementptr inbounds %struct.bit_map, %struct.bit_map* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @test_bit(i32 %26, i32 %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = call i32 (...) @BUG()
  br label %34

34:                                               ; preds = %32, %23
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %35, %36
  %38 = load %struct.bit_map*, %struct.bit_map** %4, align 8
  %39 = getelementptr inbounds %struct.bit_map, %struct.bit_map* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @__clear_bit(i32 %37, i32 %40)
  br label %42

42:                                               ; preds = %34
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %19

45:                                               ; preds = %19
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.bit_map*, %struct.bit_map** %4, align 8
  %48 = getelementptr inbounds %struct.bit_map, %struct.bit_map* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.bit_map*, %struct.bit_map** %4, align 8
  %54 = getelementptr inbounds %struct.bit_map, %struct.bit_map* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %51, %45
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.bit_map*, %struct.bit_map** %4, align 8
  %58 = getelementptr inbounds %struct.bit_map, %struct.bit_map* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = load %struct.bit_map*, %struct.bit_map** %4, align 8
  %62 = getelementptr inbounds %struct.bit_map, %struct.bit_map* %61, i32 0, i32 2
  %63 = call i32 @spin_unlock(i32* %62)
  ret void
}

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
