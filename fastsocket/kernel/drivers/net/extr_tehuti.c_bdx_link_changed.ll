; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tehuti.c_bdx_link_changed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tehuti.c_bdx_link_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bdx_priv = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@regMAC_LNK_STAT = common dso_local global i32 0, align 4
@MAC_LINK_STAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%s: Link Down\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%s: Link Up\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bdx_priv*)* @bdx_link_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bdx_link_changed(%struct.bdx_priv* %0) #0 {
  %2 = alloca %struct.bdx_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.bdx_priv* %0, %struct.bdx_priv** %2, align 8
  %4 = load %struct.bdx_priv*, %struct.bdx_priv** %2, align 8
  %5 = load i32, i32* @regMAC_LNK_STAT, align 4
  %6 = call i32 @READ_REG(%struct.bdx_priv* %4, i32 %5)
  %7 = load i32, i32* @MAC_LINK_STAT, align 4
  %8 = and i32 %6, %7
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %33, label %11

11:                                               ; preds = %1
  %12 = load %struct.bdx_priv*, %struct.bdx_priv** %2, align 8
  %13 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = call i64 @netif_carrier_ok(%struct.TYPE_6__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %11
  %18 = load %struct.bdx_priv*, %struct.bdx_priv** %2, align 8
  %19 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = call i32 @netif_stop_queue(%struct.TYPE_6__* %20)
  %22 = load %struct.bdx_priv*, %struct.bdx_priv** %2, align 8
  %23 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = call i32 @netif_carrier_off(%struct.TYPE_6__* %24)
  %26 = load %struct.bdx_priv*, %struct.bdx_priv** %2, align 8
  %27 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %17, %11
  br label %55

33:                                               ; preds = %1
  %34 = load %struct.bdx_priv*, %struct.bdx_priv** %2, align 8
  %35 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = call i64 @netif_carrier_ok(%struct.TYPE_6__* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %54, label %39

39:                                               ; preds = %33
  %40 = load %struct.bdx_priv*, %struct.bdx_priv** %2, align 8
  %41 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = call i32 @netif_wake_queue(%struct.TYPE_6__* %42)
  %44 = load %struct.bdx_priv*, %struct.bdx_priv** %2, align 8
  %45 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = call i32 @netif_carrier_on(%struct.TYPE_6__* %46)
  %48 = load %struct.bdx_priv*, %struct.bdx_priv** %2, align 8
  %49 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ERR(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %39, %33
  br label %55

55:                                               ; preds = %54, %32
  ret void
}

declare dso_local i32 @READ_REG(%struct.bdx_priv*, i32) #1

declare dso_local i64 @netif_carrier_ok(%struct.TYPE_6__*) #1

declare dso_local i32 @netif_stop_queue(%struct.TYPE_6__*) #1

declare dso_local i32 @netif_carrier_off(%struct.TYPE_6__*) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @netif_wake_queue(%struct.TYPE_6__*) #1

declare dso_local i32 @netif_carrier_on(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
