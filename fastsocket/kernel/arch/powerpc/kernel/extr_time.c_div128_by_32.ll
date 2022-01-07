; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_time.c_div128_by_32.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_time.c_div128_by_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.div_result = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @div128_by_32(i32 %0, i32 %1, i32 %2, %struct.div_result* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.div_result*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.div_result* %3, %struct.div_result** %8, align 8
  %20 = load i32, i32* %5, align 4
  %21 = ashr i32 %20, 32
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %9, align 8
  %23 = load i32, i32* %5, align 4
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %10, align 8
  %25 = load i32, i32* %6, align 4
  %26 = ashr i32 %25, 32
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %11, align 8
  %28 = load i32, i32* %6, align 4
  %29 = zext i32 %28 to i64
  store i64 %29, i64* %12, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i32, i32* %7, align 4
  %32 = zext i32 %31 to i64
  %33 = udiv i64 %30, %32
  store i64 %33, i64* %13, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* %13, align 8
  %36 = load i32, i32* %7, align 4
  %37 = zext i32 %36 to i64
  %38 = mul i64 %35, %37
  %39 = sub i64 %34, %38
  %40 = trunc i64 %39 to i32
  %41 = shl i32 %40, 32
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* %10, align 8
  %44 = add i64 %42, %43
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %17, align 4
  %46 = load i32, i32* %17, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i64 @do_div(i32 %46, i32 %47)
  %49 = trunc i64 %48 to i32
  %50 = shl i32 %49, 32
  %51 = sext i32 %50 to i64
  %52 = load i64, i64* %11, align 8
  %53 = add i64 %51, %52
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %18, align 4
  %55 = load i32, i32* %17, align 4
  %56 = sext i32 %55 to i64
  store i64 %56, i64* %14, align 8
  %57 = load i32, i32* %18, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i64 @do_div(i32 %57, i32 %58)
  %60 = trunc i64 %59 to i32
  %61 = shl i32 %60, 32
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* %12, align 8
  %64 = add i64 %62, %63
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %19, align 4
  %66 = load i32, i32* %18, align 4
  %67 = sext i32 %66 to i64
  store i64 %67, i64* %15, align 8
  %68 = load i32, i32* %19, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i64 @do_div(i32 %68, i32 %69)
  %71 = load i32, i32* %19, align 4
  %72 = sext i32 %71 to i64
  store i64 %72, i64* %16, align 8
  %73 = load i64, i64* %13, align 8
  %74 = trunc i64 %73 to i32
  %75 = shl i32 %74, 32
  %76 = sext i32 %75 to i64
  %77 = load i64, i64* %14, align 8
  %78 = add i64 %76, %77
  %79 = trunc i64 %78 to i32
  %80 = load %struct.div_result*, %struct.div_result** %8, align 8
  %81 = getelementptr inbounds %struct.div_result, %struct.div_result* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  %82 = load i64, i64* %15, align 8
  %83 = trunc i64 %82 to i32
  %84 = shl i32 %83, 32
  %85 = sext i32 %84 to i64
  %86 = load i64, i64* %16, align 8
  %87 = add i64 %85, %86
  %88 = trunc i64 %87 to i32
  %89 = load %struct.div_result*, %struct.div_result** %8, align 8
  %90 = getelementptr inbounds %struct.div_result, %struct.div_result* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  ret void
}

declare dso_local i64 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
