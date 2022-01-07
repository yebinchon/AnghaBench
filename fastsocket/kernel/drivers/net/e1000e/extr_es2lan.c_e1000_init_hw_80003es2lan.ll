; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_es2lan.c_e1000_init_hw_80003es2lan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_es2lan.c_e1000_init_hw_80003es2lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_6__, %struct.e1000_mac_info }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.e1000_mac_info = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.2*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.e1000_hw.2 = type opaque

@.str = private unnamed_addr constant [39 x i8] c"Error initializing identification LED\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Initializing the IEEE VLAN\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Zeroing the MTA\0A\00", align 1
@E1000_MTA = common dso_local global i32 0, align 4
@E1000_KMRNCTRLSTA_INBAND_PARAM = common dso_local global i32 0, align 4
@E1000_KMRNCTRLSTA_IBIST_DISABLE = common dso_local global i32 0, align 4
@E1000_TXDCTL_WTHRESH = common dso_local global i32 0, align 4
@E1000_TXDCTL_FULL_TX_DESC_WB = common dso_local global i32 0, align 4
@E1000_TXDCTL_COUNT_DESC = common dso_local global i32 0, align 4
@TCTL = common dso_local global i32 0, align 4
@E1000_TCTL_RTLC = common dso_local global i32 0, align 4
@TCTL_EXT = common dso_local global i32 0, align 4
@E1000_TCTL_EXT_GCEX_MASK = common dso_local global i32 0, align 4
@DEFAULT_TCTL_EXT_GCEX_80003ES2LAN = common dso_local global i32 0, align 4
@TIPG = common dso_local global i32 0, align 4
@E1000_TIPG_IPGT_MASK = common dso_local global i32 0, align 4
@DEFAULT_TIPG_IPGT_1000_80003ES2LAN = common dso_local global i32 0, align 4
@E1000_FFLT = common dso_local global i32 0, align 4
@E1000_KMRNCTRLSTA_OFFSET = common dso_local global i32 0, align 4
@E1000_KMRNCTRLSTA_OFFSET_SHIFT = common dso_local global i32 0, align 4
@E1000_KMRNCTRLSTA_OPMODE_MASK = common dso_local global i32 0, align 4
@E1000_KMRNCTRLSTA_OPMODE_INBAND_MDIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_init_hw_80003es2lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_init_hw_80003es2lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_mac_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 1
  store %struct.e1000_mac_info* %10, %struct.e1000_mac_info** %4, align 8
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %12 = call i32 @e1000_initialize_hw_bits_80003es2lan(%struct.e1000_hw* %11)
  %13 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %14 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %16 = load i64 (%struct.e1000_hw.2*)*, i64 (%struct.e1000_hw.2*)** %15, align 8
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %18 = bitcast %struct.e1000_hw* %17 to %struct.e1000_hw.2*
  %19 = call i64 %16(%struct.e1000_hw.2* %18)
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = call i32 @e_dbg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %1
  %25 = call i32 @e_dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %27 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.1*)** %28, align 8
  %30 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %31 = bitcast %struct.e1000_hw* %30 to %struct.e1000_hw.1*
  %32 = call i32 %29(%struct.e1000_hw.1* %31)
  %33 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %34 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %35 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @e1000e_init_rx_addrs(%struct.e1000_hw* %33, i32 %36)
  %38 = call i32 @e_dbg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %39

39:                                               ; preds = %50, %24
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %42 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %39
  %46 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %47 = load i32, i32* @E1000_MTA, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @E1000_WRITE_REG_ARRAY(%struct.e1000_hw* %46, i32 %47, i32 %48, i32 0)
  br label %50

50:                                               ; preds = %45
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %39

53:                                               ; preds = %39
  %54 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %55 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.0*)** %56, align 8
  %58 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %59 = bitcast %struct.e1000_hw* %58 to %struct.e1000_hw.0*
  %60 = call i64 %57(%struct.e1000_hw.0* %59)
  store i64 %60, i64* %6, align 8
  %61 = load i64, i64* %6, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %53
  %64 = load i64, i64* %6, align 8
  store i64 %64, i64* %2, align 8
  br label %170

