; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_msghandler.c_handle_ipmb_get_msg_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_msghandler.c_handle_ipmb_get_msg_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.ipmi_smi_handlers*, %struct.TYPE_8__* }
%struct.ipmi_smi_handlers = type { i32 (i32, %struct.ipmi_smi_msg*, i32)* }
%struct.TYPE_8__ = type { i8 }
%struct.ipmi_smi_msg = type { i32, i32*, i32*, i32 }
%struct.cmd_rcvr = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.ipmi_ipmb_addr = type { i32, i32, i32, i32 }
%struct.ipmi_recv_msg = type { i32, i32, %struct.TYPE_9__, i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }

@invalid_commands = common dso_local global i32 0, align 4
@unhandled_commands = common dso_local global i32 0, align 4
@IPMI_NETFN_APP_REQUEST = common dso_local global i32 0, align 4
@IPMI_SEND_MSG_CMD = common dso_local global i32 0, align 4
@IPMI_INVALID_CMD_COMPLETION_CODE = common dso_local global i32 0, align 4
@handled_commands = common dso_local global i32 0, align 4
@free_user = common dso_local global i32 0, align 4
@IPMI_IPMB_ADDR_TYPE = common dso_local global i32 0, align 4
@IPMI_CMD_RECV_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.ipmi_smi_msg*)* @handle_ipmb_get_msg_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_ipmb_get_msg_cmd(%struct.TYPE_11__* %0, %struct.ipmi_smi_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.ipmi_smi_msg*, align 8
  %6 = alloca %struct.cmd_rcvr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.ipmi_ipmb_addr*, align 8
  %13 = alloca %struct.ipmi_recv_msg*, align 8
  %14 = alloca %struct.ipmi_smi_handlers*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.ipmi_smi_msg* %1, %struct.ipmi_smi_msg** %5, align 8
  store i32 0, i32* %7, align 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %11, align 8
  %15 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %16 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %17, 10
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %21 = load i32, i32* @invalid_commands, align 4
  %22 = call i32 @ipmi_inc_stat(%struct.TYPE_11__* %20, i32 %21)
  store i32 0, i32* %3, align 4
  br label %313

23:                                               ; preds = %2
  %24 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %25 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %313

31:                                               ; preds = %23
  %32 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %33 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 4
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %36, 2
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %8, align 1
  %39 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %40 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 8
  %43 = load i32, i32* %42, align 4
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %9, align 1
  %45 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %46 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 3
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 15
  %51 = trunc i32 %50 to i8
  store i8 %51, i8* %10, align 1
  %52 = call i32 (...) @rcu_read_lock()
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %54 = load i8, i8* %8, align 1
  %55 = load i8, i8* %9, align 1
  %56 = load i8, i8* %10, align 1
  %57 = call %struct.cmd_rcvr* @find_cmd_rcvr(%struct.TYPE_11__* %53, i8 zeroext %54, i8 zeroext %55, i8 zeroext %56)
  store %struct.cmd_rcvr* %57, %struct.cmd_rcvr** %6, align 8
  %58 = load %struct.cmd_rcvr*, %struct.cmd_rcvr** %6, align 8
  %59 = icmp ne %struct.cmd_rcvr* %58, null
  br i1 %59, label %60, label %67

60:                                               ; preds = %31
  %61 = load %struct.cmd_rcvr*, %struct.cmd_rcvr** %6, align 8
  %62 = getelementptr inbounds %struct.cmd_rcvr, %struct.cmd_rcvr* %61, i32 0, i32 0
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  store %struct.TYPE_10__* %63, %struct.TYPE_10__** %11, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = call i32 @kref_get(i32* %65)
  br label %68

67:                                               ; preds = %31
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %11, align 8
  br label %68

68:                                               ; preds = %67, %60
  %69 = call i32 (...) @rcu_read_unlock()
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %71 = icmp eq %struct.TYPE_10__* %70, null
  br i1 %71, label %72, label %210

72:                                               ; preds = %68
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %74 = load i32, i32* @unhandled_commands, align 4
  %75 = call i32 @ipmi_inc_stat(%struct.TYPE_11__* %73, i32 %74)
  %76 = load i32, i32* @IPMI_NETFN_APP_REQUEST, align 4
  %77 = shl i32 %76, 2
  %78 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %79 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  store i32 %77, i32* %81, align 4
  %82 = load i32, i32* @IPMI_SEND_MSG_CMD, align 4
  %83 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %84 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  store i32 %82, i32* %86, align 4
  %87 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %88 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 3
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %93 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 2
  store i32 %91, i32* %95, align 4
  %96 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %97 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 6
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %102 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 3
  store i32 %100, i32* %104, align 4
  %105 = load i8, i8* %8, align 1
  %106 = zext i8 %105 to i32
  %107 = add nsw i32 %106, 1
  %108 = shl i32 %107, 2
  %109 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %110 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 7
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %113, 3
  %115 = or i32 %108, %114
  %116 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %117 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 4
  store i32 %115, i32* %119, align 4
  %120 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %121 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 3
  %124 = bitcast i32* %123 to i8*
  %125 = call i8* @ipmb_checksum(i8* %124, i32 2)
  %126 = ptrtoint i8* %125 to i32
  %127 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %128 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %127, i32 0, i32 2
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 5
  store i32 %126, i32* %130, align 4
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 2
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %132, align 8
  %134 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %135 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 3
  %138 = load i32, i32* %137, align 4
  %139 = and i32 %138, 15
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = load i8, i8* %142, align 1
  %144 = zext i8 %143 to i32
  %145 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %146 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %145, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 6
  store i32 %144, i32* %148, align 4
  %149 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %150 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 7
  %153 = load i32, i32* %152, align 4
  %154 = and i32 %153, 252
  %155 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %156 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %155, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 4
  %159 = load i32, i32* %158, align 4
  %160 = and i32 %159, 3
  %161 = or i32 %154, %160
  %162 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %163 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %162, i32 0, i32 2
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 7
  store i32 %161, i32* %165, align 4
  %166 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %167 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %166, i32 0, i32 1
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 8
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %172 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %171, i32 0, i32 2
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 8
  store i32 %170, i32* %174, align 4
  %175 = load i32, i32* @IPMI_INVALID_CMD_COMPLETION_CODE, align 4
  %176 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %177 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %176, i32 0, i32 2
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 9
  store i32 %175, i32* %179, align 4
  %180 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %181 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %180, i32 0, i32 2
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 6
  %184 = bitcast i32* %183 to i8*
  %185 = call i8* @ipmb_checksum(i8* %184, i32 4)
  %186 = ptrtoint i8* %185 to i32
  %187 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %188 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %187, i32 0, i32 2
  %189 = load i32*, i32** %188, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 10
  store i32 %186, i32* %190, align 4
  %191 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %192 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %191, i32 0, i32 3
  store i32 11, i32* %192, align 8
  %193 = call i32 (...) @rcu_read_lock()
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 1
  %196 = load %struct.ipmi_smi_handlers*, %struct.ipmi_smi_handlers** %195, align 8
  store %struct.ipmi_smi_handlers* %196, %struct.ipmi_smi_handlers** %14, align 8
  %197 = load %struct.ipmi_smi_handlers*, %struct.ipmi_smi_handlers** %14, align 8
  %198 = icmp ne %struct.ipmi_smi_handlers* %197, null
  br i1 %198, label %199, label %208

199:                                              ; preds = %72
  %200 = load %struct.ipmi_smi_handlers*, %struct.ipmi_smi_handlers** %14, align 8
  %201 = getelementptr inbounds %struct.ipmi_smi_handlers, %struct.ipmi_smi_handlers* %200, i32 0, i32 0
  %202 = load i32 (i32, %struct.ipmi_smi_msg*, i32)*, i32 (i32, %struct.ipmi_smi_msg*, i32)** %201, align 8
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %207 = call i32 %202(i32 %205, %struct.ipmi_smi_msg* %206, i32 0)
  store i32 -1, i32* %7, align 4
  br label %208

208:                                              ; preds = %199, %72
  %209 = call i32 (...) @rcu_read_unlock()
  br label %311

210:                                              ; preds = %68
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %212 = load i32, i32* @handled_commands, align 4
  %213 = call i32 @ipmi_inc_stat(%struct.TYPE_11__* %211, i32 %212)
  %214 = call %struct.ipmi_recv_msg* (...) @ipmi_alloc_recv_msg()
  store %struct.ipmi_recv_msg* %214, %struct.ipmi_recv_msg** %13, align 8
  %215 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %216 = icmp ne %struct.ipmi_recv_msg* %215, null
  br i1 %216, label %222, label %217

217:                                              ; preds = %210
  store i32 1, i32* %7, align 4
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 0
  %220 = load i32, i32* @free_user, align 4
  %221 = call i32 @kref_put(i32* %219, i32 %220)
  br label %310

222:                                              ; preds = %210
  %223 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %224 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %223, i32 0, i32 5
  %225 = bitcast i32* %224 to %struct.ipmi_ipmb_addr*
  store %struct.ipmi_ipmb_addr* %225, %struct.ipmi_ipmb_addr** %12, align 8
  %226 = load i32, i32* @IPMI_IPMB_ADDR_TYPE, align 4
  %227 = load %struct.ipmi_ipmb_addr*, %struct.ipmi_ipmb_addr** %12, align 8
  %228 = getelementptr inbounds %struct.ipmi_ipmb_addr, %struct.ipmi_ipmb_addr* %227, i32 0, i32 3
  store i32 %226, i32* %228, align 4
  %229 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %230 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %229, i32 0, i32 1
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 6
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.ipmi_ipmb_addr*, %struct.ipmi_ipmb_addr** %12, align 8
  %235 = getelementptr inbounds %struct.ipmi_ipmb_addr, %struct.ipmi_ipmb_addr* %234, i32 0, i32 0
  store i32 %233, i32* %235, align 4
  %236 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %237 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %236, i32 0, i32 1
  %238 = load i32*, i32** %237, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 7
  %240 = load i32, i32* %239, align 4
  %241 = and i32 %240, 3
  %242 = load %struct.ipmi_ipmb_addr*, %struct.ipmi_ipmb_addr** %12, align 8
  %243 = getelementptr inbounds %struct.ipmi_ipmb_addr, %struct.ipmi_ipmb_addr* %242, i32 0, i32 1
  store i32 %241, i32* %243, align 4
  %244 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %245 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %244, i32 0, i32 1
  %246 = load i32*, i32** %245, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 3
  %248 = load i32, i32* %247, align 4
  %249 = and i32 %248, 15
  %250 = load %struct.ipmi_ipmb_addr*, %struct.ipmi_ipmb_addr** %12, align 8
  %251 = getelementptr inbounds %struct.ipmi_ipmb_addr, %struct.ipmi_ipmb_addr* %250, i32 0, i32 2
  store i32 %249, i32* %251, align 4
  %252 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %253 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %254 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %253, i32 0, i32 4
  store %struct.TYPE_10__* %252, %struct.TYPE_10__** %254, align 8
  %255 = load i32, i32* @IPMI_CMD_RECV_TYPE, align 4
  %256 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %257 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %256, i32 0, i32 3
  store i32 %255, i32* %257, align 8
  %258 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %259 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %258, i32 0, i32 1
  %260 = load i32*, i32** %259, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 7
  %262 = load i32, i32* %261, align 4
  %263 = ashr i32 %262, 2
  %264 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %265 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %264, i32 0, i32 0
  store i32 %263, i32* %265, align 8
  %266 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %267 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %266, i32 0, i32 1
  %268 = load i32*, i32** %267, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 4
  %270 = load i32, i32* %269, align 4
  %271 = ashr i32 %270, 2
  %272 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %273 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %272, i32 0, i32 2
  %274 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %273, i32 0, i32 0
  store i32 %271, i32* %274, align 8
  %275 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %276 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %275, i32 0, i32 1
  %277 = load i32*, i32** %276, align 8
  %278 = getelementptr inbounds i32, i32* %277, i64 8
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %281 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %280, i32 0, i32 2
  %282 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %281, i32 0, i32 1
  store i32 %279, i32* %282, align 4
  %283 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %284 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %287 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %286, i32 0, i32 2
  %288 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %287, i32 0, i32 3
  store i32 %285, i32* %288, align 4
  %289 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %290 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = sub nsw i32 %291, 10
  %293 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %294 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %293, i32 0, i32 2
  %295 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %294, i32 0, i32 2
  store i32 %292, i32* %295, align 8
  %296 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %297 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %300 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %299, i32 0, i32 1
  %301 = load i32*, i32** %300, align 8
  %302 = getelementptr inbounds i32, i32* %301, i64 9
  %303 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %304 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = sub nsw i32 %305, 10
  %307 = call i32 @memcpy(i32 %298, i32* %302, i32 %306)
  %308 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %309 = call i32 @deliver_response(%struct.ipmi_recv_msg* %308)
  br label %310

310:                                              ; preds = %222, %217
  br label %311

311:                                              ; preds = %310, %208
  %312 = load i32, i32* %7, align 4
  store i32 %312, i32* %3, align 4
  br label %313

313:                                              ; preds = %311, %30, %19
  %314 = load i32, i32* %3, align 4
  ret i32 %314
}

declare dso_local i32 @ipmi_inc_stat(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.cmd_rcvr* @find_cmd_rcvr(%struct.TYPE_11__*, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i8* @ipmb_checksum(i8*, i32) #1

declare dso_local %struct.ipmi_recv_msg* @ipmi_alloc_recv_msg(...) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @deliver_response(%struct.ipmi_recv_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
