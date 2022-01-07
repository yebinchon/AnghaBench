; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tlan.c_TLan_MiiReadReg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tlan.c_TLan_MiiReadReg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.TYPE_3__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@TLAN_NET_SIO = common dso_local global i32 0, align 4
@TLAN_DIO_ADR = common dso_local global i32 0, align 4
@TLAN_DIO_DATA = common dso_local global i32 0, align 4
@TLAN_NET_SIO_MINTEN = common dso_local global i32 0, align 4
@TLAN_NET_SIO_MTXEN = common dso_local global i32 0, align 4
@TLAN_NET_SIO_MCLK = common dso_local global i32 0, align 4
@TLAN_NET_SIO_MDATA = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32, i32*)* @TLan_MiiReadReg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TLan_MiiReadReg(%struct.net_device* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_3__*, align 8
  %16 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = call %struct.TYPE_3__* @netdev_priv(%struct.net_device* %17)
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %15, align 8
  store i64 0, i64* %16, align 8
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* @TLAN_NET_SIO, align 4
  %21 = load %struct.net_device*, %struct.net_device** %5, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @TLAN_DIO_ADR, align 4
  %25 = add nsw i32 %23, %24
  %26 = call i32 @outw(i32 %20, i32 %25)
  %27 = load %struct.net_device*, %struct.net_device** %5, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @TLAN_DIO_DATA, align 4
  %31 = add nsw i32 %29, %30
  %32 = load i32, i32* @TLAN_NET_SIO, align 4
  %33 = add nsw i32 %31, %32
  store i32 %33, i32* %10, align 4
  %34 = call i32 (...) @in_irq()
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %16, align 8
  %40 = call i32 @spin_lock_irqsave(i32* %38, i64 %39)
  br label %41

41:                                               ; preds = %36, %4
  %42 = load %struct.net_device*, %struct.net_device** %5, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @TLan_MiiSync(i32 %44)
  %46 = load i32, i32* @TLAN_NET_SIO_MINTEN, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @TLan_GetBit(i32 %46, i32 %47)
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %41
  %52 = load i32, i32* @TLAN_NET_SIO_MINTEN, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @TLan_ClearBit(i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %51, %41
  %56 = load %struct.net_device*, %struct.net_device** %5, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @TLan_MiiSendData(i32 %58, i32 1, i32 2)
  %60 = load %struct.net_device*, %struct.net_device** %5, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @TLan_MiiSendData(i32 %62, i32 2, i32 2)
  %64 = load %struct.net_device*, %struct.net_device** %5, align 8
  %65 = getelementptr inbounds %struct.net_device, %struct.net_device* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @TLan_MiiSendData(i32 %66, i32 %67, i32 5)
  %69 = load %struct.net_device*, %struct.net_device** %5, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @TLan_MiiSendData(i32 %71, i32 %72, i32 5)
  %74 = load i32, i32* @TLAN_NET_SIO_MTXEN, align 4
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @TLan_ClearBit(i32 %74, i32 %75)
  %77 = load i32, i32* @TLAN_NET_SIO_MCLK, align 4
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @TLan_ClearBit(i32 %77, i32 %78)
  %80 = load i32, i32* @TLAN_NET_SIO_MCLK, align 4
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @TLan_SetBit(i32 %80, i32 %81)
  %83 = load i32, i32* @TLAN_NET_SIO_MCLK, align 4
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @TLan_ClearBit(i32 %83, i32 %84)
  %86 = load i32, i32* @TLAN_NET_SIO_MDATA, align 4
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @TLan_GetBit(i32 %86, i32 %87)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* @TLAN_NET_SIO_MCLK, align 4
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @TLan_SetBit(i32 %89, i32 %90)
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %110

94:                                               ; preds = %55
  store i32 0, i32* %12, align 4
  br label %95

95:                                               ; preds = %105, %94
  %96 = load i32, i32* %12, align 4
  %97 = icmp slt i32 %96, 16
  br i1 %97, label %98, label %108

98:                                               ; preds = %95
  %99 = load i32, i32* @TLAN_NET_SIO_MCLK, align 4
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @TLan_ClearBit(i32 %99, i32 %100)
  %102 = load i32, i32* @TLAN_NET_SIO_MCLK, align 4
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @TLan_SetBit(i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %98
  %106 = load i32, i32* %12, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %12, align 4
  br label %95

108:                                              ; preds = %95
  store i32 65535, i32* %11, align 4
  %109 = load i32, i32* @TRUE, align 4
  store i32 %109, i32* %13, align 4
  br label %134

110:                                              ; preds = %55
  store i32 0, i32* %11, align 4
  store i32 32768, i32* %12, align 4
  br label %111

111:                                              ; preds = %130, %110
  %112 = load i32, i32* %12, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %133

114:                                              ; preds = %111
  %115 = load i32, i32* @TLAN_NET_SIO_MCLK, align 4
  %116 = load i32, i32* %10, align 4
  %117 = call i32 @TLan_ClearBit(i32 %115, i32 %116)
  %118 = load i32, i32* @TLAN_NET_SIO_MDATA, align 4
  %119 = load i32, i32* %10, align 4
  %120 = call i32 @TLan_GetBit(i32 %118, i32 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %114
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* %11, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %11, align 4
  br label %126

126:                                              ; preds = %122, %114
  %127 = load i32, i32* @TLAN_NET_SIO_MCLK, align 4
  %128 = load i32, i32* %10, align 4
  %129 = call i32 @TLan_SetBit(i32 %127, i32 %128)
  br label %130

130:                                              ; preds = %126
  %131 = load i32, i32* %12, align 4
  %132 = ashr i32 %131, 1
  store i32 %132, i32* %12, align 4
  br label %111

133:                                              ; preds = %111
  br label %134

134:                                              ; preds = %133, %108
  %135 = load i32, i32* @TLAN_NET_SIO_MCLK, align 4
  %136 = load i32, i32* %10, align 4
  %137 = call i32 @TLan_ClearBit(i32 %135, i32 %136)
  %138 = load i32, i32* @TLAN_NET_SIO_MCLK, align 4
  %139 = load i32, i32* %10, align 4
  %140 = call i32 @TLan_SetBit(i32 %138, i32 %139)
  %141 = load i32, i32* %14, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %134
  %144 = load i32, i32* @TLAN_NET_SIO_MINTEN, align 4
  %145 = load i32, i32* %10, align 4
  %146 = call i32 @TLan_SetBit(i32 %144, i32 %145)
  br label %147

147:                                              ; preds = %143, %134
  %148 = load i32, i32* %11, align 4
  %149 = load i32*, i32** %8, align 8
  store i32 %148, i32* %149, align 4
  %150 = call i32 (...) @in_irq()
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %157, label %152

152:                                              ; preds = %147
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 0
  %155 = load i64, i64* %16, align 8
  %156 = call i32 @spin_unlock_irqrestore(i32* %154, i64 %155)
  br label %157

157:                                              ; preds = %152, %147
  %158 = load i32, i32* %13, align 4
  ret i32 %158
}

declare dso_local %struct.TYPE_3__* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @outw(i32, i32) #1

declare dso_local i32 @in_irq(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @TLan_MiiSync(i32) #1

declare dso_local i32 @TLan_GetBit(i32, i32) #1

declare dso_local i32 @TLan_ClearBit(i32, i32) #1

declare dso_local i32 @TLan_MiiSendData(i32, i32, i32) #1

declare dso_local i32 @TLan_SetBit(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
