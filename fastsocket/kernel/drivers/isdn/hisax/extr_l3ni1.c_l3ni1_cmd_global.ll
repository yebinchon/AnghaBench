; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3ni1.c_l3ni1_cmd_global.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3ni1.c_l3ni1_cmd_global.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PStack = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i8**, i8*, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.l3_process = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i8*, i32 }

@MT_FACILITY = common dso_local global i32 0, align 4
@CC_TNI1_IO = common dso_local global i32 0, align 4
@REQUEST = common dso_local global i32 0, align 4
@DL_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"l3ni1_cmd_global abort unknown id\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"l3ni1_cmd_global unknown cmd 0x%lx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.PStack*, %struct.TYPE_11__*)* @l3ni1_cmd_global to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l3ni1_cmd_global(%struct.PStack* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.PStack*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [265 x i8*], align 16
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.l3_process*, align 8
  store %struct.PStack* %0, %struct.PStack** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %14 = getelementptr inbounds [265 x i8*], [265 x i8*]* %7, i64 0, i64 0
  store i8** %14, i8*** %8, align 8
  store %struct.l3_process* null, %struct.l3_process** %13, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %246 [
    i32 129, label %18
    i32 128, label %228
  ]

18:                                               ; preds = %2
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i32 -2, i32* %3, align 4
  br label %252

26:                                               ; preds = %18
  store i32 1, i32* %11, align 4
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %31, 8
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %39, %26
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load i32, i32* %9, align 4
  %38 = ashr i32 %37, 8
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %9, align 4
  br label %33

42:                                               ; preds = %33
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 %47, %48
  %50 = add nsw i32 %49, 8
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp sgt i32 %51, 255
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  store i32 -2, i32* %3, align 4
  br label %252

54:                                               ; preds = %42
  %55 = load %struct.PStack*, %struct.PStack** %4, align 8
  %56 = call i8* @new_invoke_id(%struct.PStack* %55)
  store i8* %56, i8** %6, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %252

59:                                               ; preds = %54
  store i32 -1, i32* %9, align 4
  %60 = load i8**, i8*** %8, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @MT_FACILITY, align 4
  %63 = call i32 @MsgHead(i8** %60, i32 %61, i32 %62)
  %64 = load i8**, i8*** %8, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i32 1
  store i8** %65, i8*** %8, align 8
  store i8* inttoptr (i64 28 to i8*), i8** %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = inttoptr i64 %67 to i8*
  %69 = load i8**, i8*** %8, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i32 1
  store i8** %70, i8*** %8, align 8
  store i8* %68, i8** %69, align 8
  %71 = load i8**, i8*** %8, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i32 1
  store i8** %72, i8*** %8, align 8
  store i8* inttoptr (i64 145 to i8*), i8** %71, align 8
  %73 = load i8**, i8*** %8, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i32 1
  store i8** %74, i8*** %8, align 8
  store i8* inttoptr (i64 161 to i8*), i8** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sub nsw i32 %75, 3
  %77 = sext i32 %76 to i64
  %78 = inttoptr i64 %77 to i8*
  %79 = load i8**, i8*** %8, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i32 1
  store i8** %80, i8*** %8, align 8
  store i8* %78, i8** %79, align 8
  %81 = load i8**, i8*** %8, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i32 1
  store i8** %82, i8*** %8, align 8
  store i8* inttoptr (i64 2 to i8*), i8** %81, align 8
  %83 = load i8**, i8*** %8, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i32 1
  store i8** %84, i8*** %8, align 8
  store i8* inttoptr (i64 1 to i8*), i8** %83, align 8
  %85 = load i8*, i8** %6, align 8
  %86 = load i8**, i8*** %8, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i32 1
  store i8** %87, i8*** %8, align 8
  store i8* %85, i8** %86, align 8
  %88 = load i8**, i8*** %8, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i32 1
  store i8** %89, i8*** %8, align 8
  store i8* inttoptr (i64 2 to i8*), i8** %88, align 8
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = inttoptr i64 %91 to i8*
  %93 = load i8**, i8*** %8, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i32 1
  store i8** %94, i8*** %8, align 8
  store i8* %92, i8** %93, align 8
  %95 = load i32, i32* %11, align 4
  store i32 %95, i32* %9, align 4
  br label %96

96:                                               ; preds = %113, %59
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %116

99:                                               ; preds = %96
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %9, align 4
  %106 = sub nsw i32 %105, 1
  %107 = ashr i32 %104, %106
  %108 = and i32 %107, 255
  %109 = sext i32 %108 to i64
  %110 = inttoptr i64 %109 to i8*
  %111 = load i8**, i8*** %8, align 8
  %112 = getelementptr inbounds i8*, i8** %111, i32 1
  store i8** %112, i8*** %8, align 8
  store i8* %110, i8** %111, align 8
  br label %113

113:                                              ; preds = %99
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %9, align 4
  br label %96

116:                                              ; preds = %96
  %117 = load i8**, i8*** %8, align 8
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 2
  %122 = load i8**, i8*** %121, align 8
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @memcpy(i8** %117, i8** %122, i32 %127)
  %129 = load i8**, i8*** %8, align 8
  %130 = getelementptr inbounds [265 x i8*], [265 x i8*]* %7, i64 0, i64 0
  %131 = ptrtoint i8** %129 to i64
  %132 = ptrtoint i8** %130 to i64
  %133 = sub i64 %131, %132
  %134 = sdiv exact i64 %133, 8
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = sext i32 %139 to i64
  %141 = add nsw i64 %134, %140
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %10, align 4
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = icmp sgt i32 %147, 0
  br i1 %148, label %149, label %158

149:                                              ; preds = %116
  %150 = load %struct.PStack*, %struct.PStack** %4, align 8
  %151 = call %struct.l3_process* @ni1_new_l3_process(%struct.PStack* %150, i32 -1)
  store %struct.l3_process* %151, %struct.l3_process** %13, align 8
  %152 = icmp ne %struct.l3_process* %151, null
  br i1 %152, label %157, label %153

153:                                              ; preds = %149
  %154 = load %struct.PStack*, %struct.PStack** %4, align 8
  %155 = load i8*, i8** %6, align 8
  %156 = call i32 @free_invoke_id(%struct.PStack* %154, i8* %155)
  store i32 -2, i32* %3, align 4
  br label %252

157:                                              ; preds = %149
  br label %158

158:                                              ; preds = %157, %116
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.l3_process*, %struct.l3_process** %13, align 8
  %165 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 2
  store i32 %163, i32* %167, align 8
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.l3_process*, %struct.l3_process** %13, align 8
  %174 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 0
  store i32 %172, i32* %176, align 8
  %177 = load i32, i32* %10, align 4
  %178 = call %struct.sk_buff* @l3_alloc_skb(i32 %177)
  store %struct.sk_buff* %178, %struct.sk_buff** %12, align 8
  %179 = icmp ne %struct.sk_buff* %178, null
  br i1 %179, label %190, label %180

180:                                              ; preds = %158
  %181 = load %struct.PStack*, %struct.PStack** %4, align 8
  %182 = load i8*, i8** %6, align 8
  %183 = call i32 @free_invoke_id(%struct.PStack* %181, i8* %182)
  %184 = load %struct.l3_process*, %struct.l3_process** %13, align 8
  %185 = icmp ne %struct.l3_process* %184, null
  br i1 %185, label %186, label %189

186:                                              ; preds = %180
  %187 = load %struct.l3_process*, %struct.l3_process** %13, align 8
  %188 = call i32 @ni1_release_l3_process(%struct.l3_process* %187)
  br label %189

189:                                              ; preds = %186, %180
  store i32 -2, i32* %3, align 4
  br label %252

190:                                              ; preds = %158
  %191 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %192 = load i32, i32* %10, align 4
  %193 = call i8** @skb_put(%struct.sk_buff* %191, i32 %192)
  %194 = getelementptr inbounds [265 x i8*], [265 x i8*]* %7, i64 0, i64 0
  %195 = load i32, i32* %10, align 4
  %196 = call i32 @memcpy(i8** %193, i8** %194, i32 %195)
  %197 = load %struct.l3_process*, %struct.l3_process** %13, align 8
  %198 = icmp ne %struct.l3_process* %197, null
  br i1 %198, label %199, label %216

199:                                              ; preds = %190
  %200 = load i8*, i8** %6, align 8
  %201 = load %struct.l3_process*, %struct.l3_process** %13, align 8
  %202 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 1
  store i8* %200, i8** %204, align 8
  %205 = load %struct.l3_process*, %struct.l3_process** %13, align 8
  %206 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %205, i32 0, i32 0
  %207 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 4
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* @CC_TNI1_IO, align 4
  %213 = load i32, i32* @REQUEST, align 4
  %214 = or i32 %212, %213
  %215 = call i32 @L3AddTimer(i32* %206, i32 %211, i32 %214)
  br label %216

216:                                              ; preds = %199, %190
  %217 = load %struct.PStack*, %struct.PStack** %4, align 8
  %218 = load i32, i32* @DL_DATA, align 4
  %219 = load i32, i32* @REQUEST, align 4
  %220 = or i32 %218, %219
  %221 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %222 = call i32 @l3_msg(%struct.PStack* %217, i32 %220, %struct.sk_buff* %221)
  %223 = load i8*, i8** %6, align 8
  %224 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 3
  store i8* %223, i8** %227, align 8
  store i32 0, i32* %3, align 4
  br label %252

228:                                              ; preds = %2
  %229 = load %struct.PStack*, %struct.PStack** %4, align 8
  %230 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 3
  %234 = load i8*, i8** %233, align 8
  %235 = call %struct.l3_process* @l3ni1_search_dummy_proc(%struct.PStack* %229, i8* %234)
  store %struct.l3_process* %235, %struct.l3_process** %13, align 8
  %236 = icmp ne %struct.l3_process* %235, null
  br i1 %236, label %237, label %243

237:                                              ; preds = %228
  %238 = load %struct.l3_process*, %struct.l3_process** %13, align 8
  %239 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %238, i32 0, i32 0
  %240 = call i32 @L3DelTimer(i32* %239)
  %241 = load %struct.l3_process*, %struct.l3_process** %13, align 8
  %242 = call i32 @ni1_release_l3_process(%struct.l3_process* %241)
  store i32 0, i32* %3, align 4
  br label %252

243:                                              ; preds = %228
  %244 = load %struct.PStack*, %struct.PStack** %4, align 8
  %245 = call i32 (%struct.PStack*, i8*, ...) @l3_debug(%struct.PStack* %244, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 -2, i32* %3, align 4
  br label %252

246:                                              ; preds = %2
  %247 = load %struct.PStack*, %struct.PStack** %4, align 8
  %248 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = call i32 (%struct.PStack*, i8*, ...) @l3_debug(%struct.PStack* %247, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %250)
  store i32 -1, i32* %3, align 4
  br label %252

252:                                              ; preds = %246, %243, %237, %216, %189, %153, %58, %53, %25
  %253 = load i32, i32* %3, align 4
  ret i32 %253
}

declare dso_local i8* @new_invoke_id(%struct.PStack*) #1

declare dso_local i32 @MsgHead(i8**, i32, i32) #1

declare dso_local i32 @memcpy(i8**, i8**, i32) #1

declare dso_local %struct.l3_process* @ni1_new_l3_process(%struct.PStack*, i32) #1

declare dso_local i32 @free_invoke_id(%struct.PStack*, i8*) #1

declare dso_local %struct.sk_buff* @l3_alloc_skb(i32) #1

declare dso_local i32 @ni1_release_l3_process(%struct.l3_process*) #1

declare dso_local i8** @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @L3AddTimer(i32*, i32, i32) #1

declare dso_local i32 @l3_msg(%struct.PStack*, i32, %struct.sk_buff*) #1

declare dso_local %struct.l3_process* @l3ni1_search_dummy_proc(%struct.PStack*, i8*) #1

declare dso_local i32 @L3DelTimer(i32*) #1

declare dso_local i32 @l3_debug(%struct.PStack*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
