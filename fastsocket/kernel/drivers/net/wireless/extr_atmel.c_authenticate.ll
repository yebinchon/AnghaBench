; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_atmel.c_authenticate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_atmel.c_authenticate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_private = type { i64, i32, i32, i64, i64, i64, %struct.TYPE_2__*, i64, i64, i64, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.auth_body = type { i64, i32, i32*, i32, i32, i32 }

@WLAN_STATUS_SUCCESS = common dso_local global i64 0, align 8
@STATION_STATE_REASSOCIATING = common dso_local global i32 0, align 4
@STATION_STATE_ASSOCIATING = common dso_local global i32 0, align 4
@WLAN_AUTH_OPEN = common dso_local global i64 0, align 8
@WLAN_AUTH_SHARED_KEY = common dso_local global i64 0, align 8
@WLAN_EID_CHALLENGE = common dso_local global i64 0, align 8
@WLAN_STATUS_NOT_SUPPORTED_AUTH_ALG = common dso_local global i64 0, align 8
@STATION_STATE_MGMT_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atmel_private*, i64)* @authenticate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @authenticate(%struct.atmel_private* %0, i64 %1) #0 {
  %3 = alloca %struct.atmel_private*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.auth_body*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.atmel_private* %0, %struct.atmel_private** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %12 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %11, i32 0, i32 10
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.auth_body*
  store %struct.auth_body* %14, %struct.auth_body** %5, align 8
  %15 = load %struct.auth_body*, %struct.auth_body** %5, align 8
  %16 = getelementptr inbounds %struct.auth_body, %struct.auth_body* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @le16_to_cpu(i32 %17)
  store i64 %18, i64* %6, align 8
  %19 = load %struct.auth_body*, %struct.auth_body** %5, align 8
  %20 = getelementptr inbounds %struct.auth_body, %struct.auth_body* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @le16_to_cpu(i32 %21)
  store i64 %22, i64* %7, align 8
  %23 = load %struct.auth_body*, %struct.auth_body** %5, align 8
  %24 = getelementptr inbounds %struct.auth_body, %struct.auth_body* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @le16_to_cpu(i32 %25)
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @WLAN_STATUS_SUCCESS, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %52

30:                                               ; preds = %2
  %31 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %32 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %31, i32 0, i32 8
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %52, label %35

35:                                               ; preds = %30
  %36 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %37 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %36, i32 0, i32 9
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %42 = load i32, i32* @STATION_STATE_REASSOCIATING, align 4
  %43 = call i32 @atmel_enter_state(%struct.atmel_private* %41, i32 %42)
  %44 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %45 = call i32 @send_association_request(%struct.atmel_private* %44, i32 1)
  br label %198

46:                                               ; preds = %35
  %47 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %48 = load i32, i32* @STATION_STATE_ASSOCIATING, align 4
  %49 = call i32 @atmel_enter_state(%struct.atmel_private* %47, i32 %48)
  %50 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %51 = call i32 @send_association_request(%struct.atmel_private* %50, i32 0)
  br label %198

52:                                               ; preds = %30, %2
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* @WLAN_STATUS_SUCCESS, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %128

56:                                               ; preds = %52
  %57 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %58 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %57, i32 0, i32 8
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %128

61:                                               ; preds = %56
  store i32 0, i32* %9, align 4
  %62 = load i64, i64* %7, align 8
  %63 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %64 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %62, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %198

68:                                               ; preds = %61
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* @WLAN_AUTH_OPEN, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = load i64, i64* %7, align 8
  %74 = icmp eq i64 %73, 2
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i32 1, i32* %9, align 4
  br label %76

76:                                               ; preds = %75, %72
  br label %107

77:                                               ; preds = %68
  %78 = load i64, i64* %8, align 8
  %79 = load i64, i64* @WLAN_AUTH_SHARED_KEY, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %106

81:                                               ; preds = %77
  %82 = load i64, i64* %7, align 8
  %83 = icmp eq i64 %82, 2
  br i1 %83, label %84, label %100

84:                                               ; preds = %81
  %85 = load %struct.auth_body*, %struct.auth_body** %5, align 8
  %86 = getelementptr inbounds %struct.auth_body, %struct.auth_body* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @WLAN_EID_CHALLENGE, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %84
  %91 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %92 = load i64, i64* %8, align 8
  %93 = load %struct.auth_body*, %struct.auth_body** %5, align 8
  %94 = getelementptr inbounds %struct.auth_body, %struct.auth_body* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.auth_body*, %struct.auth_body** %5, align 8
  %97 = getelementptr inbounds %struct.auth_body, %struct.auth_body* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @send_authentication_request(%struct.atmel_private* %91, i64 %92, i32* %95, i32 %98)
  br label %198

