; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3_1tr6.c_l3_1tr6_setup_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3_1tr6.c_l3_1tr6_setup_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l3_process = type { %struct.TYPE_9__*, i32, %struct.TYPE_8__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32*, i32*, i32, i32 }
%struct.sk_buff = type { i32 }

@MT_N1_SETUP = common dso_local global i32 0, align 4
@PROTO_DIS_N1 = common dso_local global i32 0, align 4
@L3_DEB_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Wrong MSN Code\00", align 1
@WE0_netSpecFac = common dso_local global i8* null, align 8
@FAC_SPV = common dso_local global i32 0, align 4
@FAC_Activate = common dso_local global i32 0, align 4
@WE0_origAddr = common dso_local global i32 0, align 4
@WE0_destAddr = common dso_local global i32 0, align 4
@WE_Shift_F6 = common dso_local global i32 0, align 4
@WE6_serviceInd = common dso_local global i32 0, align 4
@T303 = common dso_local global i32 0, align 4
@CC_T303 = common dso_local global i32 0, align 4
@DL_DATA = common dso_local global i32 0, align 4
@REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l3_process*, i32, i8*)* @l3_1tr6_setup_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l3_1tr6_setup_req(%struct.l3_process* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.l3_process*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca [128 x i32], align 16
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.l3_process* %0, %struct.l3_process** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %14 = getelementptr inbounds [128 x i32], [128 x i32]* %8, i64 0, i64 0
  store i32* %14, i32** %9, align 8
  store i32 0, i32* %12, align 4
  %15 = load i32*, i32** %9, align 8
  %16 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %17 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @MT_N1_SETUP, align 4
  %20 = load i32, i32* @PROTO_DIS_N1, align 4
  %21 = call i32 @MsgHead(i32* %15, i32 %18, i32 %19, i32 %20)
  %22 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %23 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %10, align 8
  %27 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %28 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @isdigit(i32 %31) #3
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %77, label %34

34:                                               ; preds = %3
  %35 = load i32*, i32** %10, align 8
  %36 = load i32, i32* %35, align 4
  %37 = and i32 95, %36
  switch i32 %37, label %58 [
    i32 83, label %38
    i32 67, label %42
    i32 80, label %43
  ]

38:                                               ; preds = %34
  %39 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %40 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  br label %74

42:                                               ; preds = %34
  store i32 8, i32* %12, align 4
  br label %43

43:                                               ; preds = %34, %42
  %44 = load i32, i32* %12, align 4
  %45 = or i32 %44, 128
  store i32 %45, i32* %12, align 4
  %46 = load i32*, i32** %10, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %10, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 49
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load i32, i32* %12, align 4
  %53 = or i32 %52, 1
  store i32 %53, i32* %12, align 4
  br label %57

54:                                               ; preds = %43
  %55 = load i32, i32* %12, align 4
  %56 = or i32 %55, 2
  store i32 %56, i32* %12, align 4
  br label %57

57:                                               ; preds = %54, %51
  br label %74

58:                                               ; preds = %34
  %59 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %60 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %59, i32 0, i32 0
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @L3_DEB_WARN, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %58
  %69 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %70 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %69, i32 0, i32 0
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = call i32 @l3_debug(%struct.TYPE_9__* %71, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %73

73:                                               ; preds = %68, %58
  br label %74

74:                                               ; preds = %73, %57, %38
  %75 = load i32*, i32** %10, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %10, align 8
  br label %77

77:                                               ; preds = %74, %3
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %77
  %81 = load i32*, i32** %9, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %82, i32** %9, align 8
  store i32 24, i32* %81, align 4
  %83 = load i32*, i32** %9, align 8
  %84 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %84, i32** %9, align 8
  store i32 1, i32* %83, align 4
  %85 = load i32, i32* %12, align 4
  %86 = load i32*, i32** %9, align 8
  %87 = getelementptr inbounds i32, i32* %86, i32 1
  store i32* %87, i32** %9, align 8
  store i32 %85, i32* %86, align 4
  br label %88

88:                                               ; preds = %80, %77
  %89 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %90 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %145

94:                                               ; preds = %88
  %95 = load i8*, i8** @WE0_netSpecFac, align 8
  %96 = ptrtoint i8* %95 to i32
  %97 = load i32*, i32** %9, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 1
  store i32* %98, i32** %9, align 8
  store i32 %96, i32* %97, align 4
  %99 = load i32*, i32** %9, align 8
  %100 = getelementptr inbounds i32, i32* %99, i32 1
  store i32* %100, i32** %9, align 8
  store i32 4, i32* %99, align 4
  %101 = load i32*, i32** %9, align 8
  %102 = getelementptr inbounds i32, i32* %101, i32 1
  store i32* %102, i32** %9, align 8
  store i32 0, i32* %101, align 4
  %103 = load i32, i32* @FAC_SPV, align 4
  %104 = load i32*, i32** %9, align 8
  %105 = getelementptr inbounds i32, i32* %104, i32 1
  store i32* %105, i32** %9, align 8
  store i32 %103, i32* %104, align 4
  %106 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %107 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** %9, align 8
  %112 = getelementptr inbounds i32, i32* %111, i32 1
  store i32* %112, i32** %9, align 8
  store i32 %110, i32* %111, align 4
  %113 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %114 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load i32*, i32** %9, align 8
  %119 = getelementptr inbounds i32, i32* %118, i32 1
  store i32* %119, i32** %9, align 8
  store i32 %117, i32* %118, align 4
  %120 = load i8*, i8** @WE0_netSpecFac, align 8
  %121 = ptrtoint i8* %120 to i32
  %122 = load i32*, i32** %9, align 8
  %123 = getelementptr inbounds i32, i32* %122, i32 1
  store i32* %123, i32** %9, align 8
  store i32 %121, i32* %122, align 4
  %124 = load i32*, i32** %9, align 8
  %125 = getelementptr inbounds i32, i32* %124, i32 1
  store i32* %125, i32** %9, align 8
  store i32 4, i32* %124, align 4
  %126 = load i32*, i32** %9, align 8
  %127 = getelementptr inbounds i32, i32* %126, i32 1
  store i32* %127, i32** %9, align 8
  store i32 0, i32* %126, align 4
  %128 = load i32, i32* @FAC_Activate, align 4
  %129 = load i32*, i32** %9, align 8
  %130 = getelementptr inbounds i32, i32* %129, i32 1
  store i32* %130, i32** %9, align 8
  store i32 %128, i32* %129, align 4
  %131 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %132 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = load i32*, i32** %9, align 8
  %137 = getelementptr inbounds i32, i32* %136, i32 1
  store i32* %137, i32** %9, align 8
  store i32 %135, i32* %136, align 4
  %138 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %139 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = load i32*, i32** %9, align 8
  %144 = getelementptr inbounds i32, i32* %143, i32 1
  store i32* %144, i32** %9, align 8
  store i32 %142, i32* %143, align 4
  br label %145

145:                                              ; preds = %94, %88
  %146 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %147 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  store i32* %150, i32** %11, align 8
  %151 = load i32*, i32** %11, align 8
  %152 = load i32, i32* %151, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %177

154:                                              ; preds = %145
  %155 = load i32, i32* @WE0_origAddr, align 4
  %156 = load i32*, i32** %9, align 8
  %157 = getelementptr inbounds i32, i32* %156, i32 1
  store i32* %157, i32** %9, align 8
  store i32 %155, i32* %156, align 4
  %158 = load i32*, i32** %11, align 8
  %159 = call i32 @strlen(i32* %158)
  %160 = add nsw i32 %159, 1
  %161 = load i32*, i32** %9, align 8
  %162 = getelementptr inbounds i32, i32* %161, i32 1
  store i32* %162, i32** %9, align 8
  store i32 %160, i32* %161, align 4
  %163 = load i32*, i32** %9, align 8
  %164 = getelementptr inbounds i32, i32* %163, i32 1
  store i32* %164, i32** %9, align 8
  store i32 129, i32* %163, align 4
  br label %165

165:                                              ; preds = %169, %154
  %166 = load i32*, i32** %11, align 8
  %167 = load i32, i32* %166, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %176

169:                                              ; preds = %165
  %170 = load i32*, i32** %11, align 8
  %171 = getelementptr inbounds i32, i32* %170, i32 1
  store i32* %171, i32** %11, align 8
  %172 = load i32, i32* %170, align 4
  %173 = and i32 %172, 127
  %174 = load i32*, i32** %9, align 8
  %175 = getelementptr inbounds i32, i32* %174, i32 1
  store i32* %175, i32** %9, align 8
  store i32 %173, i32* %174, align 4
  br label %165

176:                                              ; preds = %165
  br label %177

177:                                              ; preds = %176, %145
  %178 = load i32, i32* @WE0_destAddr, align 4
  %179 = load i32*, i32** %9, align 8
  %180 = getelementptr inbounds i32, i32* %179, i32 1
  store i32* %180, i32** %9, align 8
  store i32 %178, i32* %179, align 4
  %181 = load i32*, i32** %10, align 8
  %182 = call i32 @strlen(i32* %181)
  %183 = add nsw i32 %182, 1
  %184 = load i32*, i32** %9, align 8
  %185 = getelementptr inbounds i32, i32* %184, i32 1
  store i32* %185, i32** %9, align 8
  store i32 %183, i32* %184, align 4
  %186 = load i32*, i32** %9, align 8
  %187 = getelementptr inbounds i32, i32* %186, i32 1
  store i32* %187, i32** %9, align 8
  store i32 129, i32* %186, align 4
  br label %188

188:                                              ; preds = %192, %177
  %189 = load i32*, i32** %10, align 8
  %190 = load i32, i32* %189, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %199

192:                                              ; preds = %188
  %193 = load i32*, i32** %10, align 8
  %194 = getelementptr inbounds i32, i32* %193, i32 1
  store i32* %194, i32** %10, align 8
  %195 = load i32, i32* %193, align 4
  %196 = and i32 %195, 127
  %197 = load i32*, i32** %9, align 8
  %198 = getelementptr inbounds i32, i32* %197, i32 1
  store i32* %198, i32** %9, align 8
  store i32 %196, i32* %197, align 4
  br label %188

199:                                              ; preds = %188
  %200 = load i32, i32* @WE_Shift_F6, align 4
  %201 = load i32*, i32** %9, align 8
  %202 = getelementptr inbounds i32, i32* %201, i32 1
  store i32* %202, i32** %9, align 8
  store i32 %200, i32* %201, align 4
  %203 = load i32, i32* @WE6_serviceInd, align 4
  %204 = load i32*, i32** %9, align 8
  %205 = getelementptr inbounds i32, i32* %204, i32 1
  store i32* %205, i32** %9, align 8
  store i32 %203, i32* %204, align 4
  %206 = load i32*, i32** %9, align 8
  %207 = getelementptr inbounds i32, i32* %206, i32 1
  store i32* %207, i32** %9, align 8
  store i32 2, i32* %206, align 4
  %208 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %209 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 4
  %213 = load i32*, i32** %9, align 8
  %214 = getelementptr inbounds i32, i32* %213, i32 1
  store i32* %214, i32** %9, align 8
  store i32 %212, i32* %213, align 4
  %215 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %216 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %215, i32 0, i32 2
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = load i32*, i32** %9, align 8
  %221 = getelementptr inbounds i32, i32* %220, i32 1
  store i32* %221, i32** %9, align 8
  store i32 %219, i32* %220, align 4
  %222 = load i32*, i32** %9, align 8
  %223 = getelementptr inbounds [128 x i32], [128 x i32]* %8, i64 0, i64 0
  %224 = ptrtoint i32* %222 to i64
  %225 = ptrtoint i32* %223 to i64
  %226 = sub i64 %224, %225
  %227 = sdiv exact i64 %226, 4
  %228 = trunc i64 %227 to i32
  store i32 %228, i32* %13, align 4
  %229 = load i32, i32* %13, align 4
  %230 = call %struct.sk_buff* @l3_alloc_skb(i32 %229)
  store %struct.sk_buff* %230, %struct.sk_buff** %7, align 8
  %231 = icmp ne %struct.sk_buff* %230, null
  br i1 %231, label %233, label %232

232:                                              ; preds = %199
  br label %258

233:                                              ; preds = %199
  %234 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %235 = load i32, i32* %13, align 4
  %236 = call i32 @skb_put(%struct.sk_buff* %234, i32 %235)
  %237 = getelementptr inbounds [128 x i32], [128 x i32]* %8, i64 0, i64 0
  %238 = load i32, i32* %13, align 4
  %239 = call i32 @memcpy(i32 %236, i32* %237, i32 %238)
  %240 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %241 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %240, i32 0, i32 1
  %242 = call i32 @L3DelTimer(i32* %241)
  %243 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %244 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %243, i32 0, i32 1
  %245 = load i32, i32* @T303, align 4
  %246 = load i32, i32* @CC_T303, align 4
  %247 = call i32 @L3AddTimer(i32* %244, i32 %245, i32 %246)
  %248 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %249 = call i32 @newl3state(%struct.l3_process* %248, i32 1)
  %250 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %251 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %250, i32 0, i32 0
  %252 = load %struct.TYPE_9__*, %struct.TYPE_9__** %251, align 8
  %253 = load i32, i32* @DL_DATA, align 4
  %254 = load i32, i32* @REQUEST, align 4
  %255 = or i32 %253, %254
  %256 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %257 = call i32 @l3_msg(%struct.TYPE_9__* %252, i32 %255, %struct.sk_buff* %256)
  br label %258

258:                                              ; preds = %233, %232
  ret void
}

declare dso_local i32 @MsgHead(i32*, i32, i32, i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isdigit(i32) #2

declare dso_local i32 @l3_debug(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local %struct.sk_buff* @l3_alloc_skb(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @L3DelTimer(i32*) #1

declare dso_local i32 @L3AddTimer(i32*, i32, i32) #1

declare dso_local i32 @newl3state(%struct.l3_process*, i32) #1

declare dso_local i32 @l3_msg(%struct.TYPE_9__*, i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
