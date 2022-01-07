; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_baycom_par.c_par96_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_baycom_par.c_par96_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.baycom_state = type { i32, i32, %struct.TYPE_7__, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.parport* }
%struct.parport = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.parport*)*, i32 (%struct.parport*, i32)* }

@PAR96_BURSTBITS = common dso_local global i32 0, align 4
@PAR96_RXBIT = common dso_local global i32 0, align 4
@PAR97_POWER = common dso_local global i32 0, align 4
@PAR96_PTT = common dso_local global i32 0, align 4
@PAR96_DESCRAM_TAPSH1 = common dso_local global i32 0, align 4
@PAR96_DESCRAM_TAPSH2 = common dso_local global i32 0, align 4
@PAR96_BURST = common dso_local global i32 0, align 4
@BAYCOM_OPTIONS_SOFTDCD = common dso_local global i32 0, align 4
@HDLCDRV_MAXFLEN = common dso_local global i32 0, align 4
@PAR96_DCD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.baycom_state*)* @par96_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @par96_rx(%struct.net_device* %0, %struct.baycom_state* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.baycom_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.parport*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.baycom_state* %1, %struct.baycom_state** %4, align 8
  %11 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %12 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %11, i32 0, i32 3
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.parport*, %struct.parport** %14, align 8
  store %struct.parport* %15, %struct.parport** %10, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %101, %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @PAR96_BURSTBITS, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %104

20:                                               ; preds = %16
  %21 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %22 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = shl i32 %25, 1
  %27 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %28 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store i32 %26, i32* %30, align 8
  %31 = load %struct.parport*, %struct.parport** %10, align 8
  %32 = getelementptr inbounds %struct.parport, %struct.parport* %31, i32 0, i32 0
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32 (%struct.parport*)*, i32 (%struct.parport*)** %34, align 8
  %36 = load %struct.parport*, %struct.parport** %10, align 8
  %37 = call i32 %35(%struct.parport* %36)
  %38 = load i32, i32* @PAR96_RXBIT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %20
  %42 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %43 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, 1
  store i32 %47, i32* %45, align 8
  br label %48

48:                                               ; preds = %41, %20
  %49 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %50 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %55 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = ashr i32 %58, 1
  %60 = xor i32 %53, %59
  store i32 %60, i32* %9, align 4
  %61 = load %struct.parport*, %struct.parport** %10, align 8
  %62 = getelementptr inbounds %struct.parport, %struct.parport* %61, i32 0, i32 0
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load i32 (%struct.parport*, i32)*, i32 (%struct.parport*, i32)** %64, align 8
  %66 = load %struct.parport*, %struct.parport** %10, align 8
  %67 = load i32, i32* @PAR97_POWER, align 4
  %68 = load i32, i32* @PAR96_PTT, align 4
  %69 = or i32 %67, %68
  %70 = call i32 %65(%struct.parport* %66, i32 %69)
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @PAR96_DESCRAM_TAPSH1, align 4
  %73 = lshr i32 %71, %72
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @PAR96_DESCRAM_TAPSH2, align 4
  %76 = lshr i32 %74, %75
  %77 = xor i32 %73, %76
  %78 = load i32, i32* %9, align 4
  %79 = xor i32 %78, %77
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %6, align 4
  %81 = lshr i32 %80, 1
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %9, align 4
  %83 = and i32 %82, 1
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %48
  %86 = load i32, i32* %6, align 4
  %87 = or i32 %86, 32768
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %85, %48
  %89 = load %struct.parport*, %struct.parport** %10, align 8
  %90 = getelementptr inbounds %struct.parport, %struct.parport* %89, i32 0, i32 0
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = load i32 (%struct.parport*, i32)*, i32 (%struct.parport*, i32)** %92, align 8
  %94 = load %struct.parport*, %struct.parport** %10, align 8
  %95 = load i32, i32* @PAR97_POWER, align 4
  %96 = load i32, i32* @PAR96_PTT, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @PAR96_BURST, align 4
  %99 = or i32 %97, %98
  %100 = call i32 %93(%struct.parport* %94, i32 %99)
  br label %101

101:                                              ; preds = %88
  %102 = load i32, i32* %5, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %5, align 4
  br label %16

104:                                              ; preds = %16
  %105 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %106 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %105, i32 0, i32 1
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @hdlcdrv_putbits(i32* %106, i32 %107)
  %109 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %110 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @BAYCOM_OPTIONS_SOFTDCD, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %222

115:                                              ; preds = %104
  %116 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %117 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = ashr i32 %120, 16
  %122 = load i32, i32* %6, align 4
  %123 = shl i32 %122, 16
  %124 = or i32 %121, %123
  %125 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %126 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  store i32 %124, i32* %128, align 4
  store i32 130560, i32* %7, align 4
  store i32 64512, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %129

129:                                              ; preds = %151, %115
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* @PAR96_BURSTBITS, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %158

133:                                              ; preds = %129
  %134 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %135 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %7, align 4
  %140 = and i32 %138, %139
  %141 = load i32, i32* %8, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %150

143:                                              ; preds = %133
  %144 = load i32, i32* @HDLCDRV_MAXFLEN, align 4
  %145 = add nsw i32 %144, 4
  %146 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %147 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 2
  store i32 %145, i32* %149, align 8
  br label %150

150:                                              ; preds = %143, %133
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %5, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %5, align 4
  %154 = load i32, i32* %7, align 4
  %155 = shl i32 %154, 1
  store i32 %155, i32* %7, align 4
  %156 = load i32, i32* %8, align 4
  %157 = shl i32 %156, 1
  store i32 %157, i32* %8, align 4
  br label %129

158:                                              ; preds = %129
  store i32 130560, i32* %7, align 4
  store i32 130560, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %159

159:                                              ; preds = %190, %158
  %160 = load i32, i32* %5, align 4
  %161 = load i32, i32* @PAR96_BURSTBITS, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %197

163:                                              ; preds = %159
  %164 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %165 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %7, align 4
  %170 = and i32 %168, %169
  %171 = load i32, i32* %8, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %189

173:                                              ; preds = %163
  %174 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %175 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = icmp sge i32 %178, 0
  br i1 %179, label %180, label %189

180:                                              ; preds = %173
  %181 = load i32, i32* @HDLCDRV_MAXFLEN, align 4
  %182 = sub nsw i32 %181, 10
  %183 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %184 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = sub nsw i32 %187, %182
  store i32 %188, i32* %186, align 8
  br label %189

189:                                              ; preds = %180, %173, %163
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %5, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %5, align 4
  %193 = load i32, i32* %7, align 4
  %194 = shl i32 %193, 1
  store i32 %194, i32* %7, align 4
  %195 = load i32, i32* %8, align 4
  %196 = shl i32 %195, 1
  store i32 %196, i32* %8, align 4
  br label %159

197:                                              ; preds = %159
  %198 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %199 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %198, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = icmp sge i32 %202, 0
  br i1 %203, label %204, label %211

204:                                              ; preds = %197
  %205 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %206 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = sub nsw i32 %209, 2
  store i32 %210, i32* %208, align 8
  br label %211

211:                                              ; preds = %204, %197
  %212 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %213 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %212, i32 0, i32 1
  %214 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %215 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %214, i32 0, i32 2
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = icmp sgt i32 %218, 0
  %220 = zext i1 %219 to i32
  %221 = call i32 @hdlcdrv_setdcd(i32* %213, i32 %220)
  br label %239

222:                                              ; preds = %104
  %223 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %224 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %223, i32 0, i32 1
  %225 = load %struct.parport*, %struct.parport** %10, align 8
  %226 = getelementptr inbounds %struct.parport, %struct.parport* %225, i32 0, i32 0
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 0
  %229 = load i32 (%struct.parport*)*, i32 (%struct.parport*)** %228, align 8
  %230 = load %struct.parport*, %struct.parport** %10, align 8
  %231 = call i32 %229(%struct.parport* %230)
  %232 = load i32, i32* @PAR96_DCD, align 4
  %233 = and i32 %231, %232
  %234 = icmp ne i32 %233, 0
  %235 = xor i1 %234, true
  %236 = xor i1 %235, true
  %237 = zext i1 %236 to i32
  %238 = call i32 @hdlcdrv_setdcd(i32* %224, i32 %237)
  br label %239

239:                                              ; preds = %222, %211
  ret void
}

declare dso_local i32 @hdlcdrv_putbits(i32*, i32) #1

declare dso_local i32 @hdlcdrv_setdcd(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
