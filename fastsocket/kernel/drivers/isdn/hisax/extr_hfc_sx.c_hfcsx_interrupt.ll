; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc_sx.c_hfcsx_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc_sx.c_hfcsx_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32, i32, %struct.TYPE_9__, i32, i64, i32, %struct.TYPE_10__*, i32, i32, i32, i64, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i64, i32, i32, i64, i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.BCState = type { i32, i32, %struct.TYPE_9__, i32, i64, i32, %struct.TYPE_10__*, i32, i32, i32, i64, %struct.TYPE_7__ }

@IRQ_NONE = common dso_local global i32 0, align 4
@HFCSX_ANYINT = common dso_local global i32 0, align 4
@HFCSX_STATUS = common dso_local global i32 0, align 4
@HFCSX_INT_S1 = common dso_local global i32 0, align 4
@L1_DEB_ISAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"HFC-SX: stat(%02x) s1(%02x)\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"HFC-SX irq %x %s\00", align 1
@FLG_LOCK_ATOMIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"locked\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"unlocked\00", align 1
@HFCSX_STATES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"ph_state chg %d->%d\00", align 1
@D_L1STATECHANGE = common dso_local global i32 0, align 4
@HFCSX_CTMT = common dso_local global i32 0, align 4
@HFCSX_CLTIMER = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"hfcsx spurious 0x08 IRQ\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"hfcsx spurious 0x10 IRQ\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"hfcsx spurious 0x01 IRQ\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"fill_data %d blocked\00", align 1
@B_XMTBUFREADY = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [24 x i8] c"hfcsx spurious 0x02 IRQ\00", align 1
@FLG_DBUSY_TIMER = common dso_local global i32 0, align 4
@FLG_L1_DBUSY = common dso_local global i32 0, align 4
@D_CLEARBUSY = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [29 x i8] c"hfcsx_fill_dfifo irq blocked\00", align 1
@D_XMTBUFREADY = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [22 x i8] c"HFC-SX irq %x loop %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @hfcsx_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfcsx_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.IsdnCardState*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.BCState*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.IsdnCardState*
  store %struct.IsdnCardState* %14, %struct.IsdnCardState** %6, align 8
  store i32 15, i32* %9, align 4
  %15 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %16 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @IRQ_NONE, align 4
  store i32 %23, i32* %3, align 4
  br label %575

24:                                               ; preds = %2
  %25 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %26 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %25, i32 0, i32 1
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @spin_lock_irqsave(i32* %26, i32 %27)
  %29 = load i32, i32* @HFCSX_ANYINT, align 4
  %30 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %31 = load i32, i32* @HFCSX_STATUS, align 4
  %32 = call i32 @Read_hfc(%struct.IsdnCardState* %30, i32 %31)
  store i32 %32, i32* %12, align 4
  %33 = and i32 %29, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %24
  %36 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %37 = load i32, i32* @HFCSX_INT_S1, align 4
  %38 = call i32 @Read_hfc(%struct.IsdnCardState* %36, i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %40 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @L1_DEB_ISAC, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %35
  %46 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %46, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %45, %35
  br label %57

51:                                               ; preds = %24
  %52 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %53 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %52, i32 0, i32 1
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i32 %54)
  %56 = load i32, i32* @IRQ_NONE, align 4
  store i32 %56, i32* %3, align 4
  br label %575

57:                                               ; preds = %50
  %58 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %59 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @L1_DEB_ISAC, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %57
  %65 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @FLG_LOCK_ATOMIC, align 4
  %68 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %69 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %68, i32 0, i32 3
  %70 = call i64 @test_bit(i32 %67, i32* %69)
  %71 = icmp ne i64 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)
  %74 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %65, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %66, i8* %73)
  br label %75

75:                                               ; preds = %64, %57
  %76 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %77 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %11, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = and i32 %83, 64
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %117

