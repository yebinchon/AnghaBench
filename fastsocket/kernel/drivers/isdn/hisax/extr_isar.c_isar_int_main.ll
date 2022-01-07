; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isar.c_isar_int_main.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isar.c_isar_int_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32, i32 (%struct.IsdnCardState*, i32, i32, i32)*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.isar_reg* }
%struct.isar_reg = type { i32, i32, i32, i32, i64 }
%struct.BCState = type { i32, i32, i32 }

@ISAR_IIS_MSCMSD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"isar spurious IIS_RDATA %x/%x/%x\00", align 1
@ISAR_IIA = common dso_local global i32 0, align 4
@L1_DEB_WARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Buffer STEV dpath%d msb(%x)\00", align 1
@L1_MODE_V32 = common dso_local global i32 0, align 4
@L1_MODE_FAX = common dso_local global i32 0, align 4
@PSEV_10MS_TIMER = common dso_local global i32 0, align 4
@L1_DEB_HSCX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"pump stev TIMER\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"isar IIS_PSTEV pmode %d stat %x\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"isar spurious IIS_PSTEV %x/%x/%x\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"isar spurious IIS_PSTRSP %x/%x/%x\00", align 1
@L1_DEB_HSCX_FIFO = common dso_local global i32 0, align 4
@debbuf = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [20 x i8] c"msg iis(%x) msb(%x)\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"invalid msg his:%x\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"unhandled msg iis(%x) ctrl(%x/%x)\00", align 1
@BSTEV_RBO = common dso_local global i32 0, align 4
@BSTEV_TBO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isar_int_main(%struct.IsdnCardState* %0) #0 {
  %2 = alloca %struct.IsdnCardState*, align 8
  %3 = alloca %struct.isar_reg*, align 8
  %4 = alloca %struct.BCState*, align 8
  %5 = alloca i32*, align 8
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %2, align 8
  %6 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %7 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %6, i32 0, i32 2
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i64 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.isar_reg*, %struct.isar_reg** %12, align 8
  store %struct.isar_reg* %13, %struct.isar_reg** %3, align 8
  %14 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %15 = load %struct.isar_reg*, %struct.isar_reg** %3, align 8
  %16 = call i32 @get_irq_infos(%struct.IsdnCardState* %14, %struct.isar_reg* %15)
  %17 = load %struct.isar_reg*, %struct.isar_reg** %3, align 8
  %18 = getelementptr inbounds %struct.isar_reg, %struct.isar_reg* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @ISAR_IIS_MSCMSD, align 4
  %21 = and i32 %19, %20
  switch i32 %21, label %291 [
    i32 128, label %22
    i32 133, label %53
    i32 136, label %72
    i32 130, label %96
    i32 129, label %191
    i32 134, label %229
    i32 135, label %229
    i32 131, label %229
    i32 132, label %273
  ]

22:                                               ; preds = %1
  %23 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %24 = load %struct.isar_reg*, %struct.isar_reg** %3, align 8
  %25 = getelementptr inbounds %struct.isar_reg, %struct.isar_reg* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = ashr i32 %26, 6
  %28 = call %struct.BCState* @sel_bcs_isar(%struct.IsdnCardState* %23, i32 %27)
  store %struct.BCState* %28, %struct.BCState** %4, align 8
  %29 = icmp ne %struct.BCState* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %32 = load %struct.BCState*, %struct.BCState** %4, align 8
  %33 = call i32 @isar_rcv_frame(%struct.IsdnCardState* %31, %struct.BCState* %32)
  br label %52

34:                                               ; preds = %22
  %35 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %36 = load %struct.isar_reg*, %struct.isar_reg** %3, align 8
  %37 = getelementptr inbounds %struct.isar_reg, %struct.isar_reg* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.isar_reg*, %struct.isar_reg** %3, align 8
  %40 = getelementptr inbounds %struct.isar_reg, %struct.isar_reg* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.isar_reg*, %struct.isar_reg** %3, align 8
  %43 = getelementptr inbounds %struct.isar_reg, %struct.isar_reg* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %41, i32 %44)
  %46 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %47 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %46, i32 0, i32 1
  %48 = load i32 (%struct.IsdnCardState*, i32, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32, i32)** %47, align 8
  %49 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %50 = load i32, i32* @ISAR_IIA, align 4
  %51 = call i32 %48(%struct.IsdnCardState* %49, i32 1, i32 %50, i32 0)
  br label %52

52:                                               ; preds = %34, %30
  br label %315

