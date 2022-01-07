; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_avmfritz.c_HDLC_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_avmfritz.c_HDLC_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bchannel = type { i32, i32, i64, %struct.TYPE_4__*, i64, %struct.fritzcard* }
%struct.TYPE_4__ = type { i64 }
%struct.fritzcard = type { i32, %struct.hdlc_hw* }
%struct.hdlc_hw = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64 }

@.str = private unnamed_addr constant [19 x i8] c"%s: ch%d stat %#x\0A\00", align 1
@HDLC_INT_RPR = common dso_local global i32 0, align 4
@HDLC_STAT_RDO = common dso_local global i32 0, align 4
@HDLC_CMD_RRS = common dso_local global i32 0, align 4
@HDLC_STAT_RML_MASK = common dso_local global i32 0, align 4
@HDLC_STAT_RME = common dso_local global i32 0, align 4
@FLG_TRANSPARENT = common dso_local global i32 0, align 4
@HDLC_STAT_CRCVFRRAB = common dso_local global i32 0, align 4
@HDLC_STAT_CRCVFR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"%s: got invalid frame\0A\00", align 1
@HDLC_INT_XDU = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"%s: ch%d XDU len(%d) idx(%d) Flags(%lx)\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"%s: ch%d XDU no tx_skb Flags(%lx)\0A\00", align 1
@HDLC_CMD_XRS = common dso_local global i32 0, align 4
@HDLC_INT_XPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bchannel*, i32)* @HDLC_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @HDLC_irq(%struct.bchannel* %0, i32 %1) #0 {
  %3 = alloca %struct.bchannel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fritzcard*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hdlc_hw*, align 8
  store %struct.bchannel* %0, %struct.bchannel** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %9 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %8, i32 0, i32 5
  %10 = load %struct.fritzcard*, %struct.fritzcard** %9, align 8
  store %struct.fritzcard* %10, %struct.fritzcard** %5, align 8
  %11 = load %struct.fritzcard*, %struct.fritzcard** %5, align 8
  %12 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %11, i32 0, i32 1
  %13 = load %struct.hdlc_hw*, %struct.hdlc_hw** %12, align 8
  %14 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %15 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sub nsw i32 %16, 1
  %18 = and i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.hdlc_hw, %struct.hdlc_hw* %13, i64 %19
  store %struct.hdlc_hw* %20, %struct.hdlc_hw** %7, align 8
  %21 = load %struct.fritzcard*, %struct.fritzcard** %5, align 8
  %22 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %25 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26, i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @HDLC_INT_RPR, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %127

33:                                               ; preds = %2
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @HDLC_STAT_RDO, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %72

38:                                               ; preds = %33
  %39 = load %struct.hdlc_hw*, %struct.hdlc_hw** %7, align 8
  %40 = getelementptr inbounds %struct.hdlc_hw, %struct.hdlc_hw* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  %43 = load i32, i32* @HDLC_CMD_RRS, align 4
  %44 = load %struct.hdlc_hw*, %struct.hdlc_hw** %7, align 8
  %45 = getelementptr inbounds %struct.hdlc_hw, %struct.hdlc_hw* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %43
  store i32 %49, i32* %47, align 8
  %50 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %51 = call i32 @write_ctrl(%struct.bchannel* %50, i32 1)
  %52 = load i32, i32* @HDLC_CMD_RRS, align 4
  %53 = xor i32 %52, -1
  %54 = load %struct.hdlc_hw*, %struct.hdlc_hw** %7, align 8
  %55 = getelementptr inbounds %struct.hdlc_hw, %struct.hdlc_hw* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = and i32 %58, %53
  store i32 %59, i32* %57, align 8
  %60 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %61 = call i32 @write_ctrl(%struct.bchannel* %60, i32 1)
  %62 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %63 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %38
  %67 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %68 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @skb_trim(i64 %69, i32 0)
  br label %71

71:                                               ; preds = %66, %38
  br label %126

72:                                               ; preds = %33
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @HDLC_STAT_RML_MASK, align 4
  %75 = and i32 %73, %74
  %76 = ashr i32 %75, 8
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %72
  store i32 32, i32* %6, align 4
  br label %80

80:                                               ; preds = %79, %72
  %81 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @hdlc_empty_fifo(%struct.bchannel* %81, i32 %82)
  %84 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %85 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %84, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %80
  br label %128

89:                                               ; preds = %80
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @HDLC_STAT_RME, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %100, label %94

