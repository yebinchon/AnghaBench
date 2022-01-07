; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_amba-pl011.c_pl011_set_termios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_amba-pl011.c_pl011_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i32, i32, i32, i64 }
%struct.ktermios = type { i32, i32 }

@CSIZE = common dso_local global i32 0, align 4
@UART01x_LCRH_WLEN_5 = common dso_local global i32 0, align 4
@UART01x_LCRH_WLEN_6 = common dso_local global i32 0, align 4
@UART01x_LCRH_WLEN_7 = common dso_local global i32 0, align 4
@UART01x_LCRH_WLEN_8 = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@UART01x_LCRH_STP2 = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@UART01x_LCRH_PEN = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@UART01x_LCRH_EPS = common dso_local global i32 0, align 4
@UART01x_LCRH_FEN = common dso_local global i32 0, align 4
@UART011_DR_OE = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@UART011_DR_FE = common dso_local global i32 0, align 4
@UART011_DR_PE = common dso_local global i32 0, align 4
@BRKINT = common dso_local global i32 0, align 4
@PARMRK = common dso_local global i32 0, align 4
@UART011_DR_BE = common dso_local global i32 0, align 4
@IGNPAR = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@UART_DUMMY_DR_RX = common dso_local global i32 0, align 4
@UART011_CR = common dso_local global i64 0, align 8
@UART011_FBRD = common dso_local global i64 0, align 8
@UART011_IBRD = common dso_local global i64 0, align 8
@UART011_LCRH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @pl011_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pl011_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %12 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %13 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %14 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %15 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %16 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sdiv i32 %17, 16
  %19 = call i32 @uart_get_baud_rate(%struct.uart_port* %12, %struct.ktermios* %13, %struct.ktermios* %14, i32 0, i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %21 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = mul nsw i32 %22, 4
  %24 = load i32, i32* %10, align 4
  %25 = udiv i32 %23, %24
  store i32 %25, i32* %11, align 4
  %26 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %27 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @CSIZE, align 4
  %30 = and i32 %28, %29
  switch i32 %30, label %37 [
    i32 130, label %31
    i32 129, label %33
    i32 128, label %35
  ]

31:                                               ; preds = %3
  %32 = load i32, i32* @UART01x_LCRH_WLEN_5, align 4
  store i32 %32, i32* %7, align 4
  br label %39

33:                                               ; preds = %3
  %34 = load i32, i32* @UART01x_LCRH_WLEN_6, align 4
  store i32 %34, i32* %7, align 4
  br label %39

35:                                               ; preds = %3
  %36 = load i32, i32* @UART01x_LCRH_WLEN_7, align 4
  store i32 %36, i32* %7, align 4
  br label %39

37:                                               ; preds = %3
  %38 = load i32, i32* @UART01x_LCRH_WLEN_8, align 4
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %37, %35, %33, %31
  %40 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %41 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @CSTOPB, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load i32, i32* @UART01x_LCRH_STP2, align 4
  %48 = load i32, i32* %7, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %46, %39
  %51 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %52 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @PARENB, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %50
  %58 = load i32, i32* @UART01x_LCRH_PEN, align 4
  %59 = load i32, i32* %7, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %7, align 4
  %61 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %62 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @PARODD, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %57
  %68 = load i32, i32* @UART01x_LCRH_EPS, align 4
  %69 = load i32, i32* %7, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %67, %57
  br label %72

72:                                               ; preds = %71, %50
  %73 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %74 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp sgt i32 %75, 1
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load i32, i32* @UART01x_LCRH_FEN, align 4
  %79 = load i32, i32* %7, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %77, %72
  %82 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %83 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %82, i32 0, i32 4
  %84 = load i64, i64* %9, align 8
  %85 = call i32 @spin_lock_irqsave(i32* %83, i64 %84)
  %86 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %87 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %88 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @uart_update_timeout(%struct.uart_port* %86, i32 %89, i32 %90)
  %92 = load i32, i32* @UART011_DR_OE, align 4
  %93 = or i32 %92, 255
  %94 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %95 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  %96 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %97 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @INPCK, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %81
  %103 = load i32, i32* @UART011_DR_FE, align 4
  %104 = load i32, i32* @UART011_DR_PE, align 4
  %105 = or i32 %103, %104
  %106 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %107 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 8
  br label %110

110:                                              ; preds = %102, %81
  %111 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %112 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @BRKINT, align 4
  %115 = load i32, i32* @PARMRK, align 4
  %116 = or i32 %114, %115
  %117 = and i32 %113, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %110
  %120 = load i32, i32* @UART011_DR_BE, align 4
  %121 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %122 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 8
  br label %125

125:                                              ; preds = %119, %110
  %126 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %127 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %126, i32 0, i32 3
  store i32 0, i32* %127, align 4
  %128 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %129 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @IGNPAR, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %125
  %135 = load i32, i32* @UART011_DR_FE, align 4
  %136 = load i32, i32* @UART011_DR_PE, align 4
  %137 = or i32 %135, %136
  %138 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %139 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 4
  br label %142

142:                                              ; preds = %134, %125
  %143 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %144 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @IGNBRK, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %168

149:                                              ; preds = %142
  %150 = load i32, i32* @UART011_DR_BE, align 4
  %151 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %152 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 4
  %155 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %156 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @IGNPAR, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %149
  %162 = load i32, i32* @UART011_DR_OE, align 4
  %163 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %164 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = or i32 %165, %162
  store i32 %166, i32* %164, align 4
  br label %167

167:                                              ; preds = %161, %149
  br label %168

168:                                              ; preds = %167, %142
  %169 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %170 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @CREAD, align 4
  %173 = and i32 %171, %172
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %168
  %176 = load i32, i32* @UART_DUMMY_DR_RX, align 4
  %177 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %178 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = or i32 %179, %176
  store i32 %180, i32* %178, align 4
  br label %181

181:                                              ; preds = %175, %168
  %182 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %183 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %184 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = call i64 @UART_ENABLE_MS(%struct.uart_port* %182, i32 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %181
  %189 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %190 = call i32 @pl011_enable_ms(%struct.uart_port* %189)
  br label %191

191:                                              ; preds = %188, %181
  %192 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %193 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %192, i32 0, i32 5
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @UART011_CR, align 8
  %196 = add nsw i64 %194, %195
  %197 = call i32 @readw(i64 %196)
  store i32 %197, i32* %8, align 4
  %198 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %199 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %198, i32 0, i32 5
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @UART011_CR, align 8
  %202 = add nsw i64 %200, %201
  %203 = call i32 @writew(i32 0, i64 %202)
  %204 = load i32, i32* %11, align 4
  %205 = and i32 %204, 63
  %206 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %207 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %206, i32 0, i32 5
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @UART011_FBRD, align 8
  %210 = add nsw i64 %208, %209
  %211 = call i32 @writew(i32 %205, i64 %210)
  %212 = load i32, i32* %11, align 4
  %213 = lshr i32 %212, 6
  %214 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %215 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %214, i32 0, i32 5
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @UART011_IBRD, align 8
  %218 = add nsw i64 %216, %217
  %219 = call i32 @writew(i32 %213, i64 %218)
  %220 = load i32, i32* %7, align 4
  %221 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %222 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %221, i32 0, i32 5
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @UART011_LCRH, align 8
  %225 = add nsw i64 %223, %224
  %226 = call i32 @writew(i32 %220, i64 %225)
  %227 = load i32, i32* %8, align 4
  %228 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %229 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %228, i32 0, i32 5
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @UART011_CR, align 8
  %232 = add nsw i64 %230, %231
  %233 = call i32 @writew(i32 %227, i64 %232)
  %234 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %235 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %234, i32 0, i32 4
  %236 = load i64, i64* %9, align 8
  %237 = call i32 @spin_unlock_irqrestore(i32* %235, i64 %236)
  ret void
}

declare dso_local i32 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i32) #1

declare dso_local i64 @UART_ENABLE_MS(%struct.uart_port*, i32) #1

declare dso_local i32 @pl011_enable_ms(%struct.uart_port*) #1

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
