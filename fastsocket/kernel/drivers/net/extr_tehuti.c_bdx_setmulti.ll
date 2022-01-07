; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tehuti.c_bdx_setmulti.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tehuti.c_bdx_setmulti.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i64, %struct.dev_mc_list* }
%struct.dev_mc_list = type { i32*, %struct.dev_mc_list* }
%struct.bdx_priv = type { i32 }

@GMAC_RX_FILTER_AM = common dso_local global i32 0, align 4
@GMAC_RX_FILTER_AB = common dso_local global i32 0, align 4
@GMAC_RX_FILTER_OSEN = common dso_local global i32 0, align 4
@ENTER = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@GMAC_RX_FILTER_PRM = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@MAC_MCST_HASH_NUM = common dso_local global i32 0, align 4
@regRX_MCST_HASH0 = common dso_local global i32 0, align 4
@MAC_MCST_NUM = common dso_local global i32 0, align 4
@regRX_MAC_MCST0 = common dso_local global i32 0, align 4
@regRX_MAC_MCST1 = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"only own mac %d\0A\00", align 1
@regGMAC_RXF_A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @bdx_setmulti to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bdx_setmulti(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.bdx_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dev_mc_list*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call %struct.bdx_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.bdx_priv* %11, %struct.bdx_priv** %3, align 8
  %12 = load i32, i32* @GMAC_RX_FILTER_AM, align 4
  %13 = load i32, i32* @GMAC_RX_FILTER_AB, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @GMAC_RX_FILTER_OSEN, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @ENTER, align 4
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @IFF_PROMISC, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load i32, i32* @GMAC_RX_FILTER_PRM, align 4
  %26 = load i32, i32* %4, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %4, align 4
  br label %150

28:                                               ; preds = %1
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @IFF_ALLMULTI, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %47, %35
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @MAC_MCST_HASH_NUM, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  %41 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %42 = load i32, i32* @regRX_MCST_HASH0, align 4
  %43 = load i32, i32* %5, align 4
  %44 = mul nsw i32 %43, 4
  %45 = add nsw i32 %42, %44
  %46 = call i32 @WRITE_REG(%struct.bdx_priv* %41, i32 %45, i32 -1)
  br label %47

47:                                               ; preds = %40
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %36

50:                                               ; preds = %36
  br label %149

51:                                               ; preds = %28
  %52 = load %struct.net_device*, %struct.net_device** %2, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %140

56:                                               ; preds = %51
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %68, %56
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @MAC_MCST_HASH_NUM, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %57
  %62 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %63 = load i32, i32* @regRX_MCST_HASH0, align 4
  %64 = load i32, i32* %5, align 4
  %65 = mul nsw i32 %64, 4
  %66 = add nsw i32 %63, %65
  %67 = call i32 @WRITE_REG(%struct.bdx_priv* %62, i32 %66, i32 0)
  br label %68

68:                                               ; preds = %61
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %57

71:                                               ; preds = %57
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %89, %71
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @MAC_MCST_NUM, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %92

76:                                               ; preds = %72
  %77 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %78 = load i32, i32* @regRX_MAC_MCST0, align 4
  %79 = load i32, i32* %5, align 4
  %80 = mul nsw i32 %79, 8
  %81 = add nsw i32 %78, %80
  %82 = call i32 @WRITE_REG(%struct.bdx_priv* %77, i32 %81, i32 0)
  %83 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %84 = load i32, i32* @regRX_MAC_MCST1, align 4
  %85 = load i32, i32* %5, align 4
  %86 = mul nsw i32 %85, 8
  %87 = add nsw i32 %84, %86
  %88 = call i32 @WRITE_REG(%struct.bdx_priv* %83, i32 %87, i32 0)
  br label %89

89:                                               ; preds = %76
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %5, align 4
  br label %72

92:                                               ; preds = %72
  %93 = load %struct.net_device*, %struct.net_device** %2, align 8
  %94 = getelementptr inbounds %struct.net_device, %struct.net_device* %93, i32 0, i32 2
  %95 = load %struct.dev_mc_list*, %struct.dev_mc_list** %94, align 8
  store %struct.dev_mc_list* %95, %struct.dev_mc_list** %7, align 8
  br label %96

96:                                               ; preds = %135, %92
  %97 = load %struct.dev_mc_list*, %struct.dev_mc_list** %7, align 8
  %98 = icmp ne %struct.dev_mc_list* %97, null
  br i1 %98, label %99, label %139

99:                                               ; preds = %96
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %100

100:                                              ; preds = %114, %99
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* @ETH_ALEN, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %117

104:                                              ; preds = %100
  %105 = load %struct.dev_mc_list*, %struct.dev_mc_list** %7, align 8
  %106 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %5, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %6, align 4
  %113 = xor i32 %112, %111
  store i32 %113, i32* %6, align 4
  br label %114

114:                                              ; preds = %104
  %115 = load i32, i32* %5, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %5, align 4
  br label %100

117:                                              ; preds = %100
  %118 = load i32, i32* @regRX_MCST_HASH0, align 4
  %119 = load i32, i32* %6, align 4
  %120 = ashr i32 %119, 5
  %121 = shl i32 %120, 2
  %122 = add nsw i32 %118, %121
  store i32 %122, i32* %8, align 4
  %123 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @READ_REG(%struct.bdx_priv* %123, i32 %124)
  store i32 %125, i32* %9, align 4
  %126 = load i32, i32* %6, align 4
  %127 = srem i32 %126, 32
  %128 = shl i32 1, %127
  %129 = load i32, i32* %9, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %9, align 4
  %131 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* %9, align 4
  %134 = call i32 @WRITE_REG(%struct.bdx_priv* %131, i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %117
  %136 = load %struct.dev_mc_list*, %struct.dev_mc_list** %7, align 8
  %137 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %136, i32 0, i32 1
  %138 = load %struct.dev_mc_list*, %struct.dev_mc_list** %137, align 8
  store %struct.dev_mc_list* %138, %struct.dev_mc_list** %7, align 8
  br label %96

139:                                              ; preds = %96
  br label %148

140:                                              ; preds = %51
  %141 = load %struct.net_device*, %struct.net_device** %2, align 8
  %142 = getelementptr inbounds %struct.net_device, %struct.net_device* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %143)
  %145 = load i32, i32* @GMAC_RX_FILTER_AB, align 4
  %146 = load i32, i32* %4, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %4, align 4
  br label %148

148:                                              ; preds = %140, %139
  br label %149

149:                                              ; preds = %148, %50
  br label %150

150:                                              ; preds = %149, %24
  %151 = load %struct.bdx_priv*, %struct.bdx_priv** %3, align 8
  %152 = load i32, i32* @regGMAC_RXF_A, align 4
  %153 = load i32, i32* %4, align 4
  %154 = call i32 @WRITE_REG(%struct.bdx_priv* %151, i32 %152, i32 %153)
  %155 = call i32 (...) @RET()
  ret void
}

declare dso_local %struct.bdx_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @WRITE_REG(%struct.bdx_priv*, i32, i32) #1

declare dso_local i32 @READ_REG(%struct.bdx_priv*, i32) #1

declare dso_local i32 @DBG(i8*, i64) #1

declare dso_local i32 @RET(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
