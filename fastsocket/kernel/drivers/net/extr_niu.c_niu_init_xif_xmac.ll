; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_init_xif_xmac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_init_xif_xmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32, %struct.niu_link_config }
%struct.niu_link_config = type { i64, i64 }

@NIU_FLAGS_XCVR_SERDES = common dso_local global i32 0, align 4
@MIF_CONFIG = common dso_local global i32 0, align 4
@MIF_CONFIG_ATCA_GE = common dso_local global i32 0, align 4
@XMAC_CONFIG = common dso_local global i32 0, align 4
@XMAC_CONFIG_SEL_POR_CLK_SRC = common dso_local global i32 0, align 4
@XMAC_CONFIG_TX_OUTPUT_EN = common dso_local global i32 0, align 4
@LOOPBACK_MAC = common dso_local global i64 0, align 8
@XMAC_CONFIG_LOOPBACK = common dso_local global i32 0, align 4
@NIU_FLAGS_10G = common dso_local global i32 0, align 4
@XMAC_CONFIG_LFS_DISABLE = common dso_local global i32 0, align 4
@NIU_FLAGS_FIBER = common dso_local global i32 0, align 4
@XMAC_CONFIG_1G_PCS_BYPASS = common dso_local global i32 0, align 4
@XMAC_CONFIG_10G_XPCS_BYPASS = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i64 0, align 8
@XMAC_CONFIG_SEL_CLK_25MHZ = common dso_local global i32 0, align 4
@XMAC_CONFIG_MODE_MASK = common dso_local global i32 0, align 4
@XMAC_CONFIG_MODE_XGMII = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i64 0, align 8
@XMAC_CONFIG_MODE_GMII = common dso_local global i32 0, align 4
@XMAC_CONFIG_MODE_MII = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.niu*)* @niu_init_xif_xmac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @niu_init_xif_xmac(%struct.niu* %0) #0 {
  %2 = alloca %struct.niu*, align 8
  %3 = alloca %struct.niu_link_config*, align 8
  %4 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %2, align 8
  %5 = load %struct.niu*, %struct.niu** %2, align 8
  %6 = getelementptr inbounds %struct.niu, %struct.niu* %5, i32 0, i32 1
  store %struct.niu_link_config* %6, %struct.niu_link_config** %3, align 8
  %7 = load %struct.niu*, %struct.niu** %2, align 8
  %8 = getelementptr inbounds %struct.niu, %struct.niu* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @NIU_FLAGS_XCVR_SERDES, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load i32, i32* @MIF_CONFIG, align 4
  %15 = call i32 @nr64(i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* @MIF_CONFIG_ATCA_GE, align 4
  %17 = load i32, i32* %4, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* @MIF_CONFIG, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @nw64(i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %13, %1
  %23 = load i32, i32* @XMAC_CONFIG, align 4
  %24 = call i32 @nr64_mac(i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* @XMAC_CONFIG_SEL_POR_CLK_SRC, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %4, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* @XMAC_CONFIG_TX_OUTPUT_EN, align 4
  %30 = load i32, i32* %4, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %4, align 4
  %32 = load %struct.niu_link_config*, %struct.niu_link_config** %3, align 8
  %33 = getelementptr inbounds %struct.niu_link_config, %struct.niu_link_config* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @LOOPBACK_MAC, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %22
  %38 = load i32, i32* @XMAC_CONFIG_SEL_POR_CLK_SRC, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %4, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* @XMAC_CONFIG_LOOPBACK, align 4
  %43 = load i32, i32* %4, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %4, align 4
  br label %50

45:                                               ; preds = %22
  %46 = load i32, i32* @XMAC_CONFIG_LOOPBACK, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %4, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %45, %37
  %51 = load %struct.niu*, %struct.niu** %2, align 8
  %52 = getelementptr inbounds %struct.niu, %struct.niu* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @NIU_FLAGS_10G, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load i32, i32* @XMAC_CONFIG_LFS_DISABLE, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %4, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %4, align 4
  br label %89

62:                                               ; preds = %50
  %63 = load i32, i32* @XMAC_CONFIG_LFS_DISABLE, align 4
  %64 = load i32, i32* %4, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %4, align 4
  %66 = load %struct.niu*, %struct.niu** %2, align 8
  %67 = getelementptr inbounds %struct.niu, %struct.niu* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @NIU_FLAGS_FIBER, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %83, label %72

72:                                               ; preds = %62
  %73 = load %struct.niu*, %struct.niu** %2, align 8
  %74 = getelementptr inbounds %struct.niu, %struct.niu* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @NIU_FLAGS_XCVR_SERDES, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %72
  %80 = load i32, i32* @XMAC_CONFIG_1G_PCS_BYPASS, align 4
  %81 = load i32, i32* %4, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %4, align 4
  br label %88

83:                                               ; preds = %72, %62
  %84 = load i32, i32* @XMAC_CONFIG_1G_PCS_BYPASS, align 4
  %85 = xor i32 %84, -1
  %86 = load i32, i32* %4, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %83, %79
  br label %89

89:                                               ; preds = %88, %57
  %90 = load i32, i32* @XMAC_CONFIG_10G_XPCS_BYPASS, align 4
  %91 = xor i32 %90, -1
  %92 = load i32, i32* %4, align 4
  %93 = and i32 %92, %91
  store i32 %93, i32* %4, align 4
  %94 = load %struct.niu_link_config*, %struct.niu_link_config** %3, align 8
  %95 = getelementptr inbounds %struct.niu_link_config, %struct.niu_link_config* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @SPEED_100, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %89
  %100 = load i32, i32* @XMAC_CONFIG_SEL_CLK_25MHZ, align 4
  %101 = load i32, i32* %4, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %4, align 4
  br label %108

103:                                              ; preds = %89
  %104 = load i32, i32* @XMAC_CONFIG_SEL_CLK_25MHZ, align 4
  %105 = xor i32 %104, -1
  %106 = load i32, i32* %4, align 4
  %107 = and i32 %106, %105
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %103, %99
  %109 = load i32, i32* @XMAC_CONFIG, align 4
  %110 = load i32, i32* %4, align 4
  %111 = call i32 @nw64_mac(i32 %109, i32 %110)
  %112 = load i32, i32* @XMAC_CONFIG, align 4
  %113 = call i32 @nr64_mac(i32 %112)
  store i32 %113, i32* %4, align 4
  %114 = load i32, i32* @XMAC_CONFIG_MODE_MASK, align 4
  %115 = xor i32 %114, -1
  %116 = load i32, i32* %4, align 4
  %117 = and i32 %116, %115
  store i32 %117, i32* %4, align 4
  %118 = load %struct.niu*, %struct.niu** %2, align 8
  %119 = getelementptr inbounds %struct.niu, %struct.niu* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @NIU_FLAGS_10G, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %108
  %125 = load i32, i32* @XMAC_CONFIG_MODE_XGMII, align 4
  %126 = load i32, i32* %4, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %4, align 4
  br label %143

128:                                              ; preds = %108
  %129 = load %struct.niu_link_config*, %struct.niu_link_config** %3, align 8
  %130 = getelementptr inbounds %struct.niu_link_config, %struct.niu_link_config* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @SPEED_1000, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %128
  %135 = load i32, i32* @XMAC_CONFIG_MODE_GMII, align 4
  %136 = load i32, i32* %4, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %4, align 4
  br label %142

138:                                              ; preds = %128
  %139 = load i32, i32* @XMAC_CONFIG_MODE_MII, align 4
  %140 = load i32, i32* %4, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %4, align 4
  br label %142

142:                                              ; preds = %138, %134
  br label %143

143:                                              ; preds = %142, %124
  %144 = load i32, i32* @XMAC_CONFIG, align 4
  %145 = load i32, i32* %4, align 4
  %146 = call i32 @nw64_mac(i32 %144, i32 %145)
  ret void
}

declare dso_local i32 @nr64(i32) #1

declare dso_local i32 @nw64(i32, i32) #1

declare dso_local i32 @nr64_mac(i32) #1

declare dso_local i32 @nw64_mac(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
