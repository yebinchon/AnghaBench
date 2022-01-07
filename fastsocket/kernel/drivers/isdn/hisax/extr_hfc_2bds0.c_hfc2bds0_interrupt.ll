; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc_2bds0.c_hfc2bds0_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc_2bds0.c_hfc2bds0_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32, i32 (%struct.IsdnCardState*, i32)*, %struct.TYPE_9__, i32, i64, i32, %struct.TYPE_10__*, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.BCState = type { i32, i32 (%struct.IsdnCardState*, i32)*, %struct.TYPE_9__, i32, i64, i32, %struct.TYPE_10__*, i32, i32, i32, %struct.TYPE_7__ }

@L1_DEB_ISAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"HFCD irq %x %s\00", align 1
@FLG_LOCK_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"locked\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"unlocked\00", align 1
@HFCD_STATES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"ph_state chg %d->%d\00", align 1
@D_L1STATECHANGE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"hfcd spurious 0x08 IRQ\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"hfcd spurious 0x10 IRQ\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"hfcd spurious 0x01 IRQ\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"fill_data %d blocked\00", align 1
@B_XMTBUFREADY = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [23 x i8] c"hfcd spurious 0x02 IRQ\00", align 1
@FLG_DBUSY_TIMER = common dso_local global i32 0, align 4
@FLG_L1_DBUSY = common dso_local global i32 0, align 4
@D_CLEARBUSY = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [27 x i8] c"hfc_fill_dfifo irq blocked\00", align 1
@D_XMTBUFREADY = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [20 x i8] c"HFCD irq %x loop %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfc2bds0_interrupt(%struct.IsdnCardState* %0, i32 %1) #0 {
  %3 = alloca %struct.IsdnCardState*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.BCState*, align 8
  %7 = alloca i32, align 4
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 15, i32* %7, align 4
  %8 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %9 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @L1_DEB_ISAC, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %2
  %15 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @FLG_LOCK_ATOMIC, align 4
  %18 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %19 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %18, i32 0, i32 3
  %20 = call i64 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %24 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %16, i8* %23)
  br label %25

25:                                               ; preds = %14, %2
  %26 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %27 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = and i32 %33, 64
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %70

36:                                               ; preds = %25
  %37 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %38 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %37, i32 0, i32 1
  %39 = load i32 (%struct.IsdnCardState*, i32)*, i32 (%struct.IsdnCardState*, i32)** %38, align 8
  %40 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %41 = load i32, i32* @HFCD_STATES, align 4
  %42 = call i32 %39(%struct.IsdnCardState* %40, i32 %41)
  %43 = and i32 %42, 15
  store i32 %43, i32* %5, align 4
  %44 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %45 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @L1_DEB_ISAC, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %36
  %51 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %52 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %53 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %52, i32 0, i32 10
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %51, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %50, %36
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %62 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %61, i32 0, i32 10
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store i32 %60, i32* %64, align 4
  %65 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %66 = load i32, i32* @D_L1STATECHANGE, align 4
  %67 = call i32 @schedule_event(%struct.IsdnCardState* %65, i32 %66)
  %68 = load i32, i32* %4, align 4
  %69 = and i32 %68, -65
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %59, %25
  br label %71

71:                                               ; preds = %454, %70
  %72 = load i32, i32* %4, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %455

