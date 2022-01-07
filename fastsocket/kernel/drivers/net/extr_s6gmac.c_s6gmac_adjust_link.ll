; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s6gmac.c_s6gmac_adjust_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s6gmac.c_s6gmac_adjust_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.s6gmac = type { i32, i32, i64, %struct.TYPE_2__, %struct.phy_device* }
%struct.TYPE_2__ = type { i32, i64, i32, i64 }
%struct.phy_device = type { i32, i64, i64 }

@S6_GMAC_MACCONF2 = common dso_local global i64 0, align 8
@S6_GMAC_MACCONF2_FULL = common dso_local global i32 0, align 4
@S6_GMAC_FIFOCONF5 = common dso_local global i64 0, align 8
@S6_GMAC_MACCONF2_IFMODE_MASK = common dso_local global i32 0, align 4
@S6_GMAC_MACCONF2_IFMODE = common dso_local global i32 0, align 4
@S6_GMAC_FIFOCONF5_CFGBYTM = common dso_local global i32 0, align 4
@S6_GMAC_MACCONF2_IFMODE_BYTE = common dso_local global i32 0, align 4
@S6_GMAC_MACCONF2_IFMODE_NIBBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @s6gmac_adjust_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s6gmac_adjust_link(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.s6gmac*, align 8
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.s6gmac* @netdev_priv(%struct.net_device* %8)
  store %struct.s6gmac* %9, %struct.s6gmac** %3, align 8
  %10 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %11 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %10, i32 0, i32 4
  %12 = load %struct.phy_device*, %struct.phy_device** %11, align 8
  store %struct.phy_device* %12, %struct.phy_device** %4, align 8
  %13 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %14 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %57

18:                                               ; preds = %1
  %19 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %20 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %18
  %24 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %25 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %29 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %27, %30
  br i1 %31, label %41, label %32

32:                                               ; preds = %23
  %33 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %34 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %38 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %36, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %32, %23, %18
  %42 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %43 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 3
  store i64 0, i64* %44, align 8
  %45 = load %struct.net_device*, %struct.net_device** %2, align 8
  %46 = call i32 @netif_tx_disable(%struct.net_device* %45)
  %47 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %48 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %41
  %52 = load %struct.net_device*, %struct.net_device** %2, align 8
  %53 = call i32 @netif_carrier_off(%struct.net_device* %52)
  %54 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %55 = call i32 @phy_print_status(%struct.phy_device* %54)
  br label %56

56:                                               ; preds = %51, %41
  br label %57

57:                                               ; preds = %56, %32, %1
  %58 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %59 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %192, label %63

63:                                               ; preds = %57
  %64 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %65 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %192

68:                                               ; preds = %63
  %69 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %70 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %74 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %72, %75
  br i1 %76, label %77, label %107

77:                                               ; preds = %68
  %78 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %79 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @S6_GMAC_MACCONF2, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @readl(i64 %82)
  store i32 %83, i32* %5, align 4
  %84 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %85 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %77
  %89 = load i32, i32* @S6_GMAC_MACCONF2_FULL, align 4
  %90 = shl i32 1, %89
  %91 = load i32, i32* %5, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %5, align 4
  br label %99

93:                                               ; preds = %77
  %94 = load i32, i32* @S6_GMAC_MACCONF2_FULL, align 4
  %95 = shl i32 1, %94
  %96 = xor i32 %95, -1
  %97 = load i32, i32* %5, align 4
  %98 = and i32 %97, %96
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %93, %88
  %100 = load i32, i32* %5, align 4
  %101 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %102 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @S6_GMAC_MACCONF2, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i32 @writel(i32 %100, i64 %105)
  br label %107

107:                                              ; preds = %99, %68
  %108 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %109 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %113 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp eq i32 %114, 1000
  %116 = zext i1 %115 to i32
  %117 = icmp ne i32 %111, %116
  br i1 %117, label %118, label %177

118:                                              ; preds = %107
  %119 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %120 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @S6_GMAC_FIFOCONF5, align 8
  %123 = add nsw i64 %121, %122
  %124 = call i32 @readl(i64 %123)
  store i32 %124, i32* %6, align 4
  %125 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %126 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @S6_GMAC_MACCONF2, align 8
  %129 = add nsw i64 %127, %128
  %130 = call i32 @readl(i64 %129)
  store i32 %130, i32* %7, align 4
  %131 = load i32, i32* @S6_GMAC_MACCONF2_IFMODE_MASK, align 4
  %132 = load i32, i32* @S6_GMAC_MACCONF2_IFMODE, align 4
  %133 = shl i32 %131, %132
  %134 = xor i32 %133, -1
  %135 = load i32, i32* %7, align 4
  %136 = and i32 %135, %134
  store i32 %136, i32* %7, align 4
  %137 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %138 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp eq i32 %139, 1000
  br i1 %140, label %141, label %151

141:                                              ; preds = %118
  %142 = load i32, i32* @S6_GMAC_FIFOCONF5_CFGBYTM, align 4
  %143 = shl i32 1, %142
  %144 = load i32, i32* %6, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %6, align 4
  %146 = load i32, i32* @S6_GMAC_MACCONF2_IFMODE_BYTE, align 4
  %147 = load i32, i32* @S6_GMAC_MACCONF2_IFMODE, align 4
  %148 = shl i32 %146, %147
  %149 = load i32, i32* %7, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %7, align 4
  br label %162

151:                                              ; preds = %118
  %152 = load i32, i32* @S6_GMAC_FIFOCONF5_CFGBYTM, align 4
  %153 = shl i32 1, %152
  %154 = xor i32 %153, -1
  %155 = load i32, i32* %6, align 4
  %156 = and i32 %155, %154
  store i32 %156, i32* %6, align 4
  %157 = load i32, i32* @S6_GMAC_MACCONF2_IFMODE_NIBBLE, align 4
  %158 = load i32, i32* @S6_GMAC_MACCONF2_IFMODE, align 4
  %159 = shl i32 %157, %158
  %160 = load i32, i32* %7, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %7, align 4
  br label %162

162:                                              ; preds = %151, %141
  %163 = load i32, i32* %6, align 4
  %164 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %165 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @S6_GMAC_FIFOCONF5, align 8
  %168 = add nsw i64 %166, %167
  %169 = call i32 @writel(i32 %163, i64 %168)
  %170 = load i32, i32* %7, align 4
  %171 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %172 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @S6_GMAC_MACCONF2, align 8
  %175 = add nsw i64 %173, %174
  %176 = call i32 @writel(i32 %170, i64 %175)
  br label %177

177:                                              ; preds = %162, %107
  %178 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %179 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %182 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @s6dmac_fifo_full(i32 %180, i32 %183)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %189, label %186

186:                                              ; preds = %177
  %187 = load %struct.net_device*, %struct.net_device** %2, align 8
  %188 = call i32 @netif_wake_queue(%struct.net_device* %187)
  br label %189

189:                                              ; preds = %186, %177
  %190 = load %struct.net_device*, %struct.net_device** %2, align 8
  %191 = call i32 @s6gmac_linkisup(%struct.net_device* %190, i32 1)
  br label %192

192:                                              ; preds = %189, %63, %57
  ret void
}

declare dso_local %struct.s6gmac* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_tx_disable(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @phy_print_status(%struct.phy_device*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @s6dmac_fifo_full(i32, i32) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @s6gmac_linkisup(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
