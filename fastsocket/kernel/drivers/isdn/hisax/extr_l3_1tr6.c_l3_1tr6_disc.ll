; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3_1tr6.c_l3_1tr6_disc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3_1tr6.c_l3_1tr6_disc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l3_process = type { %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 (%struct.TYPE_8__*, i32, %struct.l3_process*)* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.sk_buff = type { i32*, i32 }

@WE6_chargingInfo = common dso_local global i32 0, align 4
@CC_CHARGE = common dso_local global i32 0, align 4
@INDICATION = common dso_local global i32 0, align 4
@L3_DEB_CHARGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"charging info %d\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"charging info not found\00", align 1
@WE0_cause = common dso_local global i32 0, align 4
@L3_DEB_WARN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"cause not found\00", align 1
@NO_CAUSE = common dso_local global i32 0, align 4
@WE6_date = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"missing connack date\00", align 1
@CC_DISCONNECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l3_process*, i32, i8*)* @l3_1tr6_disc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l3_1tr6_disc(%struct.l3_process* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.l3_process*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [8 x i8], align 1
  %12 = alloca [32 x i8], align 16
  store %struct.l3_process* %0, %struct.l3_process** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.sk_buff*
  store %struct.sk_buff* %14, %struct.sk_buff** %7, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %16 = call i32 @StopAllL3Timer(%struct.l3_process* %15)
  %17 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %8, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @WE6_chargingInfo, align 4
  %25 = call i32* @findie(i32* %20, i32 %23, i32 %24, i32 6)
  store i32* %25, i32** %8, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %99

27:                                               ; preds = %3
  %28 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 0
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @iecpy(i8* %28, i32* %29, i32 1)
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %47, %27
  %32 = load i32, i32* %9, align 4
  %33 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 0
  %34 = call i32 @strlen(i8* %33)
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %31
  %37 = load i32, i32* %10, align 4
  %38 = mul nsw i32 %37, 10
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = and i32 %43, 15
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %10, align 4
  br label %47

47:                                               ; preds = %36
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %31

50:                                               ; preds = %31
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %53 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp sgt i32 %51, %55
  br i1 %56, label %57, label %76

57:                                               ; preds = %50
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %60 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 8
  %62 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %63 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %62, i32 0, i32 0
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i32 (%struct.TYPE_8__*, i32, %struct.l3_process*)*, i32 (%struct.TYPE_8__*, i32, %struct.l3_process*)** %66, align 8
  %68 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %69 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %68, i32 0, i32 0
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = load i32, i32* @CC_CHARGE, align 4
  %72 = load i32, i32* @INDICATION, align 4
  %73 = or i32 %71, %72
  %74 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %75 = call i32 %67(%struct.TYPE_8__* %70, i32 %73, %struct.l3_process* %74)
  br label %76

76:                                               ; preds = %57, %50
  %77 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %78 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %77, i32 0, i32 0
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @L3_DEB_CHARGE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %76
  %87 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %88 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %89 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @sprintf(i8* %87, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %91)
  %93 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %94 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %93, i32 0, i32 0
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %97 = call i32 @l3_debug(%struct.TYPE_8__* %95, i8* %96)
  br label %98

98:                                               ; preds = %86, %76
  br label %115

99:                                               ; preds = %3
  %100 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %101 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %100, i32 0, i32 0
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @L3_DEB_CHARGE, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %99
  %110 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %111 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %110, i32 0, i32 0
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = call i32 @l3_debug(%struct.TYPE_8__* %112, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %114

114:                                              ; preds = %109, %99
  br label %115

115:                                              ; preds = %114, %98
  %116 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %117 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  store i32* %118, i32** %8, align 8
  %119 = load i32*, i32** %8, align 8
  %120 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %121 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @WE0_cause, align 4
  %124 = call i32* @findie(i32* %119, i32 %122, i32 %123, i32 0)
  store i32* %124, i32** %8, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %162

126:                                              ; preds = %115
  %127 = load i32*, i32** %8, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %154

131:                                              ; preds = %126
  %132 = load i32*, i32** %8, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 2
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %136 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  store i32 %134, i32* %137, align 4
  %138 = load i32*, i32** %8, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 1
  %140 = load i32, i32* %139, align 4
  %141 = icmp sgt i32 %140, 1
  br i1 %141, label %142, label %149

142:                                              ; preds = %131
  %143 = load i32*, i32** %8, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 3
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %147 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 2
  store i32 %145, i32* %148, align 8
  br label %153

149:                                              ; preds = %131
  %150 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %151 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 2
  store i32 0, i32* %152, align 8
  br label %153

153:                                              ; preds = %149, %142
  br label %161

154:                                              ; preds = %126
  %155 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %156 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 1
  store i32 0, i32* %157, align 4
  %158 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %159 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 2
  store i32 0, i32* %160, align 8
  br label %161

161:                                              ; preds = %154, %153
  br label %182

162:                                              ; preds = %115
  %163 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %164 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %163, i32 0, i32 0
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @L3_DEB_WARN, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %162
  %173 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %174 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %173, i32 0, i32 0
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %174, align 8
  %176 = call i32 @l3_debug(%struct.TYPE_8__* %175, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %177

177:                                              ; preds = %172, %162
  %178 = load i32, i32* @NO_CAUSE, align 4
  %179 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %180 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 1
  store i32 %178, i32* %181, align 4
  br label %182

182:                                              ; preds = %177, %161
  %183 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %184 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %187 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @WE6_date, align 4
  %190 = call i32* @findie(i32* %185, i32 %188, i32 %189, i32 6)
  %191 = icmp ne i32* %190, null
  br i1 %191, label %196, label %192

192:                                              ; preds = %182
  %193 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %194 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %195 = call i32 @l3_1tr6_error(%struct.l3_process* %193, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), %struct.sk_buff* %194)
  br label %215

196:                                              ; preds = %182
  %197 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %198 = call i32 @dev_kfree_skb(%struct.sk_buff* %197)
  %199 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %200 = call i32 @newl3state(%struct.l3_process* %199, i32 12)
  %201 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %202 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %201, i32 0, i32 0
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 1
  %206 = load i32 (%struct.TYPE_8__*, i32, %struct.l3_process*)*, i32 (%struct.TYPE_8__*, i32, %struct.l3_process*)** %205, align 8
  %207 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %208 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %207, i32 0, i32 0
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %208, align 8
  %210 = load i32, i32* @CC_DISCONNECT, align 4
  %211 = load i32, i32* @INDICATION, align 4
  %212 = or i32 %210, %211
  %213 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %214 = call i32 %206(%struct.TYPE_8__* %209, i32 %212, %struct.l3_process* %213)
  br label %215

215:                                              ; preds = %196, %192
  ret void
}

declare dso_local i32 @StopAllL3Timer(%struct.l3_process*) #1

declare dso_local i32* @findie(i32*, i32, i32, i32) #1

declare dso_local i32 @iecpy(i8*, i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @l3_debug(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @l3_1tr6_error(%struct.l3_process*, i8*, %struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @newl3state(%struct.l3_process*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
