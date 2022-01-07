; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_21285.c_serial21285_set_termios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_21285.c_serial21285_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i32, i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.tty_struct* }
%struct.tty_struct = type { i32 }
%struct.ktermios = type { i32, i32 }

@HUPCL = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@CMSPAR = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@BRKINT = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@H_UBRLCR_STOPB = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@H_UBRLCR_PARENB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@H_UBRLCR_PAREVN = common dso_local global i32 0, align 4
@H_UBRLCR_FIFO = common dso_local global i32 0, align 4
@RXSTAT_OVERRUN = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@RXSTAT_FRAME = common dso_local global i32 0, align 4
@RXSTAT_PARITY = common dso_local global i32 0, align 4
@IGNPAR = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@RXSTAT_DUMMY_READ = common dso_local global i32 0, align 4
@CSR_UARTCON = common dso_local global i32* null, align 8
@CSR_L_UBRLCR = common dso_local global i32* null, align 8
@CSR_M_UBRLCR = common dso_local global i32* null, align 8
@CSR_H_UBRLCR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @serial21285_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial21285_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.tty_struct*, align 8
  %12 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %13 = load i32, i32* @HUPCL, align 4
  %14 = load i32, i32* @CRTSCTS, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @CMSPAR, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %20 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* @CLOCAL, align 4
  %24 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %25 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* @IGNBRK, align 4
  %29 = load i32, i32* @BRKINT, align 4
  %30 = or i32 %28, %29
  %31 = xor i32 %30, -1
  %32 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %33 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %37 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %38 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %39 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %40 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sdiv i32 %41, 16
  %43 = call i32 @uart_get_baud_rate(%struct.uart_port* %36, %struct.ktermios* %37, %struct.ktermios* %38, i32 0, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @uart_get_divisor(%struct.uart_port* %44, i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %48 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %47, i32 0, i32 5
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = icmp ne %struct.TYPE_4__* %49, null
  br i1 %50, label %51, label %76

51:                                               ; preds = %3
  %52 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %53 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %52, i32 0, i32 5
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load %struct.tty_struct*, %struct.tty_struct** %56, align 8
  %58 = icmp ne %struct.tty_struct* %57, null
  br i1 %58, label %59, label %76

59:                                               ; preds = %51
  %60 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %61 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %60, i32 0, i32 5
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load %struct.tty_struct*, %struct.tty_struct** %64, align 8
  store %struct.tty_struct* %65, %struct.tty_struct** %11, align 8
  %66 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %67 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = mul i32 16, %69
  %71 = udiv i32 %68, %70
  store i32 %71, i32* %12, align 4
  %72 = load %struct.tty_struct*, %struct.tty_struct** %11, align 8
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @tty_encode_baud_rate(%struct.tty_struct* %72, i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %59, %51, %3
  %77 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %78 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @CSIZE, align 4
  %81 = and i32 %79, %80
  switch i32 %81, label %85 [
    i32 130, label %82
    i32 129, label %83
    i32 128, label %84
  ]

82:                                               ; preds = %76
  store i32 0, i32* %10, align 4
  br label %86

83:                                               ; preds = %76
  store i32 32, i32* %10, align 4
  br label %86

84:                                               ; preds = %76
  store i32 64, i32* %10, align 4
  br label %86

85:                                               ; preds = %76
  store i32 96, i32* %10, align 4
  br label %86

86:                                               ; preds = %85, %84, %83, %82
  %87 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %88 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @CSTOPB, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %86
  %94 = load i32, i32* @H_UBRLCR_STOPB, align 4
  %95 = load i32, i32* %10, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %10, align 4
  br label %97

97:                                               ; preds = %93, %86
  %98 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %99 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @PARENB, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %119

104:                                              ; preds = %97
  %105 = load i32, i32* @H_UBRLCR_PARENB, align 4
  %106 = load i32, i32* %10, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %10, align 4
  %108 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %109 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @PARODD, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %104
  %115 = load i32, i32* @H_UBRLCR_PAREVN, align 4
  %116 = load i32, i32* %10, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %10, align 4
  br label %118

118:                                              ; preds = %114, %104
  br label %119

119:                                              ; preds = %118, %97
  %120 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %121 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %120, i32 0, i32 4
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %119
  %125 = load i32, i32* @H_UBRLCR_FIFO, align 4
  %126 = load i32, i32* %10, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %10, align 4
  br label %128

128:                                              ; preds = %124, %119
  %129 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %130 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %129, i32 0, i32 3
  %131 = load i64, i64* %7, align 8
  %132 = call i32 @spin_lock_irqsave(i32* %130, i64 %131)
  %133 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %134 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %135 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %8, align 4
  %138 = call i32 @uart_update_timeout(%struct.uart_port* %133, i32 %136, i32 %137)
  %139 = load i32, i32* @RXSTAT_OVERRUN, align 4
  %140 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %141 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 4
  %142 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %143 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @INPCK, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %156

148:                                              ; preds = %128
  %149 = load i32, i32* @RXSTAT_FRAME, align 4
  %150 = load i32, i32* @RXSTAT_PARITY, align 4
  %151 = or i32 %149, %150
  %152 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %153 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = or i32 %154, %151
  store i32 %155, i32* %153, align 4
  br label %156

156:                                              ; preds = %148, %128
  %157 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %158 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %157, i32 0, i32 2
  store i32 0, i32* %158, align 8
  %159 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %160 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @IGNPAR, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %173

165:                                              ; preds = %156
  %166 = load i32, i32* @RXSTAT_FRAME, align 4
  %167 = load i32, i32* @RXSTAT_PARITY, align 4
  %168 = or i32 %166, %167
  %169 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %170 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = or i32 %171, %168
  store i32 %172, i32* %170, align 8
  br label %173

173:                                              ; preds = %165, %156
  %174 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %175 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @IGNBRK, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %193

180:                                              ; preds = %173
  %181 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %182 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @IGNPAR, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %180
  %188 = load i32, i32* @RXSTAT_OVERRUN, align 4
  %189 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %190 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = or i32 %191, %188
  store i32 %192, i32* %190, align 8
  br label %193

193:                                              ; preds = %187, %180, %173
  %194 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %195 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @CREAD, align 4
  %198 = and i32 %196, %197
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %206

200:                                              ; preds = %193
  %201 = load i32, i32* @RXSTAT_DUMMY_READ, align 4
  %202 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %203 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = or i32 %204, %201
  store i32 %205, i32* %203, align 8
  br label %206

206:                                              ; preds = %200, %193
  %207 = load i32, i32* %9, align 4
  %208 = sub i32 %207, 1
  store i32 %208, i32* %9, align 4
  %209 = load i32*, i32** @CSR_UARTCON, align 8
  store i32 0, i32* %209, align 4
  %210 = load i32, i32* %9, align 4
  %211 = and i32 %210, 255
  %212 = load i32*, i32** @CSR_L_UBRLCR, align 8
  store i32 %211, i32* %212, align 4
  %213 = load i32, i32* %9, align 4
  %214 = lshr i32 %213, 8
  %215 = and i32 %214, 15
  %216 = load i32*, i32** @CSR_M_UBRLCR, align 8
  store i32 %215, i32* %216, align 4
  %217 = load i32, i32* %10, align 4
  %218 = load i32*, i32** @CSR_H_UBRLCR, align 8
  store i32 %217, i32* %218, align 4
  %219 = load i32*, i32** @CSR_UARTCON, align 8
  store i32 1, i32* %219, align 4
  %220 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %221 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %220, i32 0, i32 3
  %222 = load i64, i64* %7, align 8
  %223 = call i32 @spin_unlock_irqrestore(i32* %221, i64 %222)
  ret void
}

declare dso_local i32 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i32) #1

declare dso_local i32 @uart_get_divisor(%struct.uart_port*, i32) #1

declare dso_local i32 @tty_encode_baud_rate(%struct.tty_struct*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
