; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-bcmring/csp/dmac/extr_dmacHw.c_dmacHw_getDmaControllerAttribute.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-bcmring/csp/dmac/extr_dmacHw.c_dmacHw_getDmaControllerAttribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmacHw_getDmaControllerAttribute(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.TYPE_3__* @dmacHw_HANDLE_TO_CBLK(i32 %7)
  store %struct.TYPE_3__* %8, %struct.TYPE_3__** %6, align 8
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %43 [
    i32 129, label %10
    i32 130, label %15
    i32 128, label %26
    i32 132, label %31
    i32 131, label %40
  ]

10:                                               ; preds = %2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @dmacHw_GET_NUM_CHANNEL(i32 %13)
  store i32 %14, i32* %3, align 4
  br label %45

15:                                               ; preds = %2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dmacHw_GET_MAX_BLOCK_SIZE(i32 %18, i32 %21)
  %23 = add nsw i32 %22, 2
  %24 = shl i32 1, %23
  %25 = sub nsw i32 %24, 8
  store i32 %25, i32* %3, align 4
  br label %45

26:                                               ; preds = %2
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dmacHw_GET_NUM_INTERFACE(i32 %29)
  store i32 %30, i32* %3, align 4
  br label %45

31:                                               ; preds = %2
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dmacHw_GET_CHANNEL_DATA_WIDTH(i32 %34, i32 %37)
  %39 = shl i32 32, %38
  store i32 %39, i32* %3, align 4
  br label %45

40:                                               ; preds = %2
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @GetFifoSize(i32 %41)
  store i32 %42, i32* %3, align 4
  br label %45

43:                                               ; preds = %2
  %44 = call i32 @dmacHw_ASSERT(i32 0)
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %40, %31, %26, %15, %10
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.TYPE_3__* @dmacHw_HANDLE_TO_CBLK(i32) #1

declare dso_local i32 @dmacHw_GET_NUM_CHANNEL(i32) #1

declare dso_local i32 @dmacHw_GET_MAX_BLOCK_SIZE(i32, i32) #1

declare dso_local i32 @dmacHw_GET_NUM_INTERFACE(i32) #1

declare dso_local i32 @dmacHw_GET_CHANNEL_DATA_WIDTH(i32, i32) #1

declare dso_local i32 @GetFifoSize(i32) #1

declare dso_local i32 @dmacHw_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
