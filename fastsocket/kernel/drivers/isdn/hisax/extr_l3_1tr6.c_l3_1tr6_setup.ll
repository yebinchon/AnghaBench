; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3_1tr6.c_l3_1tr6_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3_1tr6.c_l3_1tr6_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l3_process = type { %struct.TYPE_9__*, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 (%struct.TYPE_9__*, i32, %struct.l3_process*)* }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i8*, i8* }
%struct.sk_buff = type { i32*, i32 }

@WE0_chanID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"setup wrong chanID len\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"setup wrong WE0_chanID\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"missing setup chanID\00", align 1
@WE6_serviceInd = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"missing setup SI\00", align 1
@WE0_destAddr = common dso_local global i32 0, align 4
@WE0_origAddr = common dso_local global i32 0, align 4
@WE0_netSpecFac = common dso_local global i32 0, align 4
@FAC_SPV = common dso_local global i32 0, align 4
@FAC_Activate = common dso_local global i32 0, align 4
@L3_DEB_WARN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"non-digital call: %s -> %s\00", align 1
@CC_SETUP = common dso_local global i32 0, align 4
@INDICATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l3_process*, i32, i8*)* @l3_1tr6_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l3_1tr6_setup(%struct.l3_process* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.l3_process*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [80 x i8], align 16
  %10 = alloca %struct.sk_buff*, align 8
  store %struct.l3_process* %0, %struct.l3_process** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.sk_buff*
  store %struct.sk_buff* %12, %struct.sk_buff** %10, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %7, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %7, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @WE0_chanID, align 4
  %24 = call i32* @findie(i32* %19, i32 %22, i32 %23, i32 0)
  store i32* %24, i32** %7, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %58

26:                                               ; preds = %3
  %27 = load i32*, i32** %7, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 1
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %34 = call i32 @l3_1tr6_error(%struct.l3_process* %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.sk_buff* %33)
  br label %235

35:                                               ; preds = %26
  %36 = load i32*, i32** %7, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 244
  %40 = icmp ne i32 %39, 128
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %44 = call i32 @l3_1tr6_error(%struct.l3_process* %42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), %struct.sk_buff* %43)
  br label %235

45:                                               ; preds = %35
  %46 = load i32*, i32** %7, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 3
  %50 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %51 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 8
  %53 = icmp ne i32 %49, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %45
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %54, %45
  br label %62

58:                                               ; preds = %3
  %59 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %61 = call i32 @l3_1tr6_error(%struct.l3_process* %59, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), %struct.sk_buff* %60)
  br label %235

62:                                               ; preds = %57
  %63 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  store i32* %65, i32** %7, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @WE6_serviceInd, align 4
  %71 = call i32* @findie(i32* %66, i32 %69, i32 %70, i32 6)
  store i32* %71, i32** %7, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %88

73:                                               ; preds = %62
  %74 = load i32*, i32** %7, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %78 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  store i32 %76, i32* %80, align 8
  %81 = load i32*, i32** %7, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %85 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  store i32 %83, i32* %87, align 4
  br label %92

88:                                               ; preds = %62
  %89 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %91 = call i32 @l3_1tr6_error(%struct.l3_process* %89, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), %struct.sk_buff* %90)
  br label %235

92:                                               ; preds = %73
  %93 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %94 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  store i32* %95, i32** %7, align 8
  %96 = load i32*, i32** %7, align 8
  %97 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %98 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @WE0_destAddr, align 4
  %101 = call i32* @findie(i32* %96, i32 %99, i32 %100, i32 0)
  store i32* %101, i32** %7, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %111

103:                                              ; preds = %92
  %104 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %105 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 2
  %108 = load i8*, i8** %107, align 8
  %109 = load i32*, i32** %7, align 8
  %110 = call i32 @iecpy(i8* %108, i32* %109, i32 1)
  br label %118

111:                                              ; preds = %92
  %112 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %113 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 2
  %116 = load i8*, i8** %115, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 0
  store i8 0, i8* %117, align 1
  br label %118

118:                                              ; preds = %111, %103
  %119 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %120 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  store i32* %121, i32** %7, align 8
  %122 = load i32*, i32** %7, align 8
  %123 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %124 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @WE0_origAddr, align 4
  %127 = call i32* @findie(i32* %122, i32 %125, i32 %126, i32 0)
  store i32* %127, i32** %7, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %129, label %137

