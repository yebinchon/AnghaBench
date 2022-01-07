; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sungem.c_gem_post_rxds.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sungem.c_gem_post_rxds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gem = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.gem_rxd* }
%struct.gem_rxd = type { i32 }

@RXDMA_KICK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gem*, i32)* @gem_post_rxds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gem_post_rxds(%struct.gem* %0, i32 %1) #0 {
  %3 = alloca %struct.gem*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.gem_rxd*, align 8
  store %struct.gem* %0, %struct.gem** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.gem*, %struct.gem** %3, align 8
  %11 = getelementptr inbounds %struct.gem, %struct.gem* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %12, -4
  store i32 %13, i32* %6, align 4
  store i32 %13, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  %14 = call i32 (...) @wmb()
  br label %15

15:                                               ; preds = %51, %2
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %52

19:                                               ; preds = %15
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @NEXT_RX(i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %7, align 4
  %24 = icmp eq i32 %23, 4
  br i1 %24, label %25, label %51

25:                                               ; preds = %19
  %26 = load %struct.gem*, %struct.gem** %3, align 8
  %27 = getelementptr inbounds %struct.gem, %struct.gem* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.gem_rxd*, %struct.gem_rxd** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.gem_rxd, %struct.gem_rxd* %30, i64 %32
  store %struct.gem_rxd* %33, %struct.gem_rxd** %9, align 8
  br label %34

34:                                               ; preds = %48, %25
  %35 = load %struct.gem*, %struct.gem** %3, align 8
  %36 = call i32 @RXDCTRL_FRESH(%struct.gem* %35)
  %37 = call i32 @cpu_to_le64(i32 %36)
  %38 = load %struct.gem_rxd*, %struct.gem_rxd** %9, align 8
  %39 = getelementptr inbounds %struct.gem_rxd, %struct.gem_rxd* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.gem_rxd*, %struct.gem_rxd** %9, align 8
  %41 = getelementptr inbounds %struct.gem_rxd, %struct.gem_rxd* %40, i32 1
  store %struct.gem_rxd* %41, %struct.gem_rxd** %9, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @NEXT_RX(i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %34
  br label %49

48:                                               ; preds = %34
  br label %34

49:                                               ; preds = %47
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %49, %19
  br label %15

52:                                               ; preds = %15
  %53 = load i32, i32* %8, align 4
  %54 = icmp sge i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %52
  %56 = call i32 (...) @mb()
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.gem*, %struct.gem** %3, align 8
  %59 = getelementptr inbounds %struct.gem, %struct.gem* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @RXDMA_KICK, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @writel(i32 %57, i64 %62)
  br label %64

64:                                               ; preds = %55, %52
  ret void
}

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @NEXT_RX(i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @RXDCTRL_FRESH(%struct.gem*) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
