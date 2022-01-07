; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_gianfar.c_count_errors.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_gianfar.c_count_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32, i32 }
%struct.gfar_private = type { %struct.gfar_extra_stats }
%struct.gfar_extra_stats = type { i32, i32, i32, i32, i32, i32 }

@RXBD_TRUNCATED = common dso_local global i16 0, align 2
@RXBD_LARGE = common dso_local global i16 0, align 2
@RXBD_SHORT = common dso_local global i16 0, align 2
@RXBD_NONOCTET = common dso_local global i16 0, align 2
@RXBD_CRCERR = common dso_local global i16 0, align 2
@RXBD_OVERRUN = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i16, %struct.net_device*)* @count_errors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @count_errors(i16 zeroext %0, %struct.net_device* %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.gfar_private*, align 8
  %6 = alloca %struct.net_device_stats*, align 8
  %7 = alloca %struct.gfar_extra_stats*, align 8
  store i16 %0, i16* %3, align 2
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.gfar_private* @netdev_priv(%struct.net_device* %8)
  store %struct.gfar_private* %9, %struct.gfar_private** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  store %struct.net_device_stats* %11, %struct.net_device_stats** %6, align 8
  %12 = load %struct.gfar_private*, %struct.gfar_private** %5, align 8
  %13 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %12, i32 0, i32 0
  store %struct.gfar_extra_stats* %13, %struct.gfar_extra_stats** %7, align 8
  %14 = load i16, i16* %3, align 2
  %15 = zext i16 %14 to i32
  %16 = load i16, i16* @RXBD_TRUNCATED, align 2
  %17 = zext i16 %16 to i32
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %22 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  %25 = load %struct.gfar_extra_stats*, %struct.gfar_extra_stats** %7, align 8
  %26 = getelementptr inbounds %struct.gfar_extra_stats, %struct.gfar_extra_stats* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  br label %109

29:                                               ; preds = %2
  %30 = load i16, i16* %3, align 2
  %31 = zext i16 %30 to i32
  %32 = load i16, i16* @RXBD_LARGE, align 2
  %33 = zext i16 %32 to i32
  %34 = load i16, i16* @RXBD_SHORT, align 2
  %35 = zext i16 %34 to i32
  %36 = or i32 %33, %35
  %37 = and i32 %31, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %61

39:                                               ; preds = %29
  %40 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %41 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = load i16, i16* %3, align 2
  %45 = zext i16 %44 to i32
  %46 = load i16, i16* @RXBD_LARGE, align 2
  %47 = zext i16 %46 to i32
  %48 = and i32 %45, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %39
  %51 = load %struct.gfar_extra_stats*, %struct.gfar_extra_stats** %7, align 8
  %52 = getelementptr inbounds %struct.gfar_extra_stats, %struct.gfar_extra_stats* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  br label %60

55:                                               ; preds = %39
  %56 = load %struct.gfar_extra_stats*, %struct.gfar_extra_stats** %7, align 8
  %57 = getelementptr inbounds %struct.gfar_extra_stats, %struct.gfar_extra_stats* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %55, %50
  br label %61

61:                                               ; preds = %60, %29
  %62 = load i16, i16* %3, align 2
  %63 = zext i16 %62 to i32
  %64 = load i16, i16* @RXBD_NONOCTET, align 2
  %65 = zext i16 %64 to i32
  %66 = and i32 %63, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %61
  %69 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %70 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  %73 = load %struct.gfar_extra_stats*, %struct.gfar_extra_stats** %7, align 8
  %74 = getelementptr inbounds %struct.gfar_extra_stats, %struct.gfar_extra_stats* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %68, %61
  %78 = load i16, i16* %3, align 2
  %79 = zext i16 %78 to i32
  %80 = load i16, i16* @RXBD_CRCERR, align 2
  %81 = zext i16 %80 to i32
  %82 = and i32 %79, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %77
  %85 = load %struct.gfar_extra_stats*, %struct.gfar_extra_stats** %7, align 8
  %86 = getelementptr inbounds %struct.gfar_extra_stats, %struct.gfar_extra_stats* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  %89 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %90 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %84, %77
  %94 = load i16, i16* %3, align 2
  %95 = zext i16 %94 to i32
  %96 = load i16, i16* @RXBD_OVERRUN, align 2
  %97 = zext i16 %96 to i32
  %98 = and i32 %95, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %93
  %101 = load %struct.gfar_extra_stats*, %struct.gfar_extra_stats** %7, align 8
  %102 = getelementptr inbounds %struct.gfar_extra_stats, %struct.gfar_extra_stats* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 4
  %105 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %106 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 4
  br label %109

109:                                              ; preds = %20, %100, %93
  ret void
}

declare dso_local %struct.gfar_private* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
