; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_callc.c_lli_deliver_call.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_callc.c_lli_deliver_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { %struct.Channel* }
%struct.Channel = type { i32, i32, %struct.TYPE_29__*, %struct.TYPE_28__*, %struct.TYPE_27__*, i32, i32 }
%struct.TYPE_29__ = type { i32 (%struct.TYPE_29__*, i32, i8*)*, %struct.TYPE_23__, i32 }
%struct.TYPE_23__ = type { i32 (%struct.TYPE_26__*)* }
%struct.TYPE_26__ = type { i32, %struct.TYPE_24__, i32, i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_28__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_27__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32 (%struct.TYPE_27__*, i32, %struct.TYPE_28__*)* }

@MDL_INFO_SETUP = common dso_local global i32 0, align 4
@ST_IN_WAIT_LL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"STAT_ICALL\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"STAT_ICALLW\00", align 1
@ISDN_STAT_ICALL = common dso_local global i32 0, align 4
@ISDN_STAT_ICALLW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"statcallb ret=%d\00", align 1
@ST_IN_ALERT_SENT = common dso_local global i32 0, align 4
@CC_ALERTING = common dso_local global i32 0, align 4
@REQUEST = common dso_local global i32 0, align 4
@ST_IN_PROCEED_SEND = common dso_local global i32 0, align 4
@CC_PROCEED_SEND = common dso_local global i32 0, align 4
@CC_REDIR = common dso_local global i32 0, align 4
@CC_MORE_INFO = common dso_local global i32 0, align 4
@CC_IGNORE = common dso_local global i32 0, align 4
@MDL_INFO_REL = common dso_local global i32 0, align 4
@ST_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*, i32, i8*)* @lli_deliver_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lli_deliver_call(%struct.FsmInst* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.FsmInst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.Channel*, align 8
  %8 = alloca %struct.TYPE_26__, align 4
  %9 = alloca i32, align 4
  store %struct.FsmInst* %0, %struct.FsmInst** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %11 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %10, i32 0, i32 0
  %12 = load %struct.Channel*, %struct.Channel** %11, align 8
  store %struct.Channel* %12, %struct.Channel** %7, align 8
  %13 = load %struct.Channel*, %struct.Channel** %7, align 8
  %14 = getelementptr inbounds %struct.Channel, %struct.Channel* %13, i32 0, i32 2
  %15 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %15, i32 0, i32 0
  %17 = load i32 (%struct.TYPE_29__*, i32, i8*)*, i32 (%struct.TYPE_29__*, i32, i8*)** %16, align 8
  %18 = load %struct.Channel*, %struct.Channel** %7, align 8
  %19 = getelementptr inbounds %struct.Channel, %struct.Channel* %18, i32 0, i32 2
  %20 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %21 = load i32, i32* @MDL_INFO_SETUP, align 4
  %22 = load %struct.Channel*, %struct.Channel** %7, align 8
  %23 = getelementptr inbounds %struct.Channel, %struct.Channel* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i8*
  %27 = call i32 %17(%struct.TYPE_29__* %20, i32 %21, i8* %26)
  %28 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %29 = load i32, i32* @ST_IN_WAIT_LL, align 4
  %30 = call i32 @FsmChangeState(%struct.FsmInst* %28, i32 %29)
  %31 = load %struct.Channel*, %struct.Channel** %7, align 8
  %32 = getelementptr inbounds %struct.Channel, %struct.Channel* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 1
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %3
  %37 = load %struct.Channel*, %struct.Channel** %7, align 8
  %38 = load %struct.Channel*, %struct.Channel** %7, align 8
  %39 = getelementptr inbounds %struct.Channel, %struct.Channel* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %40, 2
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0)
  %44 = call i32 (%struct.Channel*, i32, i8*, ...) @link_debug(%struct.Channel* %37, i32 0, i8* %43)
  br label %45

45:                                               ; preds = %36, %3
  %46 = load %struct.Channel*, %struct.Channel** %7, align 8
  %47 = getelementptr inbounds %struct.Channel, %struct.Channel* %46, i32 0, i32 2
  %48 = load %struct.TYPE_29__*, %struct.TYPE_29__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %8, i32 0, i32 3
  store i32 %50, i32* %51, align 4
  %52 = load %struct.Channel*, %struct.Channel** %7, align 8
  %53 = getelementptr inbounds %struct.Channel, %struct.Channel* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %54, 2
  br i1 %55, label %56, label %58