53:                                               ; preds = %1
  %54 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %55 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %54, i32 0, i32 1
  %56 = load i32 (%struct.IsdnCardState*, i32, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32, i32)** %55, align 8
  %57 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %58 = load i32, i32* @ISAR_IIA, align 4
  %59 = call i32 %56(%struct.IsdnCardState* %57, i32 1, i32 %58, i32 0)
  %60 = load %struct.isar_reg*, %struct.isar_reg** %3, align 8
  %61 = getelementptr inbounds %struct.isar_reg, %struct.isar_reg* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.isar_reg*, %struct.isar_reg** %3, align 8
  %64 = getelementptr inbounds %struct.isar_reg, %struct.isar_reg* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 8
  %67 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %68 = load %struct.isar_reg*, %struct.isar_reg** %3, align 8
  %69 = getelementptr inbounds %struct.isar_reg, %struct.isar_reg* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @check_send(%struct.IsdnCardState* %67, i32 %70)
  br label %315

72:                                               ; preds = %1
  %73 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %74 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @L1_DEB_WARN, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %72
  %80 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %81 = load %struct.isar_reg*, %struct.isar_reg** %3, align 8
  %82 = getelementptr inbounds %struct.isar_reg, %struct.isar_reg* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = ashr i32 %83, 6
  %85 = load %struct.isar_reg*, %struct.isar_reg** %3, align 8
  %86 = getelementptr inbounds %struct.isar_reg, %struct.isar_reg* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %80, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %84, i32 %87)
  br label %89

89:                                               ; preds = %79, %72
  %90 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %91 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %90, i32 0, i32 1
  %92 = load i32 (%struct.IsdnCardState*, i32, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32, i32)** %91, align 8
  %93 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %94 = load i32, i32* @ISAR_IIA, align 4
  %95 = call i32 %92(%struct.IsdnCardState* %93, i32 1, i32 %94, i32 0)
  br label %315

96:                                               ; preds = %1
  %97 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %98 = load %struct.isar_reg*, %struct.isar_reg** %3, align 8
  %99 = getelementptr inbounds %struct.isar_reg, %struct.isar_reg* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = ashr i32 %100, 6
  %102 = call %struct.BCState* @sel_bcs_isar(%struct.IsdnCardState* %97, i32 %101)
  store %struct.BCState* %102, %struct.BCState** %4, align 8
  %103 = icmp ne %struct.BCState* %102, null
  br i1 %103, label %104, label %172

104:                                              ; preds = %96
  %105 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %106 = load %struct.isar_reg*, %struct.isar_reg** %3, align 8
  %107 = load %struct.isar_reg*, %struct.isar_reg** %3, align 8
  %108 = getelementptr inbounds %struct.isar_reg, %struct.isar_reg* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = inttoptr i64 %109 to i32*
  %111 = call i32 @rcv_mbox(%struct.IsdnCardState* %105, %struct.isar_reg* %106, i32* %110)
  %112 = load %struct.BCState*, %struct.BCState** %4, align 8
  %113 = getelementptr inbounds %struct.BCState, %struct.BCState* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @L1_MODE_V32, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %104
  %118 = load %struct.BCState*, %struct.BCState** %4, align 8
  %119 = load %struct.isar_reg*, %struct.isar_reg** %3, align 8
  %120 = getelementptr inbounds %struct.isar_reg, %struct.isar_reg* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @isar_pump_statev_modem(%struct.BCState* %118, i32 %121)
  br label %171

123:                                              ; preds = %104
  %124 = load %struct.BCState*, %struct.BCState** %4, align 8
  %125 = getelementptr inbounds %struct.BCState, %struct.BCState* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @L1_MODE_FAX, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %135

129:                                              ; preds = %123
  %130 = load %struct.BCState*, %struct.BCState** %4, align 8
  %131 = load %struct.isar_reg*, %struct.isar_reg** %3, align 8
  %132 = getelementptr inbounds %struct.isar_reg, %struct.isar_reg* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @isar_pump_statev_fax(%struct.BCState* %130, i32 %133)
  br label %170

135:                                              ; preds = %123
  %136 = load %struct.isar_reg*, %struct.isar_reg** %3, align 8
  %137 = getelementptr inbounds %struct.isar_reg, %struct.isar_reg* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @PSEV_10MS_TIMER, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %152

141:                                              ; preds = %135
  %142 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %143 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @L1_DEB_HSCX, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %141
  %149 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %150 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %149, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %151

151:                                              ; preds = %148, %141
  br label %169

152:                                              ; preds = %135
  %153 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %154 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @L1_DEB_WARN, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %168

159:                                              ; preds = %152
  %160 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %161 = load %struct.BCState*, %struct.BCState** %4, align 8
  %162 = getelementptr inbounds %struct.BCState, %struct.BCState* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.isar_reg*, %struct.isar_reg** %3, align 8
  %165 = getelementptr inbounds %struct.isar_reg, %struct.isar_reg* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %160, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %163, i32 %166)
  br label %168

