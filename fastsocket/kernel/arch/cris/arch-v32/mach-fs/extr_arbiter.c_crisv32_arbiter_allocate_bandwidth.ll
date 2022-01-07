; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/mach-fs/extr_arbiter.c_crisv32_arbiter_allocate_bandwidth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/mach-fs/extr_arbiter.c_crisv32_arbiter_allocate_bandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NBR_OF_CLIENTS = common dso_local global i32 0, align 4
@requested_slots = common dso_local global i32** null, align 8
@active_clients = common dso_local global i32** null, align 8
@NBR_OF_SLOTS = common dso_local global i64 0, align 8
@max_bandwidth = common dso_local global i64* null, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crisv32_arbiter_allocate_bandwidth(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = call i32 (...) @crisv32_arbiter_init()
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %40, %3
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @NBR_OF_CLIENTS, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %43

17:                                               ; preds = %13
  %18 = load i32**, i32*** @requested_slots, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32*, i32** %18, i64 %20
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %27, %26
  store i32 %28, i32* %9, align 4
  %29 = load i32**, i32*** @active_clients, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32*, i32** %29, i64 %31
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %10, align 4
  br label %40

40:                                               ; preds = %17
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  br label %13

43:                                               ; preds = %13
  %44 = load i64, i64* %7, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  br label %57

47:                                               ; preds = %43
  %48 = load i64, i64* @NBR_OF_SLOTS, align 8
  %49 = load i64*, i64** @max_bandwidth, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %7, align 8
  %55 = udiv i64 %53, %54
  %56 = udiv i64 %48, %55
  br label %57

57:                                               ; preds = %47, %46
  %58 = phi i64 [ 0, %46 ], [ %56, %47 ]
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %60, %61
  %63 = sext i32 %62 to i64
  %64 = load i64, i64* @NBR_OF_SLOTS, align 8
  %65 = icmp ugt i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %57
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %93

69:                                               ; preds = %57
  %70 = load i32**, i32*** @active_clients, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32*, i32** %70, i64 %72
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 1, i32* %77, align 4
  %78 = load i32, i32* %11, align 4
  %79 = load i32**, i32*** @requested_slots, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32*, i32** %79, i64 %81
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32 %78, i32* %86, align 4
  %87 = load i32, i32* %6, align 4
  %88 = load i64, i64* @NBR_OF_SLOTS, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = sub i64 %88, %90
  %92 = call i32 @crisv32_arbiter_config(i32 %87, i64 %91)
  store i32 0, i32* %4, align 4
  br label %93

93:                                               ; preds = %69, %66
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @crisv32_arbiter_init(...) #1

declare dso_local i32 @crisv32_arbiter_config(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
