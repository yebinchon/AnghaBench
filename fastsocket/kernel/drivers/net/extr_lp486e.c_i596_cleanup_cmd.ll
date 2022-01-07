; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_lp486e.c_i596_cleanup_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_lp486e.c_i596_cleanup_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.i596_private = type { %struct.TYPE_6__*, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.i596_cmd = type { i32, i8* }
%struct.tx_cmd = type { i32 }
%struct.i596_tbd = type { i32 }

@I596_NULL = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"i596_cleanup_cmd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @i596_cleanup_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i596_cleanup_cmd(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.i596_private*, align 8
  %4 = alloca %struct.i596_cmd*, align 8
  %5 = alloca %struct.tx_cmd*, align 8
  %6 = alloca %struct.i596_tbd*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.i596_private* @netdev_priv(%struct.net_device* %7)
  store %struct.i596_private* %8, %struct.i596_private** %3, align 8
  br label %9

9:                                                ; preds = %77, %1
  %10 = load %struct.i596_private*, %struct.i596_private** %3, align 8
  %11 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = icmp ne %struct.TYPE_6__* %12, null
  br i1 %13, label %14, label %79

14:                                               ; preds = %9
  %15 = load %struct.i596_private*, %struct.i596_private** %3, align 8
  %16 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = bitcast %struct.TYPE_6__* %17 to %struct.i596_cmd*
  store %struct.i596_cmd* %18, %struct.i596_cmd** %4, align 8
  %19 = load %struct.i596_private*, %struct.i596_private** %3, align 8
  %20 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @pa_to_va(i32 %23)
  %25 = bitcast i8* %24 to %struct.TYPE_6__*
  %26 = load %struct.i596_private*, %struct.i596_private** %3, align 8
  %27 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %26, i32 0, i32 0
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %27, align 8
  %28 = load %struct.i596_private*, %struct.i596_private** %3, align 8
  %29 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %29, align 8
  %32 = load %struct.i596_cmd*, %struct.i596_cmd** %4, align 8
  %33 = getelementptr inbounds %struct.i596_cmd, %struct.i596_cmd* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %34, 7
  switch i32 %35, label %73 [
    i32 128, label %36
    i32 129, label %66
  ]

36:                                               ; preds = %14
  %37 = load %struct.i596_cmd*, %struct.i596_cmd** %4, align 8
  %38 = bitcast %struct.i596_cmd* %37 to %struct.tx_cmd*
  store %struct.tx_cmd* %38, %struct.tx_cmd** %5, align 8
  %39 = load %struct.tx_cmd*, %struct.tx_cmd** %5, align 8
  %40 = getelementptr inbounds %struct.tx_cmd, %struct.tx_cmd* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @pa_to_va(i32 %41)
  %43 = bitcast i8* %42 to %struct.i596_tbd*
  store %struct.i596_tbd* %43, %struct.i596_tbd** %6, align 8
  %44 = load %struct.i596_tbd*, %struct.i596_tbd** %6, align 8
  %45 = getelementptr inbounds %struct.i596_tbd, %struct.i596_tbd* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dev_kfree_skb_any(i32 %46)
  %48 = load %struct.net_device*, %struct.net_device** %2, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  %53 = load %struct.net_device*, %struct.net_device** %2, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  %58 = load i8*, i8** @I596_NULL, align 8
  %59 = load %struct.i596_cmd*, %struct.i596_cmd** %4, align 8
  %60 = getelementptr inbounds %struct.i596_cmd, %struct.i596_cmd* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  %61 = load %struct.tx_cmd*, %struct.tx_cmd** %5, align 8
  %62 = bitcast %struct.tx_cmd* %61 to i8*
  %63 = call i32 @kfree(i8* %62)
  %64 = load %struct.net_device*, %struct.net_device** %2, align 8
  %65 = call i32 @netif_wake_queue(%struct.net_device* %64)
  br label %77

66:                                               ; preds = %14
  %67 = load i8*, i8** @I596_NULL, align 8
  %68 = load %struct.i596_cmd*, %struct.i596_cmd** %4, align 8
  %69 = getelementptr inbounds %struct.i596_cmd, %struct.i596_cmd* %68, i32 0, i32 1
  store i8* %67, i8** %69, align 8
  %70 = load %struct.i596_cmd*, %struct.i596_cmd** %4, align 8
  %71 = bitcast %struct.i596_cmd* %70 to i8*
  %72 = call i32 @kfree(i8* %71)
  br label %77

73:                                               ; preds = %14
  %74 = load i8*, i8** @I596_NULL, align 8
  %75 = load %struct.i596_cmd*, %struct.i596_cmd** %4, align 8
  %76 = getelementptr inbounds %struct.i596_cmd, %struct.i596_cmd* %75, i32 0, i32 1
  store i8* %74, i8** %76, align 8
  br label %77

77:                                               ; preds = %73, %66, %36
  %78 = call i32 (...) @barrier()
  br label %9

79:                                               ; preds = %9
  %80 = load %struct.i596_private*, %struct.i596_private** %3, align 8
  %81 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %79
  %86 = load %struct.net_device*, %struct.net_device** %2, align 8
  %87 = call i64 @i596_timeout(%struct.net_device* %86, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 100)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  br label %90

90:                                               ; preds = %89, %85, %79
  %91 = load %struct.i596_private*, %struct.i596_private** %3, align 8
  %92 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %91, i32 0, i32 0
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = call i32 @va_to_pa(%struct.TYPE_6__* %93)
  %95 = load %struct.i596_private*, %struct.i596_private** %3, align 8
  %96 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  store i32 %94, i32* %97, align 8
  ret void
}

declare dso_local %struct.i596_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @pa_to_va(i32) #1

declare dso_local i32 @dev_kfree_skb_any(i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i64 @i596_timeout(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @va_to_pa(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