65:                                               ; preds = %53
  %66 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %67 = load i32, i32* @E1000_KMRNCTRLSTA_INBAND_PARAM, align 4
  %68 = call i64 @e1000_read_kmrn_reg_80003es2lan(%struct.e1000_hw* %66, i32 %67, i32* %7)
  %69 = load i32, i32* @E1000_KMRNCTRLSTA_IBIST_DISABLE, align 4
  %70 = load i32, i32* %7, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %7, align 4
  %72 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %73 = load i32, i32* @E1000_KMRNCTRLSTA_INBAND_PARAM, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @e1000_write_kmrn_reg_80003es2lan(%struct.e1000_hw* %72, i32 %73, i32 %74)
  %76 = call i32 @TXDCTL(i32 0)
  %77 = call i32 @er32(i32 %76)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @E1000_TXDCTL_WTHRESH, align 4
  %80 = xor i32 %79, -1
  %81 = and i32 %78, %80
  %82 = load i32, i32* @E1000_TXDCTL_FULL_TX_DESC_WB, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @E1000_TXDCTL_COUNT_DESC, align 4
  %85 = or i32 %83, %84
  store i32 %85, i32* %5, align 4
  %86 = call i32 @TXDCTL(i32 0)
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @ew32(i32 %86, i32 %87)
  %89 = call i32 @TXDCTL(i32 1)
  %90 = call i32 @er32(i32 %89)
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @E1000_TXDCTL_WTHRESH, align 4
  %93 = xor i32 %92, -1
  %94 = and i32 %91, %93
  %95 = load i32, i32* @E1000_TXDCTL_FULL_TX_DESC_WB, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @E1000_TXDCTL_COUNT_DESC, align 4
  %98 = or i32 %96, %97
  store i32 %98, i32* %5, align 4
  %99 = call i32 @TXDCTL(i32 1)
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @ew32(i32 %99, i32 %100)
  %102 = load i32, i32* @TCTL, align 4
  %103 = call i32 @er32(i32 %102)
  store i32 %103, i32* %5, align 4
  %104 = load i32, i32* @E1000_TCTL_RTLC, align 4
  %105 = load i32, i32* %5, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %5, align 4
  %107 = load i32, i32* @TCTL, align 4
  %108 = load i32, i32* %5, align 4
  %109 = call i32 @ew32(i32 %107, i32 %108)
  %110 = load i32, i32* @TCTL_EXT, align 4
  %111 = call i32 @er32(i32 %110)
  store i32 %111, i32* %5, align 4
  %112 = load i32, i32* @E1000_TCTL_EXT_GCEX_MASK, align 4
  %113 = xor i32 %112, -1
  %114 = load i32, i32* %5, align 4
  %115 = and i32 %114, %113
  store i32 %115, i32* %5, align 4
  %116 = load i32, i32* @DEFAULT_TCTL_EXT_GCEX_80003ES2LAN, align 4
  %117 = load i32, i32* %5, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %5, align 4
  %119 = load i32, i32* @TCTL_EXT, align 4
  %120 = load i32, i32* %5, align 4
  %121 = call i32 @ew32(i32 %119, i32 %120)
  %122 = load i32, i32* @TIPG, align 4
  %123 = call i32 @er32(i32 %122)
  store i32 %123, i32* %5, align 4
  %124 = load i32, i32* @E1000_TIPG_IPGT_MASK, align 4
  %125 = xor i32 %124, -1
  %126 = load i32, i32* %5, align 4
  %127 = and i32 %126, %125
  store i32 %127, i32* %5, align 4
  %128 = load i32, i32* @DEFAULT_TIPG_IPGT_1000_80003ES2LAN, align 4
  %129 = load i32, i32* %5, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %5, align 4
  %131 = load i32, i32* @TIPG, align 4
  %132 = load i32, i32* %5, align 4
  %133 = call i32 @ew32(i32 %131, i32 %132)
  %134 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %135 = load i32, i32* @E1000_FFLT, align 4
  %136 = call i32 @E1000_READ_REG_ARRAY(%struct.e1000_hw* %134, i32 %135, i32 1)
  store i32 %136, i32* %5, align 4
  %137 = load i32, i32* %5, align 4
  %138 = and i32 %137, -1048577
  store i32 %138, i32* %5, align 4
  %139 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %140 = load i32, i32* @E1000_FFLT, align 4
  %141 = load i32, i32* %5, align 4
  %142 = call i32 @E1000_WRITE_REG_ARRAY(%struct.e1000_hw* %139, i32 %140, i32 1, i32 %141)
  %143 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %144 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  store i32 1, i32* %146, align 8
  %147 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %148 = load i32, i32* @E1000_KMRNCTRLSTA_OFFSET, align 4
  %149 = load i32, i32* @E1000_KMRNCTRLSTA_OFFSET_SHIFT, align 4
  %150 = ashr i32 %148, %149
  %151 = call i64 @e1000_read_kmrn_reg_80003es2lan(%struct.e1000_hw* %147, i32 %150, i32* %8)
  store i64 %151, i64* %6, align 8
  %152 = load i64, i64* %6, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %166, label %154

154:                                              ; preds = %65
  %155 = load i32, i32* %8, align 4
  %156 = load i32, i32* @E1000_KMRNCTRLSTA_OPMODE_MASK, align 4
  %157 = and i32 %155, %156
  %158 = load i32, i32* @E1000_KMRNCTRLSTA_OPMODE_INBAND_MDIO, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %165

160:                                              ; preds = %154
  %161 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %162 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 0
  store i32 0, i32* %164, align 8
  br label %165

165:                                              ; preds = %160, %154
  br label %166

166:                                              ; preds = %165, %65
  %167 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %168 = call i32 @e1000_clear_hw_cntrs_80003es2lan(%struct.e1000_hw* %167)
  %169 = load i64, i64* %6, align 8
  store i64 %169, i64* %2, align 8
  br label %170

170:                                              ; preds = %166, %63
  %171 = load i64, i64* %2, align 8
  ret i64 %171
}

declare dso_local i32 @e1000_initialize_hw_bits_80003es2lan(%struct.e1000_hw*) #1

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i32 @e1000e_init_rx_addrs(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_WRITE_REG_ARRAY(%struct.e1000_hw*, i32, i32, i32) #1

declare dso_local i64 @e1000_read_kmrn_reg_80003es2lan(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @e1000_write_kmrn_reg_80003es2lan(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @TXDCTL(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @E1000_READ_REG_ARRAY(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @e1000_clear_hw_cntrs_80003es2lan(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
