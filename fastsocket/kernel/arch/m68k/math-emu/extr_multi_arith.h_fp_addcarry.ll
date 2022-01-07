; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/math-emu/extr_multi_arith.h_fp_addcarry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/math-emu/extr_multi_arith.h_fp_addcarry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fp_ext = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i64 }

@FPSR_EXC_INEX2 = common dso_local global i32 0, align 4
@FPSR_EXC_OVFL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fp_ext*)* @fp_addcarry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fp_addcarry(%struct.fp_ext* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fp_ext*, align 8
  store %struct.fp_ext* %0, %struct.fp_ext** %3, align 8
  %4 = load %struct.fp_ext*, %struct.fp_ext** %3, align 8
  %5 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* %5, align 8
  %8 = icmp eq i32 %7, 32767
  br i1 %8, label %9, label %24

9:                                                ; preds = %1
  %10 = load %struct.fp_ext*, %struct.fp_ext** %3, align 8
  %11 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load i32, i32* @FPSR_EXC_INEX2, align 4
  %17 = call i32 @fp_set_sr(i32 %16)
  br label %18

18:                                               ; preds = %15, %9
  %19 = load %struct.fp_ext*, %struct.fp_ext** %3, align 8
  %20 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* @FPSR_EXC_OVFL, align 4
  %23 = call i32 @fp_set_sr(i32 %22)
  store i32 0, i32* %2, align 4
  br label %74

24:                                               ; preds = %1
  %25 = load %struct.fp_ext*, %struct.fp_ext** %3, align 8
  %26 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %30, 7
  %32 = load %struct.fp_ext*, %struct.fp_ext** %3, align 8
  %33 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 1, i32 0
  %38 = or i32 %31, %37
  %39 = load %struct.fp_ext*, %struct.fp_ext** %3, align 8
  %40 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.fp_ext*, %struct.fp_ext** %3, align 8
  %42 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = ashr i32 %46, 1
  %48 = load %struct.fp_ext*, %struct.fp_ext** %3, align 8
  %49 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 %53, 31
  %55 = or i32 %47, %54
  %56 = load %struct.fp_ext*, %struct.fp_ext** %3, align 8
  %57 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  store i32 %55, i32* %60, align 4
  %61 = load %struct.fp_ext*, %struct.fp_ext** %3, align 8
  %62 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = ashr i32 %66, 1
  %68 = or i32 %67, -2147483648
  %69 = load %struct.fp_ext*, %struct.fp_ext** %3, align 8
  %70 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  store i32 %68, i32* %73, align 4
  store i32 1, i32* %2, align 4
  br label %74

74:                                               ; preds = %24, %18
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @fp_set_sr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
