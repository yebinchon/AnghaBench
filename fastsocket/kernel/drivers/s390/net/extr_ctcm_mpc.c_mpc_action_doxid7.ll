; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_ctcm_mpc.c_mpc_action_doxid7.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_ctcm_mpc.c_mpc_action_doxid7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.ctcm_priv* }
%struct.ctcm_priv = type { %struct.channel**, %struct.mpc_group* }
%struct.channel = type { %struct.TYPE_5__*, %struct.TYPE_4__*, i32, i32, %struct.xid2* }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i8* }
%struct.xid2 = type { i32 }
%struct.mpc_group = type { i64, i64, i32 }

@READ = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@XID2_7 = common dso_local global i32 0, align 4
@YSIDE = common dso_local global i64 0, align 8
@CH_XID7_PENDING1 = common dso_local global i64 0, align 8
@CH_XID7_PENDING2 = common dso_local global i64 0, align 8
@CCW_CMD_SENSE_CMD = common dso_local global i8* null, align 8
@TH_HEADER_LENGTH = common dso_local global i32 0, align 4
@thdummy = common dso_local global i32 0, align 4
@CCW_CMD_WRITE_CTL = common dso_local global i8* null, align 8
@thnorm = common dso_local global i32 0, align 4
@CH_XID7_PENDING4 = common dso_local global i64 0, align 8
@CH_XID7_PENDING3 = common dso_local global i64 0, align 8
@MPCG_EVENT_DOIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*)* @mpc_action_doxid7 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpc_action_doxid7(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.ctcm_priv*, align 8
  %9 = alloca %struct.mpc_group*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.channel*, align 8
  %13 = alloca %struct.xid2*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.net_device*
  store %struct.net_device* %15, %struct.net_device** %7, align 8
  %16 = load %struct.net_device*, %struct.net_device** %7, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load %struct.ctcm_priv*, %struct.ctcm_priv** %17, align 8
  store %struct.ctcm_priv* %18, %struct.ctcm_priv** %8, align 8
  store %struct.mpc_group* null, %struct.mpc_group** %9, align 8
  store i32 0, i32* %11, align 4
  %19 = load %struct.ctcm_priv*, %struct.ctcm_priv** %8, align 8
  %20 = icmp ne %struct.ctcm_priv* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.ctcm_priv*, %struct.ctcm_priv** %8, align 8
  %23 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %22, i32 0, i32 1
  %24 = load %struct.mpc_group*, %struct.mpc_group** %23, align 8
  store %struct.mpc_group* %24, %struct.mpc_group** %9, align 8
  br label %25

25:                                               ; preds = %21, %3
  %26 = load %struct.mpc_group*, %struct.mpc_group** %9, align 8
  %27 = icmp eq %struct.mpc_group* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  br label %205

29:                                               ; preds = %25
  %30 = load i32, i32* @READ, align 4
  store i32 %30, i32* %10, align 4
  br label %31

31:                                               ; preds = %201, %29
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @WRITE, align 4
  %34 = icmp sle i32 %32, %33
  br i1 %34, label %35, label %204

35:                                               ; preds = %31
  %36 = load %struct.ctcm_priv*, %struct.ctcm_priv** %8, align 8
  %37 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %36, i32 0, i32 0
  %38 = load %struct.channel**, %struct.channel*** %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.channel*, %struct.channel** %38, i64 %40
  %42 = load %struct.channel*, %struct.channel** %41, align 8
  store %struct.channel* %42, %struct.channel** %12, align 8
  %43 = load %struct.channel*, %struct.channel** %12, align 8
  %44 = getelementptr inbounds %struct.channel, %struct.channel* %43, i32 0, i32 4
  %45 = load %struct.xid2*, %struct.xid2** %44, align 8
  store %struct.xid2* %45, %struct.xid2** %13, align 8
  %46 = load %struct.channel*, %struct.channel** %12, align 8
  %47 = getelementptr inbounds %struct.channel, %struct.channel* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.channel*, %struct.channel** %12, align 8
  %50 = getelementptr inbounds %struct.channel, %struct.channel* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  store i32 %48, i32* %52, align 8
  %53 = load %struct.channel*, %struct.channel** %12, align 8
  %54 = getelementptr inbounds %struct.channel, %struct.channel* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = call i32 @skb_reset_tail_pointer(%struct.TYPE_5__* %55)
  %57 = load %struct.channel*, %struct.channel** %12, align 8
  %58 = getelementptr inbounds %struct.channel, %struct.channel* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
  %61 = load i32, i32* @XID2_7, align 4
  %62 = load %struct.xid2*, %struct.xid2** %13, align 8
  %63 = getelementptr inbounds %struct.xid2, %struct.xid2* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  store i32 0, i32* %11, align 4
  %64 = load %struct.mpc_group*, %struct.mpc_group** %9, align 8
  %65 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp sgt i64 %66, 0
  br i1 %67, label %68, label %129

68:                                               ; preds = %35
  %69 = load %struct.mpc_group*, %struct.mpc_group** %9, align 8
  %70 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @YSIDE, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %101

74:                                               ; preds = %68
  %75 = load %struct.channel*, %struct.channel** %12, align 8
  %76 = getelementptr inbounds %struct.channel, %struct.channel* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @fsm_getstate(i32 %77)
  %79 = load i64, i64* @CH_XID7_PENDING1, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %100

81:                                               ; preds = %74
  %82 = load %struct.channel*, %struct.channel** %12, align 8
  %83 = getelementptr inbounds %struct.channel, %struct.channel* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load i64, i64* @CH_XID7_PENDING2, align 8
  %86 = call i32 @fsm_newstate(i32 %84, i64 %85)
  %87 = load i8*, i8** @CCW_CMD_SENSE_CMD, align 8
  %88 = load %struct.channel*, %struct.channel** %12, align 8
  %89 = getelementptr inbounds %struct.channel, %struct.channel* %88, i32 0, i32 1
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i64 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  store i8* %87, i8** %92, align 8
  %93 = load %struct.channel*, %struct.channel** %12, align 8
  %94 = getelementptr inbounds %struct.channel, %struct.channel* %93, i32 0, i32 0
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = load i32, i32* @TH_HEADER_LENGTH, align 4
  %97 = call i32 @skb_put(%struct.TYPE_5__* %95, i32 %96)
  %98 = load i32, i32* @TH_HEADER_LENGTH, align 4
  %99 = call i32 @memcpy(i32 %97, i32* @thdummy, i32 %98)
  store i32 1, i32* %11, align 4
  br label %100

100:                                              ; preds = %81, %74
  br label %128

101:                                              ; preds = %68
  %102 = load %struct.channel*, %struct.channel** %12, align 8
  %103 = getelementptr inbounds %struct.channel, %struct.channel* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = call i64 @fsm_getstate(i32 %104)
  %106 = load i64, i64* @CH_XID7_PENDING2, align 8
  %107 = icmp slt i64 %105, %106
  br i1 %107, label %108, label %127

108:                                              ; preds = %101
  %109 = load %struct.channel*, %struct.channel** %12, align 8
  %110 = getelementptr inbounds %struct.channel, %struct.channel* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load i64, i64* @CH_XID7_PENDING2, align 8
  %113 = call i32 @fsm_newstate(i32 %111, i64 %112)
  %114 = load i8*, i8** @CCW_CMD_WRITE_CTL, align 8
  %115 = load %struct.channel*, %struct.channel** %12, align 8
  %116 = getelementptr inbounds %struct.channel, %struct.channel* %115, i32 0, i32 1
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i64 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  store i8* %114, i8** %119, align 8
  %120 = load %struct.channel*, %struct.channel** %12, align 8
  %121 = getelementptr inbounds %struct.channel, %struct.channel* %120, i32 0, i32 0
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %121, align 8
  %123 = load i32, i32* @TH_HEADER_LENGTH, align 4
  %124 = call i32 @skb_put(%struct.TYPE_5__* %122, i32 %123)
  %125 = load i32, i32* @TH_HEADER_LENGTH, align 4
  %126 = call i32 @memcpy(i32 %124, i32* @thnorm, i32 %125)
  store i32 1, i32* %11, align 4
  br label %127

127:                                              ; preds = %108, %101
  br label %128

128:                                              ; preds = %127, %100
  br label %190

129:                                              ; preds = %35
  %130 = load %struct.mpc_group*, %struct.mpc_group** %9, align 8
  %131 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @YSIDE, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %162

135:                                              ; preds = %129
  %136 = load %struct.channel*, %struct.channel** %12, align 8
  %137 = getelementptr inbounds %struct.channel, %struct.channel* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = call i64 @fsm_getstate(i32 %138)
  %140 = load i64, i64* @CH_XID7_PENDING4, align 8
  %141 = icmp slt i64 %139, %140
  br i1 %141, label %142, label %161

142:                                              ; preds = %135
  %143 = load %struct.channel*, %struct.channel** %12, align 8
  %144 = getelementptr inbounds %struct.channel, %struct.channel* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = load i64, i64* @CH_XID7_PENDING4, align 8
  %147 = call i32 @fsm_newstate(i32 %145, i64 %146)
  %148 = load %struct.channel*, %struct.channel** %12, align 8
  %149 = getelementptr inbounds %struct.channel, %struct.channel* %148, i32 0, i32 0
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %149, align 8
  %151 = load i32, i32* @TH_HEADER_LENGTH, align 4
  %152 = call i32 @skb_put(%struct.TYPE_5__* %150, i32 %151)
  %153 = load i32, i32* @TH_HEADER_LENGTH, align 4
  %154 = call i32 @memcpy(i32 %152, i32* @thnorm, i32 %153)
  %155 = load i8*, i8** @CCW_CMD_WRITE_CTL, align 8
  %156 = load %struct.channel*, %struct.channel** %12, align 8
  %157 = getelementptr inbounds %struct.channel, %struct.channel* %156, i32 0, i32 1
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i64 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  store i8* %155, i8** %160, align 8
  store i32 1, i32* %11, align 4
  br label %161

161:                                              ; preds = %142, %135
  br label %189

162:                                              ; preds = %129
  %163 = load %struct.channel*, %struct.channel** %12, align 8
  %164 = getelementptr inbounds %struct.channel, %struct.channel* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = call i64 @fsm_getstate(i32 %165)
  %167 = load i64, i64* @CH_XID7_PENDING3, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %188

169:                                              ; preds = %162
  %170 = load %struct.channel*, %struct.channel** %12, align 8
  %171 = getelementptr inbounds %struct.channel, %struct.channel* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = load i64, i64* @CH_XID7_PENDING4, align 8
  %174 = call i32 @fsm_newstate(i32 %172, i64 %173)
  %175 = load i8*, i8** @CCW_CMD_SENSE_CMD, align 8
  %176 = load %struct.channel*, %struct.channel** %12, align 8
  %177 = getelementptr inbounds %struct.channel, %struct.channel* %176, i32 0, i32 1
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i64 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  store i8* %175, i8** %180, align 8
  %181 = load %struct.channel*, %struct.channel** %12, align 8
  %182 = getelementptr inbounds %struct.channel, %struct.channel* %181, i32 0, i32 0
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %182, align 8
  %184 = load i32, i32* @TH_HEADER_LENGTH, align 4
  %185 = call i32 @skb_put(%struct.TYPE_5__* %183, i32 %184)
  %186 = load i32, i32* @TH_HEADER_LENGTH, align 4
  %187 = call i32 @memcpy(i32 %185, i32* @thdummy, i32 %186)
  store i32 1, i32* %11, align 4
  br label %188

188:                                              ; preds = %169, %162
  br label %189

189:                                              ; preds = %188, %161
  br label %190

190:                                              ; preds = %189, %128
  %191 = load i32, i32* %11, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %200

193:                                              ; preds = %190
  %194 = load %struct.mpc_group*, %struct.mpc_group** %9, align 8
  %195 = getelementptr inbounds %struct.mpc_group, %struct.mpc_group* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @MPCG_EVENT_DOIO, align 4
  %198 = load %struct.channel*, %struct.channel** %12, align 8
  %199 = call i32 @fsm_event(i32 %196, i32 %197, %struct.channel* %198)
  br label %200

200:                                              ; preds = %193, %190
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %10, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %10, align 4
  br label %31

204:                                              ; preds = %31
  br label %205

205:                                              ; preds = %204, %28
  ret void
}

declare dso_local i32 @skb_reset_tail_pointer(%struct.TYPE_5__*) #1

declare dso_local i64 @fsm_getstate(i32) #1

declare dso_local i32 @fsm_newstate(i32, i64) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @skb_put(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @fsm_event(i32, i32, %struct.channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
