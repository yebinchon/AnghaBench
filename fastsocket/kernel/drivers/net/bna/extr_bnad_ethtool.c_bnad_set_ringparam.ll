; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad_ethtool.c_bnad_set_ringparam.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad_ethtool.c_bnad_set_ringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ringparam = type { i64, i64 }
%struct.bnad = type { i64, i64, i32, i32, i32, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@BNAD_MIN_Q_DEPTH = common dso_local global i64 0, align 8
@BNAD_MAX_RXQ_DEPTH = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@BNAD_MAX_TXQ_DEPTH = common dso_local global i64 0, align 8
@BNAD_CF_ALLMULTI = common dso_local global i32 0, align 4
@BNAD_CF_PROMISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_ringparam*)* @bnad_set_ringparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnad_set_ringparam(%struct.net_device* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_ringparam*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bnad*, align 8
  %10 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %5, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.bnad* @netdev_priv(%struct.net_device* %11)
  store %struct.bnad* %12, %struct.bnad** %9, align 8
  %13 = load %struct.bnad*, %struct.bnad** %9, align 8
  %14 = getelementptr inbounds %struct.bnad, %struct.bnad* %13, i32 0, i32 5
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %17 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.bnad*, %struct.bnad** %9, align 8
  %20 = getelementptr inbounds %struct.bnad, %struct.bnad* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %2
  %24 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %25 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.bnad*, %struct.bnad** %9, align 8
  %28 = getelementptr inbounds %struct.bnad, %struct.bnad* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load %struct.bnad*, %struct.bnad** %9, align 8
  %33 = getelementptr inbounds %struct.bnad, %struct.bnad* %32, i32 0, i32 5
  %34 = call i32 @mutex_unlock(i32* %33)
  store i32 0, i32* %3, align 4
  br label %243

35:                                               ; preds = %23, %2
  %36 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %37 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @BNAD_MIN_Q_DEPTH, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %53, label %41

41:                                               ; preds = %35
  %42 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %43 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @BNAD_MAX_RXQ_DEPTH, align 8
  %46 = icmp sgt i64 %44, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %49 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @BNA_POWER_OF_2(i64 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %47, %41, %35
  %54 = load %struct.bnad*, %struct.bnad** %9, align 8
  %55 = getelementptr inbounds %struct.bnad, %struct.bnad* %54, i32 0, i32 5
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %243

59:                                               ; preds = %47
  %60 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %61 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @BNAD_MIN_Q_DEPTH, align 8
  %64 = icmp slt i64 %62, %63
  br i1 %64, label %77, label %65

65:                                               ; preds = %59
  %66 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %67 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @BNAD_MAX_TXQ_DEPTH, align 8
  %70 = icmp sgt i64 %68, %69
  br i1 %70, label %77, label %71

71:                                               ; preds = %65
  %72 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %73 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @BNA_POWER_OF_2(i64 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %71, %65, %59
  %78 = load %struct.bnad*, %struct.bnad** %9, align 8
  %79 = getelementptr inbounds %struct.bnad, %struct.bnad* %78, i32 0, i32 5
  %80 = call i32 @mutex_unlock(i32* %79)
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %243

83:                                               ; preds = %71
  %84 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %85 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.bnad*, %struct.bnad** %9, align 8
  %88 = getelementptr inbounds %struct.bnad, %struct.bnad* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %86, %89
  br i1 %90, label %91, label %180

91:                                               ; preds = %83
  %92 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %93 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.bnad*, %struct.bnad** %9, align 8
  %96 = getelementptr inbounds %struct.bnad, %struct.bnad* %95, i32 0, i32 0
  store i64 %94, i64* %96, align 8
  %97 = load %struct.net_device*, %struct.net_device** %4, align 8
  %98 = call i32 @netif_running(%struct.net_device* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %91
  %101 = load %struct.bnad*, %struct.bnad** %9, align 8
  %102 = getelementptr inbounds %struct.bnad, %struct.bnad* %101, i32 0, i32 5
  %103 = call i32 @mutex_unlock(i32* %102)
  store i32 0, i32* %3, align 4
  br label %243

104:                                              ; preds = %91
  store i32 0, i32* %6, align 4
  br label %105

105:                                              ; preds = %137, %104
  %106 = load i32, i32* %6, align 4
  %107 = load %struct.bnad*, %struct.bnad** %9, align 8
  %108 = getelementptr inbounds %struct.bnad, %struct.bnad* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = icmp slt i32 %106, %109
  br i1 %110, label %111, label %140

111:                                              ; preds = %105
  %112 = load %struct.bnad*, %struct.bnad** %9, align 8
  %113 = getelementptr inbounds %struct.bnad, %struct.bnad* %112, i32 0, i32 8
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %111
  br label %137

122:                                              ; preds = %111
  %123 = load %struct.bnad*, %struct.bnad** %9, align 8
  %124 = load i32, i32* %6, align 4
  %125 = call i32 @bnad_destroy_rx(%struct.bnad* %123, i32 %124)
  %126 = load %struct.bnad*, %struct.bnad** %9, align 8
  %127 = load i32, i32* %6, align 4
  %128 = call i32 @bnad_setup_rx(%struct.bnad* %126, i32 %127)
  store i32 %128, i32* %7, align 4
  %129 = load i32, i32* %7, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %122
  %132 = load i32, i32* %8, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %136, label %134

134:                                              ; preds = %131
  %135 = load i32, i32* %7, align 4
  store i32 %135, i32* %8, align 4
  br label %136

136:                                              ; preds = %134, %131, %122
  br label %137

137:                                              ; preds = %136, %121
  %138 = load i32, i32* %6, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %6, align 4
  br label %105

140:                                              ; preds = %105
  %141 = load i32, i32* %8, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %179, label %143

143:                                              ; preds = %140
  %144 = load %struct.bnad*, %struct.bnad** %9, align 8
  %145 = getelementptr inbounds %struct.bnad, %struct.bnad* %144, i32 0, i32 8
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i64 0
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %179

151:                                              ; preds = %143
  %152 = load %struct.bnad*, %struct.bnad** %9, align 8
  %153 = call i32 @bnad_restore_vlans(%struct.bnad* %152, i32 0)
  %154 = load %struct.bnad*, %struct.bnad** %9, align 8
  %155 = call i32 @bnad_enable_default_bcast(%struct.bnad* %154)
  %156 = load %struct.bnad*, %struct.bnad** %9, align 8
  %157 = getelementptr inbounds %struct.bnad, %struct.bnad* %156, i32 0, i32 7
  %158 = load i64, i64* %10, align 8
  %159 = call i32 @spin_lock_irqsave(i32* %157, i64 %158)
  %160 = load %struct.bnad*, %struct.bnad** %9, align 8
  %161 = load %struct.net_device*, %struct.net_device** %4, align 8
  %162 = getelementptr inbounds %struct.net_device, %struct.net_device* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @bnad_mac_addr_set_locked(%struct.bnad* %160, i32 %163)
  %165 = load %struct.bnad*, %struct.bnad** %9, align 8
  %166 = getelementptr inbounds %struct.bnad, %struct.bnad* %165, i32 0, i32 7
  %167 = load i64, i64* %10, align 8
  %168 = call i32 @spin_unlock_irqrestore(i32* %166, i64 %167)
  %169 = load i32, i32* @BNAD_CF_ALLMULTI, align 4
  %170 = load i32, i32* @BNAD_CF_PROMISC, align 4
  %171 = or i32 %169, %170
  %172 = xor i32 %171, -1
  %173 = load %struct.bnad*, %struct.bnad** %9, align 8
  %174 = getelementptr inbounds %struct.bnad, %struct.bnad* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = and i32 %175, %172
  store i32 %176, i32* %174, align 4
  %177 = load %struct.net_device*, %struct.net_device** %4, align 8
  %178 = call i32 @bnad_set_rx_mode(%struct.net_device* %177)
  br label %179

179:                                              ; preds = %151, %143, %140
  br label %180

180:                                              ; preds = %179, %83
  %181 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %182 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.bnad*, %struct.bnad** %9, align 8
  %185 = getelementptr inbounds %struct.bnad, %struct.bnad* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %183, %186
  br i1 %187, label %188, label %238

188:                                              ; preds = %180
  %189 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %190 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.bnad*, %struct.bnad** %9, align 8
  %193 = getelementptr inbounds %struct.bnad, %struct.bnad* %192, i32 0, i32 1
  store i64 %191, i64* %193, align 8
  %194 = load %struct.net_device*, %struct.net_device** %4, align 8
  %195 = call i32 @netif_running(%struct.net_device* %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %201, label %197

197:                                              ; preds = %188
  %198 = load %struct.bnad*, %struct.bnad** %9, align 8
  %199 = getelementptr inbounds %struct.bnad, %struct.bnad* %198, i32 0, i32 5
  %200 = call i32 @mutex_unlock(i32* %199)
  store i32 0, i32* %3, align 4
  br label %243

201:                                              ; preds = %188
  store i32 0, i32* %6, align 4
  br label %202

202:                                              ; preds = %234, %201
  %203 = load i32, i32* %6, align 4
  %204 = load %struct.bnad*, %struct.bnad** %9, align 8
  %205 = getelementptr inbounds %struct.bnad, %struct.bnad* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 8
  %207 = icmp slt i32 %203, %206
  br i1 %207, label %208, label %237

208:                                              ; preds = %202
  %209 = load %struct.bnad*, %struct.bnad** %9, align 8
  %210 = getelementptr inbounds %struct.bnad, %struct.bnad* %209, i32 0, i32 6
  %211 = load %struct.TYPE_4__*, %struct.TYPE_4__** %210, align 8
  %212 = load i32, i32* %6, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %219, label %218

218:                                              ; preds = %208
  br label %234

219:                                              ; preds = %208
  %220 = load %struct.bnad*, %struct.bnad** %9, align 8
  %221 = load i32, i32* %6, align 4
  %222 = call i32 @bnad_destroy_tx(%struct.bnad* %220, i32 %221)
  %223 = load %struct.bnad*, %struct.bnad** %9, align 8
  %224 = load i32, i32* %6, align 4
  %225 = call i32 @bnad_setup_tx(%struct.bnad* %223, i32 %224)
  store i32 %225, i32* %7, align 4
  %226 = load i32, i32* %7, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %233

228:                                              ; preds = %219
  %229 = load i32, i32* %8, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %233, label %231

231:                                              ; preds = %228
  %232 = load i32, i32* %7, align 4
  store i32 %232, i32* %8, align 4
  br label %233

233:                                              ; preds = %231, %228, %219
  br label %234

234:                                              ; preds = %233, %218
  %235 = load i32, i32* %6, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %6, align 4
  br label %202

237:                                              ; preds = %202
  br label %238

238:                                              ; preds = %237, %180
  %239 = load %struct.bnad*, %struct.bnad** %9, align 8
  %240 = getelementptr inbounds %struct.bnad, %struct.bnad* %239, i32 0, i32 5
  %241 = call i32 @mutex_unlock(i32* %240)
  %242 = load i32, i32* %8, align 4
  store i32 %242, i32* %3, align 4
  br label %243

243:                                              ; preds = %238, %197, %100, %77, %53, %31
  %244 = load i32, i32* %3, align 4
  ret i32 %244
}

declare dso_local %struct.bnad* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @BNA_POWER_OF_2(i64) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @bnad_destroy_rx(%struct.bnad*, i32) #1

declare dso_local i32 @bnad_setup_rx(%struct.bnad*, i32) #1

declare dso_local i32 @bnad_restore_vlans(%struct.bnad*, i32) #1

declare dso_local i32 @bnad_enable_default_bcast(%struct.bnad*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bnad_mac_addr_set_locked(%struct.bnad*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @bnad_set_rx_mode(%struct.net_device*) #1

declare dso_local i32 @bnad_destroy_tx(%struct.bnad*, i32) #1

declare dso_local i32 @bnad_setup_tx(%struct.bnad*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
