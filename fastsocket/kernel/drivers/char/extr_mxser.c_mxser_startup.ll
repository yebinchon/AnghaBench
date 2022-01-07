; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_mxser.c_mxser_startup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_mxser.c_mxser_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.mxser_port* }
%struct.mxser_port = type { i32, i32, i32, %struct.TYPE_4__, i64, i64, i64, i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32, i8* }
%struct.TYPE_3__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ASYNC_INITIALIZED = common dso_local global i32 0, align 4
@TTY_IO_ERROR = common dso_local global i32 0, align 4
@UART_FCR_CLEAR_RCVR = common dso_local global i32 0, align 4
@UART_FCR_CLEAR_XMIT = common dso_local global i32 0, align 4
@MOXA_MUST_FCR_GDA_MODE_ENABLE = common dso_local global i32 0, align 4
@UART_FCR = common dso_local global i64 0, align 8
@UART_LSR = common dso_local global i64 0, align 8
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@UART_RX = common dso_local global i64 0, align 8
@UART_IIR = common dso_local global i64 0, align 8
@UART_MSR = common dso_local global i64 0, align 8
@UART_LCR_WLEN8 = common dso_local global i32 0, align 4
@UART_LCR = common dso_local global i64 0, align 8
@UART_MCR_DTR = common dso_local global i32 0, align 4
@UART_MCR_RTS = common dso_local global i32 0, align 4
@UART_MCR = common dso_local global i64 0, align 8
@UART_IER_MSI = common dso_local global i32 0, align 4
@UART_IER_RLSI = common dso_local global i32 0, align 4
@UART_IER_RDI = common dso_local global i32 0, align 4
@MOXA_MUST_IER_EGDAI = common dso_local global i32 0, align 4
@UART_IER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*)* @mxser_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxser_startup(%struct.tty_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.mxser_port*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  %7 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 1
  %9 = load %struct.mxser_port*, %struct.mxser_port** %8, align 8
  store %struct.mxser_port* %9, %struct.mxser_port** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i64 @__get_free_page(i32 %10)
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %250

17:                                               ; preds = %1
  %18 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %19 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %18, i32 0, i32 2
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %23 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @ASYNC_INITIALIZED, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %17
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @free_page(i64 %30)
  %32 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %33 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %32, i32 0, i32 2
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  store i32 0, i32* %2, align 4
  br label %250

36:                                               ; preds = %17
  %37 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %38 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %37, i32 0, i32 7
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %43 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %42, i32 0, i32 9
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %41, %36
  %47 = load i32, i32* @TTY_IO_ERROR, align 4
  %48 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %49 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %48, i32 0, i32 0
  %50 = call i32 @set_bit(i32 %47, i32* %49)
  %51 = load i64, i64* %5, align 8
  %52 = call i32 @free_page(i64 %51)
  %53 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %54 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %53, i32 0, i32 2
  %55 = load i64, i64* %6, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  store i32 0, i32* %2, align 4
  br label %250

57:                                               ; preds = %41
  %58 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %59 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i64, i64* %5, align 8
  %65 = call i32 @free_page(i64 %64)
  br label %72

66:                                               ; preds = %57
  %67 = load i64, i64* %5, align 8
  %68 = inttoptr i64 %67 to i8*
  %69 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %70 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  store i8* %68, i8** %71, align 8
  br label %72

72:                                               ; preds = %66, %63
  %73 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %74 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %73, i32 0, i32 8
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %72
  %80 = load i32, i32* @UART_FCR_CLEAR_RCVR, align 4
  %81 = load i32, i32* @UART_FCR_CLEAR_XMIT, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @MOXA_MUST_FCR_GDA_MODE_ENABLE, align 4
  %84 = or i32 %82, %83
  %85 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %86 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %85, i32 0, i32 7
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @UART_FCR, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @outb(i32 %84, i64 %89)
  br label %101

91:                                               ; preds = %72
  %92 = load i32, i32* @UART_FCR_CLEAR_RCVR, align 4
  %93 = load i32, i32* @UART_FCR_CLEAR_XMIT, align 4
  %94 = or i32 %92, %93
  %95 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %96 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %95, i32 0, i32 7
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @UART_FCR, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @outb(i32 %94, i64 %99)
  br label %101

101:                                              ; preds = %91, %79
  %102 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %103 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %102, i32 0, i32 7
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @UART_LSR, align 8
  %106 = add nsw i64 %104, %105
  %107 = call i32 @inb(i64 %106)
  %108 = icmp eq i32 %107, 255
  br i1 %108, label %109, label %129

109:                                              ; preds = %101
  %110 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %111 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %110, i32 0, i32 2
  %112 = load i64, i64* %6, align 8
  %113 = call i32 @spin_unlock_irqrestore(i32* %111, i64 %112)
  %114 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %115 = call i64 @capable(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %109
  %118 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %119 = icmp ne %struct.tty_struct* %118, null
  br i1 %119, label %120, label %125

120:                                              ; preds = %117
  %121 = load i32, i32* @TTY_IO_ERROR, align 4
  %122 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %123 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %122, i32 0, i32 0
  %124 = call i32 @set_bit(i32 %121, i32* %123)
  br label %125

125:                                              ; preds = %120, %117
  store i32 0, i32* %2, align 4
  br label %250

126:                                              ; preds = %109
  %127 = load i32, i32* @ENODEV, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %2, align 4
  br label %250

129:                                              ; preds = %101
  %130 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %131 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %130, i32 0, i32 7
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @UART_LSR, align 8
  %134 = add nsw i64 %132, %133
  %135 = call i32 @inb(i64 %134)
  %136 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %137 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %136, i32 0, i32 7
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @UART_RX, align 8
  %140 = add nsw i64 %138, %139
  %141 = call i32 @inb(i64 %140)
  %142 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %143 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %142, i32 0, i32 7
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @UART_IIR, align 8
  %146 = add nsw i64 %144, %145
  %147 = call i32 @inb(i64 %146)
  %148 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %149 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %148, i32 0, i32 7
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @UART_MSR, align 8
  %152 = add nsw i64 %150, %151
  %153 = call i32 @inb(i64 %152)
  %154 = load i32, i32* @UART_LCR_WLEN8, align 4
  %155 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %156 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %155, i32 0, i32 7
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @UART_LCR, align 8
  %159 = add nsw i64 %157, %158
  %160 = call i32 @outb(i32 %154, i64 %159)
  %161 = load i32, i32* @UART_MCR_DTR, align 4
  %162 = load i32, i32* @UART_MCR_RTS, align 4
  %163 = or i32 %161, %162
  %164 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %165 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 8
  %166 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %167 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %170 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %169, i32 0, i32 7
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @UART_MCR, align 8
  %173 = add nsw i64 %171, %172
  %174 = call i32 @outb(i32 %168, i64 %173)
  %175 = load i32, i32* @UART_IER_MSI, align 4
  %176 = load i32, i32* @UART_IER_RLSI, align 4
  %177 = or i32 %175, %176
  %178 = load i32, i32* @UART_IER_RDI, align 4
  %179 = or i32 %177, %178
  %180 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %181 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %180, i32 0, i32 1
  store i32 %179, i32* %181, align 4
  %182 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %183 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %182, i32 0, i32 8
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %194

188:                                              ; preds = %129
  %189 = load i32, i32* @MOXA_MUST_IER_EGDAI, align 4
  %190 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %191 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = or i32 %192, %189
  store i32 %193, i32* %191, align 4
  br label %194

194:                                              ; preds = %188, %129
  %195 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %196 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %199 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %198, i32 0, i32 7
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @UART_IER, align 8
  %202 = add nsw i64 %200, %201
  %203 = call i32 @outb(i32 %197, i64 %202)
  %204 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %205 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %204, i32 0, i32 7
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @UART_LSR, align 8
  %208 = add nsw i64 %206, %207
  %209 = call i32 @inb(i64 %208)
  %210 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %211 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %210, i32 0, i32 7
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @UART_RX, align 8
  %214 = add nsw i64 %212, %213
  %215 = call i32 @inb(i64 %214)
  %216 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %217 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %216, i32 0, i32 7
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* @UART_IIR, align 8
  %220 = add nsw i64 %218, %219
  %221 = call i32 @inb(i64 %220)
  %222 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %223 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %222, i32 0, i32 7
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @UART_MSR, align 8
  %226 = add nsw i64 %224, %225
  %227 = call i32 @inb(i64 %226)
  %228 = load i32, i32* @TTY_IO_ERROR, align 4
  %229 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %230 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %229, i32 0, i32 0
  %231 = call i32 @clear_bit(i32 %228, i32* %230)
  %232 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %233 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %232, i32 0, i32 4
  store i64 0, i64* %233, align 8
  %234 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %235 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %234, i32 0, i32 5
  store i64 0, i64* %235, align 8
  %236 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %237 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %236, i32 0, i32 6
  store i64 0, i64* %237, align 8
  %238 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %239 = call i32 @mxser_change_speed(%struct.tty_struct* %238, i32* null)
  %240 = load i32, i32* @ASYNC_INITIALIZED, align 4
  %241 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %242 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %241, i32 0, i32 3
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = or i32 %244, %240
  store i32 %245, i32* %243, align 8
  %246 = load %struct.mxser_port*, %struct.mxser_port** %4, align 8
  %247 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %246, i32 0, i32 2
  %248 = load i64, i64* %6, align 8
  %249 = call i32 @spin_unlock_irqrestore(i32* %247, i64 %248)
  store i32 0, i32* %2, align 4
  br label %250

250:                                              ; preds = %194, %126, %125, %46, %29, %14
  %251 = load i32, i32* %2, align 4
  ret i32 %251
}

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i64 @capable(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @mxser_change_speed(%struct.tty_struct*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
