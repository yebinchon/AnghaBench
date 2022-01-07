; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_ipw2100_tx_initialize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_ipw2100_tx_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw2100_priv = type { %struct.TYPE_8__, i32, i32, i32, %struct.TYPE_7__*, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i64, i64 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@TX_PENDED_QUEUE_LENGTH = common dso_local global i32 0, align 4
@IPW_MEM_HOST_SHARED_TX_QUEUE_BD_BASE = common dso_local global i32 0, align 4
@IPW_MEM_HOST_SHARED_TX_QUEUE_BD_SIZE = common dso_local global i32 0, align 4
@IPW_MEM_HOST_SHARED_TX_QUEUE_READ_INDEX = common dso_local global i32 0, align 4
@IPW_MEM_HOST_SHARED_TX_QUEUE_WRITE_INDEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw2100_priv*)* @ipw2100_tx_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipw2100_tx_initialize(%struct.ipw2100_priv* %0) #0 {
  %2 = alloca %struct.ipw2100_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.ipw2100_priv* %0, %struct.ipw2100_priv** %2, align 8
  %4 = call i32 @IPW_DEBUG_INFO(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %6 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %5, i32 0, i32 8
  %7 = call i32 @INIT_LIST_HEAD(i32* %6)
  %8 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %9 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %8, i32 0, i32 7
  %10 = call i32 @INIT_STAT(i32* %9)
  %11 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %12 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %11, i32 0, i32 6
  %13 = call i32 @INIT_LIST_HEAD(i32* %12)
  %14 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %15 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %14, i32 0, i32 3
  %16 = call i32 @INIT_LIST_HEAD(i32* %15)
  %17 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %18 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %17, i32 0, i32 5
  %19 = call i32 @INIT_STAT(i32* %18)
  %20 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %21 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %20, i32 0, i32 2
  %22 = call i32 @INIT_STAT(i32* %21)
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %71, %1
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @TX_PENDED_QUEUE_LENGTH, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %74

27:                                               ; preds = %23
  %28 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %29 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %28, i32 0, i32 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %60

39:                                               ; preds = %27
  %40 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %41 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %40, i32 0, i32 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @libipw_txb_free(i32* %49)
  %51 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %52 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %51, i32 0, i32 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  store i32* null, i32** %59, align 8
  br label %60

60:                                               ; preds = %39, %27
  %61 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %62 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %61, i32 0, i32 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %69 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %68, i32 0, i32 3
  %70 = call i32 @list_add_tail(i32* %67, i32* %69)
  br label %71

71:                                               ; preds = %60
  %72 = load i32, i32* %3, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %3, align 4
  br label %23

74:                                               ; preds = %23
  %75 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %76 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %75, i32 0, i32 2
  %77 = load i32, i32* %3, align 4
  %78 = call i32 @SET_STAT(i32* %76, i32 %77)
  %79 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %80 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 3
  store i64 0, i64* %81, align 8
  %82 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %83 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %87 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 8
  %89 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %90 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 2
  store i64 0, i64* %91, align 8
  %92 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %93 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %92, i32 0, i32 1
  %94 = call i32 @INIT_STAT(i32* %93)
  %95 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %96 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %95, i32 0, i32 1
  %97 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %98 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @SET_STAT(i32* %96, i32 %100)
  %102 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %103 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %104 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %103, i32 0, i32 0
  %105 = load i32, i32* @IPW_MEM_HOST_SHARED_TX_QUEUE_BD_BASE, align 4
  %106 = load i32, i32* @IPW_MEM_HOST_SHARED_TX_QUEUE_BD_SIZE, align 4
  %107 = load i32, i32* @IPW_MEM_HOST_SHARED_TX_QUEUE_READ_INDEX, align 4
  %108 = load i32, i32* @IPW_MEM_HOST_SHARED_TX_QUEUE_WRITE_INDEX, align 4
  %109 = call i32 @bd_queue_initialize(%struct.ipw2100_priv* %102, %struct.TYPE_8__* %104, i32 %105, i32 %106, i32 %107, i32 %108)
  %110 = call i32 @IPW_DEBUG_INFO(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @IPW_DEBUG_INFO(i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_STAT(i32*) #1

declare dso_local i32 @libipw_txb_free(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @SET_STAT(i32*, i32) #1

declare dso_local i32 @bd_queue_initialize(%struct.ipw2100_priv*, %struct.TYPE_8__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
