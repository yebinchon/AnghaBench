; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc_sx.c_hfcsx_auxcmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc_sx.c_hfcsx_auxcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32, i32, i32, %struct.TYPE_16__, %struct.TYPE_14__*, %struct.TYPE_12__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }

@HFCSX_INTS_B2TRANS = common dso_local global i32 0, align 4
@HFCSX_INTS_B2REC = common dso_local global i32 0, align 4
@HFCSX_INTS_B1TRANS = common dso_local global i32 0, align 4
@HFCSX_INTS_B1REC = common dso_local global i32 0, align 4
@HFCSX_STATES = common dso_local global i32 0, align 4
@HFCSX_LOAD_STATE = common dso_local global i32 0, align 4
@SCTRL_MODE_NT = common dso_local global i32 0, align 4
@HFCSX_SCTRL = common dso_local global i32 0, align 4
@HFCSX_ACTIVATE = common dso_local global i32 0, align 4
@HFCSX_DO_ACTION = common dso_local global i32 0, align 4
@dch_nt_l2l1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"NT mode activated\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SCTRL_B2_ENA = common dso_local global i32 0, align 4
@HFCSX_CTMT = common dso_local global i32 0, align 4
@HFCSX_SCTRL_R = common dso_local global i32 0, align 4
@HFCSX_CONNECT = common dso_local global i32 0, align 4
@HFCSX_TRM = common dso_local global i32 0, align 4
@HFCSX_INT_M1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.IsdnCardState*, %struct.TYPE_17__*)* @hfcsx_auxcmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfcsx_auxcmd(%struct.IsdnCardState* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.IsdnCardState*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i32*
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 98
  br i1 %17, label %18, label %96

18:                                               ; preds = %2
  %19 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %20 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @HFCSX_INTS_B2TRANS, align 4
  %25 = load i32, i32* @HFCSX_INTS_B2REC, align 4
  %26 = add nsw i32 %24, %25
  %27 = load i32, i32* @HFCSX_INTS_B1TRANS, align 4
  %28 = add nsw i32 %26, %27
  %29 = load i32, i32* @HFCSX_INTS_B1REC, align 4
  %30 = add nsw i32 %28, %29
  %31 = and i32 %23, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %96, label %33

33:                                               ; preds = %18
  %34 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %35 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %34, i32 0, i32 2
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @spin_lock_irqsave(i32* %35, i64 %36)
  %38 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %39 = load i32, i32* @HFCSX_STATES, align 4
  %40 = load i32, i32* @HFCSX_LOAD_STATE, align 4
  %41 = call i32 @Write_hfc(%struct.IsdnCardState* %38, i32 %39, i32 %40)
  %42 = call i32 @udelay(i32 10)
  %43 = load i32, i32* @SCTRL_MODE_NT, align 4
  %44 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %45 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %43
  store i32 %49, i32* %47, align 4
  %50 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %51 = load i32, i32* @HFCSX_SCTRL, align 4
  %52 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %53 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @Write_hfc(%struct.IsdnCardState* %50, i32 %51, i32 %56)
  %58 = call i32 @udelay(i32 10)
  %59 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %60 = load i32, i32* @HFCSX_STATES, align 4
  %61 = load i32, i32* @HFCSX_LOAD_STATE, align 4
  %62 = or i32 %61, 1
  %63 = call i32 @Write_hfc(%struct.IsdnCardState* %59, i32 %60, i32 %62)
  %64 = call i32 @udelay(i32 10)
  %65 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %66 = load i32, i32* @HFCSX_STATES, align 4
  %67 = load i32, i32* @HFCSX_ACTIVATE, align 4
  %68 = or i32 1, %67
  %69 = load i32, i32* @HFCSX_DO_ACTION, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @Write_hfc(%struct.IsdnCardState* %65, i32 %66, i32 %70)
  %72 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %73 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %72, i32 0, i32 5
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  %76 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %77 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 2
  store i32 1, i32* %79, align 8
  %80 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %81 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 8
  store i64 0, i64* %83, align 8
  %84 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %85 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %84, i32 0, i32 2
  %86 = load i64, i64* %6, align 8
  %87 = call i32 @spin_unlock_irqrestore(i32* %85, i64 %86)
  %88 = load i32, i32* @dch_nt_l2l1, align 4
  %89 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %90 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %89, i32 0, i32 4
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  store i32 %88, i32* %93, align 4
  %94 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %95 = call i32 @debugl1(%struct.IsdnCardState* %94, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %244

96:                                               ; preds = %18, %2
  %97 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %98 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp sgt i32 %99, 1
  br i1 %100, label %120, label %101

101:                                              ; preds = %96
  %102 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %103 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 7
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %120, label %108

108:                                              ; preds = %101
  %109 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %110 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %120, label %115

115:                                              ; preds = %108
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 12
  br i1 %119, label %120, label %123

120:                                              ; preds = %115, %108, %101, %96
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %3, align 4
  br label %244

123:                                              ; preds = %115
  %124 = load i32, i32* %7, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %142

126:                                              ; preds = %123
  %127 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %128 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %127, i32 0, i32 1
  store i32 1, i32* %128, align 4
  %129 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %130 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, 32
  store i32 %134, i32* %132, align 4
  %135 = load i32, i32* @HFCSX_INTS_B2REC, align 4
  %136 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %137 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = or i32 %140, %135
  store i32 %141, i32* %139, align 8
  br label %159

142:                                              ; preds = %123
  %143 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %144 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %143, i32 0, i32 1
  store i32 0, i32* %144, align 4
  %145 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %146 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = and i32 %149, -33
  store i32 %150, i32* %148, align 4
  %151 = load i32, i32* @HFCSX_INTS_B2REC, align 4
  %152 = xor i32 %151, -1
  %153 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %154 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = and i32 %157, %152
  store i32 %158, i32* %156, align 8
  br label %159

159:                                              ; preds = %142, %126
  %160 = load i32, i32* @SCTRL_B2_ENA, align 4
  %161 = xor i32 %160, -1
  %162 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %163 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 8
  %167 = and i32 %166, %161
  store i32 %167, i32* %165, align 8
  %168 = load i32, i32* @SCTRL_B2_ENA, align 4
  %169 = xor i32 %168, -1
  %170 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %171 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %170, i32 0, i32 3
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = and i32 %174, %169
  store i32 %175, i32* %173, align 4
  %176 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %177 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %176, i32 0, i32 3
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 5
  %180 = load i32, i32* %179, align 4
  %181 = or i32 %180, 16
  store i32 %181, i32* %179, align 4
  %182 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %183 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %182, i32 0, i32 3
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 6
  %186 = load i32, i32* %185, align 8
  %187 = and i32 %186, -3
  store i32 %187, i32* %185, align 8
  %188 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %189 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %188, i32 0, i32 2
  %190 = load i64, i64* %6, align 8
  %191 = call i32 @spin_lock_irqsave(i32* %189, i64 %190)
  %192 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %193 = load i32, i32* @HFCSX_CTMT, align 4
  %194 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %195 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %194, i32 0, i32 3
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %196, i32 0, i32 6
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @Write_hfc(%struct.IsdnCardState* %192, i32 %193, i32 %198)
  %200 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %201 = load i32, i32* @HFCSX_SCTRL_R, align 4
  %202 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %203 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %202, i32 0, i32 3
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @Write_hfc(%struct.IsdnCardState* %200, i32 %201, i32 %206)
  %208 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %209 = load i32, i32* @HFCSX_SCTRL, align 4
  %210 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %211 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %210, i32 0, i32 3
  %212 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @Write_hfc(%struct.IsdnCardState* %208, i32 %209, i32 %214)
  %216 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %217 = load i32, i32* @HFCSX_CONNECT, align 4
  %218 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %219 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %218, i32 0, i32 3
  %220 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %220, i32 0, i32 5
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @Write_hfc(%struct.IsdnCardState* %216, i32 %217, i32 %222)
  %224 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %225 = load i32, i32* @HFCSX_TRM, align 4
  %226 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %227 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %226, i32 0, i32 3
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @Write_hfc(%struct.IsdnCardState* %224, i32 %225, i32 %230)
  %232 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %233 = load i32, i32* @HFCSX_INT_M1, align 4
  %234 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %235 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %234, i32 0, i32 3
  %236 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = call i32 @Write_hfc(%struct.IsdnCardState* %232, i32 %233, i32 %238)
  %240 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %241 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %240, i32 0, i32 2
  %242 = load i64, i64* %6, align 8
  %243 = call i32 @spin_unlock_irqrestore(i32* %241, i64 %242)
  store i32 0, i32* %3, align 4
  br label %244

244:                                              ; preds = %159, %120, %33
  %245 = load i32, i32* %3, align 4
  ret i32 %245
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @Write_hfc(%struct.IsdnCardState*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @debugl1(%struct.IsdnCardState*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