74:                                               ; preds = %71
  %75 = load i32, i32* @FLG_LOCK_ATOMIC, align 4
  %76 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %77 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %76, i32 0, i32 3
  %78 = call i64 @test_bit(i32 %75, i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %74
  %81 = load i32, i32* %4, align 4
  %82 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %83 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %81
  store i32 %87, i32* %85, align 4
  br label %455

88:                                               ; preds = %74
  %89 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %90 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, 24
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %88
  %97 = load i32, i32* %4, align 4
  store i32 %97, i32* %5, align 4
  %98 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %99 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %4, align 4
  %103 = load i32, i32* %5, align 4
  %104 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %105 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  store i32 %103, i32* %107, align 4
  br label %108

108:                                              ; preds = %96, %88
  %109 = load i32, i32* %4, align 4
  %110 = and i32 %109, 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %131

112:                                              ; preds = %108
  %113 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %114 = call %struct.IsdnCardState* @Sel_BCS(%struct.IsdnCardState* %113, i32 0)
  %115 = bitcast %struct.IsdnCardState* %114 to %struct.BCState*
  store %struct.BCState* %115, %struct.BCState** %6, align 8
  %116 = icmp ne %struct.BCState* %115, null
  br i1 %116, label %126, label %117

117:                                              ; preds = %112
  %118 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %119 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %124 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %123, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %125

125:                                              ; preds = %122, %117
  br label %130

126:                                              ; preds = %112
  %127 = load %struct.BCState*, %struct.BCState** %6, align 8
  %128 = bitcast %struct.BCState* %127 to %struct.IsdnCardState*
  %129 = call i32 @main_rec_2bds0(%struct.IsdnCardState* %128)
  br label %130

130:                                              ; preds = %126, %125
  br label %131

131:                                              ; preds = %130, %108
  %132 = load i32, i32* %4, align 4
  %133 = and i32 %132, 16
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %154

135:                                              ; preds = %131
  %136 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %137 = call %struct.IsdnCardState* @Sel_BCS(%struct.IsdnCardState* %136, i32 1)
  %138 = bitcast %struct.IsdnCardState* %137 to %struct.BCState*
  store %struct.BCState* %138, %struct.BCState** %6, align 8
  %139 = icmp ne %struct.BCState* %138, null
  br i1 %139, label %149, label %140

140:                                              ; preds = %135
  %141 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %142 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %140
  %146 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %147 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %146, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %148

148:                                              ; preds = %145, %140
  br label %153

149:                                              ; preds = %135
  %150 = load %struct.BCState*, %struct.BCState** %6, align 8
  %151 = bitcast %struct.BCState* %150 to %struct.IsdnCardState*
  %152 = call i32 @main_rec_2bds0(%struct.IsdnCardState* %151)
  br label %153

153:                                              ; preds = %149, %148
  br label %154

154:                                              ; preds = %153, %131
  %155 = load i32, i32* %4, align 4
  %156 = and i32 %155, 1
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %235

158:                                              ; preds = %154
  %159 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %160 = call %struct.IsdnCardState* @Sel_BCS(%struct.IsdnCardState* %159, i32 0)
  %161 = bitcast %struct.IsdnCardState* %160 to %struct.BCState*
  store %struct.BCState* %161, %struct.BCState** %6, align 8
  %162 = icmp ne %struct.BCState* %161, null
  br i1 %162, label %172, label %163

163:                                              ; preds = %158
  %164 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %165 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %163
  %169 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %170 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %169, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  br label %171

171:                                              ; preds = %168, %163
  br label %234

172:                                              ; preds = %158
  %173 = load %struct.BCState*, %struct.BCState** %6, align 8
  %174 = getelementptr inbounds %struct.BCState, %struct.BCState* %173, i32 0, i32 6
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %174, align 8
  %176 = icmp ne %struct.TYPE_10__* %175, null
  br i1 %176, label %177, label %198

177:                                              ; preds = %172
  %178 = load i32, i32* @FLG_LOCK_ATOMIC, align 4
  %179 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %180 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %179, i32 0, i32 3
  %181 = call i32 @test_and_set_bit(i32 %178, i32* %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %191, label %183

183:                                              ; preds = %177
  %184 = load %struct.BCState*, %struct.BCState** %6, align 8
  %185 = bitcast %struct.BCState* %184 to %struct.IsdnCardState*
  %186 = call i32 @hfc_fill_fifo(%struct.IsdnCardState* %185)
  %187 = load i32, i32* @FLG_LOCK_ATOMIC, align 4
  %188 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %189 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %188, i32 0, i32 3
  %190 = call i64 @test_and_clear_bit(i32 %187, i32* %189)
  br label %197

191:                                              ; preds = %177
  %192 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %193 = load %struct.BCState*, %struct.BCState** %6, align 8
  %194 = getelementptr inbounds %struct.BCState, %struct.BCState* %193, i32 0, i32 8
  %195 = load i32, i32* %194, align 4
  %196 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %192, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %195)
  br label %197

197:                                              ; preds = %191, %183
  br label %233

198:                                              ; preds = %172
  %199 = load %struct.BCState*, %struct.BCState** %6, align 8
  %200 = getelementptr inbounds %struct.BCState, %struct.BCState* %199, i32 0, i32 9
  %201 = call i8* @skb_dequeue(i32* %200)
  %202 = bitcast i8* %201 to %struct.TYPE_10__*
  %203 = load %struct.BCState*, %struct.BCState** %6, align 8
  %204 = getelementptr inbounds %struct.BCState, %struct.BCState* %203, i32 0, i32 6
  store %struct.TYPE_10__* %202, %struct.TYPE_10__** %204, align 8
  %205 = icmp ne %struct.TYPE_10__* %202, null
  br i1 %205, label %206, label %227

206:                                              ; preds = %198
  %207 = load i32, i32* @FLG_LOCK_ATOMIC, align 4
  %208 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %209 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %208, i32 0, i32 3
  %210 = call i32 @test_and_set_bit(i32 %207, i32* %209)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %220, label %212

212:                                              ; preds = %206
  %213 = load %struct.BCState*, %struct.BCState** %6, align 8
  %214 = bitcast %struct.BCState* %213 to %struct.IsdnCardState*
  %215 = call i32 @hfc_fill_fifo(%struct.IsdnCardState* %214)
  %216 = load i32, i32* @FLG_LOCK_ATOMIC, align 4
  %217 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %218 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %217, i32 0, i32 3
  %219 = call i64 @test_and_clear_bit(i32 %216, i32* %218)
  br label %226

220:                                              ; preds = %206
  %221 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %222 = load %struct.BCState*, %struct.BCState** %6, align 8
  %223 = getelementptr inbounds %struct.BCState, %struct.BCState* %222, i32 0, i32 8
  %224 = load i32, i32* %223, align 4
  %225 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %221, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %224)
  br label %226