86:                                               ; preds = %75
  %87 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %88 = load i32, i32* @HFCSX_STATES, align 4
  %89 = call i32 @Read_hfc(%struct.IsdnCardState* %87, i32 %88)
  %90 = and i32 %89, 15
  store i32 %90, i32* %7, align 4
  %91 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %92 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @L1_DEB_ISAC, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %86
  %98 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %99 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %100 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %99, i32 0, i32 11
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %7, align 4
  %105 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %98, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %97, %86
  %107 = load i32, i32* %7, align 4
  %108 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %109 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %108, i32 0, i32 11
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  store i32 %107, i32* %111, align 8
  %112 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %113 = load i32, i32* @D_L1STATECHANGE, align 4
  %114 = call i32 @schedule_event(%struct.IsdnCardState* %112, i32 %113)
  %115 = load i32, i32* %11, align 4
  %116 = and i32 %115, -65
  store i32 %116, i32* %11, align 4
  br label %117

117:                                              ; preds = %106, %75
  %118 = load i32, i32* %11, align 4
  %119 = and i32 %118, 128
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %154

121:                                              ; preds = %117
  %122 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %123 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 6
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %141

128:                                              ; preds = %121
  %129 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %130 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = add nsw i64 %133, -1
  store i64 %134, i64* %132, align 8
  %135 = icmp slt i64 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %128
  %137 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %138 = load i32, i32* @D_L1STATECHANGE, align 4
  %139 = call i32 @schedule_event(%struct.IsdnCardState* %137, i32 %138)
  br label %140

140:                                              ; preds = %136, %128
  br label %141

141:                                              ; preds = %140, %121
  %142 = load i32, i32* %11, align 4
  %143 = and i32 %142, -129
  store i32 %143, i32* %11, align 4
  %144 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %145 = load i32, i32* @HFCSX_CTMT, align 4
  %146 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %147 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @HFCSX_CLTIMER, align 4
  %152 = or i32 %150, %151
  %153 = call i32 @Write_hfc(%struct.IsdnCardState* %144, i32 %145, i32 %152)
  br label %154

154:                                              ; preds = %141, %117
  br label %155

155:                                              ; preds = %568, %154
  %156 = load i32, i32* %11, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %569

