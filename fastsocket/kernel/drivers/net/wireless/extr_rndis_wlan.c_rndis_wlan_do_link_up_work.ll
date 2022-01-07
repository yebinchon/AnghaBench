; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_rndis_wlan.c_rndis_wlan_do_link_up_work.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_rndis_wlan.c_rndis_wlan_do_link_up_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }
%struct.rndis_wlan_private = type { i64, i32, i32, i32, i32, i32 }
%struct.ndis_80211_assoc_info = type { i32, i32, i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@NDIS_80211_INFRA_INFRA = common dso_local global i64 0, align 8
@CONTROL_BUFFER_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@WORK_LINK_UP = common dso_local global i32 0, align 4
@NDIS_80211_INFRA_ADHOC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"link up work: [%pM]%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c" roamed\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbnet*)* @rndis_wlan_do_link_up_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rndis_wlan_do_link_up_work(%struct.usbnet* %0) #0 {
  %2 = alloca %struct.usbnet*, align 8
  %3 = alloca %struct.rndis_wlan_private*, align 8
  %4 = alloca %struct.ndis_80211_assoc_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %2, align 8
  %16 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %17 = call %struct.rndis_wlan_private* @get_rndis_wlan_priv(%struct.usbnet* %16)
  store %struct.rndis_wlan_private* %17, %struct.rndis_wlan_private** %3, align 8
  store %struct.ndis_80211_assoc_info* null, %struct.ndis_80211_assoc_info** %4, align 8
  %18 = load i32, i32* @ETH_ALEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %5, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %6, align 8
  store i32 0, i32* %13, align 4
  %22 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %3, align 8
  %23 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @NDIS_80211_INFRA_INFRA, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %1
  %28 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %3, align 8
  %29 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 1, i32* %13, align 4
  br label %33

33:                                               ; preds = %32, %27, %1
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %34 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %3, align 8
  %35 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @NDIS_80211_INFRA_INFRA, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %134

39:                                               ; preds = %33
  %40 = load i32, i32* @CONTROL_BUFFER_SIZE, align 4
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.ndis_80211_assoc_info* @kzalloc(i32 %40, i32 %41)
  store %struct.ndis_80211_assoc_info* %42, %struct.ndis_80211_assoc_info** %4, align 8
  %43 = load %struct.ndis_80211_assoc_info*, %struct.ndis_80211_assoc_info** %4, align 8
  %44 = icmp ne %struct.ndis_80211_assoc_info* %43, null
  br i1 %44, label %56, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* @WORK_LINK_UP, align 4
  %47 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %3, align 8
  %48 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %47, i32 0, i32 5
  %49 = call i32 @set_bit(i32 %46, i32* %48)
  %50 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %3, align 8
  %51 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %3, align 8
  %54 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %53, i32 0, i32 3
  %55 = call i32 @queue_work(i32 %52, i32* %54)
  store i32 1, i32* %15, align 4
  br label %237

56:                                               ; preds = %39
  %57 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %58 = load %struct.ndis_80211_assoc_info*, %struct.ndis_80211_assoc_info** %4, align 8
  %59 = load i32, i32* @CONTROL_BUFFER_SIZE, align 4
  %60 = call i32 @get_association_info(%struct.usbnet* %57, %struct.ndis_80211_assoc_info* %58, i32 %59)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %130, label %63

