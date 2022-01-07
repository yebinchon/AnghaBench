; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_irq_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_irq_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_9__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@IXGBE_EIMC = common dso_local global i32 0, align 4
@IXGBE_FLAG_MSIX_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_adapter*)* @ixgbe_irq_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_irq_disable(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca %struct.ixgbe_adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %2, align 8
  %4 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %4, i32 0, i32 4
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %27 [
    i32 130, label %9
    i32 129, label %14
    i32 128, label %14
  ]

9:                                                ; preds = %1
  %10 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %10, i32 0, i32 4
  %12 = load i32, i32* @IXGBE_EIMC, align 4
  %13 = call i32 @IXGBE_WRITE_REG(%struct.TYPE_9__* %11, i32 %12, i32 -1)
  br label %28

14:                                               ; preds = %1, %1
  %15 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %15, i32 0, i32 4
  %17 = load i32, i32* @IXGBE_EIMC, align 4
  %18 = call i32 @IXGBE_WRITE_REG(%struct.TYPE_9__* %16, i32 %17, i32 -65536)
  %19 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %19, i32 0, i32 4
  %21 = call i32 @IXGBE_EIMC_EX(i32 0)
  %22 = call i32 @IXGBE_WRITE_REG(%struct.TYPE_9__* %20, i32 %21, i32 -1)
  %23 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %24 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %23, i32 0, i32 4
  %25 = call i32 @IXGBE_EIMC_EX(i32 1)
  %26 = call i32 @IXGBE_WRITE_REG(%struct.TYPE_9__* %24, i32 %25, i32 -1)
  br label %28

27:                                               ; preds = %1
  br label %28

28:                                               ; preds = %27, %14, %9
  %29 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %30 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %29, i32 0, i32 4
  %31 = call i32 @IXGBE_WRITE_FLUSH(%struct.TYPE_9__* %30)
  %32 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %33 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @IXGBE_FLAG_MSIX_ENABLED, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %69

38:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %55, %38
  %40 = load i32, i32* %3, align 4
  %41 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %42 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %39
  %46 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %47 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %46, i32 0, i32 3
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @synchronize_irq(i32 %53)
  br label %55

55:                                               ; preds = %45
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %39

58:                                               ; preds = %39
  %59 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %60 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %59, i32 0, i32 3
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %3, align 4
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @synchronize_irq(i32 %67)
  br label %76

69:                                               ; preds = %28
  %70 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %71 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %70, i32 0, i32 2
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @synchronize_irq(i32 %74)
  br label %76

76:                                               ; preds = %69, %58
  ret void
}

declare dso_local i32 @IXGBE_WRITE_REG(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @IXGBE_EIMC_EX(i32) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.TYPE_9__*) #1

declare dso_local i32 @synchronize_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