168:                                              ; preds = %159, %152
  br label %169

169:                                              ; preds = %168, %151
  br label %170

170:                                              ; preds = %169, %129
  br label %171

171:                                              ; preds = %170, %117
  br label %190

172:                                              ; preds = %96
  %173 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %174 = load %struct.isar_reg*, %struct.isar_reg** %3, align 8
  %175 = getelementptr inbounds %struct.isar_reg, %struct.isar_reg* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.isar_reg*, %struct.isar_reg** %3, align 8
  %178 = getelementptr inbounds %struct.isar_reg, %struct.isar_reg* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.isar_reg*, %struct.isar_reg** %3, align 8
  %181 = getelementptr inbounds %struct.isar_reg, %struct.isar_reg* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %173, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %176, i32 %179, i32 %182)
  %184 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %185 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %184, i32 0, i32 1
  %186 = load i32 (%struct.IsdnCardState*, i32, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32, i32)** %185, align 8
  %187 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %188 = load i32, i32* @ISAR_IIA, align 4
  %189 = call i32 %186(%struct.IsdnCardState* %187, i32 1, i32 %188, i32 0)
  br label %190

190:                                              ; preds = %172, %171
  br label %315

191:                                              ; preds = %1
  %192 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %193 = load %struct.isar_reg*, %struct.isar_reg** %3, align 8
  %194 = getelementptr inbounds %struct.isar_reg, %struct.isar_reg* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = ashr i32 %195, 6
  %197 = call %struct.BCState* @sel_bcs_isar(%struct.IsdnCardState* %192, i32 %196)
  store %struct.BCState* %197, %struct.BCState** %4, align 8
  %198 = icmp ne %struct.BCState* %197, null
  br i1 %198, label %199, label %210

199:                                              ; preds = %191
  %200 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %201 = load %struct.isar_reg*, %struct.isar_reg** %3, align 8
  %202 = load %struct.isar_reg*, %struct.isar_reg** %3, align 8
  %203 = getelementptr inbounds %struct.isar_reg, %struct.isar_reg* %202, i32 0, i32 4
  %204 = load i64, i64* %203, align 8
  %205 = inttoptr i64 %204 to i32*
  %206 = call i32 @rcv_mbox(%struct.IsdnCardState* %200, %struct.isar_reg* %201, i32* %205)
  %207 = load %struct.BCState*, %struct.BCState** %4, align 8
  %208 = load %struct.isar_reg*, %struct.isar_reg** %3, align 8
  %209 = call i32 @isar_pump_status_rsp(%struct.BCState* %207, %struct.isar_reg* %208)
  br label %228

210:                                              ; preds = %191
  %211 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %212 = load %struct.isar_reg*, %struct.isar_reg** %3, align 8
  %213 = getelementptr inbounds %struct.isar_reg, %struct.isar_reg* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.isar_reg*, %struct.isar_reg** %3, align 8
  %216 = getelementptr inbounds %struct.isar_reg, %struct.isar_reg* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.isar_reg*, %struct.isar_reg** %3, align 8
  %219 = getelementptr inbounds %struct.isar_reg, %struct.isar_reg* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 4
  %221 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %211, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %214, i32 %217, i32 %220)
  %222 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %223 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %222, i32 0, i32 1
  %224 = load i32 (%struct.IsdnCardState*, i32, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32, i32)** %223, align 8
  %225 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %226 = load i32, i32* @ISAR_IIA, align 4
  %227 = call i32 %224(%struct.IsdnCardState* %225, i32 1, i32 %226, i32 0)
  br label %228

228:                                              ; preds = %210, %199
  br label %315

229:                                              ; preds = %1, %1, %1
  %230 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %231 = load %struct.isar_reg*, %struct.isar_reg** %3, align 8
  %232 = load %struct.isar_reg*, %struct.isar_reg** %3, align 8
  %233 = getelementptr inbounds %struct.isar_reg, %struct.isar_reg* %232, i32 0, i32 4
  %234 = load i64, i64* %233, align 8
  %235 = inttoptr i64 %234 to i32*
  %236 = call i32 @rcv_mbox(%struct.IsdnCardState* %230, %struct.isar_reg* %231, i32* %235)
  %237 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %238 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* @L1_DEB_HSCX, align 4
  %241 = load i32, i32* @L1_DEB_HSCX_FIFO, align 4
  %242 = or i32 %240, %241
  %243 = and i32 %239, %242
  %244 = load i32, i32* @L1_DEB_HSCX, align 4
  %245 = icmp eq i32 %243, %244
  br i1 %245, label %246, label %272

