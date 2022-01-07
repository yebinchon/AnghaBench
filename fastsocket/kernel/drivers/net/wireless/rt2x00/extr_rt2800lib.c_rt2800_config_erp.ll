; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_config_erp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_config_erp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.rt2x00lib_erp = type { i32, i32, i32, i32, i64, i32 }

@BSS_CHANGED_ERP_PREAMBLE = common dso_local global i32 0, align 4
@AUTO_RSP_CFG = common dso_local global i32 0, align 4
@AUTO_RSP_CFG_BAC_ACK_POLICY = common dso_local global i32 0, align 4
@AUTO_RSP_CFG_AR_PREAMBLE = common dso_local global i32 0, align 4
@BSS_CHANGED_ERP_CTS_PROT = common dso_local global i32 0, align 4
@OFDM_PROT_CFG = common dso_local global i32 0, align 4
@OFDM_PROT_CFG_PROTECT_CTRL = common dso_local global i32 0, align 4
@BSS_CHANGED_BASIC_RATES = common dso_local global i32 0, align 4
@LEGACY_BASIC_RATE = common dso_local global i32 0, align 4
@HT_BASIC_RATE = common dso_local global i32 0, align 4
@BSS_CHANGED_ERP_SLOT = common dso_local global i32 0, align 4
@BKOFF_SLOT_CFG = common dso_local global i32 0, align 4
@BKOFF_SLOT_CFG_SLOT_TIME = common dso_local global i32 0, align 4
@XIFS_TIME_CFG = common dso_local global i32 0, align 4
@XIFS_TIME_CFG_EIFS = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON_INT = common dso_local global i32 0, align 4
@BCN_TIME_CFG = common dso_local global i32 0, align 4
@BCN_TIME_CFG_BEACON_INTERVAL = common dso_local global i32 0, align 4
@BSS_CHANGED_HT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2800_config_erp(%struct.rt2x00_dev* %0, %struct.rt2x00lib_erp* %1, i32 %2) #0 {
  %4 = alloca %struct.rt2x00_dev*, align 8
  %5 = alloca %struct.rt2x00lib_erp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %4, align 8
  store %struct.rt2x00lib_erp* %1, %struct.rt2x00lib_erp** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @BSS_CHANGED_ERP_PREAMBLE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %38

12:                                               ; preds = %3
  %13 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %14 = load i32, i32* @AUTO_RSP_CFG, align 4
  %15 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %13, i32 %14, i32* %7)
  %16 = load i32, i32* @AUTO_RSP_CFG_BAC_ACK_POLICY, align 4
  %17 = load %struct.rt2x00lib_erp*, %struct.rt2x00lib_erp** %5, align 8
  %18 = getelementptr inbounds %struct.rt2x00lib_erp, %struct.rt2x00lib_erp* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @rt2x00_set_field32(i32* %7, i32 %16, i32 %23)
  %25 = load i32, i32* @AUTO_RSP_CFG_AR_PREAMBLE, align 4
  %26 = load %struct.rt2x00lib_erp*, %struct.rt2x00lib_erp** %5, align 8
  %27 = getelementptr inbounds %struct.rt2x00lib_erp, %struct.rt2x00lib_erp* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @rt2x00_set_field32(i32* %7, i32 %25, i32 %32)
  %34 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %35 = load i32, i32* @AUTO_RSP_CFG, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %12, %3
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @BSS_CHANGED_ERP_CTS_PROT, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %38
  %44 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %45 = load i32, i32* @OFDM_PROT_CFG, align 4
  %46 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %44, i32 %45, i32* %7)
  %47 = load i32, i32* @OFDM_PROT_CFG_PROTECT_CTRL, align 4
  %48 = load %struct.rt2x00lib_erp*, %struct.rt2x00lib_erp** %5, align 8
  %49 = getelementptr inbounds %struct.rt2x00lib_erp, %struct.rt2x00lib_erp* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 2, i32 0
  %54 = call i32 @rt2x00_set_field32(i32* %7, i32 %47, i32 %53)
  %55 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %56 = load i32, i32* @OFDM_PROT_CFG, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %43, %38
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @BSS_CHANGED_BASIC_RATES, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %59
  %65 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %66 = load i32, i32* @LEGACY_BASIC_RATE, align 4
  %67 = load %struct.rt2x00lib_erp*, %struct.rt2x00lib_erp** %5, align 8
  %68 = getelementptr inbounds %struct.rt2x00lib_erp, %struct.rt2x00lib_erp* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %65, i32 %66, i32 %69)
  %71 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %72 = load i32, i32* @HT_BASIC_RATE, align 4
  %73 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %71, i32 %72, i32 32771)
  br label %74

74:                                               ; preds = %64, %59
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @BSS_CHANGED_ERP_SLOT, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %104

79:                                               ; preds = %74
  %80 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %81 = load i32, i32* @BKOFF_SLOT_CFG, align 4
  %82 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %80, i32 %81, i32* %7)
  %83 = load i32, i32* @BKOFF_SLOT_CFG_SLOT_TIME, align 4
  %84 = load %struct.rt2x00lib_erp*, %struct.rt2x00lib_erp** %5, align 8
  %85 = getelementptr inbounds %struct.rt2x00lib_erp, %struct.rt2x00lib_erp* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @rt2x00_set_field32(i32* %7, i32 %83, i32 %86)
  %88 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %89 = load i32, i32* @BKOFF_SLOT_CFG, align 4
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %88, i32 %89, i32 %90)
  %92 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %93 = load i32, i32* @XIFS_TIME_CFG, align 4
  %94 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %92, i32 %93, i32* %7)
  %95 = load i32, i32* @XIFS_TIME_CFG_EIFS, align 4
  %96 = load %struct.rt2x00lib_erp*, %struct.rt2x00lib_erp** %5, align 8
  %97 = getelementptr inbounds %struct.rt2x00lib_erp, %struct.rt2x00lib_erp* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @rt2x00_set_field32(i32* %7, i32 %95, i32 %98)
  %100 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %101 = load i32, i32* @XIFS_TIME_CFG, align 4
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %100, i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %79, %74
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* @BSS_CHANGED_BEACON_INT, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %123

109:                                              ; preds = %104
  %110 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %111 = load i32, i32* @BCN_TIME_CFG, align 4
  %112 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %110, i32 %111, i32* %7)
  %113 = load i32, i32* @BCN_TIME_CFG_BEACON_INTERVAL, align 4
  %114 = load %struct.rt2x00lib_erp*, %struct.rt2x00lib_erp** %5, align 8
  %115 = getelementptr inbounds %struct.rt2x00lib_erp, %struct.rt2x00lib_erp* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = mul nsw i32 %116, 16
  %118 = call i32 @rt2x00_set_field32(i32* %7, i32 %113, i32 %117)
  %119 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %120 = load i32, i32* @BCN_TIME_CFG, align 4
  %121 = load i32, i32* %7, align 4
  %122 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %119, i32 %120, i32 %121)
  br label %123

123:                                              ; preds = %109, %104
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* @BSS_CHANGED_HT, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %123
  %129 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %130 = load %struct.rt2x00lib_erp*, %struct.rt2x00lib_erp** %5, align 8
  %131 = call i32 @rt2800_config_ht_opmode(%struct.rt2x00_dev* %129, %struct.rt2x00lib_erp* %130)
  br label %132

132:                                              ; preds = %128, %123
  ret void
}

declare dso_local i32 @rt2800_register_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @rt2800_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_config_ht_opmode(%struct.rt2x00_dev*, %struct.rt2x00lib_erp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
