; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_rar_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_rar_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@E1000_RAH_AV = common dso_local global i32 0, align 4
@RA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @e1000_rar_set(%struct.e1000_hw* %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i64*, i64** %5, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 0
  %11 = load i64, i64* %10, align 8
  %12 = trunc i64 %11 to i32
  %13 = load i64*, i64** %5, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 1
  %15 = load i64, i64* %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = shl i32 %16, 8
  %18 = or i32 %12, %17
  %19 = load i64*, i64** %5, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 2
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = shl i32 %22, 16
  %24 = or i32 %18, %23
  %25 = load i64*, i64** %5, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 3
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = shl i32 %28, 24
  %30 = or i32 %24, %29
  store i32 %30, i32* %7, align 4
  %31 = load i64*, i64** %5, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 4
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = load i64*, i64** %5, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 5
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = shl i32 %38, 8
  %40 = or i32 %34, %39
  store i32 %40, i32* %8, align 4
  %41 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %42 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %44 [
  ]

44:                                               ; preds = %3
  %45 = load i32, i32* @E1000_RAH_AV, align 4
  %46 = load i32, i32* %8, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %44
  %49 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %50 = load i32, i32* @RA, align 4
  %51 = load i32, i32* %6, align 4
  %52 = shl i32 %51, 1
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @E1000_WRITE_REG_ARRAY(%struct.e1000_hw* %49, i32 %50, i32 %52, i32 %53)
  %55 = call i32 (...) @E1000_WRITE_FLUSH()
  %56 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %57 = load i32, i32* @RA, align 4
  %58 = load i32, i32* %6, align 4
  %59 = shl i32 %58, 1
  %60 = add nsw i32 %59, 1
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @E1000_WRITE_REG_ARRAY(%struct.e1000_hw* %56, i32 %57, i32 %60, i32 %61)
  %63 = call i32 (...) @E1000_WRITE_FLUSH()
  ret void
}

declare dso_local i32 @E1000_WRITE_REG_ARRAY(%struct.e1000_hw*, i32, i32, i32) #1

declare dso_local i32 @E1000_WRITE_FLUSH(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
