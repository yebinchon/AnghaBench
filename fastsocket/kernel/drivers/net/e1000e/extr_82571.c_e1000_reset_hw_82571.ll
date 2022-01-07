; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_82571.c_e1000_reset_hw_82571.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_82571.c_e1000_reset_hw_82571.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [42 x i8] c"PCI-E Master disable polling has failed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Masking off all interrupts\0A\00", align 1
@IMC = common dso_local global i32 0, align 4
@RCTL = common dso_local global i32 0, align 4
@TCTL = common dso_local global i32 0, align 4
@E1000_TCTL_EN = common dso_local global i32 0, align 4
@CTRL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Issuing a global reset to MAC\0A\00", align 1
@E1000_CTRL_RST = common dso_local global i32 0, align 4
@e1000_nvm_flash_hw = common dso_local global i64 0, align 8
@CTRL_EXT = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_EE_RST = common dso_local global i32 0, align 4
@EECD = common dso_local global i32 0, align 4
@E1000_EECD_REQ = common dso_local global i32 0, align 4
@E1000_EECD_GNT = common dso_local global i32 0, align 4
@ICR = common dso_local global i32 0, align 4
@e1000_media_type_internal_serdes = common dso_local global i64 0, align 8
@e1000_serdes_link_down = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_reset_hw_82571 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_reset_hw_82571(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %10 = call i64 @e1000e_disable_pcie_master(%struct.e1000_hw* %9)
  store i64 %10, i64* %8, align 8
  %11 = load i64, i64* %8, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = call i32 @e_dbg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %1
  %16 = call i32 @e_dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32, i32* @IMC, align 4
  %18 = call i32 @ew32(i32 %17, i32 -1)
  %19 = load i32, i32* @RCTL, align 4
  %20 = call i32 @ew32(i32 %19, i32 0)
  %21 = load i32, i32* @TCTL, align 4
  %22 = call i32 @er32(i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* @E1000_TCTL_EN, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* @TCTL, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @ew32(i32 %27, i32 %28)
  %30 = call i32 (...) @e1e_flush()
  %31 = call i32 @usleep_range(i32 10000, i32 20000)
  %32 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %33 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %42 [
    i32 130, label %36
    i32 129, label %39
    i32 128, label %39
  ]

36:                                               ; preds = %15
  %37 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %38 = call i64 @e1000_get_hw_semaphore_82573(%struct.e1000_hw* %37)
  store i64 %38, i64* %8, align 8
  br label %43

39:                                               ; preds = %15, %15
  %40 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %41 = call i64 @e1000_get_hw_semaphore_82574(%struct.e1000_hw* %40)
  store i64 %41, i64* %8, align 8
  br label %43

42:                                               ; preds = %15
  br label %43

43:                                               ; preds = %42, %39, %36
  %44 = load i32, i32* @CTRL, align 4
  %45 = call i32 @er32(i32 %44)
  store i32 %45, i32* %4, align 4
  %46 = call i32 @e_dbg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i32, i32* @CTRL, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @E1000_CTRL_RST, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @ew32(i32 %47, i32 %50)
  %52 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %53 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  switch i32 %55, label %63 [
    i32 129, label %56
    i32 128, label %56
  ]

56:                                               ; preds = %43, %43
  %57 = load i64, i64* %8, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %61 = call i32 @e1000_put_hw_semaphore_82574(%struct.e1000_hw* %60)
  br label %62

62:                                               ; preds = %59, %56
  br label %64

63:                                               ; preds = %43
  br label %64

64:                                               ; preds = %63, %62
  %65 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %66 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @e1000_nvm_flash_hw, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %82

71:                                               ; preds = %64
  %72 = call i32 @usleep_range(i32 10, i32 20)
  %73 = load i32, i32* @CTRL_EXT, align 4
  %74 = call i32 @er32(i32 %73)
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* @E1000_CTRL_EXT_EE_RST, align 4
  %76 = load i32, i32* %5, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* @CTRL_EXT, align 4
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @ew32(i32 %78, i32 %79)
  %81 = call i32 (...) @e1e_flush()
  br label %82

82:                                               ; preds = %71, %64
  %83 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %84 = call i64 @e1000e_get_auto_rd_done(%struct.e1000_hw* %83)
  store i64 %84, i64* %8, align 8
  %85 = load i64, i64* %8, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = load i64, i64* %8, align 8
  store i64 %88, i64* %2, align 8
  br label %142

89:                                               ; preds = %82
  %90 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %91 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  switch i32 %93, label %108 [
    i32 132, label %94
    i32 131, label %94
    i32 130, label %106
    i32 129, label %106
    i32 128, label %106
  ]

94:                                               ; preds = %89, %89
  %95 = load i32, i32* @EECD, align 4
  %96 = call i32 @er32(i32 %95)
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* @E1000_EECD_REQ, align 4
  %98 = load i32, i32* @E1000_EECD_GNT, align 4
  %99 = or i32 %97, %98
  %100 = xor i32 %99, -1
  %101 = load i32, i32* %6, align 4
  %102 = and i32 %101, %100
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* @EECD, align 4
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @ew32(i32 %103, i32 %104)
  br label %109

106:                                              ; preds = %89, %89, %89
  %107 = call i32 @msleep(i32 25)
  br label %109

108:                                              ; preds = %89
  br label %109

109:                                              ; preds = %108, %106, %94
  %110 = load i32, i32* @IMC, align 4
  %111 = call i32 @ew32(i32 %110, i32 -1)
  %112 = load i32, i32* @ICR, align 4
  %113 = call i32 @er32(i32 %112)
  %114 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %115 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp eq i32 %117, 132
  br i1 %118, label %119, label %129

119:                                              ; preds = %109
  %120 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %121 = call i64 @e1000_check_alt_mac_addr_generic(%struct.e1000_hw* %120)
  store i64 %121, i64* %8, align 8
  %122 = load i64, i64* %8, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %119
  %125 = load i64, i64* %8, align 8
  store i64 %125, i64* %2, align 8
  br label %142

126:                                              ; preds = %119
  %127 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %128 = call i32 @e1000e_set_laa_state_82571(%struct.e1000_hw* %127, i32 1)
  br label %129

129:                                              ; preds = %126, %109
  %130 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %131 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @e1000_media_type_internal_serdes, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %141

136:                                              ; preds = %129
  %137 = load i32, i32* @e1000_serdes_link_down, align 4
  %138 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %139 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 1
  store i32 %137, i32* %140, align 4
  br label %141

141:                                              ; preds = %136, %129
  store i64 0, i64* %2, align 8
  br label %142

142:                                              ; preds = %141, %124, %87
  %143 = load i64, i64* %2, align 8
  ret i64 %143
}

declare dso_local i64 @e1000e_disable_pcie_master(%struct.e1000_hw*) #1

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @e1e_flush(...) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @e1000_get_hw_semaphore_82573(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_get_hw_semaphore_82574(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_put_hw_semaphore_82574(%struct.e1000_hw*) #1

declare dso_local i64 @e1000e_get_auto_rd_done(%struct.e1000_hw*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @e1000_check_alt_mac_addr_generic(%struct.e1000_hw*) #1

declare dso_local i32 @e1000e_set_laa_state_82571(%struct.e1000_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
