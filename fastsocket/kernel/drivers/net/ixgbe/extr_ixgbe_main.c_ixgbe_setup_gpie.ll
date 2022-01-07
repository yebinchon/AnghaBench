; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_setup_gpie.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_setup_gpie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, i32, %struct.ixgbe_hw, %struct.TYPE_3__* }
%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@IXGBE_FLAG_MSIX_ENABLED = common dso_local global i32 0, align 4
@IXGBE_GPIE_MSIX_MODE = common dso_local global i32 0, align 4
@IXGBE_GPIE_PBA_SUPPORT = common dso_local global i32 0, align 4
@IXGBE_GPIE_OCD = common dso_local global i32 0, align 4
@IXGBE_GPIE_EIAME = common dso_local global i32 0, align 4
@IXGBE_EIAM = common dso_local global i32 0, align 4
@IXGBE_EICS_RTX_QUEUE = common dso_local global i32 0, align 4
@IXGBE_FLAG_SRIOV_ENABLED = common dso_local global i32 0, align 4
@IXGBE_GPIE_VTMODE_MASK = common dso_local global i32 0, align 4
@RING_F_VMDQ = common dso_local global i64 0, align 8
@IXGBE_GPIE_VTMODE_16 = common dso_local global i32 0, align 4
@IXGBE_GPIE_VTMODE_32 = common dso_local global i32 0, align 4
@IXGBE_GPIE_VTMODE_64 = common dso_local global i32 0, align 4
@IXGBE_FLAG2_TEMP_SENSOR_CAPABLE = common dso_local global i32 0, align 4
@IXGBE_SDP0_GPIEN = common dso_local global i32 0, align 4
@IXGBE_EIMS_TS = common dso_local global i32 0, align 4
@IXGBE_FLAG_FAN_FAIL_CAPABLE = common dso_local global i32 0, align 4
@IXGBE_SDP1_GPIEN = common dso_local global i32 0, align 4
@IXGBE_SDP2_GPIEN = common dso_local global i32 0, align 4
@IXGBE_GPIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_adapter*)* @ixgbe_setup_gpie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_setup_gpie(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca %struct.ixgbe_adapter*, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %2, align 8
  %5 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %5, i32 0, i32 2
  store %struct.ixgbe_hw* %6, %struct.ixgbe_hw** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @IXGBE_FLAG_MSIX_ENABLED, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %40

13:                                               ; preds = %1
  %14 = load i32, i32* @IXGBE_GPIE_MSIX_MODE, align 4
  %15 = load i32, i32* @IXGBE_GPIE_PBA_SUPPORT, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @IXGBE_GPIE_OCD, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* @IXGBE_GPIE_EIAME, align 4
  %20 = load i32, i32* %4, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %4, align 4
  %22 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %23 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %32 [
    i32 130, label %26
    i32 129, label %31
    i32 128, label %31
  ]

26:                                               ; preds = %13
  %27 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %28 = load i32, i32* @IXGBE_EIAM, align 4
  %29 = load i32, i32* @IXGBE_EICS_RTX_QUEUE, align 4
  %30 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %27, i32 %28, i32 %29)
  br label %39

31:                                               ; preds = %13, %13
  br label %32

32:                                               ; preds = %13, %31
  %33 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %34 = call i32 @IXGBE_EIAM_EX(i32 0)
  %35 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %33, i32 %34, i32 -1)
  %36 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %37 = call i32 @IXGBE_EIAM_EX(i32 1)
  %38 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %36, i32 %37, i32 -1)
  br label %39

39:                                               ; preds = %32, %26
  br label %45

40:                                               ; preds = %1
  %41 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %42 = load i32, i32* @IXGBE_EIAM, align 4
  %43 = load i32, i32* @IXGBE_EICS_RTX_QUEUE, align 4
  %44 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %40, %39
  %46 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %47 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @IXGBE_FLAG_SRIOV_ENABLED, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %77

52:                                               ; preds = %45
  %53 = load i32, i32* @IXGBE_GPIE_VTMODE_MASK, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %4, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %4, align 4
  %57 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %58 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %57, i32 0, i32 3
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = load i64, i64* @RING_F_VMDQ, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  switch i32 %63, label %72 [
    i32 131, label %64
    i32 132, label %68
  ]

64:                                               ; preds = %52
  %65 = load i32, i32* @IXGBE_GPIE_VTMODE_16, align 4
  %66 = load i32, i32* %4, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %4, align 4
  br label %76

68:                                               ; preds = %52
  %69 = load i32, i32* @IXGBE_GPIE_VTMODE_32, align 4
  %70 = load i32, i32* %4, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %4, align 4
  br label %76

72:                                               ; preds = %52
  %73 = load i32, i32* @IXGBE_GPIE_VTMODE_64, align 4
  %74 = load i32, i32* %4, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %72, %68, %64
  br label %77

77:                                               ; preds = %76, %45
  %78 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %79 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @IXGBE_FLAG2_TEMP_SENSOR_CAPABLE, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %100

84:                                               ; preds = %77
  %85 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %86 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  switch i32 %89, label %98 [
    i32 129, label %90
    i32 128, label %94
  ]

90:                                               ; preds = %84
  %91 = load i32, i32* @IXGBE_SDP0_GPIEN, align 4
  %92 = load i32, i32* %4, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %4, align 4
  br label %99

94:                                               ; preds = %84
  %95 = load i32, i32* @IXGBE_EIMS_TS, align 4
  %96 = load i32, i32* %4, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %4, align 4
  br label %99

98:                                               ; preds = %84
  br label %99

99:                                               ; preds = %98, %94, %90
  br label %100

100:                                              ; preds = %99, %77
  %101 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %102 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @IXGBE_FLAG_FAN_FAIL_CAPABLE, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %100
  %108 = load i32, i32* @IXGBE_SDP1_GPIEN, align 4
  %109 = load i32, i32* %4, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %4, align 4
  br label %111

111:                                              ; preds = %107, %100
  %112 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %113 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, 129
  br i1 %116, label %117, label %124

117:                                              ; preds = %111
  %118 = load i32, i32* @IXGBE_SDP1_GPIEN, align 4
  %119 = load i32, i32* %4, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %4, align 4
  %121 = load i32, i32* @IXGBE_SDP2_GPIEN, align 4
  %122 = load i32, i32* %4, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %4, align 4
  br label %124

124:                                              ; preds = %117, %111
  %125 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %126 = load i32, i32* @IXGBE_GPIE, align 4
  %127 = load i32, i32* %4, align 4
  %128 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %125, i32 %126, i32 %127)
  ret void
}

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_EIAM_EX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
