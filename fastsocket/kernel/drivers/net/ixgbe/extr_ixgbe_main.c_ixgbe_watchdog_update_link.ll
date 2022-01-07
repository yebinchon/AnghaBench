; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_watchdog_update_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_watchdog_update_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, i32, i32, i64, %struct.TYPE_6__*, %struct.TYPE_5__, %struct.ixgbe_hw }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ixgbe_hw = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.1*, i32*, i32*, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque

@IXGBE_FLAG_NEED_LINK_UPDATE = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_10GB_FULL = common dso_local global i32 0, align 4
@IXGBE_FLAG_DCB_ENABLED = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@IXGBE_TRY_LINK_TIMEOUT = common dso_local global i64 0, align 8
@IXGBE_EIMS = common dso_local global i32 0, align 4
@IXGBE_EIMC_LSC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_adapter*)* @ixgbe_watchdog_update_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_watchdog_update_link(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca %struct.ixgbe_adapter*, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %2, align 8
  %7 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %7, i32 0, i32 6
  store %struct.ixgbe_hw* %8, %struct.ixgbe_hw** %3, align 8
  %9 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %4, align 4
  %12 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %5, align 4
  %15 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %15, i32 0, i32 5
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %6, align 4
  %19 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IXGBE_FLAG_NEED_LINK_UPDATE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  br label %117

26:                                               ; preds = %1
  %27 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %28 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i32 (%struct.ixgbe_hw.1*, i32*, i32*, i32)*, i32 (%struct.ixgbe_hw.1*, i32*, i32*, i32)** %30, align 8
  %32 = icmp ne i32 (%struct.ixgbe_hw.1*, i32*, i32*, i32)* %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %26
  %34 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %35 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i32 (%struct.ixgbe_hw.1*, i32*, i32*, i32)*, i32 (%struct.ixgbe_hw.1*, i32*, i32*, i32)** %37, align 8
  %39 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %40 = bitcast %struct.ixgbe_hw* %39 to %struct.ixgbe_hw.1*
  %41 = call i32 %38(%struct.ixgbe_hw.1* %40, i32* %4, i32* %5, i32 0)
  br label %44

42:                                               ; preds = %26
  %43 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  store i32 %43, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %44

44:                                               ; preds = %42, %33
  %45 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %46 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %45, i32 0, i32 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = icmp ne %struct.TYPE_6__* %47, null
  br i1 %48, label %49, label %61

49:                                               ; preds = %44
  %50 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %51 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %50, i32 0, i32 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = load i32, i32* %6, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %49, %44
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %85

64:                                               ; preds = %61
  %65 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %66 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @IXGBE_FLAG_DCB_ENABLED, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %64
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %85, label %74

74:                                               ; preds = %71, %64
  %75 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %76 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.0*)** %78, align 8
  %80 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %81 = bitcast %struct.ixgbe_hw* %80 to %struct.ixgbe_hw.0*
  %82 = call i32 %79(%struct.ixgbe_hw.0* %81)
  %83 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %84 = call i32 @ixgbe_set_rx_drop_en(%struct.ixgbe_adapter* %83)
  br label %85

85:                                               ; preds = %74, %71, %61
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %97, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* @jiffies, align 4
  %90 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %91 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @IXGBE_TRY_LINK_TIMEOUT, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i64 @time_after(i32 %89, i64 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %110

97:                                               ; preds = %88, %85
  %98 = load i32, i32* @IXGBE_FLAG_NEED_LINK_UPDATE, align 4
  %99 = xor i32 %98, -1
  %100 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %101 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %102, %99
  store i32 %103, i32* %101, align 4
  %104 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %105 = load i32, i32* @IXGBE_EIMS, align 4
  %106 = load i32, i32* @IXGBE_EIMC_LSC, align 4
  %107 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %104, i32 %105, i32 %106)
  %108 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %109 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %108)
  br label %110

110:                                              ; preds = %97, %88
  %111 = load i32, i32* %5, align 4
  %112 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %113 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  %114 = load i32, i32* %4, align 4
  %115 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %116 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 8
  br label %117

117:                                              ; preds = %110, %25
  ret void
}

declare dso_local i32 @ixgbe_set_rx_drop_en(%struct.ixgbe_adapter*) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
