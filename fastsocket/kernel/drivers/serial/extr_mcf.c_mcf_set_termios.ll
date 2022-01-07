; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_mcf.c_mcf_set_termios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_mcf.c_mcf_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i64 }
%struct.ktermios = type { i32 }

@MCF_BUSCLK = common dso_local global i32 0, align 4
@MCFUART_MR1_RXIRQRDY = common dso_local global i8 0, align 1
@MCFUART_MR1_RXERRCHAR = common dso_local global i8 0, align 1
@CSIZE = common dso_local global i32 0, align 4
@MCFUART_MR1_CS5 = common dso_local global i8 0, align 1
@MCFUART_MR1_CS6 = common dso_local global i8 0, align 1
@MCFUART_MR1_CS7 = common dso_local global i8 0, align 1
@MCFUART_MR1_CS8 = common dso_local global i8 0, align 1
@PARENB = common dso_local global i32 0, align 4
@CMSPAR = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@MCFUART_MR1_PARITYMARK = common dso_local global i8 0, align 1
@MCFUART_MR1_PARITYSPACE = common dso_local global i8 0, align 1
@MCFUART_MR1_PARITYODD = common dso_local global i8 0, align 1
@MCFUART_MR1_PARITYEVEN = common dso_local global i8 0, align 1
@MCFUART_MR1_PARITYNONE = common dso_local global i8 0, align 1
@CSTOPB = common dso_local global i32 0, align 4
@MCFUART_MR2_STOP2 = common dso_local global i8 0, align 1
@MCFUART_MR2_STOP1 = common dso_local global i8 0, align 1
@CRTSCTS = common dso_local global i32 0, align 4
@MCFUART_MR1_RXRTS = common dso_local global i8 0, align 1
@MCFUART_MR2_TXCTS = common dso_local global i8 0, align 1
@MCFUART_UCR_CMDRESETRX = common dso_local global i32 0, align 4
@MCFUART_UCR = common dso_local global i64 0, align 8
@MCFUART_UCR_CMDRESETTX = common dso_local global i32 0, align 4
@MCFUART_UCR_CMDRESETMRPTR = common dso_local global i32 0, align 4
@MCFUART_UMR = common dso_local global i64 0, align 8
@MCFUART_UBG1 = common dso_local global i64 0, align 8
@MCFUART_UBG2 = common dso_local global i64 0, align 8
@MCFUART_UCSR_RXCLKTIMER = common dso_local global i32 0, align 4
@MCFUART_UCSR_TXCLKTIMER = common dso_local global i32 0, align 4
@MCFUART_UCSR = common dso_local global i64 0, align 8
@MCFUART_UCR_RXENABLE = common dso_local global i32 0, align 4
@MCFUART_UCR_TXENABLE = common dso_local global i32 0, align 4
@MCFUART_UFPD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @mcf_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcf_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %12 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %13 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %14 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %15 = call i32 @uart_get_baud_rate(%struct.uart_port* %12, %struct.ktermios* %13, %struct.ktermios* %14, i32 0, i32 230400)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* @MCF_BUSCLK, align 4
  %17 = load i32, i32* %8, align 4
  %18 = udiv i32 %16, %17
  %19 = add i32 %18, 16
  %20 = udiv i32 %19, 32
  store i32 %20, i32* %9, align 4
  %21 = load i8, i8* @MCFUART_MR1_RXIRQRDY, align 1
  %22 = zext i8 %21 to i32
  %23 = load i8, i8* @MCFUART_MR1_RXERRCHAR, align 1
  %24 = zext i8 %23 to i32
  %25 = or i32 %22, %24
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %10, align 1
  store i8 0, i8* %11, align 1
  %27 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %28 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @CSIZE, align 4
  %31 = and i32 %29, %30
  switch i32 %31, label %54 [
    i32 131, label %32
    i32 130, label %39
    i32 129, label %46
    i32 128, label %53
  ]

32:                                               ; preds = %3
  %33 = load i8, i8* @MCFUART_MR1_CS5, align 1
  %34 = zext i8 %33 to i32
  %35 = load i8, i8* %10, align 1
  %36 = zext i8 %35 to i32
  %37 = or i32 %36, %34
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %10, align 1
  br label %61

