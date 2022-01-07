; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_init_hw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32, i32, i64, i32, i64 }

@.str = private unnamed_addr constant [14 x i8] c"e1000_init_hw\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Error Initializing Identification LED\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Initializing the IEEE VLAN\0A\00", align 1
@VET = common dso_local global i32 0, align 4
@e1000_82542_rev2_0 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Disabling MWI on 82542 rev 2.0\0A\00", align 1
@RCTL = common dso_local global i32 0, align 4
@E1000_RCTL_RST = common dso_local global i64 0, align 8
@PCI_COMMAND_INVALIDATE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"Zeroing the MTA\0A\00", align 1
@E1000_MC_TBL_SIZE = common dso_local global i64 0, align 8
@MTA = common dso_local global i32 0, align 4
@e1000_82543 = common dso_local global i32 0, align 4
@CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_PRIOR = common dso_local global i64 0, align 8
@e1000_bus_type_pcix = common dso_local global i32 0, align 4
@e1000_82544 = common dso_local global i32 0, align 4
@TXDCTL = common dso_local global i32 0, align 4
@E1000_TXDCTL_WTHRESH = common dso_local global i64 0, align 8
@E1000_TXDCTL_FULL_TX_DESC_WB = common dso_local global i64 0, align 8
@E1000_DEV_ID_82546GB_QUAD_COPPER = common dso_local global i64 0, align 8
@E1000_DEV_ID_82546GB_QUAD_COPPER_KSP3 = common dso_local global i64 0, align 8
@CTRL_EXT = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_RO_DIS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_init_hw(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %9 = call i32 @e_dbg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %11 = call i64 @e1000_id_led_init(%struct.e1000_hw* %10)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = call i32 @e_dbg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i64, i64* %6, align 8
  store i64 %16, i64* %2, align 8
  br label %167

17:                                               ; preds = %1
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %19 = call i32 @e1000_set_media_type(%struct.e1000_hw* %18)
  %20 = call i32 @e_dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %22 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %23, 129
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load i32, i32* @VET, align 4
  %27 = call i32 @ew32(i32 %26, i64 0)
  br label %28

28:                                               ; preds = %25, %17
  %29 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %30 = call i32 @e1000_clear_vfta(%struct.e1000_hw* %29)
  %31 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %32 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @e1000_82542_rev2_0, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %28
  %37 = call i32 @e_dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %39 = call i32 @e1000_pci_clear_mwi(%struct.e1000_hw* %38)
  %40 = load i32, i32* @RCTL, align 4
  %41 = load i64, i64* @E1000_RCTL_RST, align 8
  %42 = call i32 @ew32(i32 %40, i64 %41)
  %43 = call i32 (...) @E1000_WRITE_FLUSH()
  %44 = call i32 @msleep(i32 5)
  br label %45

45:                                               ; preds = %36, %28
  %46 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %47 = call i32 @e1000_init_rx_addrs(%struct.e1000_hw* %46)
  %48 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %49 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @e1000_82542_rev2_0, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %68

53:                                               ; preds = %45
  %54 = load i32, i32* @RCTL, align 4
  %55 = call i32 @ew32(i32 %54, i64 0)
  %56 = call i32 (...) @E1000_WRITE_FLUSH()
  %57 = call i32 @msleep(i32 1)
  %58 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %59 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @PCI_COMMAND_INVALIDATE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %53
  %65 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %66 = call i32 @e1000_pci_set_mwi(%struct.e1000_hw* %65)
  br label %67

67:                                               ; preds = %64, %53
  br label %68

68:                                               ; preds = %67, %45
  %69 = call i32 @e_dbg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %70 = load i64, i64* @E1000_MC_TBL_SIZE, align 8
  store i64 %70, i64* %7, align 8
  store i64 0, i64* %5, align 8
  br label %71

71:                                               ; preds = %81, %68
  %72 = load i64, i64* %5, align 8
  %73 = load i64, i64* %7, align 8
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %71
  %76 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %77 = load i32, i32* @MTA, align 4
  %78 = load i64, i64* %5, align 8
  %79 = call i32 @E1000_WRITE_REG_ARRAY(%struct.e1000_hw* %76, i32 %77, i64 %78, i32 0)
  %80 = call i32 (...) @E1000_WRITE_FLUSH()
  br label %81

81:                                               ; preds = %75
  %82 = load i64, i64* %5, align 8
  %83 = add nsw i64 %82, 1
  store i64 %83, i64* %5, align 8
  br label %71

84:                                               ; preds = %71
  %85 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %86 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %103

89:                                               ; preds = %84
  %90 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %91 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @e1000_82543, align 4
  %94 = icmp sle i32 %92, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %89
  %96 = load i32, i32* @CTRL, align 4
  %97 = call i64 @er32(i32 %96)
  store i64 %97, i64* %4, align 8
  %98 = load i32, i32* @CTRL, align 4
  %99 = load i64, i64* %4, align 8
  %100 = load i64, i64* @E1000_CTRL_PRIOR, align 8
  %101 = or i64 %99, %100
  %102 = call i32 @ew32(i32 %98, i64 %101)
  br label %103

103:                                              ; preds = %95, %89, %84
  %104 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %105 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  switch i32 %106, label %108 [
    i32 129, label %107
    i32 128, label %107
  ]

107:                                              ; preds = %103, %103
  br label %122

108:                                              ; preds = %103
  %109 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %110 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @e1000_bus_type_pcix, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %108
  %115 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %116 = call i32 @e1000_pcix_get_mmrbc(%struct.e1000_hw* %115)
  %117 = icmp sgt i32 %116, 2048
  br i1 %117, label %118, label %121

118:                                              ; preds = %114
  %119 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %120 = call i32 @e1000_pcix_set_mmrbc(%struct.e1000_hw* %119, i32 2048)
  br label %121

121:                                              ; preds = %118, %114, %108
  br label %122

122:                                              ; preds = %121, %107
  %123 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %124 = call i64 @e1000_setup_link(%struct.e1000_hw* %123)
  store i64 %124, i64* %6, align 8
  %125 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %126 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @e1000_82544, align 4
  %129 = icmp sgt i32 %127, %128
  br i1 %129, label %130, label %142

130:                                              ; preds = %122
  %131 = load i32, i32* @TXDCTL, align 4
  %132 = call i64 @er32(i32 %131)
  store i64 %132, i64* %4, align 8
  %133 = load i64, i64* %4, align 8
  %134 = load i64, i64* @E1000_TXDCTL_WTHRESH, align 8
  %135 = xor i64 %134, -1
  %136 = and i64 %133, %135
  %137 = load i64, i64* @E1000_TXDCTL_FULL_TX_DESC_WB, align 8
  %138 = or i64 %136, %137
  store i64 %138, i64* %4, align 8
  %139 = load i32, i32* @TXDCTL, align 4
  %140 = load i64, i64* %4, align 8
  %141 = call i32 @ew32(i32 %139, i64 %140)
  br label %142

142:                                              ; preds = %130, %122
  %143 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %144 = call i32 @e1000_clear_hw_cntrs(%struct.e1000_hw* %143)
  %145 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %146 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @E1000_DEV_ID_82546GB_QUAD_COPPER, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %156, label %150

150:                                              ; preds = %142
  %151 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %152 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @E1000_DEV_ID_82546GB_QUAD_COPPER_KSP3, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %165

156:                                              ; preds = %150, %142
  %157 = load i32, i32* @CTRL_EXT, align 4
  %158 = call i64 @er32(i32 %157)
  store i64 %158, i64* %8, align 8
  %159 = load i64, i64* @E1000_CTRL_EXT_RO_DIS, align 8
  %160 = load i64, i64* %8, align 8
  %161 = or i64 %160, %159
  store i64 %161, i64* %8, align 8
  %162 = load i32, i32* @CTRL_EXT, align 4
  %163 = load i64, i64* %8, align 8
  %164 = call i32 @ew32(i32 %162, i64 %163)
  br label %165

165:                                              ; preds = %156, %150
  %166 = load i64, i64* %6, align 8
  store i64 %166, i64* %2, align 8
  br label %167

167:                                              ; preds = %165, %14
  %168 = load i64, i64* %2, align 8
  ret i64 %168
}

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i64 @e1000_id_led_init(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_set_media_type(%struct.e1000_hw*) #1

declare dso_local i32 @ew32(i32, i64) #1

declare dso_local i32 @e1000_clear_vfta(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_pci_clear_mwi(%struct.e1000_hw*) #1

declare dso_local i32 @E1000_WRITE_FLUSH(...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @e1000_init_rx_addrs(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_pci_set_mwi(%struct.e1000_hw*) #1

declare dso_local i32 @E1000_WRITE_REG_ARRAY(%struct.e1000_hw*, i32, i64, i32) #1

declare dso_local i64 @er32(i32) #1

declare dso_local i32 @e1000_pcix_get_mmrbc(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_pcix_set_mmrbc(%struct.e1000_hw*, i32) #1

declare dso_local i64 @e1000_setup_link(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_clear_hw_cntrs(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
