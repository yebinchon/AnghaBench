; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_pmac.c_kauai_lookup_timing.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_pmac.c_kauai_lookup_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kauai_timing = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kauai_timing*, i32)* @kauai_lookup_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kauai_lookup_timing(%struct.kauai_timing* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kauai_timing*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.kauai_timing* %0, %struct.kauai_timing** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %33, %2
  %8 = load %struct.kauai_timing*, %struct.kauai_timing** %4, align 8
  %9 = load i32, i32* %6, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.kauai_timing, %struct.kauai_timing* %8, i64 %10
  %12 = getelementptr inbounds %struct.kauai_timing, %struct.kauai_timing* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %36

15:                                               ; preds = %7
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.kauai_timing*, %struct.kauai_timing** %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.kauai_timing, %struct.kauai_timing* %17, i64 %20
  %22 = getelementptr inbounds %struct.kauai_timing, %struct.kauai_timing* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sgt i32 %16, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %15
  %26 = load %struct.kauai_timing*, %struct.kauai_timing** %4, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.kauai_timing, %struct.kauai_timing* %26, i64 %28
  %30 = getelementptr inbounds %struct.kauai_timing, %struct.kauai_timing* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %3, align 4
  br label %38

32:                                               ; preds = %15
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %7

36:                                               ; preds = %7
  %37 = call i32 (...) @BUG()
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %36, %25
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
