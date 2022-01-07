; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ip22zilog.c_ip22zilog_receive_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ip22zilog.c_ip22zilog_receive_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.uart_ip22zilog_port = type { i8, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.tty_struct* }
%struct.zilog_channel = type { i32, i32 }

@Rx_CH_AV = common dso_local global i8 0, align 1
@R1 = common dso_local global i32 0, align 4
@PAR_ERR = common dso_local global i32 0, align 4
@Rx_OVR = common dso_local global i32 0, align 4
@CRC_ERR = common dso_local global i32 0, align 4
@ERR_RES = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i8 0, align 1
@Rx_SYS = common dso_local global i32 0, align 4
@Rx_BRK = common dso_local global i32 0, align 4
@TTY_BREAK = common dso_local global i8 0, align 1
@TTY_PARITY = common dso_local global i8 0, align 1
@TTY_FRAME = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tty_struct* (%struct.uart_ip22zilog_port*, %struct.zilog_channel*)* @ip22zilog_receive_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tty_struct* @ip22zilog_receive_chars(%struct.uart_ip22zilog_port* %0, %struct.zilog_channel* %1) #0 {
  %3 = alloca %struct.uart_ip22zilog_port*, align 8
  %4 = alloca %struct.zilog_channel*, align 8
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store %struct.uart_ip22zilog_port* %0, %struct.uart_ip22zilog_port** %3, align 8
  store %struct.zilog_channel* %1, %struct.zilog_channel** %4, align 8
  store %struct.tty_struct* null, %struct.tty_struct** %5, align 8
  %9 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %10 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = icmp ne %struct.TYPE_7__* %12, null
  br i1 %13, label %14, label %31

14:                                               ; preds = %2
  %15 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %16 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.tty_struct*, %struct.tty_struct** %20, align 8
  %22 = icmp ne %struct.tty_struct* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %14
  %24 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %25 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.tty_struct*, %struct.tty_struct** %29, align 8
  store %struct.tty_struct* %30, %struct.tty_struct** %5, align 8
  br label %31

31:                                               ; preds = %23, %14, %2
  br label %32

32:                                               ; preds = %219, %207, %125, %31
  %33 = load %struct.zilog_channel*, %struct.zilog_channel** %4, align 8
  %34 = getelementptr inbounds %struct.zilog_channel, %struct.zilog_channel* %33, i32 0, i32 1
  %35 = call zeroext i8 @readb(i32* %34)
  store i8 %35, i8* %6, align 1
  %36 = call i32 (...) @ZSDELAY()
  %37 = load i8, i8* %6, align 1
  %38 = zext i8 %37 to i32
  %39 = load i8, i8* @Rx_CH_AV, align 1
  %40 = zext i8 %39 to i32
  %41 = and i32 %38, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %32
  br label %220

