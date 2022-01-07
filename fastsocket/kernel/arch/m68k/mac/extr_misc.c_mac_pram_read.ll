; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/mac/extr_misc.c_mac_pram_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/mac/extr_misc.c_mac_pram_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@macintosh_config = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mac_pram_read(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32 (i32)*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @macintosh_config, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %15 [
    i32 130, label %12
    i32 129, label %13
    i32 128, label %13
    i32 131, label %14
  ]

12:                                               ; preds = %3
  store i32 (i32)* @maciisi_read_pram, i32 (i32)** %7, align 8
  br label %16

13:                                               ; preds = %3, %3
  store i32 (i32)* @pmu_read_pram, i32 (i32)** %7, align 8
  br label %16

14:                                               ; preds = %3
  store i32 (i32)* @cuda_read_pram, i32 (i32)** %7, align 8
  br label %16

15:                                               ; preds = %3
  store i32 (i32)* @via_read_pram, i32 (i32)** %7, align 8
  br label %16

16:                                               ; preds = %15, %14, %13, %12
  %17 = load i32 (i32)*, i32 (i32)** %7, align 8
  %18 = icmp ne i32 (i32)* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  br label %37

20:                                               ; preds = %16
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %34, %20
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %21
  %26 = load i32 (i32)*, i32 (i32)** %7, align 8
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  %29 = call i32 %26(i32 %27)
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32 %29, i32* %33, align 4
  br label %34

34:                                               ; preds = %25
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  br label %21

37:                                               ; preds = %19, %21
  ret void
}

declare dso_local i32 @maciisi_read_pram(i32) #1

declare dso_local i32 @pmu_read_pram(i32) #1

declare dso_local i32 @cuda_read_pram(i32) #1

declare dso_local i32 @via_read_pram(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
