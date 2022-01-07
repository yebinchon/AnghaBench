; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_phy.c_ixgbe_read_i2c_byte_generic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_phy.c_ixgbe_read_i2c_byte_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.ixgbe_hw.0*, i32)*, i32 (%struct.ixgbe_hw.1*, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque

@IXGBE_STATUS = common dso_local global i32 0, align 4
@IXGBE_STATUS_LAN_ID_1 = common dso_local global i32 0, align 4
@IXGBE_GSSR_PHY1_SM = common dso_local global i32 0, align 4
@IXGBE_GSSR_PHY0_SM = common dso_local global i32 0, align 4
@IXGBE_ERR_SWFW_SYNC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"I2C byte read error - Retrying.\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"I2C byte read error.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_read_i2c_byte_generic(%struct.ixgbe_hw* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i64 0, i64* %9, align 8
  store i64 10, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %12, align 4
  store i32 1, i32* %13, align 4
  %14 = load i32*, i32** %8, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %16 = load i32, i32* @IXGBE_STATUS, align 4
  %17 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %15, i32 %16)
  %18 = load i32, i32* @IXGBE_STATUS_LAN_ID_1, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* @IXGBE_GSSR_PHY1_SM, align 4
  store i32 %22, i32* %12, align 4
  br label %25

23:                                               ; preds = %4
  %24 = load i32, i32* @IXGBE_GSSR_PHY0_SM, align 4
  store i32 %24, i32* %12, align 4
  br label %25

25:                                               ; preds = %23, %21
  br label %26

26:                                               ; preds = %125, %25
  %27 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %28 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64 (%struct.ixgbe_hw.0*, i32)*, i64 (%struct.ixgbe_hw.0*, i32)** %30, align 8
  %32 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %33 = bitcast %struct.ixgbe_hw* %32 to %struct.ixgbe_hw.0*
  %34 = load i32, i32* %12, align 4
  %35 = call i64 %31(%struct.ixgbe_hw.0* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %26
  %38 = load i64, i64* @IXGBE_ERR_SWFW_SYNC, align 8
  store i64 %38, i64* %9, align 8
  br label %139

39:                                               ; preds = %26
  %40 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %41 = call i32 @ixgbe_i2c_start(%struct.ixgbe_hw* %40)
  %42 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i64 @ixgbe_clock_out_i2c_byte(%struct.ixgbe_hw* %42, i32 %43)
  store i64 %44, i64* %9, align 8
  %45 = load i64, i64* %9, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %100

48:                                               ; preds = %39
  %49 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %50 = call i64 @ixgbe_get_i2c_ack(%struct.ixgbe_hw* %49)
  store i64 %50, i64* %9, align 8
  %51 = load i64, i64* %9, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %100

54:                                               ; preds = %48
  %55 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i64 @ixgbe_clock_out_i2c_byte(%struct.ixgbe_hw* %55, i32 %56)
  store i64 %57, i64* %9, align 8
  %58 = load i64, i64* %9, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %100

61:                                               ; preds = %54
  %62 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %63 = call i64 @ixgbe_get_i2c_ack(%struct.ixgbe_hw* %62)
  store i64 %63, i64* %9, align 8
  %64 = load i64, i64* %9, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %100

67:                                               ; preds = %61
  %68 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %69 = call i32 @ixgbe_i2c_start(%struct.ixgbe_hw* %68)
  %70 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %71 = load i32, i32* %7, align 4
  %72 = or i32 %71, 1
  %73 = call i64 @ixgbe_clock_out_i2c_byte(%struct.ixgbe_hw* %70, i32 %72)
  store i64 %73, i64* %9, align 8
  %74 = load i64, i64* %9, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  br label %100

77:                                               ; preds = %67
  %78 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %79 = call i64 @ixgbe_get_i2c_ack(%struct.ixgbe_hw* %78)
  store i64 %79, i64* %9, align 8
  %80 = load i64, i64* %9, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %100

83:                                               ; preds = %77
  %84 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %85 = load i32*, i32** %8, align 8
  %86 = call i64 @ixgbe_clock_in_i2c_byte(%struct.ixgbe_hw* %84, i32* %85)
  store i64 %86, i64* %9, align 8
  %87 = load i64, i64* %9, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %100

90:                                               ; preds = %83
  %91 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %92 = load i32, i32* %13, align 4
  %93 = call i64 @ixgbe_clock_out_i2c_bit(%struct.ixgbe_hw* %91, i32 %92)
  store i64 %93, i64* %9, align 8
  %94 = load i64, i64* %9, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  br label %100

97:                                               ; preds = %90
  %98 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %99 = call i32 @ixgbe_i2c_stop(%struct.ixgbe_hw* %98)
  br label %129

100:                                              ; preds = %96, %89, %82, %76, %66, %60, %53, %47
  %101 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %102 = call i32 @ixgbe_i2c_bus_clear(%struct.ixgbe_hw* %101)
  %103 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %104 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %107 = load i32 (%struct.ixgbe_hw.1*, i32)*, i32 (%struct.ixgbe_hw.1*, i32)** %106, align 8
  %108 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %109 = bitcast %struct.ixgbe_hw* %108 to %struct.ixgbe_hw.1*
  %110 = load i32, i32* %12, align 4
  %111 = call i32 %107(%struct.ixgbe_hw.1* %109, i32 %110)
  %112 = call i32 @msleep(i32 100)
  %113 = load i64, i64* %11, align 8
  %114 = add nsw i64 %113, 1
  store i64 %114, i64* %11, align 8
  %115 = load i64, i64* %11, align 8
  %116 = load i64, i64* %10, align 8
  %117 = icmp slt i64 %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %100
  %119 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %120 = call i32 @hw_dbg(%struct.ixgbe_hw* %119, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %124

121:                                              ; preds = %100
  %122 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %123 = call i32 @hw_dbg(%struct.ixgbe_hw* %122, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %124

124:                                              ; preds = %121, %118
  br label %125

125:                                              ; preds = %124
  %126 = load i64, i64* %11, align 8
  %127 = load i64, i64* %10, align 8
  %128 = icmp slt i64 %126, %127
  br i1 %128, label %26, label %129

129:                                              ; preds = %125, %97
  %130 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %131 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 1
  %134 = load i32 (%struct.ixgbe_hw.1*, i32)*, i32 (%struct.ixgbe_hw.1*, i32)** %133, align 8
  %135 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %136 = bitcast %struct.ixgbe_hw* %135 to %struct.ixgbe_hw.1*
  %137 = load i32, i32* %12, align 4
  %138 = call i32 %134(%struct.ixgbe_hw.1* %136, i32 %137)
  br label %139

139:                                              ; preds = %129, %37
  %140 = load i64, i64* %9, align 8
  ret i64 %140
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @ixgbe_i2c_start(%struct.ixgbe_hw*) #1

declare dso_local i64 @ixgbe_clock_out_i2c_byte(%struct.ixgbe_hw*, i32) #1

declare dso_local i64 @ixgbe_get_i2c_ack(%struct.ixgbe_hw*) #1

declare dso_local i64 @ixgbe_clock_in_i2c_byte(%struct.ixgbe_hw*, i32*) #1

declare dso_local i64 @ixgbe_clock_out_i2c_bit(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @ixgbe_i2c_stop(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_i2c_bus_clear(%struct.ixgbe_hw*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
