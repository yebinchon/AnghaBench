; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cpmac.c_cpmac_hw_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cpmac.c_cpmac_hw_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32* }
%struct.cpmac_priv = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.plat_cpmac_data* }
%struct.plat_cpmac_data = type { i32 }

@CPMAC_MBP = common dso_local global i32 0, align 4
@MBP_RXSHORT = common dso_local global i32 0, align 4
@MBP_RXBCAST = common dso_local global i32 0, align 4
@MBP_RXMCAST = common dso_local global i32 0, align 4
@CPMAC_BUFFER_OFFSET = common dso_local global i32 0, align 4
@CPMAC_MAC_ADDR_MID = common dso_local global i32 0, align 4
@CPMAC_MAC_ADDR_HI = common dso_local global i32 0, align 4
@CPMAC_MAX_LENGTH = common dso_local global i32 0, align 4
@CPMAC_SKB_SIZE = common dso_local global i32 0, align 4
@CPMAC_UNICAST_CLEAR = common dso_local global i32 0, align 4
@CPMAC_RX_INT_CLEAR = common dso_local global i32 0, align 4
@CPMAC_TX_INT_CLEAR = common dso_local global i32 0, align 4
@CPMAC_MAC_INT_CLEAR = common dso_local global i32 0, align 4
@CPMAC_UNICAST_ENABLE = common dso_local global i32 0, align 4
@CPMAC_RX_INT_ENABLE = common dso_local global i32 0, align 4
@CPMAC_TX_INT_ENABLE = common dso_local global i32 0, align 4
@CPMAC_MAC_INT_ENABLE = common dso_local global i32 0, align 4
@CPMAC_RX_CONTROL = common dso_local global i32 0, align 4
@CPMAC_TX_CONTROL = common dso_local global i32 0, align 4
@CPMAC_MAC_CONTROL = common dso_local global i32 0, align 4
@MAC_MII = common dso_local global i32 0, align 4
@MAC_FDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @cpmac_hw_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpmac_hw_start(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpmac_priv*, align 8
  %5 = alloca %struct.plat_cpmac_data*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.cpmac_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.cpmac_priv* %7, %struct.cpmac_priv** %4, align 8
  %8 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %9 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %8, i32 0, i32 2
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.plat_cpmac_data*, %struct.plat_cpmac_data** %12, align 8
  store %struct.plat_cpmac_data* %13, %struct.plat_cpmac_data** %5, align 8
  %14 = load %struct.plat_cpmac_data*, %struct.plat_cpmac_data** %5, align 8
  %15 = getelementptr inbounds %struct.plat_cpmac_data, %struct.plat_cpmac_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ar7_device_reset(i32 %16)
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %34, %1
  %19 = load i32, i32* %3, align 4
  %20 = icmp slt i32 %19, 8
  br i1 %20, label %21, label %37

21:                                               ; preds = %18
  %22 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %23 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @CPMAC_TX_PTR(i32 %25)
  %27 = call i32 @cpmac_write(i32 %24, i32 %26, i32 0)
  %28 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %29 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @CPMAC_RX_PTR(i32 %31)
  %33 = call i32 @cpmac_write(i32 %30, i32 %32, i32 0)
  br label %34

34:                                               ; preds = %21
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %18

37:                                               ; preds = %18
  %38 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %39 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @CPMAC_RX_PTR(i32 0)
  %42 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %43 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %42, i32 0, i32 1
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @cpmac_write(i32 %40, i32 %41, i32 %46)
  %48 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %49 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @CPMAC_MBP, align 4
  %52 = load i32, i32* @MBP_RXSHORT, align 4
  %53 = load i32, i32* @MBP_RXBCAST, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @MBP_RXMCAST, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @cpmac_write(i32 %50, i32 %51, i32 %56)
  %58 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %59 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @CPMAC_BUFFER_OFFSET, align 4
  %62 = call i32 @cpmac_write(i32 %60, i32 %61, i32 0)
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %78, %37
  %64 = load i32, i32* %3, align 4
  %65 = icmp slt i32 %64, 8
  br i1 %65, label %66, label %81

66:                                               ; preds = %63
  %67 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %68 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @CPMAC_MAC_ADDR_LO(i32 %70)
  %72 = load %struct.net_device*, %struct.net_device** %2, align 8
  %73 = getelementptr inbounds %struct.net_device, %struct.net_device* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 5
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @cpmac_write(i32 %69, i32 %71, i32 %76)
  br label %78

78:                                               ; preds = %66
  %79 = load i32, i32* %3, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %3, align 4
  br label %63

81:                                               ; preds = %63
  %82 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %83 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @CPMAC_MAC_ADDR_MID, align 4
  %86 = load %struct.net_device*, %struct.net_device** %2, align 8
  %87 = getelementptr inbounds %struct.net_device, %struct.net_device* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 4
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @cpmac_write(i32 %84, i32 %85, i32 %90)
  %92 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %93 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @CPMAC_MAC_ADDR_HI, align 4
  %96 = load %struct.net_device*, %struct.net_device** %2, align 8
  %97 = getelementptr inbounds %struct.net_device, %struct.net_device* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.net_device*, %struct.net_device** %2, align 8
  %102 = getelementptr inbounds %struct.net_device, %struct.net_device* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  %105 = load i32, i32* %104, align 4
  %106 = shl i32 %105, 8
  %107 = or i32 %100, %106
  %108 = load %struct.net_device*, %struct.net_device** %2, align 8
  %109 = getelementptr inbounds %struct.net_device, %struct.net_device* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 2
  %112 = load i32, i32* %111, align 4
  %113 = shl i32 %112, 16
  %114 = or i32 %107, %113
  %115 = load %struct.net_device*, %struct.net_device** %2, align 8
  %116 = getelementptr inbounds %struct.net_device, %struct.net_device* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 3
  %119 = load i32, i32* %118, align 4
  %120 = shl i32 %119, 24
  %121 = or i32 %114, %120
  %122 = call i32 @cpmac_write(i32 %94, i32 %95, i32 %121)
  %123 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %124 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @CPMAC_MAX_LENGTH, align 4
  %127 = load i32, i32* @CPMAC_SKB_SIZE, align 4
  %128 = call i32 @cpmac_write(i32 %125, i32 %126, i32 %127)
  %129 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %130 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @CPMAC_UNICAST_CLEAR, align 4
  %133 = call i32 @cpmac_write(i32 %131, i32 %132, i32 255)
  %134 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %135 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @CPMAC_RX_INT_CLEAR, align 4
  %138 = call i32 @cpmac_write(i32 %136, i32 %137, i32 255)
  %139 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %140 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @CPMAC_TX_INT_CLEAR, align 4
  %143 = call i32 @cpmac_write(i32 %141, i32 %142, i32 255)
  %144 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %145 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @CPMAC_MAC_INT_CLEAR, align 4
  %148 = call i32 @cpmac_write(i32 %146, i32 %147, i32 255)
  %149 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %150 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @CPMAC_UNICAST_ENABLE, align 4
  %153 = call i32 @cpmac_write(i32 %151, i32 %152, i32 1)
  %154 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %155 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @CPMAC_RX_INT_ENABLE, align 4
  %158 = call i32 @cpmac_write(i32 %156, i32 %157, i32 1)
  %159 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %160 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @CPMAC_TX_INT_ENABLE, align 4
  %163 = call i32 @cpmac_write(i32 %161, i32 %162, i32 255)
  %164 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %165 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @CPMAC_MAC_INT_ENABLE, align 4
  %168 = call i32 @cpmac_write(i32 %166, i32 %167, i32 3)
  %169 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %170 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @CPMAC_RX_CONTROL, align 4
  %173 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %174 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @CPMAC_RX_CONTROL, align 4
  %177 = call i32 @cpmac_read(i32 %175, i32 %176)
  %178 = or i32 %177, 1
  %179 = call i32 @cpmac_write(i32 %171, i32 %172, i32 %178)
  %180 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %181 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @CPMAC_TX_CONTROL, align 4
  %184 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %185 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @CPMAC_TX_CONTROL, align 4
  %188 = call i32 @cpmac_read(i32 %186, i32 %187)
  %189 = or i32 %188, 1
  %190 = call i32 @cpmac_write(i32 %182, i32 %183, i32 %189)
  %191 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %192 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @CPMAC_MAC_CONTROL, align 4
  %195 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %196 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @CPMAC_MAC_CONTROL, align 4
  %199 = call i32 @cpmac_read(i32 %197, i32 %198)
  %200 = load i32, i32* @MAC_MII, align 4
  %201 = or i32 %199, %200
  %202 = load i32, i32* @MAC_FDX, align 4
  %203 = or i32 %201, %202
  %204 = call i32 @cpmac_write(i32 %193, i32 %194, i32 %203)
  ret void
}

declare dso_local %struct.cpmac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ar7_device_reset(i32) #1

declare dso_local i32 @cpmac_write(i32, i32, i32) #1

declare dso_local i32 @CPMAC_TX_PTR(i32) #1

declare dso_local i32 @CPMAC_RX_PTR(i32) #1

declare dso_local i32 @CPMAC_MAC_ADDR_LO(i32) #1

declare dso_local i32 @cpmac_read(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
