; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cris/extr_eth_v10.c_set_multicast_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cris/extr_eth_v10.c_set_multicast_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, %struct.dev_mc_list* }
%struct.dev_mc_list = type { i8*, %struct.dev_mc_list* }
%struct.net_local = type { i32 }

@IFF_PROMISC = common dso_local global i32 0, align 4
@network_rec_config_shadow = common dso_local global i32 0, align 4
@R_NETWORK_REC_CONFIG = common dso_local global i32* null, align 8
@individual = common dso_local global i32 0, align 4
@receive = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@discard = common dso_local global i32 0, align 4
@R_NETWORK_GA_0 = common dso_local global i64* null, align 8
@R_NETWORK_GA_1 = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @set_multicast_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_multicast_list(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.net_local*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca %struct.dev_mc_list*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call %struct.net_local* @netdev_priv(%struct.net_device* %11)
  store %struct.net_local* %12, %struct.net_local** %3, align 8
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %4, align 4
  %16 = load %struct.net_local*, %struct.net_local** %3, align 8
  %17 = getelementptr inbounds %struct.net_local, %struct.net_local* %16, i32 0, i32 0
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IFF_PROMISC, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %1
  store i64 4294967295, i64* %5, align 8
  store i64 4294967295, i64* %6, align 8
  %26 = load i32, i32* @network_rec_config_shadow, align 4
  %27 = load i32*, i32** @R_NETWORK_REC_CONFIG, align 8
  %28 = load i32, i32* @individual, align 4
  %29 = load i32, i32* @receive, align 4
  %30 = call i32 @SETS(i32 %26, i32* %27, i32 %28, i32 %29)
  %31 = load i32, i32* @network_rec_config_shadow, align 4
  %32 = load i32*, i32** @R_NETWORK_REC_CONFIG, align 8
  store i32 %31, i32* %32, align 4
  br label %226

33:                                               ; preds = %1
  %34 = load %struct.net_device*, %struct.net_device** %2, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @IFF_ALLMULTI, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %33
  store i64 4294967295, i64* %5, align 8
  store i64 4294967295, i64* %6, align 8
  %41 = load i32, i32* @network_rec_config_shadow, align 4
  %42 = load i32*, i32** @R_NETWORK_REC_CONFIG, align 8
  %43 = load i32, i32* @individual, align 4
  %44 = load i32, i32* @discard, align 4
  %45 = call i32 @SETS(i32 %41, i32* %42, i32 %43, i32 %44)
  %46 = load i32, i32* @network_rec_config_shadow, align 4
  %47 = load i32*, i32** @R_NETWORK_REC_CONFIG, align 8
  store i32 %46, i32* %47, align 4
  br label %225

48:                                               ; preds = %33
  %49 = load i32, i32* %4, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %52 = load i32, i32* @network_rec_config_shadow, align 4
  %53 = load i32*, i32** @R_NETWORK_REC_CONFIG, align 8
  %54 = load i32, i32* @individual, align 4
  %55 = load i32, i32* @discard, align 4
  %56 = call i32 @SETS(i32 %52, i32* %53, i32 %54, i32 %55)
  %57 = load i32, i32* @network_rec_config_shadow, align 4
  %58 = load i32*, i32** @R_NETWORK_REC_CONFIG, align 8
  store i32 %57, i32* %58, align 4
  br label %224

59:                                               ; preds = %48
  %60 = load %struct.net_device*, %struct.net_device** %2, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 2
  %62 = load %struct.dev_mc_list*, %struct.dev_mc_list** %61, align 8
  store %struct.dev_mc_list* %62, %struct.dev_mc_list** %8, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %9, align 4
  br label %63

63:                                               ; preds = %213, %59
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %216

67:                                               ; preds = %63
  store i8 0, i8* %7, align 1
  %68 = load %struct.dev_mc_list*, %struct.dev_mc_list** %8, align 8
  %69 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  store i8* %70, i8** %10, align 8
  %71 = load i8*, i8** %10, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = and i32 %73, 63
  %75 = load i8, i8* %7, align 1
  %76 = sext i8 %75 to i32
  %77 = xor i32 %76, %74
  %78 = trunc i32 %77 to i8
  store i8 %78, i8* %7, align 1
  %79 = load i8*, i8** %10, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = ashr i32 %81, 6
  %83 = and i32 %82, 3
  %84 = load i8, i8* %7, align 1
  %85 = sext i8 %84 to i32
  %86 = xor i32 %85, %83
  %87 = trunc i32 %86 to i8
  store i8 %87, i8* %7, align 1
  %88 = load i8*, i8** %10, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %10, align 8
  %90 = load i8*, i8** %10, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = shl i32 %92, 2
  %94 = and i32 %93, 60
  %95 = load i8, i8* %7, align 1
  %96 = sext i8 %95 to i32
  %97 = xor i32 %96, %94
  %98 = trunc i32 %97 to i8
  store i8 %98, i8* %7, align 1
  %99 = load i8*, i8** %10, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = ashr i32 %101, 4
  %103 = and i32 %102, 15
  %104 = load i8, i8* %7, align 1
  %105 = sext i8 %104 to i32
  %106 = xor i32 %105, %103
  %107 = trunc i32 %106 to i8
  store i8 %107, i8* %7, align 1
  %108 = load i8*, i8** %10, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %10, align 8
  %110 = load i8*, i8** %10, align 8
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = shl i32 %112, 4
  %114 = and i32 %113, 48
  %115 = load i8, i8* %7, align 1
  %116 = sext i8 %115 to i32
  %117 = xor i32 %116, %114
  %118 = trunc i32 %117 to i8
  store i8 %118, i8* %7, align 1
  %119 = load i8*, i8** %10, align 8
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = ashr i32 %121, 2
  %123 = and i32 %122, 63
  %124 = load i8, i8* %7, align 1
  %125 = sext i8 %124 to i32
  %126 = xor i32 %125, %123
  %127 = trunc i32 %126 to i8
  store i8 %127, i8* %7, align 1
  %128 = load i8*, i8** %10, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %10, align 8
  %130 = load i8*, i8** %10, align 8
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = and i32 %132, 63
  %134 = load i8, i8* %7, align 1
  %135 = sext i8 %134 to i32
  %136 = xor i32 %135, %133
  %137 = trunc i32 %136 to i8
  store i8 %137, i8* %7, align 1
  %138 = load i8*, i8** %10, align 8
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = ashr i32 %140, 6
  %142 = and i32 %141, 3
  %143 = load i8, i8* %7, align 1
  %144 = sext i8 %143 to i32
  %145 = xor i32 %144, %142
  %146 = trunc i32 %145 to i8
  store i8 %146, i8* %7, align 1
  %147 = load i8*, i8** %10, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %10, align 8
  %149 = load i8*, i8** %10, align 8
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = shl i32 %151, 2
  %153 = and i32 %152, 60
  %154 = load i8, i8* %7, align 1
  %155 = sext i8 %154 to i32
  %156 = xor i32 %155, %153
  %157 = trunc i32 %156 to i8
  store i8 %157, i8* %7, align 1
  %158 = load i8*, i8** %10, align 8
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = ashr i32 %160, 4
  %162 = and i32 %161, 15
  %163 = load i8, i8* %7, align 1
  %164 = sext i8 %163 to i32
  %165 = xor i32 %164, %162
  %166 = trunc i32 %165 to i8
  store i8 %166, i8* %7, align 1
  %167 = load i8*, i8** %10, align 8
  %168 = getelementptr inbounds i8, i8* %167, i32 1
  store i8* %168, i8** %10, align 8
  %169 = load i8*, i8** %10, align 8
  %170 = load i8, i8* %169, align 1
  %171 = sext i8 %170 to i32
  %172 = shl i32 %171, 4
  %173 = and i32 %172, 48
  %174 = load i8, i8* %7, align 1
  %175 = sext i8 %174 to i32
  %176 = xor i32 %175, %173
  %177 = trunc i32 %176 to i8
  store i8 %177, i8* %7, align 1
  %178 = load i8*, i8** %10, align 8
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  %181 = ashr i32 %180, 2
  %182 = and i32 %181, 63
  %183 = load i8, i8* %7, align 1
  %184 = sext i8 %183 to i32
  %185 = xor i32 %184, %182
  %186 = trunc i32 %185 to i8
  store i8 %186, i8* %7, align 1
  %187 = load i8, i8* %7, align 1
  %188 = sext i8 %187 to i32
  %189 = and i32 %188, 63
  %190 = trunc i32 %189 to i8
  store i8 %190, i8* %7, align 1
  %191 = load i8, i8* %7, align 1
  %192 = sext i8 %191 to i32
  %193 = icmp sge i32 %192, 32
  br i1 %193, label %194, label %202

194:                                              ; preds = %67
  %195 = load i8, i8* %7, align 1
  %196 = sext i8 %195 to i32
  %197 = sub nsw i32 %196, 32
  %198 = shl i32 1, %197
  %199 = sext i32 %198 to i64
  %200 = load i64, i64* %6, align 8
  %201 = or i64 %200, %199
  store i64 %201, i64* %6, align 8
  br label %209

202:                                              ; preds = %67
  %203 = load i8, i8* %7, align 1
  %204 = sext i8 %203 to i32
  %205 = shl i32 1, %204
  %206 = sext i32 %205 to i64
  %207 = load i64, i64* %5, align 8
  %208 = or i64 %207, %206
  store i64 %208, i64* %5, align 8
  br label %209

209:                                              ; preds = %202, %194
  %210 = load %struct.dev_mc_list*, %struct.dev_mc_list** %8, align 8
  %211 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %210, i32 0, i32 1
  %212 = load %struct.dev_mc_list*, %struct.dev_mc_list** %211, align 8
  store %struct.dev_mc_list* %212, %struct.dev_mc_list** %8, align 8
  br label %213

213:                                              ; preds = %209
  %214 = load i32, i32* %9, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %9, align 4
  br label %63

216:                                              ; preds = %63
  %217 = load i32, i32* @network_rec_config_shadow, align 4
  %218 = load i32*, i32** @R_NETWORK_REC_CONFIG, align 8
  %219 = load i32, i32* @individual, align 4
  %220 = load i32, i32* @discard, align 4
  %221 = call i32 @SETS(i32 %217, i32* %218, i32 %219, i32 %220)
  %222 = load i32, i32* @network_rec_config_shadow, align 4
  %223 = load i32*, i32** @R_NETWORK_REC_CONFIG, align 8
  store i32 %222, i32* %223, align 4
  br label %224

224:                                              ; preds = %216, %51
  br label %225

225:                                              ; preds = %224, %40
  br label %226

226:                                              ; preds = %225, %25
  %227 = load i64, i64* %5, align 8
  %228 = load i64*, i64** @R_NETWORK_GA_0, align 8
  store i64 %227, i64* %228, align 8
  %229 = load i64, i64* %6, align 8
  %230 = load i64*, i64** @R_NETWORK_GA_1, align 8
  store i64 %229, i64* %230, align 8
  %231 = load %struct.net_local*, %struct.net_local** %3, align 8
  %232 = getelementptr inbounds %struct.net_local, %struct.net_local* %231, i32 0, i32 0
  %233 = call i32 @spin_unlock(i32* %232)
  ret void
}

declare dso_local %struct.net_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @SETS(i32, i32*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