44:                                               ; preds = %32
  %45 = load %struct.zilog_channel*, %struct.zilog_channel** %4, align 8
  %46 = load i32, i32* @R1, align 4
  %47 = call i32 @read_zsreg(%struct.zilog_channel* %45, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @PAR_ERR, align 4
  %50 = load i32, i32* @Rx_OVR, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @CRC_ERR, align 4
  %53 = or i32 %51, %52
  %54 = and i32 %48, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %44
  %57 = load i32, i32* @ERR_RES, align 4
  %58 = load %struct.zilog_channel*, %struct.zilog_channel** %4, align 8
  %59 = getelementptr inbounds %struct.zilog_channel, %struct.zilog_channel* %58, i32 0, i32 1
  %60 = call i32 @writeb(i32 %57, i32* %59)
  %61 = call i32 (...) @ZSDELAY()
  %62 = load %struct.zilog_channel*, %struct.zilog_channel** %4, align 8
  %63 = call i32 @ZS_WSYNC(%struct.zilog_channel* %62)
  br label %64

64:                                               ; preds = %56, %44
  %65 = load %struct.zilog_channel*, %struct.zilog_channel** %4, align 8
  %66 = getelementptr inbounds %struct.zilog_channel, %struct.zilog_channel* %65, i32 0, i32 0
  %67 = call zeroext i8 @readb(i32* %66)
  store i8 %67, i8* %6, align 1
  %68 = call i32 (...) @ZSDELAY()
  %69 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %70 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %69, i32 0, i32 0
  %71 = load i8, i8* %70, align 8
  %72 = zext i8 %71 to i32
  %73 = load i8, i8* %6, align 1
  %74 = zext i8 %73 to i32
  %75 = and i32 %74, %72
  %76 = trunc i32 %75 to i8
  store i8 %76, i8* %6, align 1
  %77 = load i8, i8* %6, align 1
  %78 = icmp ne i8 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %64
  %80 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %81 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %8, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %79, %64
  %86 = load i8, i8* @TTY_NORMAL, align 1
  store i8 %86, i8* %7, align 1
  %87 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %88 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @PAR_ERR, align 4
  %95 = load i32, i32* @Rx_OVR, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @CRC_ERR, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @Rx_SYS, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @Rx_BRK, align 4
  %102 = or i32 %100, %101
  %103 = and i32 %93, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %201

105:                                              ; preds = %85
  %106 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %107 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %106, i32 0, i32 1
  store i32 0, i32* %107, align 4
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* @Rx_SYS, align 4
  %110 = load i32, i32* @Rx_BRK, align 4
  %111 = or i32 %109, %110
  %112 = and i32 %108, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %133

114:                                              ; preds = %105
  %115 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %116 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 4
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* @Rx_SYS, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %114
  br label %32

126:                                              ; preds = %114
  %127 = load i32, i32* @PAR_ERR, align 4
  %128 = load i32, i32* @CRC_ERR, align 4
  %129 = or i32 %127, %128
  %130 = xor i32 %129, -1
  %131 = load i32, i32* %8, align 4
  %132 = and i32 %131, %130
  store i32 %132, i32* %8, align 4
  br label %159

133:                                              ; preds = %105
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* @PAR_ERR, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %133
  %139 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %140 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %142, align 4
  br label %158

145:                                              ; preds = %133
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* @CRC_ERR, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %145
  %151 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %152 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %154, align 4
  br label %157

157:                                              ; preds = %150, %145
  br label %158

158:                                              ; preds = %157, %138
  br label %159

159:                                              ; preds = %158, %126
  %160 = load i32, i32* %8, align 4
  %161 = load i32, i32* @Rx_OVR, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %171

164:                                              ; preds = %159
  %165 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %166 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %168, align 4
  br label %171

171:                                              ; preds = %164, %159
  %172 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %173 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* %8, align 4
  %177 = and i32 %176, %175
  store i32 %177, i32* %8, align 4
  %178 = load i32, i32* %8, align 4
  %179 = load i32, i32* @Rx_BRK, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %171
  %183 = load i8, i8* @TTY_BREAK, align 1
  store i8 %183, i8* %7, align 1
  br label %200

184:                                              ; preds = %171
  %185 = load i32, i32* %8, align 4
  %186 = load i32, i32* @PAR_ERR, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %184
  %190 = load i8, i8* @TTY_PARITY, align 1
  store i8 %190, i8* %7, align 1
  br label %199

191:                                              ; preds = %184
  %192 = load i32, i32* %8, align 4
  %193 = load i32, i32* @CRC_ERR, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %191
  %197 = load i8, i8* @TTY_FRAME, align 1
  store i8 %197, i8* %7, align 1
  br label %198

198:                                              ; preds = %196, %191
  br label %199

199:                                              ; preds = %198, %189
  br label %200

200:                                              ; preds = %199, %182
  br label %201

201:                                              ; preds = %200, %85
  %202 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %203 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %202, i32 0, i32 2
  %204 = load i8, i8* %6, align 1
  %205 = call i64 @uart_handle_sysrq_char(%struct.TYPE_9__* %203, i8 zeroext %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %201
  br label %32

208:                                              ; preds = %201
  %209 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %210 = icmp ne %struct.tty_struct* %209, null
  br i1 %210, label %211, label %219

211:                                              ; preds = %208
  %212 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %213 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %212, i32 0, i32 2
  %214 = load i32, i32* %8, align 4
  %215 = load i32, i32* @Rx_OVR, align 4
  %216 = load i8, i8* %6, align 1
  %217 = load i8, i8* %7, align 1
  %218 = call i32 @uart_insert_char(%struct.TYPE_9__* %213, i32 %214, i32 %215, i8 zeroext %216, i8 zeroext %217)
  br label %219

219:                                              ; preds = %211, %208
  br label %32

220:                                              ; preds = %43
  %221 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  ret %struct.tty_struct* %221
}

declare dso_local zeroext i8 @readb(i32*) #1

declare dso_local i32 @ZSDELAY(...) #1

declare dso_local i32 @read_zsreg(%struct.zilog_channel*, i32) #1

declare dso_local i32 @writeb(i32, i32*) #1

declare dso_local i32 @ZS_WSYNC(%struct.zilog_channel*) #1

declare dso_local i64 @uart_handle_sysrq_char(%struct.TYPE_9__*, i8 zeroext) #1

declare dso_local i32 @uart_insert_char(%struct.TYPE_9__*, i32, i32, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
