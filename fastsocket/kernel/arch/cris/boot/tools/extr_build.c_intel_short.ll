; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/boot/tools/extr_build.c_intel_short.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/boot/tools/extr_build.c_intel_short.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i16*, i16* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i16 @intel_short(i16 signext %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca %struct.TYPE_2__, align 8
  store i16 %0, i16* %2, align 2
  %4 = load i16, i16* %2, align 2
  %5 = sext i16 %4 to i32
  %6 = and i32 %5, 255
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %9 = load i16*, i16** %8, align 8
  %10 = getelementptr inbounds i16, i16* %9, i64 0
  store i16 %7, i16* %10, align 2
  %11 = load i16, i16* %2, align 2
  %12 = sext i16 %11 to i32
  %13 = ashr i32 %12, 8
  %14 = trunc i32 %13 to i16
  store i16 %14, i16* %2, align 2
  %15 = load i16, i16* %2, align 2
  %16 = sext i16 %15 to i32
  %17 = and i32 %16, 255
  %18 = trunc i32 %17 to i16
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %20 = load i16*, i16** %19, align 8
  %21 = getelementptr inbounds i16, i16* %20, i64 1
  store i16 %18, i16* %21, align 2
  %22 = load i16, i16* %2, align 2
  %23 = sext i16 %22 to i32
  %24 = ashr i32 %23, 8
  %25 = trunc i32 %24 to i16
  store i16 %25, i16* %2, align 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 1
  %27 = load i16*, i16** %26, align 8
  %28 = getelementptr inbounds i16, i16* %27, i64 0
  %29 = load i16, i16* %28, align 2
  ret i16 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
