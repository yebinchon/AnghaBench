; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_get_wwn_prefix_generic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_common.c_ixgbe_get_wwn_prefix_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque

@IXGBE_ALT_SAN_MAC_ADDR_BLK_PTR = common dso_local global i32 0, align 4
@IXGBE_ALT_SAN_MAC_ADDR_CAPS_OFFSET = common dso_local global i32 0, align 4
@IXGBE_ALT_SAN_MAC_ADDR_CAPS_ALTWWN = common dso_local global i32 0, align 4
@IXGBE_ALT_SAN_MAC_ADDR_WWNN_OFFSET = common dso_local global i32 0, align 4
@IXGBE_ALT_SAN_MAC_ADDR_WWPN_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_get_wwn_prefix_generic(%struct.ixgbe_hw* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32*, i32** %5, align 8
  store i32 65535, i32* %10, align 4
  %11 = load i32*, i32** %6, align 8
  store i32 65535, i32* %11, align 4
  %12 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %13 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32 (%struct.ixgbe_hw.0*, i32, i32*)*, i32 (%struct.ixgbe_hw.0*, i32, i32*)** %15, align 8
  %17 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %18 = bitcast %struct.ixgbe_hw* %17 to %struct.ixgbe_hw.0*
  %19 = load i32, i32* @IXGBE_ALT_SAN_MAC_ADDR_BLK_PTR, align 4
  %20 = call i32 %16(%struct.ixgbe_hw.0* %18, i32 %19, i32* %9)
  %21 = load i32, i32* %9, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* %9, align 4
  %25 = icmp eq i32 %24, 65535
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %3
  br label %72

27:                                               ; preds = %23
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @IXGBE_ALT_SAN_MAC_ADDR_CAPS_OFFSET, align 4
  %30 = add nsw i32 %28, %29
  store i32 %30, i32* %7, align 4
  %31 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %32 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32 (%struct.ixgbe_hw.0*, i32, i32*)*, i32 (%struct.ixgbe_hw.0*, i32, i32*)** %34, align 8
  %36 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %37 = bitcast %struct.ixgbe_hw* %36 to %struct.ixgbe_hw.0*
  %38 = load i32, i32* %7, align 4
  %39 = call i32 %35(%struct.ixgbe_hw.0* %37, i32 %38, i32* %8)
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @IXGBE_ALT_SAN_MAC_ADDR_CAPS_ALTWWN, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %27
  br label %72

45:                                               ; preds = %27
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @IXGBE_ALT_SAN_MAC_ADDR_WWNN_OFFSET, align 4
  %48 = add nsw i32 %46, %47
  store i32 %48, i32* %7, align 4
  %49 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %50 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32 (%struct.ixgbe_hw.0*, i32, i32*)*, i32 (%struct.ixgbe_hw.0*, i32, i32*)** %52, align 8
  %54 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %55 = bitcast %struct.ixgbe_hw* %54 to %struct.ixgbe_hw.0*
  %56 = load i32, i32* %7, align 4
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 %53(%struct.ixgbe_hw.0* %55, i32 %56, i32* %57)
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @IXGBE_ALT_SAN_MAC_ADDR_WWPN_OFFSET, align 4
  %61 = add nsw i32 %59, %60
  store i32 %61, i32* %7, align 4
  %62 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %63 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32 (%struct.ixgbe_hw.0*, i32, i32*)*, i32 (%struct.ixgbe_hw.0*, i32, i32*)** %65, align 8
  %67 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %68 = bitcast %struct.ixgbe_hw* %67 to %struct.ixgbe_hw.0*
  %69 = load i32, i32* %7, align 4
  %70 = load i32*, i32** %6, align 8
  %71 = call i32 %66(%struct.ixgbe_hw.0* %68, i32 %69, i32* %70)
  br label %72

72:                                               ; preds = %45, %44, %26
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
