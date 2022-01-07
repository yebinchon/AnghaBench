; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pppoe.c_pppoe_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pppoe.c_pppoe_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_pppox = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.pppox_sock = type { %struct.net_device*, i32, i32, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.net_device = type { i32, i64, i64, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32*, %struct.sock*, i64, i64 }
%struct.pppoe_net = type { i32 }
%struct.net = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PX_PROTO_OE = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@PPPOX_CONNECTED = common dso_local global i32 0, align 4
@EALREADY = common dso_local global i32 0, align 4
@PPPOX_DEAD = common dso_local global i32 0, align 4
@PPPOX_NONE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@pppoe_chan_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32, i32)* @pppoe_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pppoe_connect(%struct.socket* %0, %struct.sockaddr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.sockaddr_pppox*, align 8
  %11 = alloca %struct.pppox_sock*, align 8
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca %struct.pppoe_net*, align 8
  %14 = alloca %struct.net*, align 8
  %15 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load %struct.socket*, %struct.socket** %5, align 8
  %17 = getelementptr inbounds %struct.socket, %struct.socket* %16, i32 0, i32 0
  %18 = load %struct.sock*, %struct.sock** %17, align 8
  store %struct.sock* %18, %struct.sock** %9, align 8
  %19 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %20 = bitcast %struct.sockaddr* %19 to %struct.sockaddr_pppox*
  store %struct.sockaddr_pppox* %20, %struct.sockaddr_pppox** %10, align 8
  %21 = load %struct.sock*, %struct.sock** %9, align 8
  %22 = call %struct.pppox_sock* @pppox_sk(%struct.sock* %21)
  store %struct.pppox_sock* %22, %struct.pppox_sock** %11, align 8
  store %struct.net_device* null, %struct.net_device** %12, align 8
  store %struct.net* null, %struct.net** %14, align 8
  %23 = load %struct.sock*, %struct.sock** %9, align 8
  %24 = call i32 @lock_sock(%struct.sock* %23)
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %15, align 4
  %27 = load %struct.sockaddr_pppox*, %struct.sockaddr_pppox** %10, align 8
  %28 = getelementptr inbounds %struct.sockaddr_pppox, %struct.sockaddr_pppox* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PX_PROTO_OE, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %4
  br label %229

33:                                               ; preds = %4
  %34 = load i32, i32* @EBUSY, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %15, align 4
  %36 = load %struct.sock*, %struct.sock** %9, align 8
  %37 = getelementptr inbounds %struct.sock, %struct.sock* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @PPPOX_CONNECTED, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %33
  %43 = load %struct.sockaddr_pppox*, %struct.sockaddr_pppox** %10, align 8
  %44 = getelementptr inbounds %struct.sockaddr_pppox, %struct.sockaddr_pppox* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @stage_session(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %229

51:                                               ; preds = %42, %33
  %52 = load i32, i32* @EALREADY, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %15, align 4
  %54 = load %struct.sock*, %struct.sock** %9, align 8
  %55 = getelementptr inbounds %struct.sock, %struct.sock* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @PPPOX_DEAD, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %51
  %61 = load %struct.sockaddr_pppox*, %struct.sockaddr_pppox** %10, align 8
  %62 = getelementptr inbounds %struct.sockaddr_pppox, %struct.sockaddr_pppox* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @stage_session(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %60
  br label %229

69:                                               ; preds = %60, %51
  store i32 0, i32* %15, align 4
  %70 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %71 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @stage_session(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %114

76:                                               ; preds = %69
  %77 = load %struct.sock*, %struct.sock** %9, align 8
  %78 = call i32 @pppox_unbind_sock(%struct.sock* %77)
  %79 = load %struct.sock*, %struct.sock** %9, align 8
  %80 = call %struct.net* @sock_net(%struct.sock* %79)
  %81 = call %struct.pppoe_net* @pppoe_pernet(%struct.net* %80)
  store %struct.pppoe_net* %81, %struct.pppoe_net** %13, align 8
  %82 = load %struct.pppoe_net*, %struct.pppoe_net** %13, align 8
  %83 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %84 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %88 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %92 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @delete_item(%struct.pppoe_net* %82, i32 %86, i32 %90, i32 %93)
  %95 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %96 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %95, i32 0, i32 0
  %97 = load %struct.net_device*, %struct.net_device** %96, align 8
  %98 = icmp ne %struct.net_device* %97, null
  br i1 %98, label %99, label %106

99:                                               ; preds = %76
  %100 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %101 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %100, i32 0, i32 0
  %102 = load %struct.net_device*, %struct.net_device** %101, align 8
  %103 = call i32 @dev_put(%struct.net_device* %102)
  %104 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %105 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %104, i32 0, i32 0
  store %struct.net_device* null, %struct.net_device** %105, align 8
  br label %106

106:                                              ; preds = %99, %76
  %107 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %108 = call i64 @sk_pppox(%struct.pppox_sock* %107)
  %109 = add nsw i64 %108, 1
  %110 = call i32 @memset(i64 %109, i32 0, i32 52)
  %111 = load i32, i32* @PPPOX_NONE, align 4
  %112 = load %struct.sock*, %struct.sock** %9, align 8
  %113 = getelementptr inbounds %struct.sock, %struct.sock* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 4
  br label %114

114:                                              ; preds = %106, %69
  %115 = load %struct.sockaddr_pppox*, %struct.sockaddr_pppox** %10, align 8
  %116 = getelementptr inbounds %struct.sockaddr_pppox, %struct.sockaddr_pppox* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i64 @stage_session(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %221

122:                                              ; preds = %114
  %123 = load i32, i32* @ENODEV, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %15, align 4
  %125 = load %struct.sock*, %struct.sock** %9, align 8
  %126 = call %struct.net* @sock_net(%struct.sock* %125)
  store %struct.net* %126, %struct.net** %14, align 8
  %127 = load %struct.net*, %struct.net** %14, align 8
  %128 = load %struct.sockaddr_pppox*, %struct.sockaddr_pppox** %10, align 8
  %129 = getelementptr inbounds %struct.sockaddr_pppox, %struct.sockaddr_pppox* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call %struct.net_device* @dev_get_by_name(%struct.net* %127, i32 %132)
  store %struct.net_device* %133, %struct.net_device** %12, align 8
  %134 = load %struct.net_device*, %struct.net_device** %12, align 8
  %135 = icmp ne %struct.net_device* %134, null
  br i1 %135, label %137, label %136

136:                                              ; preds = %122
  br label %233

137:                                              ; preds = %122
  %138 = load %struct.net_device*, %struct.net_device** %12, align 8
  %139 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %140 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %139, i32 0, i32 0
  store %struct.net_device* %138, %struct.net_device** %140, align 8
  %141 = load %struct.net_device*, %struct.net_device** %12, align 8
  %142 = getelementptr inbounds %struct.net_device, %struct.net_device* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %145 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %144, i32 0, i32 2
  store i32 %143, i32* %145, align 4
  %146 = load %struct.net*, %struct.net** %14, align 8
  %147 = call %struct.pppoe_net* @pppoe_pernet(%struct.net* %146)
  store %struct.pppoe_net* %147, %struct.pppoe_net** %13, align 8
  %148 = load %struct.net_device*, %struct.net_device** %12, align 8
  %149 = getelementptr inbounds %struct.net_device, %struct.net_device* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @IFF_UP, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %137
  br label %233

155:                                              ; preds = %137
  %156 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %157 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %156, i32 0, i32 3
  %158 = load %struct.sockaddr_pppox*, %struct.sockaddr_pppox** %10, align 8
  %159 = getelementptr inbounds %struct.sockaddr_pppox, %struct.sockaddr_pppox* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 0
  %161 = call i32 @memcpy(%struct.TYPE_7__* %157, %struct.TYPE_8__* %160, i32 4)
  %162 = load %struct.pppoe_net*, %struct.pppoe_net** %13, align 8
  %163 = getelementptr inbounds %struct.pppoe_net, %struct.pppoe_net* %162, i32 0, i32 0
  %164 = call i32 @write_lock_bh(i32* %163)
  %165 = load %struct.pppoe_net*, %struct.pppoe_net** %13, align 8
  %166 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %167 = call i32 @__set_item(%struct.pppoe_net* %165, %struct.pppox_sock* %166)
  store i32 %167, i32* %15, align 4
  %168 = load %struct.pppoe_net*, %struct.pppoe_net** %13, align 8
  %169 = getelementptr inbounds %struct.pppoe_net, %struct.pppoe_net* %168, i32 0, i32 0
  %170 = call i32 @write_unlock_bh(i32* %169)
  %171 = load i32, i32* %15, align 4
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %155
  br label %233

174:                                              ; preds = %155
  %175 = load %struct.net_device*, %struct.net_device** %12, align 8
  %176 = getelementptr inbounds %struct.net_device, %struct.net_device* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = add i64 4, %177
  %179 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %180 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %179, i32 0, i32 4
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 3
  store i64 %178, i64* %181, align 8
  %182 = load %struct.net_device*, %struct.net_device** %12, align 8
  %183 = getelementptr inbounds %struct.net_device, %struct.net_device* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = sub i64 %184, 4
  %186 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %187 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %186, i32 0, i32 4
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 2
  store i64 %185, i64* %188, align 8
  %189 = load %struct.sock*, %struct.sock** %9, align 8
  %190 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %191 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %190, i32 0, i32 4
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 1
  store %struct.sock* %189, %struct.sock** %192, align 8
  %193 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %194 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %193, i32 0, i32 4
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 0
  store i32* @pppoe_chan_ops, i32** %195, align 8
  %196 = load %struct.net_device*, %struct.net_device** %12, align 8
  %197 = call i32 @dev_net(%struct.net_device* %196)
  %198 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %199 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %198, i32 0, i32 4
  %200 = call i32 @ppp_register_net_channel(i32 %197, %struct.TYPE_6__* %199)
  store i32 %200, i32* %15, align 4
  %201 = load i32, i32* %15, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %217

203:                                              ; preds = %174
  %204 = load %struct.pppoe_net*, %struct.pppoe_net** %13, align 8
  %205 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %206 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %205, i32 0, i32 3
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %210 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %209, i32 0, i32 3
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %214 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @delete_item(%struct.pppoe_net* %204, i32 %208, i32 %212, i32 %215)
  br label %233

217:                                              ; preds = %174
  %218 = load i32, i32* @PPPOX_CONNECTED, align 4
  %219 = load %struct.sock*, %struct.sock** %9, align 8
  %220 = getelementptr inbounds %struct.sock, %struct.sock* %219, i32 0, i32 0
  store i32 %218, i32* %220, align 4
  br label %221

221:                                              ; preds = %217, %114
  %222 = load %struct.sockaddr_pppox*, %struct.sockaddr_pppox** %10, align 8
  %223 = getelementptr inbounds %struct.sockaddr_pppox, %struct.sockaddr_pppox* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %228 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %227, i32 0, i32 1
  store i32 %226, i32* %228, align 8
  br label %229

229:                                              ; preds = %245, %221, %68, %50, %32
  %230 = load %struct.sock*, %struct.sock** %9, align 8
  %231 = call i32 @release_sock(%struct.sock* %230)
  %232 = load i32, i32* %15, align 4
  ret i32 %232

233:                                              ; preds = %203, %173, %154, %136
  %234 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %235 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %234, i32 0, i32 0
  %236 = load %struct.net_device*, %struct.net_device** %235, align 8
  %237 = icmp ne %struct.net_device* %236, null
  br i1 %237, label %238, label %245

238:                                              ; preds = %233
  %239 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %240 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %239, i32 0, i32 0
  %241 = load %struct.net_device*, %struct.net_device** %240, align 8
  %242 = call i32 @dev_put(%struct.net_device* %241)
  %243 = load %struct.pppox_sock*, %struct.pppox_sock** %11, align 8
  %244 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %243, i32 0, i32 0
  store %struct.net_device* null, %struct.net_device** %244, align 8
  br label %245

245:                                              ; preds = %238, %233
  br label %229
}

declare dso_local %struct.pppox_sock* @pppox_sk(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i64 @stage_session(i32) #1

declare dso_local i32 @pppox_unbind_sock(%struct.sock*) #1

declare dso_local %struct.pppoe_net* @pppoe_pernet(%struct.net*) #1

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i32 @delete_item(%struct.pppoe_net*, i32, i32, i32) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i64 @sk_pppox(%struct.pppox_sock*) #1

declare dso_local %struct.net_device* @dev_get_by_name(%struct.net*, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_7__*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @__set_item(%struct.pppoe_net*, %struct.pppox_sock*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @ppp_register_net_channel(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
