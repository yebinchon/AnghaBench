; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_reset_hw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_reset_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"e1000_reset_hw\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Disabling MWI on 82542 rev 2.0\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Masking off all interrupts\0A\00", align 1
@IMC = common dso_local global i32 0, align 4
@RCTL = common dso_local global i32 0, align 4
@TCTL = common dso_local global i32 0, align 4
@E1000_TCTL_PSP = common dso_local global i32 0, align 4
@CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_PHY_RST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Issuing a global reset to MAC\0A\00", align 1
@E1000_CTRL_RST = common dso_local global i32 0, align 4
@CTRL_DUP = common dso_local global i32 0, align 4
@CTRL_EXT = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_EE_RST = common dso_local global i32 0, align 4
@MANC = common dso_local global i32 0, align 4
@E1000_MANC_ARP_EN = common dso_local global i32 0, align 4
@LEDCTL = common dso_local global i32 0, align 4
@IGP_ACTIVITY_LED_MASK = common dso_local global i32 0, align 4
@IGP_ACTIVITY_LED_ENABLE = common dso_local global i32 0, align 4
@IGP_LED3_MODE = common dso_local global i32 0, align 4
@ICR = common dso_local global i32 0, align 4
@PCI_COMMAND_INVALIDATE = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000_reset_hw(%struct.e1000_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %10 = call i32 @e_dbg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %12 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 138
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = call i32 @e_dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %18 = call i32 @e1000_pci_clear_mwi(%struct.e1000_hw* %17)
  br label %19

19:                                               ; preds = %15, %1
  %20 = call i32 @e_dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %21 = load i32, i32* @IMC, align 4
  %22 = call i32 @ew32(i32 %21, i32 -1)
  %23 = load i32, i32* @RCTL, align 4
  %24 = call i32 @ew32(i32 %23, i32 0)
  %25 = load i32, i32* @TCTL, align 4
  %26 = load i32, i32* @E1000_TCTL_PSP, align 4
  %27 = call i32 @ew32(i32 %25, i32 %26)
  %28 = call i32 (...) @E1000_WRITE_FLUSH()
  %29 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %30 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %29, i32 0, i32 1
  store i32 0, i32* %30, align 4
  %31 = call i32 @msleep(i32 10)
  %32 = load i32, i32* @CTRL, align 4
  %33 = call i32 @er32(i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %35 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 140
  br i1 %37, label %43, label %38

38:                                               ; preds = %19
  %39 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %40 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 130
  br i1 %42, label %43, label %51

43:                                               ; preds = %38, %19
  %44 = load i32, i32* @CTRL, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @E1000_CTRL_PHY_RST, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @ew32(i32 %44, i32 %47)
  %49 = call i32 (...) @E1000_WRITE_FLUSH()
  %50 = call i32 @msleep(i32 5)
  br label %51

51:                                               ; preds = %43, %38
  %52 = call i32 @e_dbg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %53 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %54 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  switch i32 %55, label %70 [
    i32 135, label %56
    i32 141, label %56
    i32 134, label %56
    i32 132, label %56
    i32 140, label %56
    i32 139, label %56
    i32 133, label %63
    i32 131, label %63
    i32 128, label %69
  ]

56:                                               ; preds = %51, %51, %51, %51, %51, %51
  %57 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %58 = load i32, i32* @CTRL, align 4
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @E1000_CTRL_RST, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @E1000_WRITE_REG_IO(%struct.e1000_hw* %57, i32 %58, i32 %61)
  br label %76

63:                                               ; preds = %51, %51
  %64 = load i32, i32* @CTRL_DUP, align 4
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @E1000_CTRL_RST, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @ew32(i32 %64, i32 %67)
  br label %76

69:                                               ; preds = %51
  br label %70

70:                                               ; preds = %51, %69
  %71 = load i32, i32* @CTRL, align 4
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @E1000_CTRL_RST, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @ew32(i32 %71, i32 %74)
  br label %76

76:                                               ; preds = %70, %63, %56
  %77 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %78 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  switch i32 %79, label %94 [
    i32 138, label %80
    i32 137, label %80
    i32 136, label %80
    i32 135, label %80
    i32 140, label %92
    i32 139, label %92
    i32 130, label %92
    i32 129, label %92
  ]

80:                                               ; preds = %76, %76, %76, %76
  %81 = call i32 @udelay(i32 10)
  %82 = load i32, i32* @CTRL_EXT, align 4
  %83 = call i32 @er32(i32 %82)
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* @E1000_CTRL_EXT_EE_RST, align 4
  %85 = load i32, i32* %5, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* @CTRL_EXT, align 4
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @ew32(i32 %87, i32 %88)
  %90 = call i32 (...) @E1000_WRITE_FLUSH()
  %91 = call i32 @msleep(i32 2)
  br label %102

92:                                               ; preds = %76, %76, %76, %76
  %93 = call i32 @msleep(i32 20)
  br label %102

94:                                               ; preds = %76
  %95 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %96 = call i32 @e1000_get_auto_rd_done(%struct.e1000_hw* %95)
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = load i32, i32* %9, align 4
  store i32 %100, i32* %2, align 4
  br label %166

101:                                              ; preds = %94
  br label %102

102:                                              ; preds = %101, %92, %80
  %103 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %104 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp sge i32 %105, 141
  br i1 %106, label %107, label %117

107:                                              ; preds = %102
  %108 = load i32, i32* @MANC, align 4
  %109 = call i32 @er32(i32 %108)
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* @E1000_MANC_ARP_EN, align 4
  %111 = xor i32 %110, -1
  %112 = load i32, i32* %7, align 4
  %113 = and i32 %112, %111
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* @MANC, align 4
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @ew32(i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %107, %102
  %118 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %119 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, 140
  br i1 %121, label %127, label %122

122:                                              ; preds = %117
  %123 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %124 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = icmp eq i32 %125, 130
  br i1 %126, label %127, label %143

127:                                              ; preds = %122, %117
  %128 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %129 = call i32 @e1000_phy_init_script(%struct.e1000_hw* %128)
  %130 = load i32, i32* @LEDCTL, align 4
  %131 = call i32 @er32(i32 %130)
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* @IGP_ACTIVITY_LED_MASK, align 4
  %133 = load i32, i32* %8, align 4
  %134 = and i32 %133, %132
  store i32 %134, i32* %8, align 4
  %135 = load i32, i32* @IGP_ACTIVITY_LED_ENABLE, align 4
  %136 = load i32, i32* @IGP_LED3_MODE, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* %8, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %8, align 4
  %140 = load i32, i32* @LEDCTL, align 4
  %141 = load i32, i32* %8, align 4
  %142 = call i32 @ew32(i32 %140, i32 %141)
  br label %143

143:                                              ; preds = %127, %122
  %144 = call i32 @e_dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %145 = load i32, i32* @IMC, align 4
  %146 = call i32 @ew32(i32 %145, i32 -1)
  %147 = load i32, i32* @ICR, align 4
  %148 = call i32 @er32(i32 %147)
  store i32 %148, i32* %6, align 4
  %149 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %150 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = icmp eq i32 %151, 138
  br i1 %152, label %153, label %164

153:                                              ; preds = %143
  %154 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %155 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @PCI_COMMAND_INVALIDATE, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %153
  %161 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %162 = call i32 @e1000_pci_set_mwi(%struct.e1000_hw* %161)
  br label %163

163:                                              ; preds = %160, %153
  br label %164

164:                                              ; preds = %163, %143
  %165 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %165, i32* %2, align 4
  br label %166

166:                                              ; preds = %164, %99
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i32 @e1000_pci_clear_mwi(%struct.e1000_hw*) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @E1000_WRITE_FLUSH(...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @E1000_WRITE_REG_IO(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @e1000_get_auto_rd_done(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_phy_init_script(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_pci_set_mwi(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
