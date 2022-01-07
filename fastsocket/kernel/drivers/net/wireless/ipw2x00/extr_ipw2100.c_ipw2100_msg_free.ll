; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_ipw2100_msg_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_ipw2100_msg_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw2100_priv = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@IPW_COMMAND_POOL_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw2100_priv*)* @ipw2100_msg_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipw2100_msg_free(%struct.ipw2100_priv* %0) #0 {
  %2 = alloca %struct.ipw2100_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.ipw2100_priv* %0, %struct.ipw2100_priv** %2, align 8
  %4 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %5 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %4, i32 0, i32 0
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %7 = icmp ne %struct.TYPE_6__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %49

9:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %39, %9
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @IPW_COMMAND_POOL_SIZE, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %42

14:                                               ; preds = %10
  %15 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %16 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %19 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %29 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @pci_free_consistent(i32 %17, i32 4, i32 %27, i32 %37)
  br label %39

39:                                               ; preds = %14
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %10

42:                                               ; preds = %10
  %43 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %44 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = call i32 @kfree(%struct.TYPE_6__* %45)
  %47 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %48 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %47, i32 0, i32 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %48, align 8
  br label %49

49:                                               ; preds = %42, %8
  ret void
}

declare dso_local i32 @pci_free_consistent(i32, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
