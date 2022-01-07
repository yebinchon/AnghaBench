; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_schedule_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_schedule_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw2100_priv = type { i64, i64, i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@STATUS_RESET_PENDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"%s: Scheduling firmware restart (%ds).\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@MAX_RESET_BACKOFF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"%s: Firmware restart already in progress.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw2100_priv*)* @schedule_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @schedule_reset(%struct.ipw2100_priv* %0) #0 {
  %2 = alloca %struct.ipw2100_priv*, align 8
  %3 = alloca i64, align 8
  store %struct.ipw2100_priv* %0, %struct.ipw2100_priv** %2, align 8
  %4 = call i8* (...) @get_seconds()
  %5 = ptrtoint i8* %4 to i64
  store i64 %5, i64* %3, align 8
  %6 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %7 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %13 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = sub i64 %11, %14
  %16 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %17 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ugt i64 %15, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %10
  %21 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %22 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  br label %23

23:                                               ; preds = %20, %10, %1
  %24 = call i8* (...) @get_seconds()
  %25 = ptrtoint i8* %24 to i64
  %26 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %27 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  %28 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %29 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @STATUS_RESET_PENDING, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %92, label %34

34:                                               ; preds = %23
  %35 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %36 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %35, i32 0, i32 3
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %41 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 (i8*, i32, ...) @IPW_DEBUG_INFO(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %39, i64 %42)
  %44 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %45 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %44, i32 0, i32 3
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = call i32 @netif_carrier_off(%struct.TYPE_3__* %46)
  %48 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %49 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %48, i32 0, i32 3
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = call i32 @netif_stop_queue(%struct.TYPE_3__* %50)
  %52 = load i32, i32* @STATUS_RESET_PENDING, align 4
  %53 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %54 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  %57 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %58 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %34
  %62 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %63 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %62, i32 0, i32 5
  %64 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %65 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* @HZ, align 4
  %68 = sext i32 %67 to i64
  %69 = mul i64 %66, %68
  %70 = trunc i64 %69 to i32
  %71 = call i32 @schedule_delayed_work(i32* %63, i32 %70)
  br label %76

72:                                               ; preds = %34
  %73 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %74 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %73, i32 0, i32 5
  %75 = call i32 @schedule_delayed_work(i32* %74, i32 0)
  br label %76

76:                                               ; preds = %72, %61
  %77 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %78 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* @MAX_RESET_BACKOFF, align 4
  %81 = sext i32 %80 to i64
  %82 = icmp ult i64 %79, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %76
  %84 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %85 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %85, align 8
  br label %88

88:                                               ; preds = %83, %76
  %89 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %90 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %89, i32 0, i32 4
  %91 = call i32 @wake_up_interruptible(i32* %90)
  br label %99

92:                                               ; preds = %23
  %93 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %94 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %93, i32 0, i32 3
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (i8*, i32, ...) @IPW_DEBUG_INFO(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %92, %88
  ret void
}

declare dso_local i8* @get_seconds(...) #1

declare dso_local i32 @IPW_DEBUG_INFO(i8*, i32, ...) #1

declare dso_local i32 @netif_carrier_off(%struct.TYPE_3__*) #1

declare dso_local i32 @netif_stop_queue(%struct.TYPE_3__*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