158:                                              ; preds = %155
  %159 = load i32, i32* @FLG_LOCK_ATOMIC, align 4
  %160 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %161 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %160, i32 0, i32 3
  %162 = call i64 @test_bit(i32 %159, i32* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %177

164:                                              ; preds = %158
  %165 = load i32, i32* %11, align 4
  %166 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %167 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 4
  %171 = or i32 %170, %165
  store i32 %171, i32* %169, align 4
  %172 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %173 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %172, i32 0, i32 1
  %174 = load i32, i32* %10, align 4
  %175 = call i32 @spin_unlock_irqrestore(i32* %173, i32 %174)
  %176 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %176, i32* %3, align 4
  br label %575

177:                                              ; preds = %158
  %178 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %179 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 4
  %183 = and i32 %182, 24
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %197

185:                                              ; preds = %177
  %186 = load i32, i32* %11, align 4
  store i32 %186, i32* %7, align 4
  %187 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %188 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 4
  store i32 %191, i32* %11, align 4
  %192 = load i32, i32* %7, align 4
  %193 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %194 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 4
  store i32 %192, i32* %196, align 4
  br label %197

197:                                              ; preds = %185, %177
  %198 = load i32, i32* %11, align 4
  %199 = and i32 %198, 8
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %228

201:                                              ; preds = %197
  %202 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %203 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %204 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 5
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  %209 = zext i1 %208 to i64
  %210 = select i1 %208, i32 1, i32 0
  %211 = call %struct.IsdnCardState* @Sel_BCS(%struct.IsdnCardState* %202, i32 %210)
  %212 = bitcast %struct.IsdnCardState* %211 to %struct.BCState*
  store %struct.BCState* %212, %struct.BCState** %8, align 8
  %213 = icmp ne %struct.BCState* %212, null
  br i1 %213, label %223, label %214

214:                                              ; preds = %201
  %215 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %216 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %214
  %220 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %221 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %220, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %222

222:                                              ; preds = %219, %214
  br label %227

223:                                              ; preds = %201
  %224 = load %struct.BCState*, %struct.BCState** %8, align 8
  %225 = bitcast %struct.BCState* %224 to %struct.IsdnCardState*
  %226 = call i32 @main_rec_hfcsx(%struct.IsdnCardState* %225)
  br label %227

227:                                              ; preds = %223, %222
  br label %228

228:                                              ; preds = %227, %197
  %229 = load i32, i32* %11, align 4
  %230 = and i32 %229, 16
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %260

232:                                              ; preds = %228
  %233 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %234 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %233, i32 0, i32 10
  %235 = load i64, i64* %234, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %232
  %238 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %239 = call i32 @receive_emsg(%struct.IsdnCardState* %238)
  br label %259

240:                                              ; preds = %232
  %241 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %242 = call %struct.IsdnCardState* @Sel_BCS(%struct.IsdnCardState* %241, i32 1)
  %243 = bitcast %struct.IsdnCardState* %242 to %struct.BCState*
  store %struct.BCState* %243, %struct.BCState** %8, align 8
  %244 = icmp ne %struct.BCState* %243, null
  br i1 %244, label %254, label %245

245:                                              ; preds = %240
  %246 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %247 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %253

250:                                              ; preds = %245
  %251 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %252 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %251, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  br label %253

253:                                              ; preds = %250, %245
  br label %258

254:                                              ; preds = %240
  %255 = load %struct.BCState*, %struct.BCState** %8, align 8
  %256 = bitcast %struct.BCState* %255 to %struct.IsdnCardState*
  %257 = call i32 @main_rec_hfcsx(%struct.IsdnCardState* %256)
  br label %258

258:                                              ; preds = %254, %253
  br label %259

259:                                              ; preds = %258, %237
  br label %260

260:                                              ; preds = %259, %228
  %261 = load i32, i32* %11, align 4
  %262 = and i32 %261, 1
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %349

264:                                              ; preds = %260
  %265 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %266 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %267 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %266, i32 0, i32 2
  %268 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 5
  %270 = load i64, i64* %269, align 8
  %271 = icmp ne i64 %270, 0
  %272 = zext i1 %271 to i64
  %273 = select i1 %271, i32 1, i32 0
  %274 = call %struct.IsdnCardState* @Sel_BCS(%struct.IsdnCardState* %265, i32 %273)
  %275 = bitcast %struct.IsdnCardState* %274 to %struct.BCState*
  store %struct.BCState* %275, %struct.BCState** %8, align 8
  %276 = icmp ne %struct.BCState* %275, null
  br i1 %276, label %286, label %277

277:                                              ; preds = %264
  %278 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %279 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %285

282:                                              ; preds = %277
  %283 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %284 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %283, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  br label %285

285:                                              ; preds = %282, %277
  br label %348

286:                                              ; preds = %264
  %287 = load %struct.BCState*, %struct.BCState** %8, align 8
  %288 = getelementptr inbounds %struct.BCState, %struct.BCState* %287, i32 0, i32 6
  %289 = load %struct.TYPE_10__*, %struct.TYPE_10__** %288, align 8
  %290 = icmp ne %struct.TYPE_10__* %289, null
  br i1 %290, label %291, label %312

291:                                              ; preds = %286
  %292 = load i32, i32* @FLG_LOCK_ATOMIC, align 4
  %293 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %294 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %293, i32 0, i32 3
  %295 = call i32 @test_and_set_bit(i32 %292, i32* %294)
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %305, label %297

297:                                              ; preds = %291
  %298 = load %struct.BCState*, %struct.BCState** %8, align 8
  %299 = bitcast %struct.BCState* %298 to %struct.IsdnCardState*
  %300 = call i32 @hfcsx_fill_fifo(%struct.IsdnCardState* %299)
  %301 = load i32, i32* @FLG_LOCK_ATOMIC, align 4
  %302 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %303 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %302, i32 0, i32 3
  %304 = call i64 @test_and_clear_bit(i32 %301, i32* %303)
  br label %311

305:                                              ; preds = %291
  %306 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %307 = load %struct.BCState*, %struct.BCState** %8, align 8
  %308 = getelementptr inbounds %struct.BCState, %struct.BCState* %307, i32 0, i32 8
  %309 = load i32, i32* %308, align 4
  %310 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %306, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %309)
  br label %311