100:                                              ; preds = %84, %81
  %101 = load i64, i64* %7, align 8
  %102 = icmp eq i64 %101, 4
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  store i32 1, i32* %9, align 4
  br label %104

104:                                              ; preds = %103, %100
  br label %105

105:                                              ; preds = %104
  br label %106

106:                                              ; preds = %105, %77
  br label %107

107:                                              ; preds = %106, %76
  %108 = load i32, i32* %9, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %127

110:                                              ; preds = %107
  %111 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %112 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %111, i32 0, i32 9
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %110
  %116 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %117 = load i32, i32* @STATION_STATE_REASSOCIATING, align 4
  %118 = call i32 @atmel_enter_state(%struct.atmel_private* %116, i32 %117)
  %119 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %120 = call i32 @send_association_request(%struct.atmel_private* %119, i32 1)
  br label %198

121:                                              ; preds = %110
  %122 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %123 = load i32, i32* @STATION_STATE_ASSOCIATING, align 4
  %124 = call i32 @atmel_enter_state(%struct.atmel_private* %122, i32 %123)
  %125 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %126 = call i32 @send_association_request(%struct.atmel_private* %125, i32 0)
  br label %198

127:                                              ; preds = %107
  br label %128

128:                                              ; preds = %127, %56, %52
  %129 = load i64, i64* %6, align 8
  %130 = load i64, i64* @WLAN_STATUS_NOT_SUPPORTED_AUTH_ALG, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %190

132:                                              ; preds = %128
  %133 = load i64, i64* %8, align 8
  %134 = load i64, i64* @WLAN_AUTH_OPEN, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %144

136:                                              ; preds = %132
  %137 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %138 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %137, i32 0, i32 1
  store i32 1, i32* %138, align 8
  %139 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %140 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %139, i32 0, i32 2
  store i32 1, i32* %140, align 4
  %141 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %142 = load i64, i64* @WLAN_AUTH_SHARED_KEY, align 8
  %143 = call i32 @send_authentication_request(%struct.atmel_private* %141, i64 %142, i32* null, i32 0)
  br label %198

144:                                              ; preds = %132
  %145 = load i64, i64* %8, align 8
  %146 = load i64, i64* @WLAN_AUTH_SHARED_KEY, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %161

148:                                              ; preds = %144
  %149 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %150 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %149, i32 0, i32 8
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %148
  %154 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %155 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %154, i32 0, i32 1
  store i32 1, i32* %155, align 8
  %156 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %157 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %156, i32 0, i32 2
  store i32 0, i32* %157, align 4
  %158 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %159 = load i64, i64* @WLAN_AUTH_OPEN, align 8
  %160 = call i32 @send_authentication_request(%struct.atmel_private* %158, i64 %159, i32* null, i32 0)
  br label %198

161:                                              ; preds = %148, %144
  %162 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %163 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %162, i32 0, i32 7
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %187

166:                                              ; preds = %161
  %167 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %168 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %167, i32 0, i32 6
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** %168, align 8
  %170 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %171 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %170, i32 0, i32 5
  %172 = load i64, i64* %171, align 8
  %173 = trunc i64 %172 to i32
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = or i32 %177, 128
  store i32 %178, i32* %176, align 4
  %179 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %180 = call i32 @retrieve_bss(%struct.atmel_private* %179)
  store i32 %180, i32* %10, align 4
  %181 = icmp ne i32 %180, -1
  br i1 %181, label %182, label %186

182:                                              ; preds = %166
  %183 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %184 = load i32, i32* %10, align 4
  %185 = call i32 @atmel_join_bss(%struct.atmel_private* %183, i32 %184)
  br label %198

186:                                              ; preds = %166
  br label %187

187:                                              ; preds = %186, %161
  br label %188

188:                                              ; preds = %187
  br label %189

189:                                              ; preds = %188
  br label %190

190:                                              ; preds = %189, %128
  %191 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %192 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %191, i32 0, i32 4
  store i64 0, i64* %192, align 8
  %193 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %194 = load i32, i32* @STATION_STATE_MGMT_ERROR, align 4
  %195 = call i32 @atmel_enter_state(%struct.atmel_private* %193, i32 %194)
  %196 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %197 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %196, i32 0, i32 3
  store i64 0, i64* %197, align 8
  br label %198

198:                                              ; preds = %190, %182, %153, %136, %121, %115, %90, %67, %46, %40
  ret void
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @atmel_enter_state(%struct.atmel_private*, i32) #1

declare dso_local i32 @send_association_request(%struct.atmel_private*, i32) #1

declare dso_local i32 @send_authentication_request(%struct.atmel_private*, i64, i32*, i32) #1

declare dso_local i32 @retrieve_bss(%struct.atmel_private*) #1

declare dso_local i32 @atmel_join_bss(%struct.atmel_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
