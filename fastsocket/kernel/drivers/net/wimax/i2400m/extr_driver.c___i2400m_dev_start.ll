; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_driver.c___i2400m_dev_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_driver.c___i2400m_dev_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i32, i32 (%struct.i2400m*)*, i32, i32*, i32 (%struct.i2400m*)*, %struct.wimax_dev }
%struct.wimax_dev = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"(i2400m %p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"cannot bootstrap device: %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"cannot create workqueue\0A\00", align 1
@WIMAX_ST_UNINITIALIZED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"(net_dev %p [i2400m %p]) = %d\0A\00", align 1
@EL3RST = common dso_local global i32 0, align 4
@I2400M_BRI_SOFT = common dso_local global i32 0, align 4
@I2400M_BRI_MAC_REINIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2400m*, i32)* @__i2400m_dev_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__i2400m_dev_start(%struct.i2400m* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2400m*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.wimax_dev*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  store %struct.i2400m* %0, %struct.i2400m** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %12 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %11, i32 0, i32 5
  store %struct.wimax_dev* %12, %struct.wimax_dev** %7, align 8
  %13 = load %struct.wimax_dev*, %struct.wimax_dev** %7, align 8
  %14 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %13, i32 0, i32 1
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %8, align 8
  %16 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %17 = call %struct.device* @i2400m_dev(%struct.i2400m* %16)
  store %struct.device* %17, %struct.device** %9, align 8
  %18 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %19 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %10, align 4
  %21 = load %struct.device*, %struct.device** %9, align 8
  %22 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %23 = call i32 @d_fnstart(i32 3, %struct.device* %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.i2400m* %22)
  br label %24

24:                                               ; preds = %130, %2
  %25 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @i2400m_dev_bootstrap(%struct.i2400m* %25, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load %struct.device*, %struct.device** %9, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %31, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  br label %121

34:                                               ; preds = %24
  %35 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %36 = call i32 @i2400m_tx_setup(%struct.i2400m* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %120

40:                                               ; preds = %34
  %41 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %42 = call i32 @i2400m_rx_setup(%struct.i2400m* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %117

46:                                               ; preds = %40
  %47 = load %struct.wimax_dev*, %struct.wimax_dev** %7, align 8
  %48 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32* @create_singlethread_workqueue(i32 %49)
  %51 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %52 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %51, i32 0, i32 3
  store i32* %50, i32** %52, align 8
  %53 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %54 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %46
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %6, align 4
  %60 = load %struct.device*, %struct.device** %9, align 8
  %61 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %60, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %114

62:                                               ; preds = %46
  %63 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %64 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %63, i32 0, i32 1
  %65 = load i32 (%struct.i2400m*)*, i32 (%struct.i2400m*)** %64, align 8
  %66 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %67 = call i32 %65(%struct.i2400m* %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  br label %109

71:                                               ; preds = %62
  %72 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %73 = call i32 @i2400m_firmware_check(%struct.i2400m* %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %103

77:                                               ; preds = %71
  %78 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %79 = call i32 @i2400m_check_mac_addr(%struct.i2400m* %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %102

83:                                               ; preds = %77
  %84 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %85 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %84, i32 0, i32 2
  store i32 1, i32* %85, align 8
  %86 = load %struct.wimax_dev*, %struct.wimax_dev** %7, align 8
  %87 = load i32, i32* @WIMAX_ST_UNINITIALIZED, align 4
  %88 = call i32 @wimax_state_change(%struct.wimax_dev* %86, i32 %87)
  %89 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %90 = call i32 @i2400m_dev_initialize(%struct.i2400m* %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %83
  br label %101

94:                                               ; preds = %83
  %95 = load %struct.device*, %struct.device** %9, align 8
  %96 = load %struct.net_device*, %struct.net_device** %8, align 8
  %97 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @d_fnend(i32 3, %struct.device* %95, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), %struct.net_device* %96, %struct.i2400m* %97, i32 %98)
  %100 = load i32, i32* %6, align 4
  store i32 %100, i32* %3, align 4
  br label %141

101:                                              ; preds = %93
  br label %102

102:                                              ; preds = %101, %82
  br label %103

103:                                              ; preds = %102, %76
  %104 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %105 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %104, i32 0, i32 4
  %106 = load i32 (%struct.i2400m*)*, i32 (%struct.i2400m*)** %105, align 8
  %107 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %108 = call i32 %106(%struct.i2400m* %107)
  br label %109

109:                                              ; preds = %103, %70
  %110 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %111 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %110, i32 0, i32 3
  %112 = load i32*, i32** %111, align 8
  %113 = call i32 @destroy_workqueue(i32* %112)
  br label %114

114:                                              ; preds = %109, %57
  %115 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %116 = call i32 @i2400m_rx_release(%struct.i2400m* %115)
  br label %117

117:                                              ; preds = %114, %45
  %118 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %119 = call i32 @i2400m_tx_release(%struct.i2400m* %118)
  br label %120

120:                                              ; preds = %117, %39
  br label %121

121:                                              ; preds = %120, %30
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* @EL3RST, align 4
  %124 = sub nsw i32 0, %123
  %125 = icmp eq i32 %122, %124
  br i1 %125, label %126, label %134

126:                                              ; preds = %121
  %127 = load i32, i32* %10, align 4
  %128 = add nsw i32 %127, -1
  store i32 %128, i32* %10, align 4
  %129 = icmp sgt i32 %127, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %126
  %131 = load i32, i32* @I2400M_BRI_SOFT, align 4
  %132 = load i32, i32* @I2400M_BRI_MAC_REINIT, align 4
  %133 = or i32 %131, %132
  store i32 %133, i32* %5, align 4
  br label %24

134:                                              ; preds = %126, %121
  %135 = load %struct.device*, %struct.device** %9, align 8
  %136 = load %struct.net_device*, %struct.net_device** %8, align 8
  %137 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %138 = load i32, i32* %6, align 4
  %139 = call i32 @d_fnend(i32 3, %struct.device* %135, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), %struct.net_device* %136, %struct.i2400m* %137, i32 %138)
  %140 = load i32, i32* %6, align 4
  store i32 %140, i32* %3, align 4
  br label %141

141:                                              ; preds = %134, %94
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.i2400m*) #1

declare dso_local i32 @i2400m_dev_bootstrap(%struct.i2400m*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @i2400m_tx_setup(%struct.i2400m*) #1

declare dso_local i32 @i2400m_rx_setup(%struct.i2400m*) #1

declare dso_local i32* @create_singlethread_workqueue(i32) #1

declare dso_local i32 @i2400m_firmware_check(%struct.i2400m*) #1

declare dso_local i32 @i2400m_check_mac_addr(%struct.i2400m*) #1

declare dso_local i32 @wimax_state_change(%struct.wimax_dev*, i32) #1

declare dso_local i32 @i2400m_dev_initialize(%struct.i2400m*) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.net_device*, %struct.i2400m*, i32) #1

declare dso_local i32 @destroy_workqueue(i32*) #1

declare dso_local i32 @i2400m_rx_release(%struct.i2400m*) #1

declare dso_local i32 @i2400m_tx_release(%struct.i2400m*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