311:                                              ; preds = %305, %297
  br label %347

312:                                              ; preds = %286
  %313 = load %struct.BCState*, %struct.BCState** %8, align 8
  %314 = getelementptr inbounds %struct.BCState, %struct.BCState* %313, i32 0, i32 9
  %315 = call i8* @skb_dequeue(i32* %314)
  %316 = bitcast i8* %315 to %struct.TYPE_10__*
  %317 = load %struct.BCState*, %struct.BCState** %8, align 8
  %318 = getelementptr inbounds %struct.BCState, %struct.BCState* %317, i32 0, i32 6
  store %struct.TYPE_10__* %316, %struct.TYPE_10__** %318, align 8
  %319 = icmp ne %struct.TYPE_10__* %316, null
  br i1 %319, label %320, label %341

320:                                              ; preds = %312
  %321 = load i32, i32* @FLG_LOCK_ATOMIC, align 4
  %322 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %323 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %322, i32 0, i32 3
  %324 = call i32 @test_and_set_bit(i32 %321, i32* %323)
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %334, label %326

326:                                              ; preds = %320
  %327 = load %struct.BCState*, %struct.BCState** %8, align 8
  %328 = bitcast %struct.BCState* %327 to %struct.IsdnCardState*
  %329 = call i32 @hfcsx_fill_fifo(%struct.IsdnCardState* %328)
  %330 = load i32, i32* @FLG_LOCK_ATOMIC, align 4
  %331 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %332 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %331, i32 0, i32 3
  %333 = call i64 @test_and_clear_bit(i32 %330, i32* %332)
  br label %340

334:                                              ; preds = %320
  %335 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %336 = load %struct.BCState*, %struct.BCState** %8, align 8
  %337 = getelementptr inbounds %struct.BCState, %struct.BCState* %336, i32 0, i32 8
  %338 = load i32, i32* %337, align 4
  %339 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %335, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %338)
  br label %340

340:                                              ; preds = %334, %326
  br label %346

341:                                              ; preds = %312
  %342 = load %struct.BCState*, %struct.BCState** %8, align 8
  %343 = bitcast %struct.BCState* %342 to %struct.IsdnCardState*
  %344 = load i32, i32* @B_XMTBUFREADY, align 4
  %345 = call i32 @schedule_event(%struct.IsdnCardState* %343, i32 %344)
  br label %346

346:                                              ; preds = %341, %340
  br label %347

347:                                              ; preds = %346, %311
  br label %348

348:                                              ; preds = %347, %285
  br label %349

349:                                              ; preds = %348, %260
  %350 = load i32, i32* %11, align 4
  %351 = and i32 %350, 2
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %430

353:                                              ; preds = %349
  %354 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %355 = call %struct.IsdnCardState* @Sel_BCS(%struct.IsdnCardState* %354, i32 1)
  %356 = bitcast %struct.IsdnCardState* %355 to %struct.BCState*
  store %struct.BCState* %356, %struct.BCState** %8, align 8
  %357 = icmp ne %struct.BCState* %356, null
  br i1 %357, label %367, label %358

358:                                              ; preds = %353
  %359 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %360 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 8
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %366

363:                                              ; preds = %358
  %364 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %365 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %364, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  br label %366

366:                                              ; preds = %363, %358
  br label %429

367:                                              ; preds = %353
  %368 = load %struct.BCState*, %struct.BCState** %8, align 8
  %369 = getelementptr inbounds %struct.BCState, %struct.BCState* %368, i32 0, i32 6
  %370 = load %struct.TYPE_10__*, %struct.TYPE_10__** %369, align 8
  %371 = icmp ne %struct.TYPE_10__* %370, null
  br i1 %371, label %372, label %393

