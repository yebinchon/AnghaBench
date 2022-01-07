; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/prism54/extr_isl_ioctl.c_prism54_get_encodeext.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/prism54/extr_isl_ioctl.c_prism54_get_encodeext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.iw_point }
%struct.iw_point = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.iw_encode_ext = type { i32, i32, i32 }
%union.oid_res_t = type { %struct.obj_key* }
%struct.obj_key = type { i32, i32, i32 }

@PRV_STATE_INIT = common dso_local global i64 0, align 8
@DOT11_OID_AUTHENABLE = common dso_local global i32 0, align 4
@DOT11_OID_PRIVACYINVOKED = common dso_local global i32 0, align 4
@DOT11_OID_EXUNENCRYPTED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IW_ENCODE_INDEX = common dso_local global i32 0, align 4
@DOT11_OID_DEFKEYID = common dso_local global i32 0, align 4
@IW_ENCODE_RESTRICTED = common dso_local global i32 0, align 4
@IW_ENCODE_OPEN = common dso_local global i32 0, align 4
@IW_ENCODE_ALG_NONE = common dso_local global i32 0, align 4
@IW_ENCODE_DISABLED = common dso_local global i32 0, align 4
@DOT11_OID_DEFKEYX = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@IW_ENCODE_ALG_TKIP = common dso_local global i32 0, align 4
@IW_ENCODE_ALG_WEP = common dso_local global i32 0, align 4
@IW_ENCODE_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @prism54_get_encodeext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism54_get_encodeext(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca %struct.iw_point*, align 8
  %12 = alloca %struct.iw_encode_ext*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %union.oid_res_t, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.obj_key*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %22 = load %struct.net_device*, %struct.net_device** %6, align 8
  %23 = call %struct.TYPE_5__* @netdev_priv(%struct.net_device* %22)
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %10, align 8
  %24 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %25 = bitcast %union.iwreq_data* %24 to %struct.iw_point*
  store %struct.iw_point* %25, %struct.iw_point** %11, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = bitcast i8* %26 to %struct.iw_encode_ext*
  store %struct.iw_encode_ext* %27, %struct.iw_encode_ext** %12, align 8
  store i32 131, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %29 = call i64 @islpci_get_state(%struct.TYPE_5__* %28)
  %30 = load i64, i64* @PRV_STATE_INIT, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %206

33:                                               ; preds = %4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %35 = load i32, i32* @DOT11_OID_AUTHENABLE, align 4
  %36 = call i32 @mgt_get_request(%struct.TYPE_5__* %34, i32 %35, i32 0, i32* null, %union.oid_res_t* %15)
  store i32 %36, i32* %20, align 4
  %37 = bitcast %union.oid_res_t* %15 to i32*
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %16, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %40 = load i32, i32* @DOT11_OID_PRIVACYINVOKED, align 4
  %41 = call i32 @mgt_get_request(%struct.TYPE_5__* %39, i32 %40, i32 0, i32* null, %union.oid_res_t* %15)
  store i32 %41, i32* %20, align 4
  %42 = bitcast %union.oid_res_t* %15 to i32*
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %17, align 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %45 = load i32, i32* @DOT11_OID_EXUNENCRYPTED, align 4
  %46 = call i32 @mgt_get_request(%struct.TYPE_5__* %44, i32 %45, i32 0, i32* null, %union.oid_res_t* %15)
  store i32 %46, i32* %20, align 4
  %47 = bitcast %union.oid_res_t* %15 to i32*
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %18, align 4
  %49 = load i32, i32* %20, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %33
  br label %204

52:                                               ; preds = %33
  %53 = load %struct.iw_point*, %struct.iw_point** %11, align 8
  %54 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = sub i64 %56, 12
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %52
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %5, align 4
  br label %206

64:                                               ; preds = %52
  %65 = load %struct.iw_point*, %struct.iw_point** %11, align 8
  %66 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @IW_ENCODE_INDEX, align 4
  %69 = and i32 %67, %68
  %70 = sub nsw i32 %69, 1
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %64
  %74 = load i32, i32* %13, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %13, align 4
  %78 = icmp sgt i32 %77, 3
  br i1 %78, label %79, label %82

79:                                               ; preds = %76, %73
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %5, align 4
  br label %206

82:                                               ; preds = %76
  br label %93

83:                                               ; preds = %64
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %85 = load i32, i32* @DOT11_OID_DEFKEYID, align 4
  %86 = call i32 @mgt_get_request(%struct.TYPE_5__* %84, i32 %85, i32 0, i32* null, %union.oid_res_t* %15)
  store i32 %86, i32* %20, align 4
  %87 = load i32, i32* %20, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %204

90:                                               ; preds = %83
  %91 = bitcast %union.oid_res_t* %15 to i32*
  %92 = load i32, i32* %91, align 8
  store i32 %92, i32* %13, align 4
  br label %93

93:                                               ; preds = %90, %82
  %94 = load i32, i32* %13, align 4
  %95 = add nsw i32 %94, 1
  %96 = load %struct.iw_point*, %struct.iw_point** %11, align 8
  %97 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %99 = call i32 @memset(%struct.iw_encode_ext* %98, i32 0, i32 12)
  %100 = load i32, i32* %16, align 4
  switch i32 %100, label %109 [
    i32 132, label %101
    i32 130, label %101
    i32 131, label %108
  ]

101:                                              ; preds = %93, %93
  %102 = load i32, i32* @IW_ENCODE_RESTRICTED, align 4
  %103 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %104 = bitcast %union.iwreq_data* %103 to %struct.iw_point*
  %105 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %102
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %93, %101
  br label %109

109:                                              ; preds = %93, %108
  %110 = load i32, i32* @IW_ENCODE_OPEN, align 4
  %111 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %112 = bitcast %union.iwreq_data* %111 to %struct.iw_point*
  %113 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %110
  store i32 %115, i32* %113, align 4
  br label %116

116:                                              ; preds = %109
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  %119 = call i32 @down_write(i32* %118)
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %19, align 4
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 1
  %125 = call i32 @up_write(i32* %124)
  %126 = load i32, i32* %16, align 4
  %127 = icmp eq i32 %126, 131
  br i1 %127, label %128, label %149

128:                                              ; preds = %116
  %129 = load i32, i32* %18, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %149, label %131

131:                                              ; preds = %128
  %132 = load i32, i32* %17, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %149, label %134

134:                                              ; preds = %131
  %135 = load i32, i32* %19, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %149, label %137

137:                                              ; preds = %134
  %138 = load i32, i32* @IW_ENCODE_ALG_NONE, align 4
  %139 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %140 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 4
  %141 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %142 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %141, i32 0, i32 0
  store i32 0, i32* %142, align 4
  %143 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %144 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %145 = bitcast %union.iwreq_data* %144 to %struct.iw_point*
  %146 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = or i32 %147, %143
  store i32 %148, i32* %146, align 4
  br label %203

149:                                              ; preds = %134, %131, %128, %116
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %151 = load i32, i32* @DOT11_OID_DEFKEYX, align 4
  %152 = load i32, i32* %13, align 4
  %153 = call i32 @mgt_get_request(%struct.TYPE_5__* %150, i32 %151, i32 %152, i32* null, %union.oid_res_t* %15)
  store i32 %153, i32* %20, align 4
  %154 = load i32, i32* %20, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %149
  br label %204

157:                                              ; preds = %149
  %158 = bitcast %union.oid_res_t* %15 to %struct.obj_key**
  %159 = load %struct.obj_key*, %struct.obj_key** %158, align 8
  store %struct.obj_key* %159, %struct.obj_key** %21, align 8
  %160 = load i32, i32* %14, align 4
  %161 = load %struct.obj_key*, %struct.obj_key** %21, align 8
  %162 = getelementptr inbounds %struct.obj_key, %struct.obj_key* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = icmp slt i32 %160, %163
  br i1 %164, label %165, label %168

165:                                              ; preds = %157
  %166 = load i32, i32* @E2BIG, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %20, align 4
  br label %204

168:                                              ; preds = %157
  %169 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %170 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.obj_key*, %struct.obj_key** %21, align 8
  %173 = getelementptr inbounds %struct.obj_key, %struct.obj_key* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.obj_key*, %struct.obj_key** %21, align 8
  %176 = getelementptr inbounds %struct.obj_key, %struct.obj_key* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @memcpy(i32 %171, i32 %174, i32 %177)
  %179 = load %struct.obj_key*, %struct.obj_key** %21, align 8
  %180 = getelementptr inbounds %struct.obj_key, %struct.obj_key* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %183 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %182, i32 0, i32 0
  store i32 %181, i32* %183, align 4
  %184 = load %struct.obj_key*, %struct.obj_key** %21, align 8
  %185 = getelementptr inbounds %struct.obj_key, %struct.obj_key* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  switch i32 %186, label %191 [
    i32 129, label %187
    i32 128, label %192
  ]

187:                                              ; preds = %168
  %188 = load i32, i32* @IW_ENCODE_ALG_TKIP, align 4
  %189 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %190 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %189, i32 0, i32 1
  store i32 %188, i32* %190, align 4
  br label %196

191:                                              ; preds = %168
  br label %192

192:                                              ; preds = %168, %191
  %193 = load i32, i32* @IW_ENCODE_ALG_WEP, align 4
  %194 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %195 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %194, i32 0, i32 1
  store i32 %193, i32* %195, align 4
  br label %196

196:                                              ; preds = %192, %187
  %197 = load i32, i32* @IW_ENCODE_ENABLED, align 4
  %198 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %199 = bitcast %union.iwreq_data* %198 to %struct.iw_point*
  %200 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = or i32 %201, %197
  store i32 %202, i32* %200, align 4
  br label %203

203:                                              ; preds = %196, %137
  br label %204

204:                                              ; preds = %203, %165, %156, %89, %51
  %205 = load i32, i32* %20, align 4
  store i32 %205, i32* %5, align 4
  br label %206

206:                                              ; preds = %204, %79, %61, %32
  %207 = load i32, i32* %5, align 4
  ret i32 %207
}

declare dso_local %struct.TYPE_5__* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @islpci_get_state(%struct.TYPE_5__*) #1

declare dso_local i32 @mgt_get_request(%struct.TYPE_5__*, i32, i32, i32*, %union.oid_res_t*) #1

declare dso_local i32 @memset(%struct.iw_encode_ext*, i32, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