63:                                               ; preds = %56
  %64 = load %struct.ndis_80211_assoc_info*, %struct.ndis_80211_assoc_info** %4, align 8
  %65 = getelementptr inbounds %struct.ndis_80211_assoc_info, %struct.ndis_80211_assoc_info* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @le32_to_cpu(i32 %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %96

70:                                               ; preds = %63
  %71 = load %struct.ndis_80211_assoc_info*, %struct.ndis_80211_assoc_info** %4, align 8
  %72 = getelementptr inbounds %struct.ndis_80211_assoc_info, %struct.ndis_80211_assoc_info* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @le32_to_cpu(i32 %73)
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* @CONTROL_BUFFER_SIZE, align 4
  %77 = icmp sgt i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %70
  %79 = load i32, i32* @CONTROL_BUFFER_SIZE, align 4
  store i32 %79, i32* %12, align 4
  br label %80

80:                                               ; preds = %78, %70
  %81 = load %struct.ndis_80211_assoc_info*, %struct.ndis_80211_assoc_info** %4, align 8
  %82 = bitcast %struct.ndis_80211_assoc_info* %81 to i32*
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32* %85, i32** %9, align 8
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %86, %87
  %89 = load i32, i32* @CONTROL_BUFFER_SIZE, align 4
  %90 = icmp sgt i32 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %80
  %92 = load i32, i32* @CONTROL_BUFFER_SIZE, align 4
  %93 = load i32, i32* %12, align 4
  %94 = sub nsw i32 %92, %93
  store i32 %94, i32* %8, align 4
  br label %95

95:                                               ; preds = %91, %80
  br label %96

96:                                               ; preds = %95, %63
  %97 = load %struct.ndis_80211_assoc_info*, %struct.ndis_80211_assoc_info** %4, align 8
  %98 = getelementptr inbounds %struct.ndis_80211_assoc_info, %struct.ndis_80211_assoc_info* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @le32_to_cpu(i32 %99)
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %129

103:                                              ; preds = %96
  %104 = load %struct.ndis_80211_assoc_info*, %struct.ndis_80211_assoc_info** %4, align 8
  %105 = getelementptr inbounds %struct.ndis_80211_assoc_info, %struct.ndis_80211_assoc_info* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @le32_to_cpu(i32 %106)
  store i32 %107, i32* %12, align 4
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* @CONTROL_BUFFER_SIZE, align 4
  %110 = icmp sgt i32 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %103
  %112 = load i32, i32* @CONTROL_BUFFER_SIZE, align 4
  store i32 %112, i32* %12, align 4
  br label %113

113:                                              ; preds = %111, %103
  %114 = load %struct.ndis_80211_assoc_info*, %struct.ndis_80211_assoc_info** %4, align 8
  %115 = bitcast %struct.ndis_80211_assoc_info* %114 to i32*
  %116 = load i32, i32* %12, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32* %118, i32** %10, align 8
  %119 = load i32, i32* %12, align 4
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %119, %120
  %122 = load i32, i32* @CONTROL_BUFFER_SIZE, align 4
  %123 = icmp sgt i32 %121, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %113
  %125 = load i32, i32* @CONTROL_BUFFER_SIZE, align 4
  %126 = load i32, i32* %12, align 4
  %127 = sub nsw i32 %125, %126
  store i32 %127, i32* %7, align 4
  br label %128

128:                                              ; preds = %124, %113
  br label %129

129:                                              ; preds = %128, %96
  br label %133

130:                                              ; preds = %56
  %131 = load %struct.ndis_80211_assoc_info*, %struct.ndis_80211_assoc_info** %4, align 8
  %132 = call i32 @kfree(%struct.ndis_80211_assoc_info* %131)
  store %struct.ndis_80211_assoc_info* null, %struct.ndis_80211_assoc_info** %4, align 8
  br label %133

133:                                              ; preds = %130, %129
  br label %145

134:                                              ; preds = %33
  %135 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %3, align 8
  %136 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @NDIS_80211_INFRA_ADHOC, align 8
  %139 = icmp ne i64 %137, %138
  %140 = zext i1 %139 to i32
  %141 = call i64 @WARN_ON(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %134
  store i32 1, i32* %15, align 4
  br label %237

144:                                              ; preds = %134
  br label %145

145:                                              ; preds = %144, %133
  %146 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %147 = call i32 @get_bssid(%struct.usbnet* %146, i32* %21)
  store i32 %147, i32* %11, align 4
  %148 = load i32, i32* %11, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %145
  %151 = mul nuw i64 4, %19
  %152 = trunc i64 %151 to i32
  %153 = call i32 @memset(i32* %21, i32 0, i32 %152)
  br label %154

154:                                              ; preds = %150, %145
  %155 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %156 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %13, align 4
  %159 = icmp ne i32 %158, 0
  %160 = zext i1 %159 to i64
  %161 = select i1 %159, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %162 = call i32 @netdev_dbg(i32 %157, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32* %21, i8* %161)
  store i32 0, i32* %14, align 4
  %163 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %164 = call i32 @rndis_check_bssid_list(%struct.usbnet* %163, i32* %21, i32* %14)
  %165 = call i32 @is_zero_ether_addr(i32* %21)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %174, label %167

167:                                              ; preds = %154
  %168 = load i32, i32* %14, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %174, label %170

170:                                              ; preds = %167
  %171 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %172 = load %struct.ndis_80211_assoc_info*, %struct.ndis_80211_assoc_info** %4, align 8
  %173 = call i32 @rndis_wlan_craft_connected_bss(%struct.usbnet* %171, i32* %21, %struct.ndis_80211_assoc_info* %172)
  br label %174

174:                                              ; preds = %170, %167, %154
  %175 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %3, align 8
  %176 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @NDIS_80211_INFRA_INFRA, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %204

180:                                              ; preds = %174
  %181 = load i32, i32* %13, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %193, label %183

183:                                              ; preds = %180
  %184 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %185 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32*, i32** %9, align 8
  %188 = load i32, i32* %8, align 4
  %189 = load i32*, i32** %10, align 8
  %190 = load i32, i32* %7, align 4
  %191 = load i32, i32* @GFP_KERNEL, align 4
  %192 = call i32 @cfg80211_connect_result(i32 %186, i32* %21, i32* %187, i32 %188, i32* %189, i32 %190, i32 0, i32 %191)
  br label %203

193:                                              ; preds = %180
  %194 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %195 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load i32*, i32** %9, align 8
  %198 = load i32, i32* %8, align 4
  %199 = load i32*, i32** %10, align 8
  %200 = load i32, i32* %7, align 4
  %201 = load i32, i32* @GFP_KERNEL, align 4
  %202 = call i32 @cfg80211_roamed(i32 %196, i32* null, i32* %21, i32* %197, i32 %198, i32* %199, i32 %200, i32 %201)
  br label %203

203:                                              ; preds = %193, %183
  br label %217

204:                                              ; preds = %174
  %205 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %3, align 8
  %206 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @NDIS_80211_INFRA_ADHOC, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %216

210:                                              ; preds = %204
  %211 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %212 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @GFP_KERNEL, align 4
  %215 = call i32 @cfg80211_ibss_joined(i32 %213, i32* %21, i32 %214)
  br label %216

216:                                              ; preds = %210, %204
  br label %217

217:                                              ; preds = %216, %203
  %218 = load %struct.ndis_80211_assoc_info*, %struct.ndis_80211_assoc_info** %4, align 8
  %219 = icmp ne %struct.ndis_80211_assoc_info* %218, null
  br i1 %219, label %220, label %223

220:                                              ; preds = %217
  %221 = load %struct.ndis_80211_assoc_info*, %struct.ndis_80211_assoc_info** %4, align 8
  %222 = call i32 @kfree(%struct.ndis_80211_assoc_info* %221)
  br label %223

223:                                              ; preds = %220, %217
  %224 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %3, align 8
  %225 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %224, i32 0, i32 1
  store i32 1, i32* %225, align 8
  %226 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %3, align 8
  %227 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* @ETH_ALEN, align 4
  %230 = call i32 @memcpy(i32 %228, i32* %21, i32 %229)
  %231 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %232 = call i32 @usbnet_resume_rx(%struct.usbnet* %231)
  %233 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %234 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @netif_carrier_on(i32 %235)
  store i32 0, i32* %15, align 4
  br label %237

237:                                              ; preds = %223, %143, %45
  %238 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %238)
  %239 = load i32, i32* %15, align 4
  switch i32 %239, label %241 [
    i32 0, label %240
    i32 1, label %240
  ]

240:                                              ; preds = %237, %237
  ret void

241:                                              ; preds = %237
  unreachable
}

declare dso_local %struct.rndis_wlan_private* @get_rndis_wlan_priv(%struct.usbnet*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.ndis_80211_assoc_info* @kzalloc(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @get_association_info(%struct.usbnet*, %struct.ndis_80211_assoc_info*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @kfree(%struct.ndis_80211_assoc_info*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @get_bssid(%struct.usbnet*, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32*, i8*) #1

declare dso_local i32 @rndis_check_bssid_list(%struct.usbnet*, i32*, i32*) #1

declare dso_local i32 @is_zero_ether_addr(i32*) #1

declare dso_local i32 @rndis_wlan_craft_connected_bss(%struct.usbnet*, i32*, %struct.ndis_80211_assoc_info*) #1

declare dso_local i32 @cfg80211_connect_result(i32, i32*, i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @cfg80211_roamed(i32, i32*, i32*, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @cfg80211_ibss_joined(i32, i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @usbnet_resume_rx(%struct.usbnet*) #1

declare dso_local i32 @netif_carrier_on(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