372:                                              ; preds = %367
  %373 = load i32, i32* @FLG_LOCK_ATOMIC, align 4
  %374 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %375 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %374, i32 0, i32 3
  %376 = call i32 @test_and_set_bit(i32 %373, i32* %375)
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %386, label %378

378:                                              ; preds = %372
  %379 = load %struct.BCState*, %struct.BCState** %8, align 8
  %380 = bitcast %struct.BCState* %379 to %struct.IsdnCardState*
  %381 = call i32 @hfcsx_fill_fifo(%struct.IsdnCardState* %380)
  %382 = load i32, i32* @FLG_LOCK_ATOMIC, align 4
  %383 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %384 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %383, i32 0, i32 3
  %385 = call i64 @test_and_clear_bit(i32 %382, i32* %384)
  br label %392

386:                                              ; preds = %372
  %387 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %388 = load %struct.BCState*, %struct.BCState** %8, align 8
  %389 = getelementptr inbounds %struct.BCState, %struct.BCState* %388, i32 0, i32 8
  %390 = load i32, i32* %389, align 4
  %391 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %387, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %390)
  br label %392

392:                                              ; preds = %386, %378
  br label %428

393:                                              ; preds = %367
  %394 = load %struct.BCState*, %struct.BCState** %8, align 8
  %395 = getelementptr inbounds %struct.BCState, %struct.BCState* %394, i32 0, i32 9
  %396 = call i8* @skb_dequeue(i32* %395)
  %397 = bitcast i8* %396 to %struct.TYPE_10__*
  %398 = load %struct.BCState*, %struct.BCState** %8, align 8
  %399 = getelementptr inbounds %struct.BCState, %struct.BCState* %398, i32 0, i32 6
  store %struct.TYPE_10__* %397, %struct.TYPE_10__** %399, align 8
  %400 = icmp ne %struct.TYPE_10__* %397, null
  br i1 %400, label %401, label %422

401:                                              ; preds = %393
  %402 = load i32, i32* @FLG_LOCK_ATOMIC, align 4
  %403 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %404 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %403, i32 0, i32 3
  %405 = call i32 @test_and_set_bit(i32 %402, i32* %404)
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %415, label %407

407:                                              ; preds = %401
  %408 = load %struct.BCState*, %struct.BCState** %8, align 8
  %409 = bitcast %struct.BCState* %408 to %struct.IsdnCardState*
  %410 = call i32 @hfcsx_fill_fifo(%struct.IsdnCardState* %409)
  %411 = load i32, i32* @FLG_LOCK_ATOMIC, align 4
  %412 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %413 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %412, i32 0, i32 3
  %414 = call i64 @test_and_clear_bit(i32 %411, i32* %413)
  br label %421

415:                                              ; preds = %401
  %416 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %417 = load %struct.BCState*, %struct.BCState** %8, align 8
  %418 = getelementptr inbounds %struct.BCState, %struct.BCState* %417, i32 0, i32 8
  %419 = load i32, i32* %418, align 4
  %420 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %416, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %419)
  br label %421

421:                                              ; preds = %415, %407
  br label %427

422:                                              ; preds = %393
  %423 = load %struct.BCState*, %struct.BCState** %8, align 8
  %424 = bitcast %struct.BCState* %423 to %struct.IsdnCardState*
  %425 = load i32, i32* @B_XMTBUFREADY, align 4
  %426 = call i32 @schedule_event(%struct.IsdnCardState* %424, i32 %425)
  br label %427

427:                                              ; preds = %422, %421
  br label %428

428:                                              ; preds = %427, %392
  br label %429

429:                                              ; preds = %428, %366
  br label %430

430:                                              ; preds = %429, %349
  %431 = load i32, i32* %11, align 4
  %432 = and i32 %431, 32
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %437

434:                                              ; preds = %430
  %435 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %436 = call i32 @receive_dmsg(%struct.IsdnCardState* %435)
  br label %437

437:                                              ; preds = %434, %430
  %438 = load i32, i32* %11, align 4
  %439 = and i32 %438, 4
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %441, label %532