94:                                               ; preds = %89
  %95 = load i32, i32* @FLG_TRANSPARENT, align 4
  %96 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %97 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %96, i32 0, i32 1
  %98 = call i64 @test_bit(i32 %95, i32* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %125

100:                                              ; preds = %94, %89
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* @HDLC_STAT_CRCVFRRAB, align 4
  %103 = and i32 %101, %102
  %104 = load i32, i32* @HDLC_STAT_CRCVFR, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %112, label %106

106:                                              ; preds = %100
  %107 = load i32, i32* @FLG_TRANSPARENT, align 4
  %108 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %109 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %108, i32 0, i32 1
  %110 = call i64 @test_bit(i32 %107, i32* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %106, %100
  %113 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %114 = call i32 @recv_Bchannel(%struct.bchannel* %113, i32 0)
  br label %124

115:                                              ; preds = %106
  %116 = load %struct.fritzcard*, %struct.fritzcard** %5, align 8
  %117 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %118)
  %120 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %121 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %120, i32 0, i32 4
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @skb_trim(i64 %122, i32 0)
  br label %124

124:                                              ; preds = %115, %112
  br label %125

125:                                              ; preds = %124, %94
  br label %126

126:                                              ; preds = %125, %71
  br label %127

127:                                              ; preds = %126, %2
  br label %128

128:                                              ; preds = %127, %88
  %129 = load i32, i32* %4, align 4
  %130 = load i32, i32* @HDLC_INT_XDU, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %214

133:                                              ; preds = %128
  %134 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %135 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %134, i32 0, i32 3
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = icmp ne %struct.TYPE_4__* %136, null
  br i1 %137, label %138, label %157

138:                                              ; preds = %133
  %139 = load %struct.fritzcard*, %struct.fritzcard** %5, align 8
  %140 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %143 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %146 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %145, i32 0, i32 3
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %151 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %154 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %141, i32 %144, i64 %149, i64 %152, i32 %155)
  br label %168

157:                                              ; preds = %133
  %158 = load %struct.fritzcard*, %struct.fritzcard** %5, align 8
  %159 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %162 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %165 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %160, i32 %163, i32 %166)
  br label %168

168:                                              ; preds = %157, %138
  %169 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %170 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %169, i32 0, i32 3
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %170, align 8
  %172 = icmp ne %struct.TYPE_4__* %171, null
  br i1 %172, label %173, label %190

173:                                              ; preds = %168
  %174 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %175 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %174, i32 0, i32 3
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %190

180:                                              ; preds = %173
  %181 = load i32, i32* @FLG_TRANSPARENT, align 4
  %182 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %183 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %182, i32 0, i32 1
  %184 = call i64 @test_bit(i32 %181, i32* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %189, label %186

186:                                              ; preds = %180
  %187 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %188 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %187, i32 0, i32 2
  store i64 0, i64* %188, align 8
  br label %189

189:                                              ; preds = %186, %180
  br label %190

190:                                              ; preds = %189, %173, %168
  %191 = load %struct.hdlc_hw*, %struct.hdlc_hw** %7, align 8
  %192 = getelementptr inbounds %struct.hdlc_hw, %struct.hdlc_hw* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 1
  store i64 0, i64* %194, align 8
  %195 = load i32, i32* @HDLC_CMD_XRS, align 4
  %196 = load %struct.hdlc_hw*, %struct.hdlc_hw** %7, align 8
  %197 = getelementptr inbounds %struct.hdlc_hw, %struct.hdlc_hw* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = or i32 %200, %195
  store i32 %201, i32* %199, align 8
  %202 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %203 = call i32 @write_ctrl(%struct.bchannel* %202, i32 1)
  %204 = load i32, i32* @HDLC_CMD_XRS, align 4
  %205 = xor i32 %204, -1
  %206 = load %struct.hdlc_hw*, %struct.hdlc_hw** %7, align 8
  %207 = getelementptr inbounds %struct.hdlc_hw, %struct.hdlc_hw* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = and i32 %210, %205
  store i32 %211, i32* %209, align 8
  %212 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %213 = call i32 @HDLC_irq_xpr(%struct.bchannel* %212)
  br label %223

214:                                              ; preds = %128
  %215 = load i32, i32* %4, align 4
  %216 = load i32, i32* @HDLC_INT_XPR, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %214
  %220 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %221 = call i32 @HDLC_irq_xpr(%struct.bchannel* %220)
  br label %222

222:                                              ; preds = %219, %214
  br label %223

223:                                              ; preds = %190, %222
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @write_ctrl(%struct.bchannel*, i32) #1

declare dso_local i32 @skb_trim(i64, i32) #1

declare dso_local i32 @hdlc_empty_fifo(%struct.bchannel*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @recv_Bchannel(%struct.bchannel*, i32) #1

declare dso_local i32 @HDLC_irq_xpr(%struct.bchannel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