129:                                              ; preds = %118
  %130 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %131 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 3
  %134 = load i8*, i8** %133, align 8
  %135 = load i32*, i32** %7, align 8
  %136 = call i32 @iecpy(i8* %134, i32* %135, i32 1)
  br label %144

137:                                              ; preds = %118
  %138 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %139 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 3
  %142 = load i8*, i8** %141, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 0
  store i8 0, i8* %143, align 1
  br label %144

144:                                              ; preds = %137, %129
  %145 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %146 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  store i32* %147, i32** %7, align 8
  %148 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %149 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 1
  store i32 0, i32* %150, align 4
  %151 = load i32*, i32** %7, align 8
  %152 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %153 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @WE0_netSpecFac, align 4
  %156 = call i32* @findie(i32* %151, i32 %154, i32 %155, i32 0)
  store i32* %156, i32** %7, align 8
  %157 = icmp ne i32* %156, null
  br i1 %157, label %158, label %175

158:                                              ; preds = %144
  %159 = load i32, i32* @FAC_SPV, align 4
  %160 = load i32*, i32** %7, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 3
  %162 = load i32, i32* %161, align 4
  %163 = icmp eq i32 %159, %162
  br i1 %163, label %170, label %164

164:                                              ; preds = %158
  %165 = load i32, i32* @FAC_Activate, align 4
  %166 = load i32*, i32** %7, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 3
  %168 = load i32, i32* %167, align 4
  %169 = icmp eq i32 %165, %168
  br i1 %169, label %170, label %174

170:                                              ; preds = %164, %158
  %171 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %172 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 1
  store i32 1, i32* %173, align 4
  br label %174

174:                                              ; preds = %170, %164
  br label %175

175:                                              ; preds = %174, %144
  %176 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %177 = call i32 @dev_kfree_skb(%struct.sk_buff* %176)
  %178 = load i32, i32* %8, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %232

180:                                              ; preds = %175
  %181 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %182 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = icmp ne i32 %185, 7
  br i1 %186, label %187, label %215

187:                                              ; preds = %180
  %188 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %189 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %188, i32 0, i32 0
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @L3_DEB_WARN, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %215

197:                                              ; preds = %187
  %198 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %199 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %200 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 3
  %203 = load i8*, i8** %202, align 8
  %204 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %205 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 2
  %208 = load i8*, i8** %207, align 8
  %209 = call i32 @sprintf(i8* %198, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %203, i8* %208)
  %210 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %211 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %210, i32 0, i32 0
  %212 = load %struct.TYPE_9__*, %struct.TYPE_9__** %211, align 8
  %213 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %214 = call i32 @l3_debug(%struct.TYPE_9__* %212, i8* %213)
  br label %215

215:                                              ; preds = %197, %187, %180
  %216 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %217 = call i32 @newl3state(%struct.l3_process* %216, i32 6)
  %218 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %219 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %218, i32 0, i32 0
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 1
  %223 = load i32 (%struct.TYPE_9__*, i32, %struct.l3_process*)*, i32 (%struct.TYPE_9__*, i32, %struct.l3_process*)** %222, align 8
  %224 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %225 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %224, i32 0, i32 0
  %226 = load %struct.TYPE_9__*, %struct.TYPE_9__** %225, align 8
  %227 = load i32, i32* @CC_SETUP, align 4
  %228 = load i32, i32* @INDICATION, align 4
  %229 = or i32 %227, %228
  %230 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %231 = call i32 %223(%struct.TYPE_9__* %226, i32 %229, %struct.l3_process* %230)
  br label %235

232:                                              ; preds = %175
  %233 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %234 = call i32 @release_l3_process(%struct.l3_process* %233)
  br label %235

235:                                              ; preds = %31, %41, %58, %88, %232, %215
  ret void
}

declare dso_local i32* @findie(i32*, i32, i32, i32) #1

declare dso_local i32 @l3_1tr6_error(%struct.l3_process*, i8*, %struct.sk_buff*) #1

declare dso_local i32 @iecpy(i8*, i32*, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @l3_debug(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @newl3state(%struct.l3_process*, i32) #1

declare dso_local i32 @release_l3_process(%struct.l3_process*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
