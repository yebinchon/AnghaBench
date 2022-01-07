; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_amd8111e.c_amd8111e_set_multicast_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_amd8111e.c_amd8111e_set_multicast_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, %struct.dev_mc_list* }
%struct.dev_mc_list = type { i32, %struct.dev_mc_list* }
%struct.amd8111e_priv = type { i64, %struct.dev_mc_list*, i32 }

@IFF_PROMISC = common dso_local global i32 0, align 4
@VAL2 = common dso_local global i32 0, align 4
@PROM = common dso_local global i32 0, align 4
@CMD2 = common dso_local global i64 0, align 8
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@MAX_FILTER_SIZE = common dso_local global i32 0, align 4
@OPTION_MULTICAST_ENABLE = common dso_local global i32 0, align 4
@LADRF = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @amd8111e_set_multicast_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amd8111e_set_multicast_list(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.dev_mc_list*, align 8
  %4 = alloca %struct.amd8111e_priv*, align 8
  %5 = alloca [2 x i32], align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.amd8111e_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.amd8111e_priv* %9, %struct.amd8111e_priv** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @IFF_PROMISC, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %1
  %17 = load i32, i32* @VAL2, align 4
  %18 = load i32, i32* @PROM, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %21 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CMD2, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel(i32 %19, i64 %24)
  br label %164

26:                                               ; preds = %1
  %27 = load i32, i32* @PROM, align 4
  %28 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %29 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @CMD2, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @writel(i32 %27, i64 %32)
  br label %34

34:                                               ; preds = %26
  %35 = load %struct.net_device*, %struct.net_device** %2, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @IFF_ALLMULTI, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %34
  %42 = load %struct.net_device*, %struct.net_device** %2, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @MAX_FILTER_SIZE, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %68

47:                                               ; preds = %41, %34
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 -1, i32* %48, align 4
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 -1, i32* %49, align 4
  %50 = load %struct.net_device*, %struct.net_device** %2, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 2
  %52 = load %struct.dev_mc_list*, %struct.dev_mc_list** %51, align 8
  %53 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %54 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %53, i32 0, i32 1
  store %struct.dev_mc_list* %52, %struct.dev_mc_list** %54, align 8
  %55 = load i32, i32* @OPTION_MULTICAST_ENABLE, align 4
  %56 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %57 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %63 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @LADRF, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @amd8111e_writeq(i32 %61, i64 %66)
  br label %164

68:                                               ; preds = %41
  %69 = load %struct.net_device*, %struct.net_device** %2, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %99

73:                                               ; preds = %68
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 0, i32* %74, align 4
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 0, i32* %75, align 4
  %76 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %77 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %76, i32 0, i32 1
  store %struct.dev_mc_list* null, %struct.dev_mc_list** %77, align 8
  %78 = load i32, i32* @OPTION_MULTICAST_ENABLE, align 4
  %79 = xor i32 %78, -1
  %80 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %81 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = and i32 %82, %79
  store i32 %83, i32* %81, align 8
  %84 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %87 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @LADRF, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @amd8111e_writeq(i32 %85, i64 %90)
  %92 = load i32, i32* @PROM, align 4
  %93 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %94 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @CMD2, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @writel(i32 %92, i64 %97)
  br label %164

99:                                               ; preds = %68
  %100 = load i32, i32* @OPTION_MULTICAST_ENABLE, align 4
  %101 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %102 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 8
  %105 = load %struct.net_device*, %struct.net_device** %2, align 8
  %106 = getelementptr inbounds %struct.net_device, %struct.net_device* %105, i32 0, i32 2
  %107 = load %struct.dev_mc_list*, %struct.dev_mc_list** %106, align 8
  %108 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %109 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %108, i32 0, i32 1
  store %struct.dev_mc_list* %107, %struct.dev_mc_list** %109, align 8
  %110 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 0, i32* %110, align 4
  %111 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 0, i32* %111, align 4
  store i32 0, i32* %6, align 4
  %112 = load %struct.net_device*, %struct.net_device** %2, align 8
  %113 = getelementptr inbounds %struct.net_device, %struct.net_device* %112, i32 0, i32 2
  %114 = load %struct.dev_mc_list*, %struct.dev_mc_list** %113, align 8
  store %struct.dev_mc_list* %114, %struct.dev_mc_list** %3, align 8
  br label %115

115:                                              ; preds = %143, %99
  %116 = load %struct.dev_mc_list*, %struct.dev_mc_list** %3, align 8
  %117 = icmp ne %struct.dev_mc_list* %116, null
  br i1 %117, label %118, label %124

118:                                              ; preds = %115
  %119 = load i32, i32* %6, align 4
  %120 = load %struct.net_device*, %struct.net_device** %2, align 8
  %121 = getelementptr inbounds %struct.net_device, %struct.net_device* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp slt i32 %119, %122
  br label %124

124:                                              ; preds = %118, %115
  %125 = phi i1 [ false, %115 ], [ %123, %118 ]
  br i1 %125, label %126, label %149

126:                                              ; preds = %124
  %127 = load i32, i32* @ETH_ALEN, align 4
  %128 = load %struct.dev_mc_list*, %struct.dev_mc_list** %3, align 8
  %129 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @ether_crc_le(i32 %127, i32 %130)
  %132 = ashr i32 %131, 26
  %133 = and i32 %132, 63
  store i32 %133, i32* %7, align 4
  %134 = load i32, i32* %7, align 4
  %135 = and i32 %134, 31
  %136 = shl i32 1, %135
  %137 = load i32, i32* %7, align 4
  %138 = ashr i32 %137, 5
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = or i32 %141, %136
  store i32 %142, i32* %140, align 4
  br label %143

143:                                              ; preds = %126
  %144 = load i32, i32* %6, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %6, align 4
  %146 = load %struct.dev_mc_list*, %struct.dev_mc_list** %3, align 8
  %147 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %146, i32 0, i32 1
  %148 = load %struct.dev_mc_list*, %struct.dev_mc_list** %147, align 8
  store %struct.dev_mc_list* %148, %struct.dev_mc_list** %3, align 8
  br label %115

149:                                              ; preds = %124
  %150 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %153 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @LADRF, align 8
  %156 = add nsw i64 %154, %155
  %157 = call i32 @amd8111e_writeq(i32 %151, i64 %156)
  %158 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %4, align 8
  %159 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @CMD2, align 8
  %162 = add nsw i64 %160, %161
  %163 = call i32 @readl(i64 %162)
  br label %164

164:                                              ; preds = %149, %73, %47, %16
  ret void
}

declare dso_local %struct.amd8111e_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @amd8111e_writeq(i32, i64) #1

declare dso_local i32 @ether_crc_le(i32, i32) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