226:                                              ; preds = %220, %212
  br label %232

227:                                              ; preds = %198
  %228 = load %struct.BCState*, %struct.BCState** %6, align 8
  %229 = bitcast %struct.BCState* %228 to %struct.IsdnCardState*
  %230 = load i32, i32* @B_XMTBUFREADY, align 4
  %231 = call i32 @schedule_event(%struct.IsdnCardState* %229, i32 %230)
  br label %232

232:                                              ; preds = %227, %226
  br label %233

233:                                              ; preds = %232, %197
  br label %234

234:                                              ; preds = %233, %171
  br label %235

235:                                              ; preds = %234, %154
  %236 = load i32, i32* %4, align 4
  %237 = and i32 %236, 2
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %316

239:                                              ; preds = %235
  %240 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %241 = call %struct.IsdnCardState* @Sel_BCS(%struct.IsdnCardState* %240, i32 1)
  %242 = bitcast %struct.IsdnCardState* %241 to %struct.BCState*
  store %struct.BCState* %242, %struct.BCState** %6, align 8
  %243 = icmp ne %struct.BCState* %242, null
  br i1 %243, label %253, label %244

244:                                              ; preds = %239
  %245 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %246 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %252

249:                                              ; preds = %244
  %250 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %251 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %250, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  br label %252

252:                                              ; preds = %249, %244
  br label %315

253:                                              ; preds = %239
  %254 = load %struct.BCState*, %struct.BCState** %6, align 8
  %255 = getelementptr inbounds %struct.BCState, %struct.BCState* %254, i32 0, i32 6
  %256 = load %struct.TYPE_10__*, %struct.TYPE_10__** %255, align 8
  %257 = icmp ne %struct.TYPE_10__* %256, null
  br i1 %257, label %258, label %279

258:                                              ; preds = %253
  %259 = load i32, i32* @FLG_LOCK_ATOMIC, align 4
  %260 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %261 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %260, i32 0, i32 3
  %262 = call i32 @test_and_set_bit(i32 %259, i32* %261)
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %272, label %264

264:                                              ; preds = %258
  %265 = load %struct.BCState*, %struct.BCState** %6, align 8
  %266 = bitcast %struct.BCState* %265 to %struct.IsdnCardState*
  %267 = call i32 @hfc_fill_fifo(%struct.IsdnCardState* %266)
  %268 = load i32, i32* @FLG_LOCK_ATOMIC, align 4
  %269 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %270 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %269, i32 0, i32 3
  %271 = call i64 @test_and_clear_bit(i32 %268, i32* %270)
  br label %278

272:                                              ; preds = %258
  %273 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %274 = load %struct.BCState*, %struct.BCState** %6, align 8
  %275 = getelementptr inbounds %struct.BCState, %struct.BCState* %274, i32 0, i32 8
  %276 = load i32, i32* %275, align 4
  %277 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %273, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %276)
  br label %278

278:                                              ; preds = %272, %264
  br label %314

279:                                              ; preds = %253
  %280 = load %struct.BCState*, %struct.BCState** %6, align 8
  %281 = getelementptr inbounds %struct.BCState, %struct.BCState* %280, i32 0, i32 9
  %282 = call i8* @skb_dequeue(i32* %281)
  %283 = bitcast i8* %282 to %struct.TYPE_10__*
  %284 = load %struct.BCState*, %struct.BCState** %6, align 8
  %285 = getelementptr inbounds %struct.BCState, %struct.BCState* %284, i32 0, i32 6
  store %struct.TYPE_10__* %283, %struct.TYPE_10__** %285, align 8
  %286 = icmp ne %struct.TYPE_10__* %283, null
  br i1 %286, label %287, label %308

