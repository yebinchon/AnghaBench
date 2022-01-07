; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isar.c_isar_pump_statev_modem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isar.c_isar_pump_statev_modem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BCState = type { %struct.TYPE_6__, i32, %struct.IsdnCardState* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.IsdnCardState = type { i32 }

@L1_DEB_HSCX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"pump stev TIMER\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"pump stev CONNECT\00", align 1
@PH_ACTIVATE = common dso_local global i32 0, align 4
@REQUEST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"pump stev NO CONNECT\00", align 1
@ISAR_HIS_PSTREQ = common dso_local global i32 0, align 4
@PH_DEACTIVATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"pump stev V24 OFF\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"pump stev CTS ON\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"pump stev CTS OFF\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"pump stev CARRIER ON\00", align 1
@ISAR_RATE_REQ = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"pump stev CARRIER OFF\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"pump stev DSR ON\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"pump stev DSR_OFF\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"pump stev REMOTE RETRAIN\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"pump stev REMOTE RENEGOTIATE\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"pump stev GSTN CLEAR\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"unknown pump stev %x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.BCState*, i32)* @isar_pump_statev_modem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isar_pump_statev_modem(%struct.BCState* %0, i32 %1) #0 {
  %3 = alloca %struct.BCState*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.IsdnCardState*, align 8
  %6 = alloca i32, align 4
  store %struct.BCState* %0, %struct.BCState** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.BCState*, %struct.BCState** %3, align 8
  %8 = getelementptr inbounds %struct.BCState, %struct.BCState* %7, i32 0, i32 2
  %9 = load %struct.IsdnCardState*, %struct.IsdnCardState** %8, align 8
  store %struct.IsdnCardState* %9, %struct.IsdnCardState** %5, align 8
  %10 = load %struct.BCState*, %struct.BCState** %3, align 8
  %11 = getelementptr inbounds %struct.BCState, %struct.BCState* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @SET_DPS(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %4, align 4
  switch i32 %16, label %193 [
    i32 140, label %17
    i32 138, label %28
    i32 139, label %46
    i32 128, label %69
    i32 136, label %80
    i32 137, label %91
    i32 134, label %102
    i32 135, label %126
    i32 132, label %137
    i32 133, label %148
    i32 129, label %159
    i32 130, label %170
    i32 131, label %181
  ]

17:                                               ; preds = %2
  %18 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %19 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @L1_DEB_HSCX, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %26 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %25, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %17
  br label %205

28:                                               ; preds = %2
  %29 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %30 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @L1_DEB_HSCX, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %37 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %36, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %28
  %39 = load %struct.BCState*, %struct.BCState** %3, align 8
  %40 = getelementptr inbounds %struct.BCState, %struct.BCState* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @PH_ACTIVATE, align 4
  %43 = load i32, i32* @REQUEST, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @l1_msg_b(i32 %41, i32 %44, i32* null)
  br label %205

46:                                               ; preds = %2
  %47 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %48 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @L1_DEB_HSCX, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %55 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %54, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %46
  %57 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @ISAR_HIS_PSTREQ, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @sendmsg(%struct.IsdnCardState* %57, i32 %60, i32 0, i32 0, i32* null)
  %62 = load %struct.BCState*, %struct.BCState** %3, align 8
  %63 = getelementptr inbounds %struct.BCState, %struct.BCState* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @PH_DEACTIVATE, align 4
  %66 = load i32, i32* @REQUEST, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @l1_msg_b(i32 %64, i32 %67, i32* null)
  br label %205

69:                                               ; preds = %2
  %70 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %71 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @L1_DEB_HSCX, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %78 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %77, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %79

79:                                               ; preds = %76, %69
  br label %205

80:                                               ; preds = %2
  %81 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %82 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @L1_DEB_HSCX, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %89 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %88, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %90

90:                                               ; preds = %87, %80
  br label %205

91:                                               ; preds = %2
  %92 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %93 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @L1_DEB_HSCX, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %91
  %99 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %100 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %99, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  br label %101

101:                                              ; preds = %98, %91
  br label %205

102:                                              ; preds = %2
  %103 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %104 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @L1_DEB_HSCX, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %102
  %110 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %111 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %110, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %112

112:                                              ; preds = %109, %102
  %113 = load i32, i32* @ISAR_RATE_REQ, align 4
  %114 = load %struct.BCState*, %struct.BCState** %3, align 8
  %115 = getelementptr inbounds %struct.BCState, %struct.BCState* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = call i32 @test_and_set_bit(i32 %113, i32* %119)
  %121 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* @ISAR_HIS_PSTREQ, align 4
  %124 = or i32 %122, %123
  %125 = call i32 @sendmsg(%struct.IsdnCardState* %121, i32 %124, i32 0, i32 0, i32* null)
  br label %205

126:                                              ; preds = %2
  %127 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %128 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @L1_DEB_HSCX, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %126
  %134 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %135 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %134, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  br label %136

136:                                              ; preds = %133, %126
  br label %205

137:                                              ; preds = %2
  %138 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %139 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @L1_DEB_HSCX, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %137
  %145 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %146 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %145, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  br label %147

147:                                              ; preds = %144, %137
  br label %205

148:                                              ; preds = %2
  %149 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %150 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @L1_DEB_HSCX, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %148
  %156 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %157 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %156, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  br label %158

158:                                              ; preds = %155, %148
  br label %205

159:                                              ; preds = %2
  %160 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %161 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @L1_DEB_HSCX, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %159
  %167 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %168 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %167, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  br label %169

169:                                              ; preds = %166, %159
  br label %205

170:                                              ; preds = %2
  %171 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %172 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @L1_DEB_HSCX, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %170
  %178 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %179 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %178, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0))
  br label %180

180:                                              ; preds = %177, %170
  br label %205

181:                                              ; preds = %2
  %182 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %183 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @L1_DEB_HSCX, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %181
  %189 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %190 = load i32, i32* %4, align 4
  %191 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %189, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 %190)
  br label %192

192:                                              ; preds = %188, %181
  br label %205

193:                                              ; preds = %2
  %194 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %195 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @L1_DEB_HSCX, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %193
  %201 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %202 = load i32, i32* %4, align 4
  %203 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %201, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i32 %202)
  br label %204

204:                                              ; preds = %200, %193
  br label %205

205:                                              ; preds = %204, %192, %180, %169, %158, %147, %136, %112, %101, %90, %79, %56, %38, %27
  ret void
}

declare dso_local i32 @SET_DPS(i32) #1

declare dso_local i32 @debugl1(%struct.IsdnCardState*, i8*, ...) #1

declare dso_local i32 @l1_msg_b(i32, i32, i32*) #1

declare dso_local i32 @sendmsg(%struct.IsdnCardState*, i32, i32, i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