441:                                              ; preds = %437
  %442 = load i32, i32* @FLG_DBUSY_TIMER, align 4
  %443 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %444 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %443, i32 0, i32 3
  %445 = call i64 @test_and_clear_bit(i32 %442, i32* %444)
  %446 = icmp ne i64 %445, 0
  br i1 %446, label %447, label %451

447:                                              ; preds = %441
  %448 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %449 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %448, i32 0, i32 7
  %450 = call i32 @del_timer(i32* %449)
  br label %451

451:                                              ; preds = %447, %441
  %452 = load i32, i32* @FLG_L1_DBUSY, align 4
  %453 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %454 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %453, i32 0, i32 3
  %455 = call i64 @test_and_clear_bit(i32 %452, i32* %454)
  %456 = icmp ne i64 %455, 0
  br i1 %456, label %457, label %461

457:                                              ; preds = %451
  %458 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %459 = load i32, i32* @D_CLEARBUSY, align 4
  %460 = call i32 @schedule_event(%struct.IsdnCardState* %458, i32 %459)
  br label %461

461:                                              ; preds = %457, %451
  %462 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %463 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %462, i32 0, i32 6
  %464 = load %struct.TYPE_10__*, %struct.TYPE_10__** %463, align 8
  %465 = icmp ne %struct.TYPE_10__* %464, null
  br i1 %465, label %466, label %500

466:                                              ; preds = %461
  %467 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %468 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %467, i32 0, i32 6
  %469 = load %struct.TYPE_10__*, %struct.TYPE_10__** %468, align 8
  %470 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %469, i32 0, i32 0
  %471 = load i64, i64* %470, align 8
  %472 = icmp ne i64 %471, 0
  br i1 %472, label %473, label %490

473:                                              ; preds = %466
  %474 = load i32, i32* @FLG_LOCK_ATOMIC, align 4
  %475 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %476 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %475, i32 0, i32 3
  %477 = call i32 @test_and_set_bit(i32 %474, i32* %476)
  %478 = icmp ne i32 %477, 0
  br i1 %478, label %486, label %479

479:                                              ; preds = %473
  %480 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %481 = call i32 @hfcsx_fill_dfifo(%struct.IsdnCardState* %480)
  %482 = load i32, i32* @FLG_LOCK_ATOMIC, align 4
  %483 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %484 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %483, i32 0, i32 3
  %485 = call i64 @test_and_clear_bit(i32 %482, i32* %484)
  br label %489

486:                                              ; preds = %473
  %487 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %488 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %487, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  br label %489

489:                                              ; preds = %486, %479
  br label %533

490:                                              ; preds = %466
  %491 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %492 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %491, i32 0, i32 6
  %493 = load %struct.TYPE_10__*, %struct.TYPE_10__** %492, align 8
  %494 = call i32 @dev_kfree_skb_irq(%struct.TYPE_10__* %493)
  %495 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %496 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %495, i32 0, i32 4
  store i64 0, i64* %496, align 8
  %497 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %498 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %497, i32 0, i32 6
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %498, align 8
  br label %499

499:                                              ; preds = %490
  br label %500

500:                                              ; preds = %499, %461
  %501 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %502 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %501, i32 0, i32 5
  %503 = call i8* @skb_dequeue(i32* %502)
  %504 = bitcast i8* %503 to %struct.TYPE_10__*
  %505 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %506 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %505, i32 0, i32 6
  store %struct.TYPE_10__* %504, %struct.TYPE_10__** %506, align 8
  %507 = icmp ne %struct.TYPE_10__* %504, null
  br i1 %507, label %508, label %527

508:                                              ; preds = %500
  %509 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %510 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %509, i32 0, i32 4
  store i64 0, i64* %510, align 8
  %511 = load i32, i32* @FLG_LOCK_ATOMIC, align 4
  %512 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %513 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %512, i32 0, i32 3
  %514 = call i32 @test_and_set_bit(i32 %511, i32* %513)
  %515 = icmp ne i32 %514, 0
  br i1 %515, label %523, label %516

