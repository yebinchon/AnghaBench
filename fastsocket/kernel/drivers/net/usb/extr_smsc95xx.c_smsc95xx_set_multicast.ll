; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_smsc95xx.c_smsc95xx_set_multicast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_smsc95xx.c_smsc95xx_set_multicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.usbnet = type { %struct.TYPE_2__*, i64* }
%struct.TYPE_2__ = type { i32, i64, %struct.dev_mc_list* }
%struct.dev_mc_list = type { i64, %struct.dev_mc_list*, i32 }
%struct.smsc95xx_priv = type { i32, i32 }

@IFF_PROMISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"promiscuous mode enabled\00", align 1
@MAC_CR_PRMS_ = common dso_local global i32 0, align 4
@MAC_CR_MCPAS_ = common dso_local global i32 0, align 4
@MAC_CR_HPFILT_ = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"receive all multicast enabled\00", align 1
@ETH_ALEN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"dmi_addrlen != 6\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"mc_count != dev->mc_count\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"HASHH=0x%08X, HASHL=0x%08X\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"receive own packets only\00", align 1
@HASHH = common dso_local global i32 0, align 4
@HASHL = common dso_local global i32 0, align 4
@MAC_CR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @smsc95xx_set_multicast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smsc95xx_set_multicast(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca %struct.smsc95xx_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.dev_mc_list*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = call %struct.usbnet* @netdev_priv(%struct.net_device* %12)
  store %struct.usbnet* %13, %struct.usbnet** %3, align 8
  %14 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %15 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %14, i32 0, i32 1
  %16 = load i64*, i64** %15, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.smsc95xx_priv*
  store %struct.smsc95xx_priv* %19, %struct.smsc95xx_priv** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %20 = load %struct.smsc95xx_priv*, %struct.smsc95xx_priv** %4, align 8
  %21 = getelementptr inbounds %struct.smsc95xx_priv, %struct.smsc95xx_priv* %20, i32 0, i32 1
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %25 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @IFF_PROMISC, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %53

32:                                               ; preds = %1
  %33 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %34 = call i64 @netif_msg_drv(%struct.usbnet* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %38 = call i32 (%struct.usbnet*, i8*, ...) @devdbg(%struct.usbnet* %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %32
  %40 = load i32, i32* @MAC_CR_PRMS_, align 4
  %41 = load %struct.smsc95xx_priv*, %struct.smsc95xx_priv** %4, align 8
  %42 = getelementptr inbounds %struct.smsc95xx_priv, %struct.smsc95xx_priv* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load i32, i32* @MAC_CR_MCPAS_, align 4
  %46 = load i32, i32* @MAC_CR_HPFILT_, align 4
  %47 = or i32 %45, %46
  %48 = xor i32 %47, -1
  %49 = load %struct.smsc95xx_priv*, %struct.smsc95xx_priv** %4, align 8
  %50 = getelementptr inbounds %struct.smsc95xx_priv, %struct.smsc95xx_priv* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 4
  br label %189

53:                                               ; preds = %1
  %54 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %55 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @IFF_ALLMULTI, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %83

62:                                               ; preds = %53
  %63 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %64 = call i64 @netif_msg_drv(%struct.usbnet* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %68 = call i32 (%struct.usbnet*, i8*, ...) @devdbg(%struct.usbnet* %67, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %62
  %70 = load i32, i32* @MAC_CR_MCPAS_, align 4
  %71 = load %struct.smsc95xx_priv*, %struct.smsc95xx_priv** %4, align 8
  %72 = getelementptr inbounds %struct.smsc95xx_priv, %struct.smsc95xx_priv* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  %75 = load i32, i32* @MAC_CR_PRMS_, align 4
  %76 = load i32, i32* @MAC_CR_HPFILT_, align 4
  %77 = or i32 %75, %76
  %78 = xor i32 %77, -1
  %79 = load %struct.smsc95xx_priv*, %struct.smsc95xx_priv** %4, align 8
  %80 = getelementptr inbounds %struct.smsc95xx_priv, %struct.smsc95xx_priv* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, %78
  store i32 %82, i32* %80, align 4
  br label %188

83:                                               ; preds = %53
  %84 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %85 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp sgt i64 %88, 0
  br i1 %89, label %90, label %169

90:                                               ; preds = %83
  %91 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %92 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %91, i32 0, i32 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 2
  %95 = load %struct.dev_mc_list*, %struct.dev_mc_list** %94, align 8
  store %struct.dev_mc_list* %95, %struct.dev_mc_list** %8, align 8
  store i32 0, i32* %9, align 4
  %96 = load i32, i32* @MAC_CR_HPFILT_, align 4
  %97 = load %struct.smsc95xx_priv*, %struct.smsc95xx_priv** %4, align 8
  %98 = getelementptr inbounds %struct.smsc95xx_priv, %struct.smsc95xx_priv* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 4
  %101 = load i32, i32* @MAC_CR_PRMS_, align 4
  %102 = load i32, i32* @MAC_CR_MCPAS_, align 4
  %103 = or i32 %101, %102
  %104 = xor i32 %103, -1
  %105 = load %struct.smsc95xx_priv*, %struct.smsc95xx_priv** %4, align 8
  %106 = getelementptr inbounds %struct.smsc95xx_priv, %struct.smsc95xx_priv* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = and i32 %107, %104
  store i32 %108, i32* %106, align 4
  br label %109

109:                                              ; preds = %143, %90
  %110 = load %struct.dev_mc_list*, %struct.dev_mc_list** %8, align 8
  %111 = icmp ne %struct.dev_mc_list* %110, null
  br i1 %111, label %112, label %147

112:                                              ; preds = %109
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %9, align 4
  %115 = load %struct.dev_mc_list*, %struct.dev_mc_list** %8, align 8
  %116 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @ETH_ALEN, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %140

120:                                              ; preds = %112
  %121 = load %struct.dev_mc_list*, %struct.dev_mc_list** %8, align 8
  %122 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @smsc95xx_hash(i32 %123)
  store i32 %124, i32* %10, align 4
  %125 = load i32, i32* %10, align 4
  %126 = and i32 %125, 31
  %127 = shl i32 1, %126
  store i32 %127, i32* %11, align 4
  %128 = load i32, i32* %10, align 4
  %129 = and i32 %128, 32
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %120
  %132 = load i32, i32* %11, align 4
  %133 = load i32, i32* %5, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %5, align 4
  br label %139

135:                                              ; preds = %120
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* %6, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %6, align 4
  br label %139

139:                                              ; preds = %135, %131
  br label %143

140:                                              ; preds = %112
  %141 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %142 = call i32 @devwarn(%struct.usbnet* %141, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %143

143:                                              ; preds = %140, %139
  %144 = load %struct.dev_mc_list*, %struct.dev_mc_list** %8, align 8
  %145 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %144, i32 0, i32 1
  %146 = load %struct.dev_mc_list*, %struct.dev_mc_list** %145, align 8
  store %struct.dev_mc_list* %146, %struct.dev_mc_list** %8, align 8
  br label %109

147:                                              ; preds = %109
  %148 = load i32, i32* %9, align 4
  %149 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %150 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %149, i32 0, i32 0
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = trunc i64 %153 to i32
  %155 = icmp ne i32 %148, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %147
  %157 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %158 = call i32 @devwarn(%struct.usbnet* %157, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %159

159:                                              ; preds = %156, %147
  %160 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %161 = call i64 @netif_msg_drv(%struct.usbnet* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %159
  %164 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %165 = load i32, i32* %5, align 4
  %166 = load i32, i32* %6, align 4
  %167 = call i32 (%struct.usbnet*, i8*, ...) @devdbg(%struct.usbnet* %164, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %165, i32 %166)
  br label %168

168:                                              ; preds = %163, %159
  br label %187

169:                                              ; preds = %83
  %170 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %171 = call i64 @netif_msg_drv(%struct.usbnet* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %169
  %174 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %175 = call i32 (%struct.usbnet*, i8*, ...) @devdbg(%struct.usbnet* %174, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %176

176:                                              ; preds = %173, %169
  %177 = load i32, i32* @MAC_CR_PRMS_, align 4
  %178 = load i32, i32* @MAC_CR_MCPAS_, align 4
  %179 = or i32 %177, %178
  %180 = load i32, i32* @MAC_CR_HPFILT_, align 4
  %181 = or i32 %179, %180
  %182 = xor i32 %181, -1
  %183 = load %struct.smsc95xx_priv*, %struct.smsc95xx_priv** %4, align 8
  %184 = getelementptr inbounds %struct.smsc95xx_priv, %struct.smsc95xx_priv* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = and i32 %185, %182
  store i32 %186, i32* %184, align 4
  br label %187

187:                                              ; preds = %176, %168
  br label %188

188:                                              ; preds = %187, %69
  br label %189

189:                                              ; preds = %188, %39
  %190 = load %struct.smsc95xx_priv*, %struct.smsc95xx_priv** %4, align 8
  %191 = getelementptr inbounds %struct.smsc95xx_priv, %struct.smsc95xx_priv* %190, i32 0, i32 1
  %192 = load i64, i64* %7, align 8
  %193 = call i32 @spin_unlock_irqrestore(i32* %191, i64 %192)
  %194 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %195 = load i32, i32* @HASHH, align 4
  %196 = call i32 @smsc95xx_write_reg_async(%struct.usbnet* %194, i32 %195, i32* %5)
  %197 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %198 = load i32, i32* @HASHL, align 4
  %199 = call i32 @smsc95xx_write_reg_async(%struct.usbnet* %197, i32 %198, i32* %6)
  %200 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %201 = load i32, i32* @MAC_CR, align 4
  %202 = load %struct.smsc95xx_priv*, %struct.smsc95xx_priv** %4, align 8
  %203 = getelementptr inbounds %struct.smsc95xx_priv, %struct.smsc95xx_priv* %202, i32 0, i32 0
  %204 = call i32 @smsc95xx_write_reg_async(%struct.usbnet* %200, i32 %201, i32* %203)
  ret void
}

declare dso_local %struct.usbnet* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @netif_msg_drv(%struct.usbnet*) #1

declare dso_local i32 @devdbg(%struct.usbnet*, i8*, ...) #1

declare dso_local i32 @smsc95xx_hash(i32) #1

declare dso_local i32 @devwarn(%struct.usbnet*, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @smsc95xx_write_reg_async(%struct.usbnet*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
