; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt73usb.c_rt73usb_config_shared_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt73usb.c_rt73usb_config_shared_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.rt2x00lib_crypto = type { i64, i32, i32, i32, i32, i32 }
%struct.ieee80211_key_conf = type { i32, i32 }
%struct.hw_key_entry = type { i32, i32, i32 }
%struct.rt2x00_field32 = type { i32, i32 }

@SET_KEY = common dso_local global i64 0, align 8
@SEC_CSR0 = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@SEC_CSR1 = common dso_local global i32 0, align 4
@SEC_CSR5 = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_GENERATE_IV = common dso_local global i32 0, align 4
@DISABLE_KEY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*, %struct.rt2x00lib_crypto*, %struct.ieee80211_key_conf*)* @rt73usb_config_shared_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt73usb_config_shared_key(%struct.rt2x00_dev* %0, %struct.rt2x00lib_crypto* %1, %struct.ieee80211_key_conf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rt2x00_dev*, align 8
  %6 = alloca %struct.rt2x00lib_crypto*, align 8
  %7 = alloca %struct.ieee80211_key_conf*, align 8
  %8 = alloca %struct.hw_key_entry, align 4
  %9 = alloca %struct.rt2x00_field32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %5, align 8
  store %struct.rt2x00lib_crypto* %1, %struct.rt2x00lib_crypto** %6, align 8
  store %struct.ieee80211_key_conf* %2, %struct.ieee80211_key_conf** %7, align 8
  %12 = load %struct.rt2x00lib_crypto*, %struct.rt2x00lib_crypto** %6, align 8
  %13 = getelementptr inbounds %struct.rt2x00lib_crypto, %struct.rt2x00lib_crypto* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SET_KEY, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %132

17:                                               ; preds = %3
  %18 = load %struct.rt2x00lib_crypto*, %struct.rt2x00lib_crypto** %6, align 8
  %19 = getelementptr inbounds %struct.rt2x00lib_crypto, %struct.rt2x00lib_crypto* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = shl i32 15, %20
  store i32 %21, i32* %10, align 4
  %22 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %23 = load i32, i32* @SEC_CSR0, align 4
  %24 = call i32 @rt2x00usb_register_read(%struct.rt2x00_dev* %22, i32 %23, i32* %11)
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %11, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %17
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @ENOSPC, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %166

37:                                               ; preds = %30, %17
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @ffz(i32 %41)
  br label %44

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %43, %40
  %45 = phi i32 [ %42, %40 ], [ 0, %43 ]
  %46 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %47 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, %45
  store i32 %49, i32* %47, align 4
  %50 = getelementptr inbounds %struct.hw_key_entry, %struct.hw_key_entry* %8, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.rt2x00lib_crypto*, %struct.rt2x00lib_crypto** %6, align 8
  %53 = getelementptr inbounds %struct.rt2x00lib_crypto, %struct.rt2x00lib_crypto* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @memcpy(i32 %51, i32 %54, i32 4)
  %56 = getelementptr inbounds %struct.hw_key_entry, %struct.hw_key_entry* %8, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.rt2x00lib_crypto*, %struct.rt2x00lib_crypto** %6, align 8
  %59 = getelementptr inbounds %struct.rt2x00lib_crypto, %struct.rt2x00lib_crypto* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @memcpy(i32 %57, i32 %60, i32 4)
  %62 = getelementptr inbounds %struct.hw_key_entry, %struct.hw_key_entry* %8, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.rt2x00lib_crypto*, %struct.rt2x00lib_crypto** %6, align 8
  %65 = getelementptr inbounds %struct.rt2x00lib_crypto, %struct.rt2x00lib_crypto* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @memcpy(i32 %63, i32 %66, i32 4)
  %68 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %69 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @SHARED_KEY_ENTRY(i32 %70)
  store i32 %71, i32* %11, align 4
  %72 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @rt2x00usb_register_multiwrite(%struct.rt2x00_dev* %72, i32 %73, %struct.hw_key_entry* %8, i32 12)
  %75 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %76 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp slt i32 %77, 8
  br i1 %78, label %79, label %102

79:                                               ; preds = %44
  %80 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %81 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = mul nsw i32 3, %82
  %84 = getelementptr inbounds %struct.rt2x00_field32, %struct.rt2x00_field32* %9, i32 0, i32 0
  store i32 %83, i32* %84, align 4
  %85 = getelementptr inbounds %struct.rt2x00_field32, %struct.rt2x00_field32* %9, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = shl i32 7, %86
  %88 = getelementptr inbounds %struct.rt2x00_field32, %struct.rt2x00_field32* %9, i32 0, i32 1
  store i32 %87, i32* %88, align 4
  %89 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %90 = load i32, i32* @SEC_CSR1, align 4
  %91 = call i32 @rt2x00usb_register_read(%struct.rt2x00_dev* %89, i32 %90, i32* %11)
  %92 = load %struct.rt2x00lib_crypto*, %struct.rt2x00lib_crypto** %6, align 8
  %93 = getelementptr inbounds %struct.rt2x00lib_crypto, %struct.rt2x00lib_crypto* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = bitcast %struct.rt2x00_field32* %9 to i64*
  %96 = load i64, i64* %95, align 4
  %97 = call i32 @rt2x00_set_field32(i32* %11, i64 %96, i32 %94)
  %98 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %99 = load i32, i32* @SEC_CSR1, align 4
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @rt2x00usb_register_write(%struct.rt2x00_dev* %98, i32 %99, i32 %100)
  br label %126

102:                                              ; preds = %44
  %103 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %104 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = sub nsw i32 %105, 8
  %107 = mul nsw i32 3, %106
  %108 = getelementptr inbounds %struct.rt2x00_field32, %struct.rt2x00_field32* %9, i32 0, i32 0
  store i32 %107, i32* %108, align 4
  %109 = getelementptr inbounds %struct.rt2x00_field32, %struct.rt2x00_field32* %9, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = shl i32 7, %110
  %112 = getelementptr inbounds %struct.rt2x00_field32, %struct.rt2x00_field32* %9, i32 0, i32 1
  store i32 %111, i32* %112, align 4
  %113 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %114 = load i32, i32* @SEC_CSR5, align 4
  %115 = call i32 @rt2x00usb_register_read(%struct.rt2x00_dev* %113, i32 %114, i32* %11)
  %116 = load %struct.rt2x00lib_crypto*, %struct.rt2x00lib_crypto** %6, align 8
  %117 = getelementptr inbounds %struct.rt2x00lib_crypto, %struct.rt2x00lib_crypto* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = bitcast %struct.rt2x00_field32* %9 to i64*
  %120 = load i64, i64* %119, align 4
  %121 = call i32 @rt2x00_set_field32(i32* %11, i64 %120, i32 %118)
  %122 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %123 = load i32, i32* @SEC_CSR5, align 4
  %124 = load i32, i32* %11, align 4
  %125 = call i32 @rt2x00usb_register_write(%struct.rt2x00_dev* %122, i32 %123, i32 %124)
  br label %126

126:                                              ; preds = %102, %79
  %127 = load i32, i32* @IEEE80211_KEY_FLAG_GENERATE_IV, align 4
  %128 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %129 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %126, %3
  %133 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %7, align 8
  %134 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = shl i32 1, %135
  store i32 %136, i32* %10, align 4
  %137 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %138 = load i32, i32* @SEC_CSR0, align 4
  %139 = call i32 @rt2x00usb_register_read(%struct.rt2x00_dev* %137, i32 %138, i32* %11)
  %140 = load %struct.rt2x00lib_crypto*, %struct.rt2x00lib_crypto** %6, align 8
  %141 = getelementptr inbounds %struct.rt2x00lib_crypto, %struct.rt2x00lib_crypto* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @SET_KEY, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %132
  %146 = load i32, i32* %10, align 4
  %147 = load i32, i32* %11, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %11, align 4
  br label %161

149:                                              ; preds = %132
  %150 = load %struct.rt2x00lib_crypto*, %struct.rt2x00lib_crypto** %6, align 8
  %151 = getelementptr inbounds %struct.rt2x00lib_crypto, %struct.rt2x00lib_crypto* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @DISABLE_KEY, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %160

155:                                              ; preds = %149
  %156 = load i32, i32* %10, align 4
  %157 = xor i32 %156, -1
  %158 = load i32, i32* %11, align 4
  %159 = and i32 %158, %157
  store i32 %159, i32* %11, align 4
  br label %160

160:                                              ; preds = %155, %149
  br label %161

161:                                              ; preds = %160, %145
  %162 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %163 = load i32, i32* @SEC_CSR0, align 4
  %164 = load i32, i32* %11, align 4
  %165 = call i32 @rt2x00usb_register_write(%struct.rt2x00_dev* %162, i32 %163, i32 %164)
  store i32 0, i32* %4, align 4
  br label %166

166:                                              ; preds = %161, %34
  %167 = load i32, i32* %4, align 4
  ret i32 %167
}

declare dso_local i32 @rt2x00usb_register_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @ffz(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @SHARED_KEY_ENTRY(i32) #1

declare dso_local i32 @rt2x00usb_register_multiwrite(%struct.rt2x00_dev*, i32, %struct.hw_key_entry*, i32) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i64, i32) #1

declare dso_local i32 @rt2x00usb_register_write(%struct.rt2x00_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
