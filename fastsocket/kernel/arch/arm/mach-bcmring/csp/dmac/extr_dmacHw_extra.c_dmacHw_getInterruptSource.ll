; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-bcmring/csp/dmac/extr_dmacHw_extra.c_dmacHw_getInterruptSource.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-bcmring/csp/dmac/extr_dmacHw_extra.c_dmacHw_getInterruptSource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@dmaChannelCount_0 = common dso_local global i64 0, align 8
@dmaChannelCount_1 = common dso_local global i64 0, align 8
@dmacHw_gCblk = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmacHw_getInterruptSource() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  store i64 0, i64* %2, align 8
  br label %3

3:                                                ; preds = %60, %0
  %4 = load i64, i64* %2, align 8
  %5 = load i64, i64* @dmaChannelCount_0, align 8
  %6 = load i64, i64* @dmaChannelCount_1, align 8
  %7 = add i64 %5, %6
  %8 = icmp ult i64 %4, %7
  br i1 %8, label %9, label %63

9:                                                ; preds = %3
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dmacHw_gCblk, align 8
  %11 = load i64, i64* %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dmacHw_REG_INT_STAT_TRAN(i32 %14)
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dmacHw_gCblk, align 8
  %17 = load i64, i64* %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 1, %20
  %22 = and i32 %15, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %54, label %24

24:                                               ; preds = %9
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dmacHw_gCblk, align 8
  %26 = load i64, i64* %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dmacHw_REG_INT_STAT_BLOCK(i32 %29)
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dmacHw_gCblk, align 8
  %32 = load i64, i64* %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 1, %35
  %37 = and i32 %30, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %54, label %39

39:                                               ; preds = %24
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dmacHw_gCblk, align 8
  %41 = load i64, i64* %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dmacHw_REG_INT_STAT_ERROR(i32 %44)
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dmacHw_gCblk, align 8
  %47 = load i64, i64* %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 1, %50
  %52 = and i32 %45, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %39, %24, %9
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dmacHw_gCblk, align 8
  %56 = load i64, i64* %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 %56
  %58 = call i32 @dmacHw_CBLK_TO_HANDLE(%struct.TYPE_3__* %57)
  store i32 %58, i32* %1, align 4
  br label %65

59:                                               ; preds = %39
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %2, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %2, align 8
  br label %3

63:                                               ; preds = %3
  %64 = call i32 @dmacHw_CBLK_TO_HANDLE(%struct.TYPE_3__* null)
  store i32 %64, i32* %1, align 4
  br label %65

65:                                               ; preds = %63, %54
  %66 = load i32, i32* %1, align 4
  ret i32 %66
}

declare dso_local i32 @dmacHw_REG_INT_STAT_TRAN(i32) #1

declare dso_local i32 @dmacHw_REG_INT_STAT_BLOCK(i32) #1

declare dso_local i32 @dmacHw_REG_INT_STAT_ERROR(i32) #1

declare dso_local i32 @dmacHw_CBLK_TO_HANDLE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
