; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_btext.c_draw_byte_32.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_btext.c_draw_byte_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32)* @draw_byte_32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_byte_32(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 -1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %103, %3
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 16
  br i1 %13, label %14, label %106

14:                                               ; preds = %11
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %4, align 8
  %17 = load i8, i8* %15, align 1
  %18 = zext i8 %17 to i32
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = ashr i32 %19, 7
  %21 = sub nsw i32 0, %20
  %22 = load i32, i32* %9, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* %10, align 4
  %25 = xor i32 %23, %24
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %8, align 4
  %29 = ashr i32 %28, 6
  %30 = and i32 %29, 1
  %31 = sub nsw i32 0, %30
  %32 = load i32, i32* %9, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* %10, align 4
  %35 = xor i32 %33, %34
  %36 = load i32*, i32** %5, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %8, align 4
  %39 = ashr i32 %38, 5
  %40 = and i32 %39, 1
  %41 = sub nsw i32 0, %40
  %42 = load i32, i32* %9, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* %10, align 4
  %45 = xor i32 %43, %44
  %46 = load i32*, i32** %5, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %8, align 4
  %49 = ashr i32 %48, 4
  %50 = and i32 %49, 1
  %51 = sub nsw i32 0, %50
  %52 = load i32, i32* %9, align 4
  %53 = and i32 %51, %52
  %54 = load i32, i32* %10, align 4
  %55 = xor i32 %53, %54
  %56 = load i32*, i32** %5, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 3
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %8, align 4
  %59 = ashr i32 %58, 3
  %60 = and i32 %59, 1
  %61 = sub nsw i32 0, %60
  %62 = load i32, i32* %9, align 4
  %63 = and i32 %61, %62
  %64 = load i32, i32* %10, align 4
  %65 = xor i32 %63, %64
  %66 = load i32*, i32** %5, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 4
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %8, align 4
  %69 = ashr i32 %68, 2
  %70 = and i32 %69, 1
  %71 = sub nsw i32 0, %70
  %72 = load i32, i32* %9, align 4
  %73 = and i32 %71, %72
  %74 = load i32, i32* %10, align 4
  %75 = xor i32 %73, %74
  %76 = load i32*, i32** %5, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 5
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* %8, align 4
  %79 = ashr i32 %78, 1
  %80 = and i32 %79, 1
  %81 = sub nsw i32 0, %80
  %82 = load i32, i32* %9, align 4
  %83 = and i32 %81, %82
  %84 = load i32, i32* %10, align 4
  %85 = xor i32 %83, %84
  %86 = load i32*, i32** %5, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 6
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* %8, align 4
  %89 = and i32 %88, 1
  %90 = sub nsw i32 0, %89
  %91 = load i32, i32* %9, align 4
  %92 = and i32 %90, %91
  %93 = load i32, i32* %10, align 4
  %94 = xor i32 %92, %93
  %95 = load i32*, i32** %5, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 7
  store i32 %94, i32* %96, align 4
  %97 = load i32*, i32** %5, align 8
  %98 = bitcast i32* %97 to i8*
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  %102 = bitcast i8* %101 to i32*
  store i32* %102, i32** %5, align 8
  br label %103

103:                                              ; preds = %14
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %7, align 4
  br label %11

106:                                              ; preds = %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
