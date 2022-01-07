; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-bcmring/csp/dmac/extr_dmacHw.c_dmacHw_getChannelHandle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-bcmring/csp/dmac/extr_dmacHw.c_dmacHw_getChannelHandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dmaChannelCount_0 = common dso_local global i32 0, align 4
@dmaChannelCount_1 = common dso_local global i32 0, align 4
@dmacHw_gCblk = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmacHw_getChannelHandle(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = ashr i32 %5, 8
  switch i32 %6, label %27 [
    i32 0, label %7
    i32 1, label %16
  ]

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = and i32 %8, 255
  %10 = load i32, i32* @dmaChannelCount_0, align 4
  %11 = icmp slt i32 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @dmacHw_ASSERT(i32 %12)
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, 255
  store i32 %15, i32* %4, align 4
  br label %29

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, 255
  %19 = load i32, i32* @dmaChannelCount_1, align 4
  %20 = icmp slt i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @dmacHw_ASSERT(i32 %21)
  %23 = load i32, i32* @dmaChannelCount_0, align 4
  %24 = load i32, i32* %3, align 4
  %25 = and i32 %24, 255
  %26 = add nsw i32 %23, %25
  store i32 %26, i32* %4, align 4
  br label %29

27:                                               ; preds = %1
  %28 = call i32 @dmacHw_ASSERT(i32 0)
  store i32 -1, i32* %2, align 4
  br label %35

29:                                               ; preds = %16, %7
  %30 = load i32*, i32** @dmacHw_gCblk, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = call i32 @dmacHw_CBLK_TO_HANDLE(i32* %33)
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %29, %27
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @dmacHw_ASSERT(i32) #1

declare dso_local i32 @dmacHw_CBLK_TO_HANDLE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