39:                                               ; preds = %3
  %40 = load i8, i8* @MCFUART_MR1_CS6, align 1
  %41 = zext i8 %40 to i32
  %42 = load i8, i8* %10, align 1
  %43 = zext i8 %42 to i32
  %44 = or i32 %43, %41
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %10, align 1
  br label %61

46:                                               ; preds = %3
  %47 = load i8, i8* @MCFUART_MR1_CS7, align 1
  %48 = zext i8 %47 to i32
  %49 = load i8, i8* %10, align 1
  %50 = zext i8 %49 to i32
  %51 = or i32 %50, %48
  %52 = trunc i32 %51 to i8
  store i8 %52, i8* %10, align 1
  br label %61

53:                                               ; preds = %3
  br label %54

54:                                               ; preds = %3, %53
  %55 = load i8, i8* @MCFUART_MR1_CS8, align 1
  %56 = zext i8 %55 to i32
  %57 = load i8, i8* %10, align 1
  %58 = zext i8 %57 to i32
  %59 = or i32 %58, %56
  %60 = trunc i32 %59 to i8
  store i8 %60, i8* %10, align 1
  br label %61

61:                                               ; preds = %54, %46, %39, %32
  %62 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %63 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @PARENB, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %120

68:                                               ; preds = %61
  %69 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %70 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @CMSPAR, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %97

75:                                               ; preds = %68
  %76 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %77 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @PARODD, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %75
  %83 = load i8, i8* @MCFUART_MR1_PARITYMARK, align 1
  %84 = zext i8 %83 to i32
  %85 = load i8, i8* %10, align 1
  %86 = zext i8 %85 to i32
  %87 = or i32 %86, %84
  %88 = trunc i32 %87 to i8
  store i8 %88, i8* %10, align 1
  br label %96

89:                                               ; preds = %75
  %90 = load i8, i8* @MCFUART_MR1_PARITYSPACE, align 1
  %91 = zext i8 %90 to i32
  %92 = load i8, i8* %10, align 1
  %93 = zext i8 %92 to i32
  %94 = or i32 %93, %91
  %95 = trunc i32 %94 to i8
  store i8 %95, i8* %10, align 1
  br label %96

96:                                               ; preds = %89, %82
  br label %119

97:                                               ; preds = %68
  %98 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %99 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @PARODD, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %97
  %105 = load i8, i8* @MCFUART_MR1_PARITYODD, align 1
  %106 = zext i8 %105 to i32
  %107 = load i8, i8* %10, align 1
  %108 = zext i8 %107 to i32
  %109 = or i32 %108, %106
  %110 = trunc i32 %109 to i8
  store i8 %110, i8* %10, align 1
  br label %118

111:                                              ; preds = %97
  %112 = load i8, i8* @MCFUART_MR1_PARITYEVEN, align 1
  %113 = zext i8 %112 to i32
  %114 = load i8, i8* %10, align 1
  %115 = zext i8 %114 to i32
  %116 = or i32 %115, %113
  %117 = trunc i32 %116 to i8
  store i8 %117, i8* %10, align 1
  br label %118

118:                                              ; preds = %111, %104
  br label %119

119:                                              ; preds = %118, %96
  br label %127

120:                                              ; preds = %61
  %121 = load i8, i8* @MCFUART_MR1_PARITYNONE, align 1
  %122 = zext i8 %121 to i32
  %123 = load i8, i8* %10, align 1
  %124 = zext i8 %123 to i32
  %125 = or i32 %124, %122
  %126 = trunc i32 %125 to i8
  store i8 %126, i8* %10, align 1
  br label %127

127:                                              ; preds = %120, %119
  %128 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %129 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @CSTOPB, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %127
  %135 = load i8, i8* @MCFUART_MR2_STOP2, align 1
  %136 = zext i8 %135 to i32
  %137 = load i8, i8* %11, align 1
  %138 = zext i8 %137 to i32
  %139 = or i32 %138, %136
  %140 = trunc i32 %139 to i8
  store i8 %140, i8* %11, align 1
  br label %148

