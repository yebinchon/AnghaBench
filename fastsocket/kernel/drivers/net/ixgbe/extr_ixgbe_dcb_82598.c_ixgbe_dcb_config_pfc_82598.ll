; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_dcb_82598.c_ixgbe_dcb_config_pfc_82598.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_dcb_82598.c_ixgbe_dcb_config_pfc_82598.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32*, i32 }

@IXGBE_RMCS = common dso_local global i32 0, align 4
@IXGBE_RMCS_TFCE_802_3X = common dso_local global i32 0, align 4
@IXGBE_RMCS_TFCE_PRIORITY = common dso_local global i32 0, align 4
@IXGBE_FCTRL = common dso_local global i32 0, align 4
@IXGBE_FCTRL_RPFCE = common dso_local global i32 0, align 4
@IXGBE_FCTRL_RFCE = common dso_local global i32 0, align 4
@IXGBE_FCRTL_XONE = common dso_local global i32 0, align 4
@MAX_TRAFFIC_CLASS = common dso_local global i32 0, align 4
@IXGBE_FCRTH_FCEN = common dso_local global i32 0, align 4
@IXGBE_FCRTV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_dcb_config_pfc_82598(%struct.ixgbe_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %9 = load i32, i32* @IXGBE_RMCS, align 4
  %10 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %8, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* @IXGBE_RMCS_TFCE_802_3X, align 4
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %6, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @IXGBE_RMCS_TFCE_PRIORITY, align 4
  %16 = load i32, i32* %6, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %6, align 4
  %18 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %19 = load i32, i32* @IXGBE_RMCS, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %18, i32 %19, i32 %20)
  %22 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %23 = load i32, i32* @IXGBE_FCTRL, align 4
  %24 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* @IXGBE_FCTRL_RPFCE, align 4
  %26 = load i32, i32* @IXGBE_FCTRL_RFCE, align 4
  %27 = or i32 %25, %26
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %2
  %34 = load i32, i32* @IXGBE_FCTRL_RPFCE, align 4
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %33, %2
  %38 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %39 = load i32, i32* @IXGBE_FCTRL, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %38, i32 %39, i32 %40)
  %42 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %43 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = shl i32 %45, 10
  %47 = load i32, i32* @IXGBE_FCRTL_XONE, align 4
  %48 = or i32 %46, %47
  store i32 %48, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %49

49:                                               ; preds = %90, %37
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @MAX_TRAFFIC_CLASS, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %93

53:                                               ; preds = %49
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %7, align 4
  %56 = shl i32 1, %55
  %57 = and i32 %54, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %53
  %60 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @IXGBE_FCRTL(i32 %61)
  %63 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %60, i32 %62, i32 0)
  %64 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @IXGBE_FCRTH(i32 %65)
  %67 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %64, i32 %66, i32 0)
  br label %90

68:                                               ; preds = %53
  %69 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %70 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = shl i32 %76, 10
  %78 = load i32, i32* @IXGBE_FCRTH_FCEN, align 4
  %79 = or i32 %77, %78
  store i32 %79, i32* %6, align 4
  %80 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @IXGBE_FCRTL(i32 %81)
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %80, i32 %82, i32 %83)
  %85 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @IXGBE_FCRTH(i32 %86)
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %85, i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %68, %59
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %7, align 4
  br label %49

93:                                               ; preds = %49
  %94 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %95 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = mul nsw i32 %97, 65537
  store i32 %98, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %99

99:                                               ; preds = %110, %93
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @MAX_TRAFFIC_CLASS, align 4
  %102 = sdiv i32 %101, 2
  %103 = icmp slt i32 %100, %102
  br i1 %103, label %104, label %113

104:                                              ; preds = %99
  %105 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @IXGBE_FCTTV(i32 %106)
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %105, i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %104
  %111 = load i32, i32* %7, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %7, align 4
  br label %99

113:                                              ; preds = %99
  %114 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %115 = load i32, i32* @IXGBE_FCRTV, align 4
  %116 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %117 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = sdiv i32 %119, 2
  %121 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %114, i32 %115, i32 %120)
  ret i32 0
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_FCRTL(i32) #1

declare dso_local i32 @IXGBE_FCRTH(i32) #1

declare dso_local i32 @IXGBE_FCTTV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
