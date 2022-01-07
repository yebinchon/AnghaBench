; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sh_eth.c_sh_eth_dev_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sh_eth.c_sh_eth_dev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sh_eth_private = type { i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32 (%struct.net_device*)*, i32, i64, i64, i64 }

@RPADIR = common dso_local global i32 0, align 4
@EESIPR = common dso_local global i32 0, align 4
@EDMR_EL = common dso_local global i32 0, align 4
@EDMR = common dso_local global i32 0, align 4
@FDR = common dso_local global i32 0, align 4
@TFTR = common dso_local global i32 0, align 4
@RMCR = common dso_local global i32 0, align 4
@DESC_I_RINT8 = common dso_local global i32 0, align 4
@DESC_I_RINT5 = common dso_local global i32 0, align 4
@DESC_I_TINT2 = common dso_local global i32 0, align 4
@TRSCER = common dso_local global i32 0, align 4
@BCULR = common dso_local global i32 0, align 4
@FCFTR = common dso_local global i32 0, align 4
@TRIMD = common dso_local global i32 0, align 4
@RFLR_VALUE = common dso_local global i32 0, align 4
@RFLR = common dso_local global i32 0, align 4
@EESR = common dso_local global i32 0, align 4
@ECMR = common dso_local global i32 0, align 4
@ECMR_DM = common dso_local global i32 0, align 4
@ECMR_ZPF = common dso_local global i32 0, align 4
@ECMR_TE = common dso_local global i32 0, align 4
@ECMR_RE = common dso_local global i32 0, align 4
@ECSR = common dso_local global i32 0, align 4
@ECSIPR = common dso_local global i32 0, align 4
@APR_AP = common dso_local global i32 0, align 4
@APR = common dso_local global i32 0, align 4
@MPR_MP = common dso_local global i32 0, align 4
@MPR = common dso_local global i32 0, align 4
@TPAUSER_UNLIMITED = common dso_local global i32 0, align 4
@TPAUSER = common dso_local global i32 0, align 4
@EDRRR_R = common dso_local global i32 0, align 4
@EDRRR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @sh_eth_dev_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_eth_dev_init(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sh_eth_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  store i32 0, i32* %3, align 4
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.sh_eth_private* @netdev_priv(%struct.net_device* %9)
  store %struct.sh_eth_private* %10, %struct.sh_eth_private** %4, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = call i32 @sh_eth_reset(%struct.net_device* %14)
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = call i32 @sh_eth_ring_format(%struct.net_device* %16)
  %18 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %19 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 14
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %1
  %25 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %26 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @RPADIR, align 4
  %32 = add nsw i32 %30, %31
  %33 = call i32 @ctrl_outl(i32 %29, i32 %32)
  br label %34

34:                                               ; preds = %24, %1
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @EESIPR, align 4
  %37 = add nsw i32 %35, %36
  %38 = call i32 @ctrl_outl(i32 0, i32 %37)
  %39 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %40 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 13
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %34
  %46 = load i32, i32* @EDMR_EL, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @EDMR, align 4
  %49 = add nsw i32 %47, %48
  %50 = call i32 @ctrl_outl(i32 %46, i32 %49)
  br label %56

51:                                               ; preds = %34
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @EDMR, align 4
  %54 = add nsw i32 %52, %53
  %55 = call i32 @ctrl_outl(i32 0, i32 %54)
  br label %56

56:                                               ; preds = %51, %45
  %57 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %58 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %57, i32 0, i32 2
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @FDR, align 4
  %64 = add nsw i32 %62, %63
  %65 = call i32 @ctrl_outl(i32 %61, i32 %64)
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @TFTR, align 4
  %68 = add nsw i32 %66, %67
  %69 = call i32 @ctrl_outl(i32 0, i32 %68)
  %70 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %71 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %70, i32 0, i32 2
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @RMCR, align 4
  %77 = add nsw i32 %75, %76
  %78 = call i32 @ctrl_outl(i32 %74, i32 %77)
  %79 = load i32, i32* @DESC_I_RINT8, align 4
  %80 = load i32, i32* @DESC_I_RINT5, align 4
  %81 = or i32 %79, %80
  %82 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %83 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  store i32 %81, i32* %6, align 4
  %84 = load i32, i32* @DESC_I_TINT2, align 4
  %85 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %86 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  store i32 %84, i32* %7, align 4
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %7, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @TRSCER, align 4
  %92 = add nsw i32 %90, %91
  %93 = call i32 @ctrl_outl(i32 %89, i32 %92)
  %94 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %95 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %94, i32 0, i32 2
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 12
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %56
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* @BCULR, align 4
  %103 = add nsw i32 %101, %102
  %104 = call i32 @ctrl_outl(i32 2048, i32 %103)
  br label %105

105:                                              ; preds = %100, %56
  %106 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %107 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %106, i32 0, i32 2
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* @FCFTR, align 4
  %113 = add nsw i32 %111, %112
  %114 = call i32 @ctrl_outl(i32 %110, i32 %113)
  %115 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %116 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %115, i32 0, i32 2
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 11
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %105
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* @TRIMD, align 4
  %124 = add nsw i32 %122, %123
  %125 = call i32 @ctrl_outl(i32 0, i32 %124)
  br label %126

126:                                              ; preds = %121, %105
  %127 = load i32, i32* @RFLR_VALUE, align 4
  %128 = load i32, i32* %5, align 4
  %129 = load i32, i32* @RFLR, align 4
  %130 = add nsw i32 %128, %129
  %131 = call i32 @ctrl_outl(i32 %127, i32 %130)
  %132 = load i32, i32* %5, align 4
  %133 = load i32, i32* @EESR, align 4
  %134 = add nsw i32 %132, %133
  %135 = call i32 @ctrl_inl(i32 %134)
  %136 = load i32, i32* %5, align 4
  %137 = load i32, i32* @EESR, align 4
  %138 = add nsw i32 %136, %137
  %139 = call i32 @ctrl_outl(i32 %135, i32 %138)
  %140 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %141 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %140, i32 0, i32 2
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* %5, align 4
  %146 = load i32, i32* @EESIPR, align 4
  %147 = add nsw i32 %145, %146
  %148 = call i32 @ctrl_outl(i32 %144, i32 %147)
  %149 = load i32, i32* %5, align 4
  %150 = load i32, i32* @ECMR, align 4
  %151 = add nsw i32 %149, %150
  %152 = call i32 @ctrl_inl(i32 %151)
  %153 = load i32, i32* @ECMR_DM, align 4
  %154 = and i32 %152, %153
  %155 = load i32, i32* @ECMR_ZPF, align 4
  %156 = or i32 %154, %155
  %157 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %158 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %157, i32 0, i32 3
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %126
  %162 = load i32, i32* @ECMR_DM, align 4
  br label %164

163:                                              ; preds = %126
  br label %164

164:                                              ; preds = %163, %161
  %165 = phi i32 [ %162, %161 ], [ 0, %163 ]
  %166 = or i32 %156, %165
  %167 = load i32, i32* @ECMR_TE, align 4
  %168 = or i32 %166, %167
  %169 = load i32, i32* @ECMR_RE, align 4
  %170 = or i32 %168, %169
  store i32 %170, i32* %8, align 4
  %171 = load i32, i32* %8, align 4
  %172 = load i32, i32* %5, align 4
  %173 = load i32, i32* @ECMR, align 4
  %174 = add nsw i32 %172, %173
  %175 = call i32 @ctrl_outl(i32 %171, i32 %174)
  %176 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %177 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %176, i32 0, i32 2
  %178 = load %struct.TYPE_2__*, %struct.TYPE_2__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 10
  %180 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %179, align 8
  %181 = icmp ne i32 (%struct.net_device*)* %180, null
  br i1 %181, label %182, label %190

182:                                              ; preds = %164
  %183 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %184 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %183, i32 0, i32 2
  %185 = load %struct.TYPE_2__*, %struct.TYPE_2__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 10
  %187 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %186, align 8
  %188 = load %struct.net_device*, %struct.net_device** %2, align 8
  %189 = call i32 %187(%struct.net_device* %188)
  br label %190

190:                                              ; preds = %182, %164
  %191 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %192 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %191, i32 0, i32 2
  %193 = load %struct.TYPE_2__*, %struct.TYPE_2__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 5
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* %5, align 4
  %197 = load i32, i32* @ECSR, align 4
  %198 = add nsw i32 %196, %197
  %199 = call i32 @ctrl_outl(i32 %195, i32 %198)
  %200 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %201 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %200, i32 0, i32 2
  %202 = load %struct.TYPE_2__*, %struct.TYPE_2__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 6
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* %5, align 4
  %206 = load i32, i32* @ECSIPR, align 4
  %207 = add nsw i32 %205, %206
  %208 = call i32 @ctrl_outl(i32 %204, i32 %207)
  %209 = load %struct.net_device*, %struct.net_device** %2, align 8
  %210 = call i32 @update_mac_address(%struct.net_device* %209)
  %211 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %212 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %211, i32 0, i32 2
  %213 = load %struct.TYPE_2__*, %struct.TYPE_2__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %213, i32 0, i32 9
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %223

217:                                              ; preds = %190
  %218 = load i32, i32* @APR_AP, align 4
  %219 = load i32, i32* %5, align 4
  %220 = load i32, i32* @APR, align 4
  %221 = add nsw i32 %219, %220
  %222 = call i32 @ctrl_outl(i32 %218, i32 %221)
  br label %223

223:                                              ; preds = %217, %190
  %224 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %225 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %224, i32 0, i32 2
  %226 = load %struct.TYPE_2__*, %struct.TYPE_2__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %226, i32 0, i32 8
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %236

230:                                              ; preds = %223
  %231 = load i32, i32* @MPR_MP, align 4
  %232 = load i32, i32* %5, align 4
  %233 = load i32, i32* @MPR, align 4
  %234 = add nsw i32 %232, %233
  %235 = call i32 @ctrl_outl(i32 %231, i32 %234)
  br label %236

236:                                              ; preds = %230, %223
  %237 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %238 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %237, i32 0, i32 2
  %239 = load %struct.TYPE_2__*, %struct.TYPE_2__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %239, i32 0, i32 7
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %249

243:                                              ; preds = %236
  %244 = load i32, i32* @TPAUSER_UNLIMITED, align 4
  %245 = load i32, i32* %5, align 4
  %246 = load i32, i32* @TPAUSER, align 4
  %247 = add nsw i32 %245, %246
  %248 = call i32 @ctrl_outl(i32 %244, i32 %247)
  br label %249

249:                                              ; preds = %243, %236
  %250 = load i32, i32* @EDRRR_R, align 4
  %251 = load i32, i32* %5, align 4
  %252 = load i32, i32* @EDRRR, align 4
  %253 = add nsw i32 %251, %252
  %254 = call i32 @ctrl_outl(i32 %250, i32 %253)
  %255 = load %struct.net_device*, %struct.net_device** %2, align 8
  %256 = call i32 @netif_start_queue(%struct.net_device* %255)
  %257 = load i32, i32* %3, align 4
  ret i32 %257
}

declare dso_local %struct.sh_eth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @sh_eth_reset(%struct.net_device*) #1

declare dso_local i32 @sh_eth_ring_format(%struct.net_device*) #1

declare dso_local i32 @ctrl_outl(i32, i32) #1

declare dso_local i32 @ctrl_inl(i32) #1

declare dso_local i32 @update_mac_address(%struct.net_device*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
