; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ioctl.c_prism2_ioctl_giwencode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ioctl.c_prism2_ioctl_giwencode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i32, i32 }
%struct.hostap_interface = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i64 (%struct.net_device*, i32, i32*, i32, i32)* }
%struct.TYPE_5__ = type { i32, %struct.lib80211_crypt_data** }
%struct.lib80211_crypt_data = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (i8*, i32, i32*, i32)*, i32 }

@IW_ENCODE_INDEX = common dso_local global i32 0, align 4
@WEP_KEYS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IW_ENCODE_DISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"WEP\00", align 1
@IW_ENCODE_ENABLED = common dso_local global i32 0, align 4
@WEP_KEY_LEN = common dso_local global i32 0, align 4
@HFA384X_RID_CNFWEPFLAGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"CNFWEPFLAGS reading failed\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@HFA384X_WEPFLAGS_PRIVACYINVOKED = common dso_local global i32 0, align 4
@HFA384X_WEPFLAGS_EXCLUDEUNENCRYPTED = common dso_local global i32 0, align 4
@IW_ENCODE_RESTRICTED = common dso_local global i32 0, align 4
@IW_ENCODE_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_point*, i8*)* @prism2_ioctl_giwencode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism2_ioctl_giwencode(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_point*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.hostap_interface*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.lib80211_crypt_data*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_point* %2, %struct.iw_point** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = call %struct.hostap_interface* @netdev_priv(%struct.net_device* %16)
  store %struct.hostap_interface* %17, %struct.hostap_interface** %10, align 8
  %18 = load %struct.hostap_interface*, %struct.hostap_interface** %10, align 8
  %19 = getelementptr inbounds %struct.hostap_interface, %struct.hostap_interface* %18, i32 0, i32 0
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %11, align 8
  %21 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %22 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @IW_ENCODE_INDEX, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp slt i32 %26, 1
  br i1 %27, label %31, label %28

28:                                               ; preds = %4
  %29 = load i32, i32* %12, align 4
  %30 = icmp sgt i32 %29, 4
  br i1 %30, label %31, label %36

31:                                               ; preds = %28, %4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %12, align 4
  br label %39

36:                                               ; preds = %28
  %37 = load i32, i32* %12, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %12, align 4
  br label %39

39:                                               ; preds = %36, %31
  %40 = load i32, i32* %12, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* @WEP_KEYS, align 4
  %45 = icmp sge i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42, %39
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %163

49:                                               ; preds = %42
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %52, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %53, i64 %55
  %57 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %56, align 8
  store %struct.lib80211_crypt_data* %57, %struct.lib80211_crypt_data** %15, align 8
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %58, 1
  %60 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %61 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %15, align 8
  %63 = icmp eq %struct.lib80211_crypt_data* %62, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %49
  %65 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %15, align 8
  %66 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %65, i32 0, i32 1
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = icmp eq %struct.TYPE_6__* %67, null
  br i1 %68, label %69, label %77

69:                                               ; preds = %64, %49
  %70 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %71 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %70, i32 0, i32 1
  store i32 0, i32* %71, align 4
  %72 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %73 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %74 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  store i32 0, i32* %5, align 4
  br label %163

77:                                               ; preds = %64
  %78 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %15, align 8
  %79 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %78, i32 0, i32 1
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i64 @strcmp(i32 %82, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %77
  %86 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %87 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %86, i32 0, i32 1
  store i32 0, i32* %87, align 4
  %88 = load i32, i32* @IW_ENCODE_ENABLED, align 4
  %89 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %90 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 4
  store i32 0, i32* %5, align 4
  br label %163

93:                                               ; preds = %77
  %94 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %15, align 8
  %95 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %94, i32 0, i32 1
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32 (i8*, i32, i32*, i32)*, i32 (i8*, i32, i32*, i32)** %97, align 8
  %99 = load i8*, i8** %9, align 8
  %100 = load i32, i32* @WEP_KEY_LEN, align 4
  %101 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %15, align 8
  %102 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 %98(i8* %99, i32 %100, i32* null, i32 %103)
  store i32 %104, i32* %13, align 4
  %105 = load i32, i32* %13, align 4
  %106 = icmp sge i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %93
  %108 = load i32, i32* %13, align 4
  br label %110

109:                                              ; preds = %93
  br label %110

110:                                              ; preds = %109, %107
  %111 = phi i32 [ %108, %107 ], [ 0, %109 ]
  %112 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %113 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i64 (%struct.net_device*, i32, i32*, i32, i32)*, i64 (%struct.net_device*, i32, i32*, i32, i32)** %117, align 8
  %119 = load %struct.net_device*, %struct.net_device** %6, align 8
  %120 = load i32, i32* @HFA384X_RID_CNFWEPFLAGS, align 4
  %121 = call i64 %118(%struct.net_device* %119, i32 %120, i32* %14, i32 2, i32 1)
  %122 = icmp slt i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %110
  %124 = call i32 @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %125 = load i32, i32* @EOPNOTSUPP, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %5, align 4
  br label %163

127:                                              ; preds = %110
  %128 = call i32 @le16_to_cpus(i32* %14)
  %129 = load i32, i32* %14, align 4
  %130 = load i32, i32* @HFA384X_WEPFLAGS_PRIVACYINVOKED, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %127
  %134 = load i32, i32* @IW_ENCODE_ENABLED, align 4
  %135 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %136 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %137, %134
  store i32 %138, i32* %136, align 4
  br label %145

139:                                              ; preds = %127
  %140 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %141 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %142 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = or i32 %143, %140
  store i32 %144, i32* %142, align 4
  br label %145

145:                                              ; preds = %139, %133
  %146 = load i32, i32* %14, align 4
  %147 = load i32, i32* @HFA384X_WEPFLAGS_EXCLUDEUNENCRYPTED, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %145
  %151 = load i32, i32* @IW_ENCODE_RESTRICTED, align 4
  %152 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %153 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = or i32 %154, %151
  store i32 %155, i32* %153, align 4
  br label %162

156:                                              ; preds = %145
  %157 = load i32, i32* @IW_ENCODE_OPEN, align 4
  %158 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %159 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = or i32 %160, %157
  store i32 %161, i32* %159, align 4
  br label %162

162:                                              ; preds = %156, %150
  store i32 0, i32* %5, align 4
  br label %163

163:                                              ; preds = %162, %123, %85, %69, %46
  %164 = load i32, i32* %5, align 4
  ret i32 %164
}

declare dso_local %struct.hostap_interface* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @le16_to_cpus(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
