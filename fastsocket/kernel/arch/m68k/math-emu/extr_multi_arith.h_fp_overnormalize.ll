; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/math-emu/extr_multi_arith.h_fp_overnormalize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/math-emu/extr_multi_arith.h_fp_overnormalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fp_ext = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fp_ext*)* @fp_overnormalize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fp_overnormalize(%struct.fp_ext* %0) #0 {
  %2 = alloca %struct.fp_ext*, align 8
  %3 = alloca i32, align 4
  store %struct.fp_ext* %0, %struct.fp_ext** %2, align 8
  %4 = load %struct.fp_ext*, %struct.fp_ext** %2, align 8
  %5 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %55

11:                                               ; preds = %1
  %12 = load %struct.fp_ext*, %struct.fp_ext** %2, align 8
  %13 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 asm "bfffo $1$(#0,#32$),$0", "={dx},{dx}m,~{dirflag},~{fpsr},~{flags}"(i32 %17) #1, !srcloc !2
  store i32 %18, i32* %3, align 4
  %19 = load %struct.fp_ext*, %struct.fp_ext** %2, align 8
  %20 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %3, align 4
  %26 = shl i32 %24, %25
  %27 = load %struct.fp_ext*, %struct.fp_ext** %2, align 8
  %28 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %3, align 4
  %34 = sub nsw i32 32, %33
  %35 = ashr i32 %32, %34
  %36 = or i32 %26, %35
  %37 = load %struct.fp_ext*, %struct.fp_ext** %2, align 8
  %38 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  store i32 %36, i32* %41, align 4
  %42 = load %struct.fp_ext*, %struct.fp_ext** %2, align 8
  %43 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %3, align 4
  %49 = shl i32 %47, %48
  %50 = load %struct.fp_ext*, %struct.fp_ext** %2, align 8
  %51 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  store i32 %49, i32* %54, align 4
  br label %83

55:                                               ; preds = %1
  %56 = load %struct.fp_ext*, %struct.fp_ext** %2, align 8
  %57 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 asm "bfffo $1$(#0,#32$),$0", "={dx},{dx}m,~{dirflag},~{fpsr},~{flags}"(i32 %61) #1, !srcloc !3
  store i32 %62, i32* %3, align 4
  %63 = load %struct.fp_ext*, %struct.fp_ext** %2, align 8
  %64 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %3, align 4
  %70 = shl i32 %68, %69
  %71 = load %struct.fp_ext*, %struct.fp_ext** %2, align 8
  %72 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  store i32 %70, i32* %75, align 4
  %76 = load %struct.fp_ext*, %struct.fp_ext** %2, align 8
  %77 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  store i32 0, i32* %80, align 4
  %81 = load i32, i32* %3, align 4
  %82 = add nsw i32 %81, 32
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %55, %11
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 366}
!3 = !{i32 585}
