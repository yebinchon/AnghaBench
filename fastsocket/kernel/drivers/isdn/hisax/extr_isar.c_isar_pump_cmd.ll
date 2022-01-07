; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isar.c_isar_pump_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isar.c_isar_pump_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BCState = type { %struct.TYPE_3__, i32, %struct.IsdnCardState* }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i8*, i8*, i32 }
%struct.IsdnCardState = type { i32 }

@BC_FLG_FRH_WAIT = common dso_local global i32 0, align 4
@STFAX_READY = common dso_local global i8* null, align 8
@PCTRL_CMD_FTM = common dso_local global i8* null, align 8
@STFAX_LINE = common dso_local global i8* null, align 8
@STFAX_ACTIV = common dso_local global i8* null, align 8
@ISDN_FAX_CLASS1_CONNECT = common dso_local global i32 0, align 4
@PCTRL_CMD_ESC = common dso_local global i32 0, align 4
@STFAX_ESCAPE = common dso_local global i8* null, align 8
@PCTRL_CMD_FTH = common dso_local global i8* null, align 8
@PCTRL_CMD_FRM = common dso_local global i8* null, align 8
@PCTRL_CMD_FRH = common dso_local global i8* null, align 8
@STFAX_NULL = common dso_local global i8* null, align 8
@PCTRL_CMD_HALT = common dso_local global i32 0, align 4
@ISAR_HIS_PUMPCTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.BCState*, i32, i32)* @isar_pump_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isar_pump_cmd(%struct.BCState* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.BCState*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.IsdnCardState*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.BCState* %0, %struct.BCState** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.BCState*, %struct.BCState** %4, align 8
  %13 = getelementptr inbounds %struct.BCState, %struct.BCState* %12, i32 0, i32 2
  %14 = load %struct.IsdnCardState*, %struct.IsdnCardState** %13, align 8
  store %struct.IsdnCardState* %14, %struct.IsdnCardState** %7, align 8
  %15 = load %struct.BCState*, %struct.BCState** %4, align 8
  %16 = getelementptr inbounds %struct.BCState, %struct.BCState* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @SET_DPS(i32 %19)
  store i32 %20, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %21 = load i32, i32* %5, align 4
  switch i32 %21, label %397 [
    i32 128, label %22
    i32 129, label %114
    i32 130, label %206
    i32 131, label %298
    i32 132, label %390
  ]

22:                                               ; preds = %3
  %23 = load i32, i32* @BC_FLG_FRH_WAIT, align 4
  %24 = load %struct.BCState*, %struct.BCState** %4, align 8
  %25 = getelementptr inbounds %struct.BCState, %struct.BCState* %24, i32 0, i32 1
  %26 = call i32 @test_and_clear_bit(i32 %23, i32* %25)
  %27 = load %struct.BCState*, %struct.BCState** %4, align 8
  %28 = getelementptr inbounds %struct.BCState, %struct.BCState* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 4
  %31 = load i8*, i8** %30, align 8
  %32 = load i8*, i8** @STFAX_READY, align 8
  %33 = icmp eq i8* %31, %32
  br i1 %33, label %34, label %65

34:                                               ; preds = %22
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %11, align 4
  %36 = load i8*, i8** @PCTRL_CMD_FTM, align 8
  %37 = ptrtoint i8* %36 to i32
  store i32 %37, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %38 = load i8*, i8** @STFAX_LINE, align 8
  %39 = load %struct.BCState*, %struct.BCState** %4, align 8
  %40 = getelementptr inbounds %struct.BCState, %struct.BCState* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 4
  store i8* %38, i8** %42, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.BCState*, %struct.BCState** %4, align 8
  %45 = getelementptr inbounds %struct.BCState, %struct.BCState* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i32 %43, i32* %47, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.BCState*, %struct.BCState** %4, align 8
  %50 = getelementptr inbounds %struct.BCState, %struct.BCState* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  store i32 %48, i32* %52, align 4
  %53 = load %struct.BCState*, %struct.BCState** %4, align 8
  %54 = getelementptr inbounds %struct.BCState, %struct.BCState* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  store i32 0, i32* %56, align 8
  %57 = load %struct.BCState*, %struct.BCState** %4, align 8
  %58 = getelementptr inbounds %struct.BCState, %struct.BCState* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 5
  store i8* null, i8** %60, align 8
  %61 = load %struct.BCState*, %struct.BCState** %4, align 8
  %62 = getelementptr inbounds %struct.BCState, %struct.BCState* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 3
  store i32 3, i32* %64, align 4
  br label %113

65:                                               ; preds = %22
  %66 = load %struct.BCState*, %struct.BCState** %4, align 8
  %67 = getelementptr inbounds %struct.BCState, %struct.BCState* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 4
  %70 = load i8*, i8** %69, align 8
  %71 = load i8*, i8** @STFAX_ACTIV, align 8
  %72 = icmp eq i8* %70, %71
  br i1 %72, label %73, label %95

73:                                               ; preds = %65
  %74 = load %struct.BCState*, %struct.BCState** %4, align 8
  %75 = getelementptr inbounds %struct.BCState, %struct.BCState* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = inttoptr i64 %79 to i8*
  %81 = load i8*, i8** @PCTRL_CMD_FTM, align 8
  %82 = icmp eq i8* %80, %81
  br i1 %82, label %83, label %95

83:                                               ; preds = %73
  %84 = load %struct.BCState*, %struct.BCState** %4, align 8
  %85 = getelementptr inbounds %struct.BCState, %struct.BCState* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %83
  %92 = load %struct.BCState*, %struct.BCState** %4, align 8
  %93 = load i32, i32* @ISDN_FAX_CLASS1_CONNECT, align 4
  %94 = call i32 @ll_deliver_faxstat(%struct.BCState* %92, i32 %93)
  br label %112

95:                                               ; preds = %83, %73, %65
  %96 = load i32, i32* %6, align 4
  %97 = load %struct.BCState*, %struct.BCState** %4, align 8
  %98 = getelementptr inbounds %struct.BCState, %struct.BCState* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 2
  store i32 %96, i32* %100, align 8
  %101 = load i8*, i8** @PCTRL_CMD_FTM, align 8
  %102 = load %struct.BCState*, %struct.BCState** %4, align 8
  %103 = getelementptr inbounds %struct.BCState, %struct.BCState* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 5
  store i8* %101, i8** %105, align 8
  store i32 0, i32* %10, align 4
  %106 = load i32, i32* @PCTRL_CMD_ESC, align 4
  store i32 %106, i32* %9, align 4
  %107 = load i8*, i8** @STFAX_ESCAPE, align 8
  %108 = load %struct.BCState*, %struct.BCState** %4, align 8
  %109 = getelementptr inbounds %struct.BCState, %struct.BCState* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 4
  store i8* %107, i8** %111, align 8
  br label %112

112:                                              ; preds = %95, %91
  br label %113

113:                                              ; preds = %112, %34
  br label %397

114:                                              ; preds = %3
  %115 = load i32, i32* @BC_FLG_FRH_WAIT, align 4
  %116 = load %struct.BCState*, %struct.BCState** %4, align 8
  %117 = getelementptr inbounds %struct.BCState, %struct.BCState* %116, i32 0, i32 1
  %118 = call i32 @test_and_clear_bit(i32 %115, i32* %117)
  %119 = load %struct.BCState*, %struct.BCState** %4, align 8
  %120 = getelementptr inbounds %struct.BCState, %struct.BCState* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 4
  %123 = load i8*, i8** %122, align 8
  %124 = load i8*, i8** @STFAX_READY, align 8
  %125 = icmp eq i8* %123, %124
  br i1 %125, label %126, label %157

126:                                              ; preds = %114
  %127 = load i32, i32* %6, align 4
  store i32 %127, i32* %11, align 4
  %128 = load i8*, i8** @PCTRL_CMD_FTH, align 8
  %129 = ptrtoint i8* %128 to i32
  store i32 %129, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %130 = load i8*, i8** @STFAX_LINE, align 8
  %131 = load %struct.BCState*, %struct.BCState** %4, align 8
  %132 = getelementptr inbounds %struct.BCState, %struct.BCState* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 4
  store i8* %130, i8** %134, align 8
  %135 = load i32, i32* %9, align 4
  %136 = load %struct.BCState*, %struct.BCState** %4, align 8
  %137 = getelementptr inbounds %struct.BCState, %struct.BCState* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  store i32 %135, i32* %139, align 8
  %140 = load i32, i32* %6, align 4
  %141 = load %struct.BCState*, %struct.BCState** %4, align 8
  %142 = getelementptr inbounds %struct.BCState, %struct.BCState* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 1
  store i32 %140, i32* %144, align 4
  %145 = load %struct.BCState*, %struct.BCState** %4, align 8
  %146 = getelementptr inbounds %struct.BCState, %struct.BCState* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 2
  store i32 0, i32* %148, align 8
  %149 = load %struct.BCState*, %struct.BCState** %4, align 8
  %150 = getelementptr inbounds %struct.BCState, %struct.BCState* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 5
  store i8* null, i8** %152, align 8
  %153 = load %struct.BCState*, %struct.BCState** %4, align 8
  %154 = getelementptr inbounds %struct.BCState, %struct.BCState* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 3
  store i32 3, i32* %156, align 4
  br label %205

157:                                              ; preds = %114
  %158 = load %struct.BCState*, %struct.BCState** %4, align 8
  %159 = getelementptr inbounds %struct.BCState, %struct.BCState* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 4
  %162 = load i8*, i8** %161, align 8
  %163 = load i8*, i8** @STFAX_ACTIV, align 8
  %164 = icmp eq i8* %162, %163
  br i1 %164, label %165, label %187

165:                                              ; preds = %157
  %166 = load %struct.BCState*, %struct.BCState** %4, align 8
  %167 = getelementptr inbounds %struct.BCState, %struct.BCState* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = sext i32 %170 to i64
  %172 = inttoptr i64 %171 to i8*
  %173 = load i8*, i8** @PCTRL_CMD_FTH, align 8
  %174 = icmp eq i8* %172, %173
  br i1 %174, label %175, label %187

175:                                              ; preds = %165
  %176 = load %struct.BCState*, %struct.BCState** %4, align 8
  %177 = getelementptr inbounds %struct.BCState, %struct.BCState* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %6, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %187

183:                                              ; preds = %175
  %184 = load %struct.BCState*, %struct.BCState** %4, align 8
  %185 = load i32, i32* @ISDN_FAX_CLASS1_CONNECT, align 4
  %186 = call i32 @ll_deliver_faxstat(%struct.BCState* %184, i32 %185)
  br label %204

187:                                              ; preds = %175, %165, %157
  %188 = load i32, i32* %6, align 4
  %189 = load %struct.BCState*, %struct.BCState** %4, align 8
  %190 = getelementptr inbounds %struct.BCState, %struct.BCState* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 2
  store i32 %188, i32* %192, align 8
  %193 = load i8*, i8** @PCTRL_CMD_FTH, align 8
  %194 = load %struct.BCState*, %struct.BCState** %4, align 8
  %195 = getelementptr inbounds %struct.BCState, %struct.BCState* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 5
  store i8* %193, i8** %197, align 8
  store i32 0, i32* %10, align 4
  %198 = load i32, i32* @PCTRL_CMD_ESC, align 4
  store i32 %198, i32* %9, align 4
  %199 = load i8*, i8** @STFAX_ESCAPE, align 8
  %200 = load %struct.BCState*, %struct.BCState** %4, align 8
  %201 = getelementptr inbounds %struct.BCState, %struct.BCState* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 4
  store i8* %199, i8** %203, align 8
  br label %204

204:                                              ; preds = %187, %183
  br label %205

205:                                              ; preds = %204, %126
  br label %397

206:                                              ; preds = %3
  %207 = load i32, i32* @BC_FLG_FRH_WAIT, align 4
  %208 = load %struct.BCState*, %struct.BCState** %4, align 8
  %209 = getelementptr inbounds %struct.BCState, %struct.BCState* %208, i32 0, i32 1
  %210 = call i32 @test_and_clear_bit(i32 %207, i32* %209)
  %211 = load %struct.BCState*, %struct.BCState** %4, align 8
  %212 = getelementptr inbounds %struct.BCState, %struct.BCState* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 4
  %215 = load i8*, i8** %214, align 8
  %216 = load i8*, i8** @STFAX_READY, align 8
  %217 = icmp eq i8* %215, %216
  br i1 %217, label %218, label %249

218:                                              ; preds = %206
  %219 = load i32, i32* %6, align 4
  store i32 %219, i32* %11, align 4
  %220 = load i8*, i8** @PCTRL_CMD_FRM, align 8
  %221 = ptrtoint i8* %220 to i32
  store i32 %221, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %222 = load i8*, i8** @STFAX_LINE, align 8
  %223 = load %struct.BCState*, %struct.BCState** %4, align 8
  %224 = getelementptr inbounds %struct.BCState, %struct.BCState* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 4
  store i8* %222, i8** %226, align 8
  %227 = load i32, i32* %9, align 4
  %228 = load %struct.BCState*, %struct.BCState** %4, align 8
  %229 = getelementptr inbounds %struct.BCState, %struct.BCState* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 0
  store i32 %227, i32* %231, align 8
  %232 = load i32, i32* %6, align 4
  %233 = load %struct.BCState*, %struct.BCState** %4, align 8
  %234 = getelementptr inbounds %struct.BCState, %struct.BCState* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 1
  store i32 %232, i32* %236, align 4
  %237 = load %struct.BCState*, %struct.BCState** %4, align 8
  %238 = getelementptr inbounds %struct.BCState, %struct.BCState* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 2
  store i32 0, i32* %240, align 8
  %241 = load %struct.BCState*, %struct.BCState** %4, align 8
  %242 = getelementptr inbounds %struct.BCState, %struct.BCState* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i32 0, i32 5
  store i8* null, i8** %244, align 8
  %245 = load %struct.BCState*, %struct.BCState** %4, align 8
  %246 = getelementptr inbounds %struct.BCState, %struct.BCState* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i32 0, i32 3
  store i32 3, i32* %248, align 4
  br label %297

249:                                              ; preds = %206
  %250 = load %struct.BCState*, %struct.BCState** %4, align 8
  %251 = getelementptr inbounds %struct.BCState, %struct.BCState* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %252, i32 0, i32 4
  %254 = load i8*, i8** %253, align 8
  %255 = load i8*, i8** @STFAX_ACTIV, align 8
  %256 = icmp eq i8* %254, %255
  br i1 %256, label %257, label %279

257:                                              ; preds = %249
  %258 = load %struct.BCState*, %struct.BCState** %4, align 8
  %259 = getelementptr inbounds %struct.BCState, %struct.BCState* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = sext i32 %262 to i64
  %264 = inttoptr i64 %263 to i8*
  %265 = load i8*, i8** @PCTRL_CMD_FRM, align 8
  %266 = icmp eq i8* %264, %265
  br i1 %266, label %267, label %279

267:                                              ; preds = %257
  %268 = load %struct.BCState*, %struct.BCState** %4, align 8
  %269 = getelementptr inbounds %struct.BCState, %struct.BCState* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* %6, align 4
  %274 = icmp eq i32 %272, %273
  br i1 %274, label %275, label %279

275:                                              ; preds = %267
  %276 = load %struct.BCState*, %struct.BCState** %4, align 8
  %277 = load i32, i32* @ISDN_FAX_CLASS1_CONNECT, align 4
  %278 = call i32 @ll_deliver_faxstat(%struct.BCState* %276, i32 %277)
  br label %296

279:                                              ; preds = %267, %257, %249
  %280 = load i32, i32* %6, align 4
  %281 = load %struct.BCState*, %struct.BCState** %4, align 8
  %282 = getelementptr inbounds %struct.BCState, %struct.BCState* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i32 0, i32 2
  store i32 %280, i32* %284, align 8
  %285 = load i8*, i8** @PCTRL_CMD_FRM, align 8
  %286 = load %struct.BCState*, %struct.BCState** %4, align 8
  %287 = getelementptr inbounds %struct.BCState, %struct.BCState* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %288, i32 0, i32 5
  store i8* %285, i8** %289, align 8
  store i32 0, i32* %10, align 4
  %290 = load i32, i32* @PCTRL_CMD_ESC, align 4
  store i32 %290, i32* %9, align 4
  %291 = load i8*, i8** @STFAX_ESCAPE, align 8
  %292 = load %struct.BCState*, %struct.BCState** %4, align 8
  %293 = getelementptr inbounds %struct.BCState, %struct.BCState* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %294, i32 0, i32 4
  store i8* %291, i8** %295, align 8
  br label %296

296:                                              ; preds = %279, %275
  br label %297

297:                                              ; preds = %296, %218
  br label %397

298:                                              ; preds = %3
  %299 = load i32, i32* @BC_FLG_FRH_WAIT, align 4
  %300 = load %struct.BCState*, %struct.BCState** %4, align 8
  %301 = getelementptr inbounds %struct.BCState, %struct.BCState* %300, i32 0, i32 1
  %302 = call i32 @test_and_set_bit(i32 %299, i32* %301)
  %303 = load %struct.BCState*, %struct.BCState** %4, align 8
  %304 = getelementptr inbounds %struct.BCState, %struct.BCState* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %305, i32 0, i32 4
  %307 = load i8*, i8** %306, align 8
  %308 = load i8*, i8** @STFAX_READY, align 8
  %309 = icmp eq i8* %307, %308
  br i1 %309, label %310, label %341

310:                                              ; preds = %298
  %311 = load i32, i32* %6, align 4
  store i32 %311, i32* %11, align 4
  %312 = load i8*, i8** @PCTRL_CMD_FRH, align 8
  %313 = ptrtoint i8* %312 to i32
  store i32 %313, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %314 = load i8*, i8** @STFAX_LINE, align 8
  %315 = load %struct.BCState*, %struct.BCState** %4, align 8
  %316 = getelementptr inbounds %struct.BCState, %struct.BCState* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %317, i32 0, i32 4
  store i8* %314, i8** %318, align 8
  %319 = load i32, i32* %9, align 4
  %320 = load %struct.BCState*, %struct.BCState** %4, align 8
  %321 = getelementptr inbounds %struct.BCState, %struct.BCState* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %322, i32 0, i32 0
  store i32 %319, i32* %323, align 8
  %324 = load i32, i32* %6, align 4
  %325 = load %struct.BCState*, %struct.BCState** %4, align 8
  %326 = getelementptr inbounds %struct.BCState, %struct.BCState* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %327, i32 0, i32 1
  store i32 %324, i32* %328, align 4
  %329 = load %struct.BCState*, %struct.BCState** %4, align 8
  %330 = getelementptr inbounds %struct.BCState, %struct.BCState* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %331, i32 0, i32 2
  store i32 0, i32* %332, align 8
  %333 = load %struct.BCState*, %struct.BCState** %4, align 8
  %334 = getelementptr inbounds %struct.BCState, %struct.BCState* %333, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %335, i32 0, i32 5
  store i8* null, i8** %336, align 8
  %337 = load %struct.BCState*, %struct.BCState** %4, align 8
  %338 = getelementptr inbounds %struct.BCState, %struct.BCState* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %339, i32 0, i32 3
  store i32 3, i32* %340, align 4
  br label %389

341:                                              ; preds = %298
  %342 = load %struct.BCState*, %struct.BCState** %4, align 8
  %343 = getelementptr inbounds %struct.BCState, %struct.BCState* %342, i32 0, i32 0
  %344 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %344, i32 0, i32 4
  %346 = load i8*, i8** %345, align 8
  %347 = load i8*, i8** @STFAX_ACTIV, align 8
  %348 = icmp eq i8* %346, %347
  br i1 %348, label %349, label %371

349:                                              ; preds = %341
  %350 = load %struct.BCState*, %struct.BCState** %4, align 8
  %351 = getelementptr inbounds %struct.BCState, %struct.BCState* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %351, i32 0, i32 0
  %353 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = sext i32 %354 to i64
  %356 = inttoptr i64 %355 to i8*
  %357 = load i8*, i8** @PCTRL_CMD_FRH, align 8
  %358 = icmp eq i8* %356, %357
  br i1 %358, label %359, label %371

359:                                              ; preds = %349
  %360 = load %struct.BCState*, %struct.BCState** %4, align 8
  %361 = getelementptr inbounds %struct.BCState, %struct.BCState* %360, i32 0, i32 0
  %362 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %361, i32 0, i32 0
  %363 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %362, i32 0, i32 1
  %364 = load i32, i32* %363, align 4
  %365 = load i32, i32* %6, align 4
  %366 = icmp eq i32 %364, %365
  br i1 %366, label %367, label %371

367:                                              ; preds = %359
  %368 = load %struct.BCState*, %struct.BCState** %4, align 8
  %369 = load i32, i32* @ISDN_FAX_CLASS1_CONNECT, align 4
  %370 = call i32 @ll_deliver_faxstat(%struct.BCState* %368, i32 %369)
  br label %388

371:                                              ; preds = %359, %349, %341
  %372 = load i32, i32* %6, align 4
  %373 = load %struct.BCState*, %struct.BCState** %4, align 8
  %374 = getelementptr inbounds %struct.BCState, %struct.BCState* %373, i32 0, i32 0
  %375 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %374, i32 0, i32 0
  %376 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %375, i32 0, i32 2
  store i32 %372, i32* %376, align 8
  %377 = load i8*, i8** @PCTRL_CMD_FRH, align 8
  %378 = load %struct.BCState*, %struct.BCState** %4, align 8
  %379 = getelementptr inbounds %struct.BCState, %struct.BCState* %378, i32 0, i32 0
  %380 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %379, i32 0, i32 0
  %381 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %380, i32 0, i32 5
  store i8* %377, i8** %381, align 8
  store i32 0, i32* %10, align 4
  %382 = load i32, i32* @PCTRL_CMD_ESC, align 4
  store i32 %382, i32* %9, align 4
  %383 = load i8*, i8** @STFAX_ESCAPE, align 8
  %384 = load %struct.BCState*, %struct.BCState** %4, align 8
  %385 = getelementptr inbounds %struct.BCState, %struct.BCState* %384, i32 0, i32 0
  %386 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %385, i32 0, i32 0
  %387 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %386, i32 0, i32 4
  store i8* %383, i8** %387, align 8
  br label %388

388:                                              ; preds = %371, %367
  br label %389

389:                                              ; preds = %388, %310
  br label %397

390:                                              ; preds = %3
  %391 = load i8*, i8** @STFAX_NULL, align 8
  %392 = load %struct.BCState*, %struct.BCState** %4, align 8
  %393 = getelementptr inbounds %struct.BCState, %struct.BCState* %392, i32 0, i32 0
  %394 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %393, i32 0, i32 0
  %395 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %394, i32 0, i32 4
  store i8* %391, i8** %395, align 8
  store i32 0, i32* %10, align 4
  %396 = load i32, i32* @PCTRL_CMD_HALT, align 4
  store i32 %396, i32* %9, align 4
  br label %397

397:                                              ; preds = %3, %390, %389, %297, %205, %113
  %398 = load i32, i32* %9, align 4
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %408

400:                                              ; preds = %397
  %401 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  %402 = load i32, i32* %8, align 4
  %403 = load i32, i32* @ISAR_HIS_PUMPCTRL, align 4
  %404 = or i32 %402, %403
  %405 = load i32, i32* %9, align 4
  %406 = load i32, i32* %10, align 4
  %407 = call i32 @sendmsg(%struct.IsdnCardState* %401, i32 %404, i32 %405, i32 %406, i32* %11)
  br label %408

408:                                              ; preds = %400, %397
  ret void
}

declare dso_local i32 @SET_DPS(i32) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @ll_deliver_faxstat(%struct.BCState*, i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @sendmsg(%struct.IsdnCardState*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
