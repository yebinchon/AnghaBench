; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_assoc.c_lbs_get_association_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_assoc.c_lbs_get_association_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.assoc_request = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32 }
%struct.lbs_private = type { i32, i32, i32, i32, i32, i32, i32*, %struct.TYPE_2__, i32, %struct.assoc_request* }
%struct.TYPE_2__ = type { i32*, i32, i32, i32, i32 }

@LBS_DEB_ASSOC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Not enough memory to allocate association request!\0A\00", align 1
@ASSOC_FLAG_SSID = common dso_local global i32 0, align 4
@IW_ESSID_MAX_SIZE = common dso_local global i32 0, align 4
@ASSOC_FLAG_CHANNEL = common dso_local global i32 0, align 4
@ASSOC_FLAG_BAND = common dso_local global i32 0, align 4
@ASSOC_FLAG_MODE = common dso_local global i32 0, align 4
@ASSOC_FLAG_BSSID = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@ASSOC_FLAG_WEP_KEYS = common dso_local global i32 0, align 4
@ASSOC_FLAG_WEP_TX_KEYIDX = common dso_local global i32 0, align 4
@ASSOC_FLAG_WPA_MCAST_KEY = common dso_local global i32 0, align 4
@ASSOC_FLAG_WPA_UCAST_KEY = common dso_local global i32 0, align 4
@ASSOC_FLAG_SECINFO = common dso_local global i32 0, align 4
@ASSOC_FLAG_WPA_IE = common dso_local global i32 0, align 4
@MAX_WPA_IE_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.assoc_request* @lbs_get_association_request(%struct.lbs_private* %0) #0 {
  %2 = alloca %struct.assoc_request*, align 8
  %3 = alloca %struct.lbs_private*, align 8
  %4 = alloca %struct.assoc_request*, align 8
  %5 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %3, align 8
  %6 = load i32, i32* @LBS_DEB_ASSOC, align 4
  %7 = call i32 @lbs_deb_enter(i32 %6)
  %8 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %9 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %8, i32 0, i32 9
  %10 = load %struct.assoc_request*, %struct.assoc_request** %9, align 8
  %11 = icmp ne %struct.assoc_request* %10, null
  br i1 %11, label %24, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.assoc_request* @kzalloc(i32 64, i32 %13)
  %15 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %16 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %15, i32 0, i32 9
  store %struct.assoc_request* %14, %struct.assoc_request** %16, align 8
  %17 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %18 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %17, i32 0, i32 9
  %19 = load %struct.assoc_request*, %struct.assoc_request** %18, align 8
  %20 = icmp ne %struct.assoc_request* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %12
  %22 = call i32 @lbs_pr_info(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  store %struct.assoc_request* null, %struct.assoc_request** %2, align 8
  br label %198

23:                                               ; preds = %12
  br label %24

24:                                               ; preds = %23, %1
  %25 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %26 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %25, i32 0, i32 9
  %27 = load %struct.assoc_request*, %struct.assoc_request** %26, align 8
  store %struct.assoc_request* %27, %struct.assoc_request** %4, align 8
  %28 = load i32, i32* @ASSOC_FLAG_SSID, align 4
  %29 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %30 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %29, i32 0, i32 2
  %31 = call i32 @test_bit(i32 %28, i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %47, label %33

33:                                               ; preds = %24
  %34 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %35 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %34, i32 0, i32 13
  %36 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %37 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %36, i32 0, i32 7
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 4
  %39 = load i32, i32* @IW_ESSID_MAX_SIZE, align 4
  %40 = call i32 @memcpy(i32* %35, i32* %38, i32 %39)
  %41 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %42 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %41, i32 0, i32 7
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %46 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %45, i32 0, i32 12
  store i32 %44, i32* %46, align 8
  br label %47

47:                                               ; preds = %33, %24
  %48 = load i32, i32* @ASSOC_FLAG_CHANNEL, align 4
  %49 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %50 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %49, i32 0, i32 2
  %51 = call i32 @test_bit(i32 %48, i32* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %47
  %54 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %55 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %54, i32 0, i32 7
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %59 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %58, i32 0, i32 11
  store i32 %57, i32* %59, align 4
  br label %60

60:                                               ; preds = %53, %47
  %61 = load i32, i32* @ASSOC_FLAG_BAND, align 4
  %62 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %63 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %62, i32 0, i32 2
  %64 = call i32 @test_bit(i32 %61, i32* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %60
  %67 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %68 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %67, i32 0, i32 7
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %72 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %71, i32 0, i32 10
  store i32 %70, i32* %72, align 8
  br label %73

73:                                               ; preds = %66, %60
  %74 = load i32, i32* @ASSOC_FLAG_MODE, align 4
  %75 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %76 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %75, i32 0, i32 2
  %77 = call i32 @test_bit(i32 %74, i32* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %73
  %80 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %81 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %80, i32 0, i32 8
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %84 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %83, i32 0, i32 9
  store i32 %82, i32* %84, align 4
  br label %85

85:                                               ; preds = %79, %73
  %86 = load i32, i32* @ASSOC_FLAG_BSSID, align 4
  %87 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %88 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %87, i32 0, i32 2
  %89 = call i32 @test_bit(i32 %86, i32* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %100, label %91

91:                                               ; preds = %85
  %92 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %93 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %92, i32 0, i32 8
  %94 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %95 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %94, i32 0, i32 7
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* @ETH_ALEN, align 4
  %99 = call i32 @memcpy(i32* %93, i32* %97, i32 %98)
  br label %100

100:                                              ; preds = %91, %85
  %101 = load i32, i32* @ASSOC_FLAG_WEP_KEYS, align 4
  %102 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %103 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %102, i32 0, i32 2
  %104 = call i32 @test_bit(i32 %101, i32* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %128, label %106

106:                                              ; preds = %100
  store i32 0, i32* %5, align 4
  br label %107

107:                                              ; preds = %124, %106
  %108 = load i32, i32* %5, align 4
  %109 = icmp slt i32 %108, 4
  br i1 %109, label %110, label %127

110:                                              ; preds = %107
  %111 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %112 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %111, i32 0, i32 7
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %118 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %117, i32 0, i32 6
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %5, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = call i32 @memcpy(i32* %116, i32* %122, i32 4)
  br label %124

124:                                              ; preds = %110
  %125 = load i32, i32* %5, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %5, align 4
  br label %107

127:                                              ; preds = %107
  br label %128

128:                                              ; preds = %127, %100
  %129 = load i32, i32* @ASSOC_FLAG_WEP_TX_KEYIDX, align 4
  %130 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %131 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %130, i32 0, i32 2
  %132 = call i32 @test_bit(i32 %129, i32* %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %140, label %134

134:                                              ; preds = %128
  %135 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %136 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %139 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %138, i32 0, i32 6
  store i32 %137, i32* %139, align 8
  br label %140

140:                                              ; preds = %134, %128
  %141 = load i32, i32* @ASSOC_FLAG_WPA_MCAST_KEY, align 4
  %142 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %143 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %142, i32 0, i32 2
  %144 = call i32 @test_bit(i32 %141, i32* %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %152, label %146

146:                                              ; preds = %140
  %147 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %148 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %147, i32 0, i32 5
  %149 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %150 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %149, i32 0, i32 4
  %151 = call i32 @memcpy(i32* %148, i32* %150, i32 4)
  br label %152

152:                                              ; preds = %146, %140
  %153 = load i32, i32* @ASSOC_FLAG_WPA_UCAST_KEY, align 4
  %154 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %155 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %154, i32 0, i32 2
  %156 = call i32 @test_bit(i32 %153, i32* %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %164, label %158

158:                                              ; preds = %152
  %159 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %160 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %159, i32 0, i32 4
  %161 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %162 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %161, i32 0, i32 3
  %163 = call i32 @memcpy(i32* %160, i32* %162, i32 4)
  br label %164

164:                                              ; preds = %158, %152
  %165 = load i32, i32* @ASSOC_FLAG_SECINFO, align 4
  %166 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %167 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %166, i32 0, i32 2
  %168 = call i32 @test_bit(i32 %165, i32* %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %176, label %170

170:                                              ; preds = %164
  %171 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %172 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %171, i32 0, i32 3
  %173 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %174 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %173, i32 0, i32 2
  %175 = call i32 @memcpy(i32* %172, i32* %174, i32 4)
  br label %176

176:                                              ; preds = %170, %164
  %177 = load i32, i32* @ASSOC_FLAG_WPA_IE, align 4
  %178 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %179 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %178, i32 0, i32 2
  %180 = call i32 @test_bit(i32 %177, i32* %179)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %194, label %182

182:                                              ; preds = %176
  %183 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %184 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %183, i32 0, i32 1
  %185 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %186 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %185, i32 0, i32 1
  %187 = load i32, i32* @MAX_WPA_IE_LEN, align 4
  %188 = call i32 @memcpy(i32* %184, i32* %186, i32 %187)
  %189 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %190 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  %193 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %192, i32 0, i32 0
  store i32 %191, i32* %193, align 8
  br label %194

194:                                              ; preds = %182, %176
  %195 = load i32, i32* @LBS_DEB_ASSOC, align 4
  %196 = call i32 @lbs_deb_leave(i32 %195)
  %197 = load %struct.assoc_request*, %struct.assoc_request** %4, align 8
  store %struct.assoc_request* %197, %struct.assoc_request** %2, align 8
  br label %198

198:                                              ; preds = %194, %21
  %199 = load %struct.assoc_request*, %struct.assoc_request** %2, align 8
  ret %struct.assoc_request* %199
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local %struct.assoc_request* @kzalloc(i32, i32) #1

declare dso_local i32 @lbs_pr_info(i8*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @lbs_deb_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
