; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s6gmac.c_s6gmac_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s6gmac.c_s6gmac_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device_stats = type { i64, i32, i64, i64, i64, i64, i64 }
%struct.net_device = type { i32 }
%struct.s6gmac = type { i32*, i32*, i32 }

@S6_GMAC_STAT_SIZE_MIN = common dso_local global i32 0, align 4
@statinf = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device_stats* (%struct.net_device*)* @s6gmac_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device_stats* @s6gmac_stats(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.s6gmac*, align 8
  %4 = alloca %struct.net_device_stats*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.s6gmac* @netdev_priv(%struct.net_device* %7)
  store %struct.s6gmac* %8, %struct.s6gmac** %3, align 8
  %9 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %10 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %9, i32 0, i32 0
  %11 = bitcast i32** %10 to %struct.net_device_stats*
  store %struct.net_device_stats* %11, %struct.net_device_stats** %4, align 8
  br label %12

12:                                               ; preds = %63, %1
  %13 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %14 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %13, i32 0, i32 2
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %38, %12
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp ult i64 %19, 1
  br i1 %20, label %21, label %41

21:                                               ; preds = %17
  %22 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %23 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @S6_GMAC_STAT_SIZE_MIN, align 4
  %30 = sub nsw i32 %29, 1
  %31 = shl i32 %28, %30
  %32 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %33 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32 %31, i32* %37, align 4
  br label %38

38:                                               ; preds = %21
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %17

41:                                               ; preds = %17
  %42 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %43 = load i32**, i32*** @statinf, align 8
  %44 = getelementptr inbounds i32*, i32** %43, i64 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = call i32 @s6gmac_stats_collect(%struct.s6gmac* %42, i32* %46)
  %48 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %49 = load i32**, i32*** @statinf, align 8
  %50 = getelementptr inbounds i32*, i32** %49, i64 1
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = call i32 @s6gmac_stats_collect(%struct.s6gmac* %48, i32* %52)
  %54 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %55 = call i32 @s6gmac_stats_pending(%struct.s6gmac* %54, i32 0)
  %56 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %57 = call i32 @s6gmac_stats_pending(%struct.s6gmac* %56, i32 1)
  %58 = or i32 %55, %57
  store i32 %58, i32* %5, align 4
  %59 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %60 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %59, i32 0, i32 2
  %61 = load i64, i64* %6, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* %60, i64 %61)
  br label %63

63:                                               ; preds = %41
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %12, label %66

66:                                               ; preds = %63
  %67 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %68 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %67, i32 0, i32 5
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %71 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %70, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %69, %72
  %74 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %75 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %73, %76
  %78 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %79 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %77, %80
  %82 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %83 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %82, i32 0, i32 6
  store i64 %81, i64* %83, align 8
  %84 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %85 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %88 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %90, %86
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %88, align 8
  %93 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  ret %struct.net_device_stats* %93
}

declare dso_local %struct.s6gmac* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @s6gmac_stats_collect(%struct.s6gmac*, i32*) #1

declare dso_local i32 @s6gmac_stats_pending(%struct.s6gmac*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