516:                                              ; preds = %508
  %517 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %518 = call i32 @hfcsx_fill_dfifo(%struct.IsdnCardState* %517)
  %519 = load i32, i32* @FLG_LOCK_ATOMIC, align 4
  %520 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %521 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %520, i32 0, i32 3
  %522 = call i64 @test_and_clear_bit(i32 %519, i32* %521)
  br label %526

523:                                              ; preds = %508
  %524 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %525 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %524, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  br label %526

526:                                              ; preds = %523, %516
  br label %531

527:                                              ; preds = %500
  %528 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %529 = load i32, i32* @D_XMTBUFREADY, align 4
  %530 = call i32 @schedule_event(%struct.IsdnCardState* %528, i32 %529)
  br label %531

531:                                              ; preds = %527, %526
  br label %532

532:                                              ; preds = %531, %437
  br label %533

533:                                              ; preds = %532, %489
  %534 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %535 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %534, i32 0, i32 2
  %536 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %535, i32 0, i32 0
  %537 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %536, i32 0, i32 4
  %538 = load i32, i32* %537, align 4
  %539 = icmp ne i32 %538, 0
  br i1 %539, label %540, label %567

540:                                              ; preds = %533
  %541 = load i32, i32* %9, align 4
  %542 = add nsw i32 %541, -1
  store i32 %542, i32* %9, align 4
  %543 = icmp ne i32 %541, 0
  br i1 %543, label %544, label %567

544:                                              ; preds = %540
  %545 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %546 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %545, i32 0, i32 2
  %547 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %546, i32 0, i32 0
  %548 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %547, i32 0, i32 4
  %549 = load i32, i32* %548, align 4
  store i32 %549, i32* %11, align 4
  %550 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %551 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %550, i32 0, i32 2
  %552 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %551, i32 0, i32 0
  %553 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %552, i32 0, i32 4
  store i32 0, i32* %553, align 4
  %554 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %555 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %554, i32 0, i32 0
  %556 = load i32, i32* %555, align 8
  %557 = load i32, i32* @L1_DEB_ISAC, align 4
  %558 = and i32 %556, %557
  %559 = icmp ne i32 %558, 0
  br i1 %559, label %560, label %566

560:                                              ; preds = %544
  %561 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %562 = load i32, i32* %11, align 4
  %563 = load i32, i32* %9, align 4
  %564 = sub nsw i32 15, %563
  %565 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %561, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i32 %562, i32 %564)
  br label %566

566:                                              ; preds = %560, %544
  br label %568

567:                                              ; preds = %540, %533
  store i32 0, i32* %11, align 4
  br label %568

568:                                              ; preds = %567, %566
  br label %155

569:                                              ; preds = %155
  %570 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %571 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %570, i32 0, i32 1
  %572 = load i32, i32* %10, align 4
  %573 = call i32 @spin_unlock_irqrestore(i32* %571, i32 %572)
  %574 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %574, i32* %3, align 4
  br label %575

575:                                              ; preds = %569, %164, %51, %22
  %576 = load i32, i32* %3, align 4
  ret i32 %576
}

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @Read_hfc(%struct.IsdnCardState*, i32) #1

declare dso_local i32 @debugl1(%struct.IsdnCardState*, i8*, ...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @schedule_event(%struct.IsdnCardState*, i32) #1

declare dso_local i32 @Write_hfc(%struct.IsdnCardState*, i32, i32) #1

declare dso_local %struct.IsdnCardState* @Sel_BCS(%struct.IsdnCardState*, i32) #1

declare dso_local i32 @main_rec_hfcsx(%struct.IsdnCardState*) #1

declare dso_local i32 @receive_emsg(%struct.IsdnCardState*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @hfcsx_fill_fifo(%struct.IsdnCardState*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i8* @skb_dequeue(i32*) #1

declare dso_local i32 @receive_dmsg(%struct.IsdnCardState*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @hfcsx_fill_dfifo(%struct.IsdnCardState*) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
