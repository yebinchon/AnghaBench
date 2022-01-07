; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_gf128mul.c_gf128mul_64k_bbe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_gf128mul.c_gf128mul_64k_bbe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf128mul_64k = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gf128mul_64k_bbe(i32* %0, %struct.gf128mul_64k* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.gf128mul_64k*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca [1 x i32], align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.gf128mul_64k* %1, %struct.gf128mul_64k** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = bitcast i32* %8 to i64*
  store i64* %9, i64** %5, align 8
  %10 = load %struct.gf128mul_64k*, %struct.gf128mul_64k** %4, align 8
  %11 = getelementptr inbounds %struct.gf128mul_64k, %struct.gf128mul_64k* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %12, i64 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i64*, i64** %5, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 15
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  store i32 %21, i32* %22, align 4
  store i32 1, i32* %7, align 4
  br label %23

23:                                               ; preds = %46, %2
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 16
  br i1 %25, label %26, label %49

26:                                               ; preds = %23
  %27 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %28 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %29 = load %struct.gf128mul_64k*, %struct.gf128mul_64k** %4, align 8
  %30 = getelementptr inbounds %struct.gf128mul_64k, %struct.gf128mul_64k* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %31, i64 %33
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64*, i64** %5, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sub nsw i32 15, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %38, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i32, i32* %37, i64 %43
  %45 = call i32 @be128_xor(i32* %27, i32* %28, i32* %44)
  br label %46

46:                                               ; preds = %26
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %23

49:                                               ; preds = %23
  %50 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %3, align 8
  store i32 %51, i32* %52, align 4
  ret void
}

declare dso_local i32 @be128_xor(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
