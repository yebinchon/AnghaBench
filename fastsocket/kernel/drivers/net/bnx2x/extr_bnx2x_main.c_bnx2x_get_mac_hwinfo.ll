; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_get_mac_hwinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_get_mac_hwinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.bnx2x = type { %struct.TYPE_11__*, %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"warning: random MAC workaround active\0A\00", align 1
@func_mf_config = common dso_local global %struct.TYPE_10__* null, align 8
@FUNC_MF_CFG_UPPERMAC_DEFAULT = common dso_local global i64 0, align 8
@FUNC_MF_CFG_LOWERMAC_DEFAULT = common dso_local global i64 0, align 8
@dev_info = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [117 x i8] c"bad Ethernet MAC address configuration: %pM\0Achange it manually before bringing up the appropriate network interface\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*)* @bnx2x_get_mac_hwinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_get_mac_hwinfo(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %7 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %8 = call i32 @BP_ABS_FUNC(%struct.bnx2x* %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %10 = call i32 @BP_PORT(%struct.bnx2x* %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %12 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %11, i32 0, i32 0
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @ETH_ALEN, align 4
  %17 = call i32 @memset(i32 %15, i32 0, i32 %16)
  %18 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %19 = call i64 @BP_NOMCP(%struct.bnx2x* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = call i32 @BNX2X_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %24 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %23, i32 0, i32 0
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %26 = call i32 @eth_hw_addr_random(%struct.TYPE_11__* %25)
  br label %105

27:                                               ; preds = %1
  %28 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %29 = call i64 @IS_MF(%struct.bnx2x* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %72

31:                                               ; preds = %27
  %32 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** @func_mf_config, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @MF_CFG_RD(%struct.bnx2x* %32, i32 %38)
  store i64 %39, i64* %4, align 8
  %40 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** @func_mf_config, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @MF_CFG_RD(%struct.bnx2x* %40, i32 %46)
  store i64 %47, i64* %3, align 8
  %48 = load i64, i64* %4, align 8
  %49 = load i64, i64* @FUNC_MF_CFG_UPPERMAC_DEFAULT, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %31
  %52 = load i64, i64* %3, align 8
  %53 = load i64, i64* @FUNC_MF_CFG_LOWERMAC_DEFAULT, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %51
  %56 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %57 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %56, i32 0, i32 0
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i64, i64* %3, align 8
  %62 = load i64, i64* %4, align 8
  %63 = call i32 @bnx2x_set_mac_buf(i32 %60, i64 %61, i64 %62)
  br label %64

64:                                               ; preds = %55, %51, %31
  %65 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %66 = call i64 @CNIC_SUPPORT(%struct.bnx2x* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %70 = call i32 @bnx2x_get_cnic_mac_hwinfo(%struct.bnx2x* %69)
  br label %71

71:                                               ; preds = %68, %64
  br label %104

72:                                               ; preds = %27
  %73 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @dev_info, i32 0, i32 0), align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @SHMEM_RD(%struct.bnx2x* %73, i32 %79)
  store i64 %80, i64* %4, align 8
  %81 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @dev_info, i32 0, i32 0), align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @SHMEM_RD(%struct.bnx2x* %81, i32 %87)
  store i64 %88, i64* %3, align 8
  %89 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %90 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %89, i32 0, i32 0
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i64, i64* %3, align 8
  %95 = load i64, i64* %4, align 8
  %96 = call i32 @bnx2x_set_mac_buf(i32 %93, i64 %94, i64 %95)
  %97 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %98 = call i64 @CNIC_SUPPORT(%struct.bnx2x* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %72
  %101 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %102 = call i32 @bnx2x_get_cnic_mac_hwinfo(%struct.bnx2x* %101)
  br label %103

103:                                              ; preds = %100, %72
  br label %104

104:                                              ; preds = %103, %71
  br label %105

105:                                              ; preds = %104, %21
  %106 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %107 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %111 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %110, i32 0, i32 0
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @ETH_ALEN, align 4
  %116 = call i32 @memcpy(i32 %109, i32 %114, i32 %115)
  %117 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %118 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %117, i32 0, i32 0
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %123 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %122, i32 0, i32 0
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @ETH_ALEN, align 4
  %128 = call i32 @memcpy(i32 %121, i32 %126, i32 %127)
  %129 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %130 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %131 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %130, i32 0, i32 0
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @bnx2x_is_valid_ether_addr(%struct.bnx2x* %129, i32 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %148, label %137

137:                                              ; preds = %105
  %138 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %139 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %138, i32 0, i32 1
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  %142 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %143 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %142, i32 0, i32 0
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @dev_err(i32* %141, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.1, i64 0, i64 0), i32 %146)
  br label %148

148:                                              ; preds = %137, %105
  ret void
}

declare dso_local i32 @BP_ABS_FUNC(%struct.bnx2x*) #1

declare dso_local i32 @BP_PORT(%struct.bnx2x*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @BP_NOMCP(%struct.bnx2x*) #1

declare dso_local i32 @BNX2X_ERROR(i8*) #1

declare dso_local i32 @eth_hw_addr_random(%struct.TYPE_11__*) #1

declare dso_local i64 @IS_MF(%struct.bnx2x*) #1

declare dso_local i64 @MF_CFG_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_set_mac_buf(i32, i64, i64) #1

declare dso_local i64 @CNIC_SUPPORT(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_get_cnic_mac_hwinfo(%struct.bnx2x*) #1

declare dso_local i64 @SHMEM_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @bnx2x_is_valid_ether_addr(%struct.bnx2x*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