141:                                              ; preds = %127
  %142 = load i8, i8* @MCFUART_MR2_STOP1, align 1
  %143 = zext i8 %142 to i32
  %144 = load i8, i8* %11, align 1
  %145 = zext i8 %144 to i32
  %146 = or i32 %145, %143
  %147 = trunc i32 %146 to i8
  store i8 %147, i8* %11, align 1
  br label %148

148:                                              ; preds = %141, %134
  %149 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %150 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @CRTSCTS, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %168

155:                                              ; preds = %148
  %156 = load i8, i8* @MCFUART_MR1_RXRTS, align 1
  %157 = zext i8 %156 to i32
  %158 = load i8, i8* %10, align 1
  %159 = zext i8 %158 to i32
  %160 = or i32 %159, %157
  %161 = trunc i32 %160 to i8
  store i8 %161, i8* %10, align 1
  %162 = load i8, i8* @MCFUART_MR2_TXCTS, align 1
  %163 = zext i8 %162 to i32
  %164 = load i8, i8* %11, align 1
  %165 = zext i8 %164 to i32
  %166 = or i32 %165, %163
  %167 = trunc i32 %166 to i8
  store i8 %167, i8* %11, align 1
  br label %168

168:                                              ; preds = %155, %148
  %169 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %170 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %169, i32 0, i32 0
  %171 = load i64, i64* %7, align 8
  %172 = call i32 @spin_lock_irqsave(i32* %170, i64 %171)
  %173 = load i32, i32* @MCFUART_UCR_CMDRESETRX, align 4
  %174 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %175 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @MCFUART_UCR, align 8
  %178 = add nsw i64 %176, %177
  %179 = call i32 @writeb(i32 %173, i64 %178)
  %180 = load i32, i32* @MCFUART_UCR_CMDRESETTX, align 4
  %181 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %182 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @MCFUART_UCR, align 8
  %185 = add nsw i64 %183, %184
  %186 = call i32 @writeb(i32 %180, i64 %185)
  %187 = load i32, i32* @MCFUART_UCR_CMDRESETMRPTR, align 4
  %188 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %189 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @MCFUART_UCR, align 8
  %192 = add nsw i64 %190, %191
  %193 = call i32 @writeb(i32 %187, i64 %192)
  %194 = load i8, i8* %10, align 1
  %195 = zext i8 %194 to i32
  %196 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %197 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @MCFUART_UMR, align 8
  %200 = add nsw i64 %198, %199
  %201 = call i32 @writeb(i32 %195, i64 %200)
  %202 = load i8, i8* %11, align 1
  %203 = zext i8 %202 to i32
  %204 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %205 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @MCFUART_UMR, align 8
  %208 = add nsw i64 %206, %207
  %209 = call i32 @writeb(i32 %203, i64 %208)
  %210 = load i32, i32* %9, align 4
  %211 = and i32 %210, 65280
  %212 = lshr i32 %211, 8
  %213 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %214 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @MCFUART_UBG1, align 8
  %217 = add nsw i64 %215, %216
  %218 = call i32 @writeb(i32 %212, i64 %217)
  %219 = load i32, i32* %9, align 4
  %220 = and i32 %219, 255
  %221 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %222 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %221, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @MCFUART_UBG2, align 8
  %225 = add nsw i64 %223, %224
  %226 = call i32 @writeb(i32 %220, i64 %225)
  %227 = load i32, i32* @MCFUART_UCSR_RXCLKTIMER, align 4
  %228 = load i32, i32* @MCFUART_UCSR_TXCLKTIMER, align 4
  %229 = or i32 %227, %228
  %230 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %231 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* @MCFUART_UCSR, align 8
  %234 = add nsw i64 %232, %233
  %235 = call i32 @writeb(i32 %229, i64 %234)
  %236 = load i32, i32* @MCFUART_UCR_RXENABLE, align 4
  %237 = load i32, i32* @MCFUART_UCR_TXENABLE, align 4
  %238 = or i32 %236, %237
  %239 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %240 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %239, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* @MCFUART_UCR, align 8
  %243 = add nsw i64 %241, %242
  %244 = call i32 @writeb(i32 %238, i64 %243)
  %245 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %246 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %245, i32 0, i32 0
  %247 = load i64, i64* %7, align 8
  %248 = call i32 @spin_unlock_irqrestore(i32* %246, i64 %247)
  ret void
}

declare dso_local i32 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