56:                                               ; preds = %45
  %57 = load i32, i32* @ISDN_STAT_ICALL, align 4
  br label %60

58:                                               ; preds = %45
  %59 = load i32, i32* @ISDN_STAT_ICALLW, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  %62 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %8, i32 0, i32 2
  store i32 %61, i32* %62, align 4
  %63 = load %struct.Channel*, %struct.Channel** %7, align 8
  %64 = getelementptr inbounds %struct.Channel, %struct.Channel* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %8, i32 0, i32 0
  store i32 %65, i32* %66, align 4
  %67 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %8, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %67, i32 0, i32 0
  %69 = load %struct.Channel*, %struct.Channel** %7, align 8
  %70 = getelementptr inbounds %struct.Channel, %struct.Channel* %69, i32 0, i32 3
  %71 = load %struct.TYPE_28__*, %struct.TYPE_28__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 0
  %74 = call i32 @memcpy(i32* %68, i32* %73, i32 4)
  %75 = load %struct.Channel*, %struct.Channel** %7, align 8
  %76 = getelementptr inbounds %struct.Channel, %struct.Channel* %75, i32 0, i32 2
  %77 = load %struct.TYPE_29__*, %struct.TYPE_29__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %78, i32 0, i32 0
  %80 = load i32 (%struct.TYPE_26__*)*, i32 (%struct.TYPE_26__*)** %79, align 8
  %81 = call i32 %80(%struct.TYPE_26__* %8)
  store i32 %81, i32* %9, align 4
  %82 = load %struct.Channel*, %struct.Channel** %7, align 8
  %83 = getelementptr inbounds %struct.Channel, %struct.Channel* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, 1
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %60
  %88 = load %struct.Channel*, %struct.Channel** %7, align 8
  %89 = load i32, i32* %9, align 4
  %90 = call i32 (%struct.Channel*, i32, i8*, ...) @link_debug(%struct.Channel* %88, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %87, %60
  %92 = load i32, i32* %9, align 4
  switch i32 %92, label %186 [
    i32 1, label %93
    i32 5, label %116
    i32 4, label %116
    i32 2, label %164
    i32 3, label %165
    i32 0, label %185
  ]

93:                                               ; preds = %91
  %94 = load %struct.Channel*, %struct.Channel** %7, align 8
  %95 = getelementptr inbounds %struct.Channel, %struct.Channel* %94, i32 0, i32 5
  %96 = call i32 @FsmDelTimer(i32* %95, i32 61)
  %97 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %98 = load i32, i32* @ST_IN_ALERT_SENT, align 4
  %99 = call i32 @FsmChangeState(%struct.FsmInst* %97, i32 %98)
  %100 = load %struct.Channel*, %struct.Channel** %7, align 8
  %101 = getelementptr inbounds %struct.Channel, %struct.Channel* %100, i32 0, i32 4
  %102 = load %struct.TYPE_27__*, %struct.TYPE_27__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %103, i32 0, i32 0
  %105 = load i32 (%struct.TYPE_27__*, i32, %struct.TYPE_28__*)*, i32 (%struct.TYPE_27__*, i32, %struct.TYPE_28__*)** %104, align 8
  %106 = load %struct.Channel*, %struct.Channel** %7, align 8
  %107 = getelementptr inbounds %struct.Channel, %struct.Channel* %106, i32 0, i32 4
  %108 = load %struct.TYPE_27__*, %struct.TYPE_27__** %107, align 8
  %109 = load i32, i32* @CC_ALERTING, align 4
  %110 = load i32, i32* @REQUEST, align 4
  %111 = or i32 %109, %110
  %112 = load %struct.Channel*, %struct.Channel** %7, align 8
  %113 = getelementptr inbounds %struct.Channel, %struct.Channel* %112, i32 0, i32 3
  %114 = load %struct.TYPE_28__*, %struct.TYPE_28__** %113, align 8
  %115 = call i32 %105(%struct.TYPE_27__* %108, i32 %111, %struct.TYPE_28__* %114)
  br label %221

116:                                              ; preds = %91, %91
  %117 = load %struct.Channel*, %struct.Channel** %7, align 8
  %118 = getelementptr inbounds %struct.Channel, %struct.Channel* %117, i32 0, i32 5
  %119 = call i32 @FsmDelTimer(i32* %118, i32 61)
  %120 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %121 = load i32, i32* @ST_IN_PROCEED_SEND, align 4
  %122 = call i32 @FsmChangeState(%struct.FsmInst* %120, i32 %121)
  %123 = load %struct.Channel*, %struct.Channel** %7, align 8
  %124 = getelementptr inbounds %struct.Channel, %struct.Channel* %123, i32 0, i32 4
  %125 = load %struct.TYPE_27__*, %struct.TYPE_27__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %126, i32 0, i32 0
  %128 = load i32 (%struct.TYPE_27__*, i32, %struct.TYPE_28__*)*, i32 (%struct.TYPE_27__*, i32, %struct.TYPE_28__*)** %127, align 8
  %129 = load %struct.Channel*, %struct.Channel** %7, align 8
  %130 = getelementptr inbounds %struct.Channel, %struct.Channel* %129, i32 0, i32 4
  %131 = load %struct.TYPE_27__*, %struct.TYPE_27__** %130, align 8
  %132 = load i32, i32* @CC_PROCEED_SEND, align 4
  %133 = load i32, i32* @REQUEST, align 4
  %134 = or i32 %132, %133
  %135 = load %struct.Channel*, %struct.Channel** %7, align 8
  %136 = getelementptr inbounds %struct.Channel, %struct.Channel* %135, i32 0, i32 3
  %137 = load %struct.TYPE_28__*, %struct.TYPE_28__** %136, align 8
  %138 = call i32 %128(%struct.TYPE_27__* %131, i32 %134, %struct.TYPE_28__* %137)
  %139 = load i32, i32* %9, align 4
  %140 = icmp eq i32 %139, 5
  br i1 %140, label %141, label %163

141:                                              ; preds = %116
  %142 = load %struct.Channel*, %struct.Channel** %7, align 8
  %143 = getelementptr inbounds %struct.Channel, %struct.Channel* %142, i32 0, i32 6
  %144 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %8, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %144, i32 0, i32 0
  %146 = call i32 @memcpy(i32* %143, i32* %145, i32 4)
  %147 = load %struct.Channel*, %struct.Channel** %7, align 8
  %148 = getelementptr inbounds %struct.Channel, %struct.Channel* %147, i32 0, i32 4
  %149 = load %struct.TYPE_27__*, %struct.TYPE_27__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %150, i32 0, i32 0
  %152 = load i32 (%struct.TYPE_27__*, i32, %struct.TYPE_28__*)*, i32 (%struct.TYPE_27__*, i32, %struct.TYPE_28__*)** %151, align 8
  %153 = load %struct.Channel*, %struct.Channel** %7, align 8
  %154 = getelementptr inbounds %struct.Channel, %struct.Channel* %153, i32 0, i32 4
  %155 = load %struct.TYPE_27__*, %struct.TYPE_27__** %154, align 8
  %156 = load i32, i32* @CC_REDIR, align 4
  %157 = load i32, i32* @REQUEST, align 4
  %158 = or i32 %156, %157
  %159 = load %struct.Channel*, %struct.Channel** %7, align 8
  %160 = getelementptr inbounds %struct.Channel, %struct.Channel* %159, i32 0, i32 3
  %161 = load %struct.TYPE_28__*, %struct.TYPE_28__** %160, align 8
  %162 = call i32 %152(%struct.TYPE_27__* %155, i32 %158, %struct.TYPE_28__* %161)
  br label %163

163:                                              ; preds = %141, %116
  br label %221

164:                                              ; preds = %91
  br label %221

165:                                              ; preds = %91
  %166 = load %struct.Channel*, %struct.Channel** %7, align 8
  %167 = getelementptr inbounds %struct.Channel, %struct.Channel* %166, i32 0, i32 5
  %168 = call i32 @FsmDelTimer(i32* %167, i32 61)
  %169 = load %struct.Channel*, %struct.Channel** %7, align 8
  %170 = getelementptr inbounds %struct.Channel, %struct.Channel* %169, i32 0, i32 4
  %171 = load %struct.TYPE_27__*, %struct.TYPE_27__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %172, i32 0, i32 0
  %174 = load i32 (%struct.TYPE_27__*, i32, %struct.TYPE_28__*)*, i32 (%struct.TYPE_27__*, i32, %struct.TYPE_28__*)** %173, align 8
  %175 = load %struct.Channel*, %struct.Channel** %7, align 8
  %176 = getelementptr inbounds %struct.Channel, %struct.Channel* %175, i32 0, i32 4
  %177 = load %struct.TYPE_27__*, %struct.TYPE_27__** %176, align 8
  %178 = load i32, i32* @CC_MORE_INFO, align 4
  %179 = load i32, i32* @REQUEST, align 4
  %180 = or i32 %178, %179
  %181 = load %struct.Channel*, %struct.Channel** %7, align 8
  %182 = getelementptr inbounds %struct.Channel, %struct.Channel* %181, i32 0, i32 3
  %183 = load %struct.TYPE_28__*, %struct.TYPE_28__** %182, align 8
  %184 = call i32 %174(%struct.TYPE_27__* %177, i32 %180, %struct.TYPE_28__* %183)
  br label %221

185:                                              ; preds = %91
  br label %186

186:                                              ; preds = %91, %185
  %187 = load %struct.Channel*, %struct.Channel** %7, align 8
  %188 = getelementptr inbounds %struct.Channel, %struct.Channel* %187, i32 0, i32 4
  %189 = load %struct.TYPE_27__*, %struct.TYPE_27__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %190, i32 0, i32 0
  %192 = load i32 (%struct.TYPE_27__*, i32, %struct.TYPE_28__*)*, i32 (%struct.TYPE_27__*, i32, %struct.TYPE_28__*)** %191, align 8
  %193 = load %struct.Channel*, %struct.Channel** %7, align 8
  %194 = getelementptr inbounds %struct.Channel, %struct.Channel* %193, i32 0, i32 4
  %195 = load %struct.TYPE_27__*, %struct.TYPE_27__** %194, align 8
  %196 = load i32, i32* @CC_IGNORE, align 4
  %197 = load i32, i32* @REQUEST, align 4
  %198 = or i32 %196, %197
  %199 = load %struct.Channel*, %struct.Channel** %7, align 8
  %200 = getelementptr inbounds %struct.Channel, %struct.Channel* %199, i32 0, i32 3
  %201 = load %struct.TYPE_28__*, %struct.TYPE_28__** %200, align 8
  %202 = call i32 %192(%struct.TYPE_27__* %195, i32 %198, %struct.TYPE_28__* %201)
  %203 = load %struct.Channel*, %struct.Channel** %7, align 8
  %204 = getelementptr inbounds %struct.Channel, %struct.Channel* %203, i32 0, i32 2
  %205 = load %struct.TYPE_29__*, %struct.TYPE_29__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %205, i32 0, i32 0
  %207 = load i32 (%struct.TYPE_29__*, i32, i8*)*, i32 (%struct.TYPE_29__*, i32, i8*)** %206, align 8
  %208 = load %struct.Channel*, %struct.Channel** %7, align 8
  %209 = getelementptr inbounds %struct.Channel, %struct.Channel* %208, i32 0, i32 2
  %210 = load %struct.TYPE_29__*, %struct.TYPE_29__** %209, align 8
  %211 = load i32, i32* @MDL_INFO_REL, align 4
  %212 = load %struct.Channel*, %struct.Channel** %7, align 8
  %213 = getelementptr inbounds %struct.Channel, %struct.Channel* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = sext i32 %214 to i64
  %216 = inttoptr i64 %215 to i8*
  %217 = call i32 %207(%struct.TYPE_29__* %210, i32 %211, i8* %216)
  %218 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %219 = load i32, i32* @ST_NULL, align 4
  %220 = call i32 @FsmChangeState(%struct.FsmInst* %218, i32 %219)
  br label %221

221:                                              ; preds = %186, %165, %164, %163, %93
  ret void
}

declare dso_local i32 @FsmChangeState(%struct.FsmInst*, i32) #1

declare dso_local i32 @link_debug(%struct.Channel*, i32, i8*, ...) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @FsmDelTimer(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
