; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sc26xx.c_sc26xx_set_termios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sc26xx.c_sc26xx_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i32, i32 }
%struct.ktermios = type { i32, i32 }

@SR = common dso_local global i32 0, align 4
@CR = common dso_local global i32 0, align 4
@CR_DIS_TX = common dso_local global i32 0, align 4
@CR_DIS_RX = common dso_local global i32 0, align 4
@SR_OVERRUN = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@SR_PARITY = common dso_local global i32 0, align 4
@SR_FRAME = common dso_local global i32 0, align 4
@BRKINT = common dso_local global i32 0, align 4
@PARMRK = common dso_local global i32 0, align 4
@SR_BREAK = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@CR_RES_MR = common dso_local global i32 0, align 4
@MRx = common dso_local global i32 0, align 4
@ACR = common dso_local global i32 0, align 4
@CSR = common dso_local global i32 0, align 4
@CR_RES_RX = common dso_local global i32 0, align 4
@CR_RES_TX = common dso_local global i32 0, align 4
@CR_ENA_TX = common dso_local global i32 0, align 4
@CR_ENA_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @sc26xx_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sc26xx_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %15 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %16 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %17 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %18 = call i32 @uart_get_baud_rate(%struct.uart_port* %15, %struct.ktermios* %16, %struct.ktermios* %17, i32 0, i32 4000000)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @uart_get_divisor(%struct.uart_port* %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %23 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %22, i32 0, i32 3
  %24 = load i64, i64* %11, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  br label %26

26:                                               ; preds = %32, %3
  %27 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %28 = load i32, i32* @SR, align 4
  %29 = call i32 @READ_SC_PORT(%struct.uart_port* %27, i32 %28)
  %30 = and i32 %29, 12
  %31 = icmp ne i32 %30, 12
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = call i32 @udelay(i32 2)
  br label %26

34:                                               ; preds = %26
  %35 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %36 = load i32, i32* @CR, align 4
  %37 = load i32, i32* @CR_DIS_TX, align 4
  %38 = load i32, i32* @CR_DIS_RX, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @WRITE_SC_PORT(%struct.uart_port* %35, i32 %36, i32 %39)
  %41 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %42 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %9, align 4
  %44 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %45 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* @SR_OVERRUN, align 4
  %48 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %49 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @INPCK, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %34
  %55 = load i32, i32* @SR_PARITY, align 4
  %56 = load i32, i32* @SR_FRAME, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %59 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %54, %34
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @BRKINT, align 4
  %65 = load i32, i32* @PARMRK, align 4
  %66 = or i32 %64, %65
  %67 = and i32 %63, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %62
  %70 = load i32, i32* @SR_BREAK, align 4
  %71 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %72 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %69, %62
  %76 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %77 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %76, i32 0, i32 1
  store i32 0, i32* %77, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @IGNBRK, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %75
  %83 = load i32, i32* @SR_BREAK, align 4
  %84 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %85 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %82, %75
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* @CREAD, align 4
  %91 = and i32 %89, %90
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %88
  %94 = load i32, i32* @SR_BREAK, align 4
  %95 = load i32, i32* @SR_FRAME, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @SR_PARITY, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @SR_OVERRUN, align 4
  %100 = or i32 %98, %99
  %101 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %102 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %93, %88
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* @CSIZE, align 4
  %108 = and i32 %106, %107
  switch i32 %108, label %112 [
    i32 131, label %109
    i32 130, label %110
    i32 129, label %111
    i32 128, label %113
  ]

109:                                              ; preds = %105
  store i32 0, i32* %12, align 4
  br label %114

110:                                              ; preds = %105
  store i32 1, i32* %12, align 4
  br label %114

111:                                              ; preds = %105
  store i32 2, i32* %12, align 4
  br label %114

112:                                              ; preds = %105
  br label %113

113:                                              ; preds = %105, %112
  store i32 3, i32* %12, align 4
  br label %114

114:                                              ; preds = %113, %111, %110, %109
  store i32 7, i32* %13, align 4
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* @CSTOPB, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  store i32 15, i32* %13, align 4
  br label %120

120:                                              ; preds = %119, %114
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* @PARENB, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %120
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* @PARODD, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %125
  %131 = load i32, i32* %12, align 4
  %132 = or i32 %131, 4
  store i32 %132, i32* %12, align 4
  br label %133

133:                                              ; preds = %130, %125
  br label %137

134:                                              ; preds = %120
  %135 = load i32, i32* %12, align 4
  %136 = or i32 %135, 16
  store i32 %136, i32* %12, align 4
  br label %137

137:                                              ; preds = %134, %133
  %138 = load i32, i32* %7, align 4
  switch i32 %138, label %148 [
    i32 50, label %139
    i32 110, label %140
    i32 134, label %141
    i32 200, label %142
    i32 300, label %143
    i32 600, label %144
    i32 1200, label %145
    i32 2400, label %146
    i32 4800, label %147
    i32 9600, label %149
    i32 19200, label %150
  ]

139:                                              ; preds = %137
  store i32 0, i32* %14, align 4
  br label %151

140:                                              ; preds = %137
  store i32 17, i32* %14, align 4
  br label %151

141:                                              ; preds = %137
  store i32 34, i32* %14, align 4
  br label %151

142:                                              ; preds = %137
  store i32 51, i32* %14, align 4
  br label %151

143:                                              ; preds = %137
  store i32 68, i32* %14, align 4
  br label %151

144:                                              ; preds = %137
  store i32 85, i32* %14, align 4
  br label %151

145:                                              ; preds = %137
  store i32 102, i32* %14, align 4
  br label %151

146:                                              ; preds = %137
  store i32 136, i32* %14, align 4
  br label %151

147:                                              ; preds = %137
  store i32 153, i32* %14, align 4
  br label %151

148:                                              ; preds = %137
  br label %149

149:                                              ; preds = %137, %148
  store i32 187, i32* %14, align 4
  br label %151

150:                                              ; preds = %137
  store i32 204, i32* %14, align 4
  br label %151

151:                                              ; preds = %150, %149, %147, %146, %145, %144, %143, %142, %141, %140, %139
  %152 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %153 = load i32, i32* @CR, align 4
  %154 = load i32, i32* @CR_RES_MR, align 4
  %155 = call i32 @WRITE_SC_PORT(%struct.uart_port* %152, i32 %153, i32 %154)
  %156 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %157 = load i32, i32* @MRx, align 4
  %158 = load i32, i32* %12, align 4
  %159 = call i32 @WRITE_SC_PORT(%struct.uart_port* %156, i32 %157, i32 %158)
  %160 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %161 = load i32, i32* @MRx, align 4
  %162 = load i32, i32* %13, align 4
  %163 = call i32 @WRITE_SC_PORT(%struct.uart_port* %160, i32 %161, i32 %162)
  %164 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %165 = load i32, i32* @ACR, align 4
  %166 = call i32 @WRITE_SC(%struct.uart_port* %164, i32 %165, i32 128)
  %167 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %168 = load i32, i32* @CSR, align 4
  %169 = load i32, i32* %14, align 4
  %170 = call i32 @WRITE_SC_PORT(%struct.uart_port* %167, i32 %168, i32 %169)
  %171 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %172 = load i32, i32* @CR, align 4
  %173 = load i32, i32* @CR_RES_RX, align 4
  %174 = call i32 @WRITE_SC_PORT(%struct.uart_port* %171, i32 %172, i32 %173)
  %175 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %176 = load i32, i32* @CR, align 4
  %177 = load i32, i32* @CR_RES_TX, align 4
  %178 = call i32 @WRITE_SC_PORT(%struct.uart_port* %175, i32 %176, i32 %177)
  %179 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %180 = load i32, i32* @CR, align 4
  %181 = load i32, i32* @CR_ENA_TX, align 4
  %182 = load i32, i32* @CR_ENA_RX, align 4
  %183 = or i32 %181, %182
  %184 = call i32 @WRITE_SC_PORT(%struct.uart_port* %179, i32 %180, i32 %183)
  br label %185

185:                                              ; preds = %191, %151
  %186 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %187 = load i32, i32* @SR, align 4
  %188 = call i32 @READ_SC_PORT(%struct.uart_port* %186, i32 %187)
  %189 = and i32 %188, 12
  %190 = icmp ne i32 %189, 12
  br i1 %190, label %191, label %193

191:                                              ; preds = %185
  %192 = call i32 @udelay(i32 2)
  br label %185

193:                                              ; preds = %185
  %194 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %195 = load i32, i32* %10, align 4
  %196 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %197 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* %8, align 4
  %200 = mul i32 16, %199
  %201 = udiv i32 %198, %200
  %202 = call i32 @uart_update_timeout(%struct.uart_port* %194, i32 %195, i32 %201)
  %203 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %204 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %203, i32 0, i32 3
  %205 = load i64, i64* %11, align 8
  %206 = call i32 @spin_unlock_irqrestore(i32* %204, i64 %205)
  ret void
}

declare dso_local i32 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i32) #1

declare dso_local i32 @uart_get_divisor(%struct.uart_port*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @READ_SC_PORT(%struct.uart_port*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @WRITE_SC_PORT(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @WRITE_SC(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