287:                                              ; preds = %279
  %288 = load i32, i32* @FLG_LOCK_ATOMIC, align 4
  %289 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %290 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %289, i32 0, i32 3
  %291 = call i32 @test_and_set_bit(i32 %288, i32* %290)
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %301, label %293

293:                                              ; preds = %287
  %294 = load %struct.BCState*, %struct.BCState** %6, align 8
  %295 = bitcast %struct.BCState* %294 to %struct.IsdnCardState*
  %296 = call i32 @hfc_fill_fifo(%struct.IsdnCardState* %295)
  %297 = load i32, i32* @FLG_LOCK_ATOMIC, align 4
  %298 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %299 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %298, i32 0, i32 3
  %300 = call i64 @test_and_clear_bit(i32 %297, i32* %299)
  br label %307

301:                                              ; preds = %287
  %302 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %303 = load %struct.BCState*, %struct.BCState** %6, align 8
  %304 = getelementptr inbounds %struct.BCState, %struct.BCState* %303, i32 0, i32 8
  %305 = load i32, i32* %304, align 4
  %306 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %302, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %305)
  br label %307

307:                                              ; preds = %301, %293
  br label %313

308:                                              ; preds = %279
  %309 = load %struct.BCState*, %struct.BCState** %6, align 8
  %310 = bitcast %struct.BCState* %309 to %struct.IsdnCardState*
  %311 = load i32, i32* @B_XMTBUFREADY, align 4
  %312 = call i32 @schedule_event(%struct.IsdnCardState* %310, i32 %311)
  br label %313

313:                                              ; preds = %308, %307
  br label %314

314:                                              ; preds = %313, %278
  br label %315

315:                                              ; preds = %314, %252
  br label %316

316:                                              ; preds = %315, %235
  %317 = load i32, i32* %4, align 4
  %318 = and i32 %317, 32
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %323

320:                                              ; preds = %316
  %321 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %322 = call i32 @receive_dmsg(%struct.IsdnCardState* %321)
  br label %323

323:                                              ; preds = %320, %316
  %324 = load i32, i32* %4, align 4
  %325 = and i32 %324, 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %418

327:                                              ; preds = %323
  %328 = load i32, i32* @FLG_DBUSY_TIMER, align 4
  %329 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %330 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %329, i32 0, i32 3
  %331 = call i64 @test_and_clear_bit(i32 %328, i32* %330)
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %337

333:                                              ; preds = %327
  %334 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %335 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %334, i32 0, i32 7
  %336 = call i32 @del_timer(i32* %335)
  br label %337

337:                                              ; preds = %333, %327
  %338 = load i32, i32* @FLG_L1_DBUSY, align 4
  %339 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %340 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %339, i32 0, i32 3
  %341 = call i64 @test_and_clear_bit(i32 %338, i32* %340)
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %343, label %347

343:                                              ; preds = %337
  %344 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %345 = load i32, i32* @D_CLEARBUSY, align 4
  %346 = call i32 @schedule_event(%struct.IsdnCardState* %344, i32 %345)
  br label %347

347:                                              ; preds = %343, %337
  %348 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %349 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %348, i32 0, i32 6
  %350 = load %struct.TYPE_10__*, %struct.TYPE_10__** %349, align 8
  %351 = icmp ne %struct.TYPE_10__* %350, null
  br i1 %351, label %352, label %386

352:                                              ; preds = %347
  %353 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %354 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %353, i32 0, i32 6
  %355 = load %struct.TYPE_10__*, %struct.TYPE_10__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %355, i32 0, i32 0
  %357 = load i64, i64* %356, align 8
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %359, label %376

359:                                              ; preds = %352
  %360 = load i32, i32* @FLG_LOCK_ATOMIC, align 4
  %361 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %362 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %361, i32 0, i32 3
  %363 = call i32 @test_and_set_bit(i32 %360, i32* %362)
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %372, label %365

365:                                              ; preds = %359
  %366 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %367 = call i32 @hfc_fill_dfifo(%struct.IsdnCardState* %366)
  %368 = load i32, i32* @FLG_LOCK_ATOMIC, align 4
  %369 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %370 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %369, i32 0, i32 3
  %371 = call i64 @test_and_clear_bit(i32 %368, i32* %370)
  br label %375

372:                                              ; preds = %359
  %373 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %374 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %373, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  br label %375

375:                                              ; preds = %372, %365
  br label %419

