; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_ctcm_main.c_ccw_unit_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_ctcm_main.c_ccw_unit_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel = type { i32, i32, i32 }

@TRACE = common dso_local global i32 0, align 4
@CTC_DBF_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%s(%s): %02x\00", align 1
@CTCM_FUNTAIL = common dso_local global i32 0, align 4
@SNS0_INTERVENTION_REQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"%s: The communication peer has disconnected\0A\00", align 1
@CTC_EVENT_UC_RCRESET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"%s: The remote operating system is not available\0A\00", align 1
@CTC_EVENT_UC_RSRESET = common dso_local global i32 0, align 4
@SNS0_EQUIPMENT_CHECK = common dso_local global i32 0, align 4
@SNS0_BUS_OUT_CHECK = common dso_local global i32 0, align 4
@CTC_DBF_WARN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"%s(%s): remote HW error %02x\00", align 1
@CTC_EVENT_UC_HWFAIL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"%s(%s): remote read parity error %02x\00", align 1
@CTC_EVENT_UC_RXPARITY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"%s(%s): BUS OUT error %02x\00", align 1
@CTC_EVENT_UC_TXTIMEOUT = common dso_local global i32 0, align 4
@CTC_EVENT_UC_TXPARITY = common dso_local global i32 0, align 4
@SNS0_CMD_REJECT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"%s(%s): Command rejected\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"%s(%s): Unit check ZERO\00", align 1
@CTC_EVENT_UC_ZERO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [37 x i8] c"%s(%s): Unit check code %02x unknown\00", align 1
@CTC_EVENT_UC_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.channel*, i32)* @ccw_unit_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccw_unit_check(%struct.channel* %0, i32 %1) #0 {
  %3 = alloca %struct.channel*, align 8
  %4 = alloca i32, align 4
  store %struct.channel* %0, %struct.channel** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @TRACE, align 4
  %6 = load i32, i32* @CTC_DBF_DEBUG, align 4
  %7 = load i32, i32* @CTCM_FUNTAIL, align 4
  %8 = load %struct.channel*, %struct.channel** %3, align 8
  %9 = getelementptr inbounds %struct.channel, %struct.channel* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 (i32, i32, i8*, i32, i32, ...) @CTCM_DBF_TEXT_(i32 %5, i32 %6, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %10, i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @SNS0_INTERVENTION_REQ, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %62

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, 1
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %17
  %22 = load %struct.channel*, %struct.channel** %3, align 8
  %23 = getelementptr inbounds %struct.channel, %struct.channel* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 1
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load %struct.channel*, %struct.channel** %3, align 8
  %28 = getelementptr inbounds %struct.channel, %struct.channel* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @pr_notice(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load %struct.channel*, %struct.channel** %3, align 8
  %32 = getelementptr inbounds %struct.channel, %struct.channel* %31, i32 0, i32 0
  store i32 1, i32* %32, align 4
  br label %33

33:                                               ; preds = %26, %21
  %34 = load %struct.channel*, %struct.channel** %3, align 8
  %35 = getelementptr inbounds %struct.channel, %struct.channel* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @CTC_EVENT_UC_RCRESET, align 4
  %38 = load %struct.channel*, %struct.channel** %3, align 8
  %39 = call i32 @fsm_event(i32 %36, i32 %37, %struct.channel* %38)
  br label %61

40:                                               ; preds = %17
  %41 = load %struct.channel*, %struct.channel** %3, align 8
  %42 = getelementptr inbounds %struct.channel, %struct.channel* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @SNS0_INTERVENTION_REQ, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %40
  %47 = load %struct.channel*, %struct.channel** %3, align 8
  %48 = getelementptr inbounds %struct.channel, %struct.channel* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @pr_notice(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @SNS0_INTERVENTION_REQ, align 4
  %52 = load %struct.channel*, %struct.channel** %3, align 8
  %53 = getelementptr inbounds %struct.channel, %struct.channel* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %46, %40
  %55 = load %struct.channel*, %struct.channel** %3, align 8
  %56 = getelementptr inbounds %struct.channel, %struct.channel* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @CTC_EVENT_UC_RSRESET, align 4
  %59 = load %struct.channel*, %struct.channel** %3, align 8
  %60 = call i32 @fsm_event(i32 %57, i32 %58, %struct.channel* %59)
  br label %61

61:                                               ; preds = %54, %33
  br label %224

62:                                               ; preds = %2
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @SNS0_EQUIPMENT_CHECK, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %123

67:                                               ; preds = %62
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @SNS0_BUS_OUT_CHECK, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %97

72:                                               ; preds = %67
  %73 = load %struct.channel*, %struct.channel** %3, align 8
  %74 = getelementptr inbounds %struct.channel, %struct.channel* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @SNS0_BUS_OUT_CHECK, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %72
  %79 = load i32, i32* @TRACE, align 4
  %80 = load i32, i32* @CTC_DBF_WARN, align 4
  %81 = load i32, i32* @CTCM_FUNTAIL, align 4
  %82 = load %struct.channel*, %struct.channel** %3, align 8
  %83 = getelementptr inbounds %struct.channel, %struct.channel* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %4, align 4
  %86 = call i32 (i32, i32, i8*, i32, i32, ...) @CTCM_DBF_TEXT_(i32 %79, i32 %80, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %81, i32 %84, i32 %85)
  %87 = load i32, i32* @SNS0_BUS_OUT_CHECK, align 4
  %88 = load %struct.channel*, %struct.channel** %3, align 8
  %89 = getelementptr inbounds %struct.channel, %struct.channel* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %78, %72
  %91 = load %struct.channel*, %struct.channel** %3, align 8
  %92 = getelementptr inbounds %struct.channel, %struct.channel* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @CTC_EVENT_UC_HWFAIL, align 4
  %95 = load %struct.channel*, %struct.channel** %3, align 8
  %96 = call i32 @fsm_event(i32 %93, i32 %94, %struct.channel* %95)
  br label %122

97:                                               ; preds = %67
  %98 = load %struct.channel*, %struct.channel** %3, align 8
  %99 = getelementptr inbounds %struct.channel, %struct.channel* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @SNS0_EQUIPMENT_CHECK, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %115

103:                                              ; preds = %97
  %104 = load i32, i32* @TRACE, align 4
  %105 = load i32, i32* @CTC_DBF_WARN, align 4
  %106 = load i32, i32* @CTCM_FUNTAIL, align 4
  %107 = load %struct.channel*, %struct.channel** %3, align 8
  %108 = getelementptr inbounds %struct.channel, %struct.channel* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %4, align 4
  %111 = call i32 (i32, i32, i8*, i32, i32, ...) @CTCM_DBF_TEXT_(i32 %104, i32 %105, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %106, i32 %109, i32 %110)
  %112 = load i32, i32* @SNS0_EQUIPMENT_CHECK, align 4
  %113 = load %struct.channel*, %struct.channel** %3, align 8
  %114 = getelementptr inbounds %struct.channel, %struct.channel* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 4
  br label %115

115:                                              ; preds = %103, %97
  %116 = load %struct.channel*, %struct.channel** %3, align 8
  %117 = getelementptr inbounds %struct.channel, %struct.channel* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @CTC_EVENT_UC_RXPARITY, align 4
  %120 = load %struct.channel*, %struct.channel** %3, align 8
  %121 = call i32 @fsm_event(i32 %118, i32 %119, %struct.channel* %120)
  br label %122

122:                                              ; preds = %115, %90
  br label %223

123:                                              ; preds = %62
  %124 = load i32, i32* %4, align 4
  %125 = load i32, i32* @SNS0_BUS_OUT_CHECK, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %165

128:                                              ; preds = %123
  %129 = load %struct.channel*, %struct.channel** %3, align 8
  %130 = getelementptr inbounds %struct.channel, %struct.channel* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @SNS0_BUS_OUT_CHECK, align 4
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %134, label %146

134:                                              ; preds = %128
  %135 = load i32, i32* @TRACE, align 4
  %136 = load i32, i32* @CTC_DBF_WARN, align 4
  %137 = load i32, i32* @CTCM_FUNTAIL, align 4
  %138 = load %struct.channel*, %struct.channel** %3, align 8
  %139 = getelementptr inbounds %struct.channel, %struct.channel* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %4, align 4
  %142 = call i32 (i32, i32, i8*, i32, i32, ...) @CTCM_DBF_TEXT_(i32 %135, i32 %136, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %137, i32 %140, i32 %141)
  %143 = load i32, i32* @SNS0_BUS_OUT_CHECK, align 4
  %144 = load %struct.channel*, %struct.channel** %3, align 8
  %145 = getelementptr inbounds %struct.channel, %struct.channel* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 4
  br label %146

146:                                              ; preds = %134, %128
  %147 = load i32, i32* %4, align 4
  %148 = and i32 %147, 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %146
  %151 = load %struct.channel*, %struct.channel** %3, align 8
  %152 = getelementptr inbounds %struct.channel, %struct.channel* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @CTC_EVENT_UC_TXTIMEOUT, align 4
  %155 = load %struct.channel*, %struct.channel** %3, align 8
  %156 = call i32 @fsm_event(i32 %153, i32 %154, %struct.channel* %155)
  br label %164

157:                                              ; preds = %146
  %158 = load %struct.channel*, %struct.channel** %3, align 8
  %159 = getelementptr inbounds %struct.channel, %struct.channel* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @CTC_EVENT_UC_TXPARITY, align 4
  %162 = load %struct.channel*, %struct.channel** %3, align 8
  %163 = call i32 @fsm_event(i32 %160, i32 %161, %struct.channel* %162)
  br label %164

164:                                              ; preds = %157, %150
  br label %222

165:                                              ; preds = %123
  %166 = load i32, i32* %4, align 4
  %167 = load i32, i32* @SNS0_CMD_REJECT, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %188

170:                                              ; preds = %165
  %171 = load %struct.channel*, %struct.channel** %3, align 8
  %172 = getelementptr inbounds %struct.channel, %struct.channel* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @SNS0_CMD_REJECT, align 4
  %175 = icmp ne i32 %173, %174
  br i1 %175, label %176, label %187

176:                                              ; preds = %170
  %177 = load i32, i32* @TRACE, align 4
  %178 = load i32, i32* @CTC_DBF_WARN, align 4
  %179 = load i32, i32* @CTCM_FUNTAIL, align 4
  %180 = load %struct.channel*, %struct.channel** %3, align 8
  %181 = getelementptr inbounds %struct.channel, %struct.channel* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = call i32 (i32, i32, i8*, i32, i32, ...) @CTCM_DBF_TEXT_(i32 %177, i32 %178, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %179, i32 %182)
  %184 = load i32, i32* @SNS0_CMD_REJECT, align 4
  %185 = load %struct.channel*, %struct.channel** %3, align 8
  %186 = getelementptr inbounds %struct.channel, %struct.channel* %185, i32 0, i32 0
  store i32 %184, i32* %186, align 4
  br label %187

187:                                              ; preds = %176, %170
  br label %221

188:                                              ; preds = %165
  %189 = load i32, i32* %4, align 4
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %205

191:                                              ; preds = %188
  %192 = load i32, i32* @TRACE, align 4
  %193 = load i32, i32* @CTC_DBF_WARN, align 4
  %194 = load i32, i32* @CTCM_FUNTAIL, align 4
  %195 = load %struct.channel*, %struct.channel** %3, align 8
  %196 = getelementptr inbounds %struct.channel, %struct.channel* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = call i32 (i32, i32, i8*, i32, i32, ...) @CTCM_DBF_TEXT_(i32 %192, i32 %193, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %194, i32 %197)
  %199 = load %struct.channel*, %struct.channel** %3, align 8
  %200 = getelementptr inbounds %struct.channel, %struct.channel* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @CTC_EVENT_UC_ZERO, align 4
  %203 = load %struct.channel*, %struct.channel** %3, align 8
  %204 = call i32 @fsm_event(i32 %201, i32 %202, %struct.channel* %203)
  br label %220

205:                                              ; preds = %188
  %206 = load i32, i32* @TRACE, align 4
  %207 = load i32, i32* @CTC_DBF_WARN, align 4
  %208 = load i32, i32* @CTCM_FUNTAIL, align 4
  %209 = load %struct.channel*, %struct.channel** %3, align 8
  %210 = getelementptr inbounds %struct.channel, %struct.channel* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* %4, align 4
  %213 = call i32 (i32, i32, i8*, i32, i32, ...) @CTCM_DBF_TEXT_(i32 %206, i32 %207, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i32 %208, i32 %211, i32 %212)
  %214 = load %struct.channel*, %struct.channel** %3, align 8
  %215 = getelementptr inbounds %struct.channel, %struct.channel* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @CTC_EVENT_UC_UNKNOWN, align 4
  %218 = load %struct.channel*, %struct.channel** %3, align 8
  %219 = call i32 @fsm_event(i32 %216, i32 %217, %struct.channel* %218)
  br label %220

220:                                              ; preds = %205, %191
  br label %221

221:                                              ; preds = %220, %187
  br label %222

222:                                              ; preds = %221, %164
  br label %223

223:                                              ; preds = %222, %122
  br label %224

224:                                              ; preds = %223, %61
  ret void
}

declare dso_local i32 @CTCM_DBF_TEXT_(i32, i32, i8*, i32, i32, ...) #1

declare dso_local i32 @pr_notice(i8*, i32) #1

declare dso_local i32 @fsm_event(i32, i32, %struct.channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