246:                                              ; preds = %229
  %247 = load i32*, i32** @debbuf, align 8
  store i32* %247, i32** %5, align 8
  %248 = load i32*, i32** @debbuf, align 8
  %249 = load %struct.isar_reg*, %struct.isar_reg** %3, align 8
  %250 = getelementptr inbounds %struct.isar_reg, %struct.isar_reg* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load %struct.isar_reg*, %struct.isar_reg** %3, align 8
  %253 = getelementptr inbounds %struct.isar_reg, %struct.isar_reg* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @sprintf(i32* %248, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %251, i32 %254)
  %256 = load i32*, i32** %5, align 8
  %257 = sext i32 %255 to i64
  %258 = getelementptr inbounds i32, i32* %256, i64 %257
  store i32* %258, i32** %5, align 8
  %259 = load i32*, i32** %5, align 8
  %260 = load %struct.isar_reg*, %struct.isar_reg** %3, align 8
  %261 = getelementptr inbounds %struct.isar_reg, %struct.isar_reg* %260, i32 0, i32 4
  %262 = load i64, i64* %261, align 8
  %263 = inttoptr i64 %262 to i32*
  %264 = load %struct.isar_reg*, %struct.isar_reg** %3, align 8
  %265 = getelementptr inbounds %struct.isar_reg, %struct.isar_reg* %264, i32 0, i32 3
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @QuickHex(i32* %259, i32* %263, i32 %266)
  %268 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %269 = load i32*, i32** @debbuf, align 8
  %270 = bitcast i32* %269 to i8*
  %271 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %268, i8* %270)
  br label %272

272:                                              ; preds = %246, %229
  br label %315

273:                                              ; preds = %1
  %274 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %275 = load %struct.isar_reg*, %struct.isar_reg** %3, align 8
  %276 = load i32*, i32** @debbuf, align 8
  %277 = call i32 @rcv_mbox(%struct.IsdnCardState* %274, %struct.isar_reg* %275, i32* %276)
  %278 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %279 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = load i32, i32* @L1_DEB_WARN, align 4
  %282 = and i32 %280, %281
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %290

284:                                              ; preds = %273
  %285 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %286 = load %struct.isar_reg*, %struct.isar_reg** %3, align 8
  %287 = getelementptr inbounds %struct.isar_reg, %struct.isar_reg* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %285, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %288)
  br label %290

290:                                              ; preds = %284, %273
  br label %315

291:                                              ; preds = %1
  %292 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %293 = load %struct.isar_reg*, %struct.isar_reg** %3, align 8
  %294 = load i32*, i32** @debbuf, align 8
  %295 = call i32 @rcv_mbox(%struct.IsdnCardState* %292, %struct.isar_reg* %293, i32* %294)
  %296 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %297 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = load i32, i32* @L1_DEB_WARN, align 4
  %300 = and i32 %298, %299
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %314

302:                                              ; preds = %291
  %303 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %304 = load %struct.isar_reg*, %struct.isar_reg** %3, align 8
  %305 = getelementptr inbounds %struct.isar_reg, %struct.isar_reg* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = load %struct.isar_reg*, %struct.isar_reg** %3, align 8
  %308 = getelementptr inbounds %struct.isar_reg, %struct.isar_reg* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  %310 = load %struct.isar_reg*, %struct.isar_reg** %3, align 8
  %311 = getelementptr inbounds %struct.isar_reg, %struct.isar_reg* %310, i32 0, i32 3
  %312 = load i32, i32* %311, align 4
  %313 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %303, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %306, i32 %309, i32 %312)
  br label %314

314:                                              ; preds = %302, %291
  br label %315

315:                                              ; preds = %314, %290, %272, %228, %190, %89, %53, %52
  ret void
}

declare dso_local i32 @get_irq_infos(%struct.IsdnCardState*, %struct.isar_reg*) #1

declare dso_local %struct.BCState* @sel_bcs_isar(%struct.IsdnCardState*, i32) #1

declare dso_local i32 @isar_rcv_frame(%struct.IsdnCardState*, %struct.BCState*) #1

declare dso_local i32 @debugl1(%struct.IsdnCardState*, i8*, ...) #1

declare dso_local i32 @check_send(%struct.IsdnCardState*, i32) #1

declare dso_local i32 @rcv_mbox(%struct.IsdnCardState*, %struct.isar_reg*, i32*) #1

declare dso_local i32 @isar_pump_statev_modem(%struct.BCState*, i32) #1

declare dso_local i32 @isar_pump_statev_fax(%struct.BCState*, i32) #1

declare dso_local i32 @isar_pump_status_rsp(%struct.BCState*, %struct.isar_reg*) #1

declare dso_local i32 @sprintf(i32*, i8*, i32, i32) #1

declare dso_local i32 @QuickHex(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