376:                                              ; preds = %352
  %377 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %378 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %377, i32 0, i32 6
  %379 = load %struct.TYPE_10__*, %struct.TYPE_10__** %378, align 8
  %380 = call i32 @dev_kfree_skb_irq(%struct.TYPE_10__* %379)
  %381 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %382 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %381, i32 0, i32 4
  store i64 0, i64* %382, align 8
  %383 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %384 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %383, i32 0, i32 6
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %384, align 8
  br label %385

385:                                              ; preds = %376
  br label %386

386:                                              ; preds = %385, %347
  %387 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %388 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %387, i32 0, i32 5
  %389 = call i8* @skb_dequeue(i32* %388)
  %390 = bitcast i8* %389 to %struct.TYPE_10__*
  %391 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %392 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %391, i32 0, i32 6
  store %struct.TYPE_10__* %390, %struct.TYPE_10__** %392, align 8
  %393 = icmp ne %struct.TYPE_10__* %390, null
  br i1 %393, label %394, label %413

394:                                              ; preds = %386
  %395 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %396 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %395, i32 0, i32 4
  store i64 0, i64* %396, align 8
  %397 = load i32, i32* @FLG_LOCK_ATOMIC, align 4
  %398 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %399 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %398, i32 0, i32 3
  %400 = call i32 @test_and_set_bit(i32 %397, i32* %399)
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %409, label %402

402:                                              ; preds = %394
  %403 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %404 = call i32 @hfc_fill_dfifo(%struct.IsdnCardState* %403)
  %405 = load i32, i32* @FLG_LOCK_ATOMIC, align 4
  %406 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %407 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %406, i32 0, i32 3
  %408 = call i64 @test_and_clear_bit(i32 %405, i32* %407)
  br label %412

409:                                              ; preds = %394
  %410 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %411 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %410, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  br label %412

412:                                              ; preds = %409, %402
  br label %417

413:                                              ; preds = %386
  %414 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %415 = load i32, i32* @D_XMTBUFREADY, align 4
  %416 = call i32 @schedule_event(%struct.IsdnCardState* %414, i32 %415)
  br label %417

417:                                              ; preds = %413, %412
  br label %418

418:                                              ; preds = %417, %323
  br label %419

419:                                              ; preds = %418, %375
  %420 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %421 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %420, i32 0, i32 2
  %422 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %421, i32 0, i32 0
  %423 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %422, i32 0, i32 1
  %424 = load i32, i32* %423, align 4
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %426, label %453

426:                                              ; preds = %419
  %427 = load i32, i32* %7, align 4
  %428 = add nsw i32 %427, -1
  store i32 %428, i32* %7, align 4
  %429 = icmp ne i32 %427, 0
  br i1 %429, label %430, label %453

430:                                              ; preds = %426
  %431 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %432 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %431, i32 0, i32 2
  %433 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %432, i32 0, i32 0
  %434 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %433, i32 0, i32 1
  %435 = load i32, i32* %434, align 4
  store i32 %435, i32* %4, align 4
  %436 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %437 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %436, i32 0, i32 2
  %438 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %437, i32 0, i32 0
  %439 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %438, i32 0, i32 1
  store i32 0, i32* %439, align 4
  %440 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %441 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %440, i32 0, i32 0
  %442 = load i32, i32* %441, align 8
  %443 = load i32, i32* @L1_DEB_ISAC, align 4
  %444 = and i32 %442, %443
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %446, label %452

446:                                              ; preds = %430
  %447 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %448 = load i32, i32* %4, align 4
  %449 = load i32, i32* %7, align 4
  %450 = sub nsw i32 15, %449
  %451 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %447, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32 %448, i32 %450)
  br label %452

452:                                              ; preds = %446, %430
  br label %454

453:                                              ; preds = %426, %419
  store i32 0, i32* %4, align 4
  br label %454

454:                                              ; preds = %453, %452
  br label %71

455:                                              ; preds = %80, %71
  ret void
}

declare dso_local i32 @debugl1(%struct.IsdnCardState*, i8*, ...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @schedule_event(%struct.IsdnCardState*, i32) #1

declare dso_local %struct.IsdnCardState* @Sel_BCS(%struct.IsdnCardState*, i32) #1

declare dso_local i32 @main_rec_2bds0(%struct.IsdnCardState*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @hfc_fill_fifo(%struct.IsdnCardState*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i8* @skb_dequeue(i32*) #1

declare dso_local i32 @receive_dmsg(%struct.IsdnCardState*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @hfc_fill_dfifo(%struct.IsdnCardState*) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
