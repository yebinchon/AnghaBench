; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_amba-pl022.c_pl022_interrupt_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_amba-pl022.c_pl022_interrupt_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl022 = type { i64, i64, i64, i64, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__*, i32, %struct.spi_message* }
%struct.TYPE_6__ = type { i32 (i32)* }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.spi_message = type { i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"bad message state in interrupt handler\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@SSP_MIS_MASK_RORMIS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"FIFO overrun\0A\00", align 1
@SSP_SR_MASK_RFF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"RXFIFO is full\0A\00", align 1
@SSP_SR_MASK_TNF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"TXFIFO is full\0A\00", align 1
@DISABLE_ALL_INTERRUPTS = common dso_local global i32 0, align 4
@CLEAR_ALL_INTERRUPTS = common dso_local global i32 0, align 4
@SSP_CR1_MASK_SSE = common dso_local global i32 0, align 4
@STATE_ERROR = common dso_local global i32 0, align 4
@SSP_IMSC_MASK_TXIM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [80 x i8] c"read %u surplus bytes (did you request an odd number of bytes on a 16bit bus?)\0A\00", align 1
@SSP_CHIP_DESELECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pl022_interrupt_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl022_interrupt_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pl022*, align 8
  %7 = alloca %struct.spi_message*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.pl022*
  store %struct.pl022* %11, %struct.pl022** %6, align 8
  %12 = load %struct.pl022*, %struct.pl022** %6, align 8
  %13 = getelementptr inbounds %struct.pl022, %struct.pl022* %12, i32 0, i32 9
  %14 = load %struct.spi_message*, %struct.spi_message** %13, align 8
  store %struct.spi_message* %14, %struct.spi_message** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %15 = load %struct.spi_message*, %struct.spi_message** %7, align 8
  %16 = icmp ne %struct.spi_message* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load %struct.pl022*, %struct.pl022** %6, align 8
  %23 = getelementptr inbounds %struct.pl022, %struct.pl022* %22, i32 0, i32 7
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = call i32 @dev_err(i32* %25, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %27, i32* %3, align 4
  br label %225

28:                                               ; preds = %2
  %29 = load %struct.pl022*, %struct.pl022** %6, align 8
  %30 = getelementptr inbounds %struct.pl022, %struct.pl022* %29, i32 0, i32 8
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @SSP_MIS(i32 %31)
  %33 = call i32 @readw(i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %28
  %41 = load i32, i32* @IRQ_NONE, align 4
  store i32 %41, i32* %3, align 4
  br label %225

42:                                               ; preds = %28
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @SSP_MIS_MASK_RORMIS, align 4
  %45 = and i32 %43, %44
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %116

48:                                               ; preds = %42
  %49 = load %struct.pl022*, %struct.pl022** %6, align 8
  %50 = getelementptr inbounds %struct.pl022, %struct.pl022* %49, i32 0, i32 7
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = call i32 @dev_err(i32* %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %54 = load %struct.pl022*, %struct.pl022** %6, align 8
  %55 = getelementptr inbounds %struct.pl022, %struct.pl022* %54, i32 0, i32 8
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @SSP_SR(i32 %56)
  %58 = call i32 @readw(i32 %57)
  %59 = load i32, i32* @SSP_SR_MASK_RFF, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %48
  %63 = load %struct.pl022*, %struct.pl022** %6, align 8
  %64 = getelementptr inbounds %struct.pl022, %struct.pl022* %63, i32 0, i32 7
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = call i32 @dev_err(i32* %66, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %68

68:                                               ; preds = %62, %48
  %69 = load %struct.pl022*, %struct.pl022** %6, align 8
  %70 = getelementptr inbounds %struct.pl022, %struct.pl022* %69, i32 0, i32 8
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @SSP_SR(i32 %71)
  %73 = call i32 @readw(i32 %72)
  %74 = load i32, i32* @SSP_SR_MASK_TNF, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %68
  %78 = load %struct.pl022*, %struct.pl022** %6, align 8
  %79 = getelementptr inbounds %struct.pl022, %struct.pl022* %78, i32 0, i32 7
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = call i32 @dev_err(i32* %81, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %83

83:                                               ; preds = %77, %68
  %84 = load i32, i32* @DISABLE_ALL_INTERRUPTS, align 4
  %85 = load %struct.pl022*, %struct.pl022** %6, align 8
  %86 = getelementptr inbounds %struct.pl022, %struct.pl022* %85, i32 0, i32 8
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @SSP_IMSC(i32 %87)
  %89 = call i32 @writew(i32 %84, i32 %88)
  %90 = load i32, i32* @CLEAR_ALL_INTERRUPTS, align 4
  %91 = load %struct.pl022*, %struct.pl022** %6, align 8
  %92 = getelementptr inbounds %struct.pl022, %struct.pl022* %91, i32 0, i32 8
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @SSP_ICR(i32 %93)
  %95 = call i32 @writew(i32 %90, i32 %94)
  %96 = load %struct.pl022*, %struct.pl022** %6, align 8
  %97 = getelementptr inbounds %struct.pl022, %struct.pl022* %96, i32 0, i32 8
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @SSP_CR1(i32 %98)
  %100 = call i32 @readw(i32 %99)
  %101 = load i32, i32* @SSP_CR1_MASK_SSE, align 4
  %102 = xor i32 %101, -1
  %103 = and i32 %100, %102
  %104 = load %struct.pl022*, %struct.pl022** %6, align 8
  %105 = getelementptr inbounds %struct.pl022, %struct.pl022* %104, i32 0, i32 8
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @SSP_CR1(i32 %106)
  %108 = call i32 @writew(i32 %103, i32 %107)
  %109 = load i32, i32* @STATE_ERROR, align 4
  %110 = load %struct.spi_message*, %struct.spi_message** %7, align 8
  %111 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 4
  %112 = load %struct.pl022*, %struct.pl022** %6, align 8
  %113 = getelementptr inbounds %struct.pl022, %struct.pl022* %112, i32 0, i32 4
  %114 = call i32 @tasklet_schedule(i32* %113)
  %115 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %115, i32* %3, align 4
  br label %225

116:                                              ; preds = %42
  %117 = load %struct.pl022*, %struct.pl022** %6, align 8
  %118 = call i32 @readwriter(%struct.pl022* %117)
  %119 = load %struct.pl022*, %struct.pl022** %6, align 8
  %120 = getelementptr inbounds %struct.pl022, %struct.pl022* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.pl022*, %struct.pl022** %6, align 8
  %123 = getelementptr inbounds %struct.pl022, %struct.pl022* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp eq i64 %121, %124
  br i1 %125, label %126, label %143

126:                                              ; preds = %116
  %127 = load i32, i32* %9, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %143

129:                                              ; preds = %126
  store i32 1, i32* %9, align 4
  %130 = load %struct.pl022*, %struct.pl022** %6, align 8
  %131 = getelementptr inbounds %struct.pl022, %struct.pl022* %130, i32 0, i32 8
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @SSP_IMSC(i32 %132)
  %134 = call i32 @readw(i32 %133)
  %135 = load i32, i32* @SSP_IMSC_MASK_TXIM, align 4
  %136 = xor i32 %135, -1
  %137 = and i32 %134, %136
  %138 = load %struct.pl022*, %struct.pl022** %6, align 8
  %139 = getelementptr inbounds %struct.pl022, %struct.pl022* %138, i32 0, i32 8
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @SSP_IMSC(i32 %140)
  %142 = call i32 @writew(i32 %137, i32 %141)
  br label %143

143:                                              ; preds = %129, %126, %116
  %144 = load %struct.pl022*, %struct.pl022** %6, align 8
  %145 = getelementptr inbounds %struct.pl022, %struct.pl022* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.pl022*, %struct.pl022** %6, align 8
  %148 = getelementptr inbounds %struct.pl022, %struct.pl022* %147, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  %150 = icmp sge i64 %146, %149
  br i1 %150, label %151, label %223

151:                                              ; preds = %143
  %152 = load i32, i32* @DISABLE_ALL_INTERRUPTS, align 4
  %153 = load %struct.pl022*, %struct.pl022** %6, align 8
  %154 = getelementptr inbounds %struct.pl022, %struct.pl022* %153, i32 0, i32 8
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @SSP_IMSC(i32 %155)
  %157 = call i32 @writew(i32 %152, i32 %156)
  %158 = load i32, i32* @CLEAR_ALL_INTERRUPTS, align 4
  %159 = load %struct.pl022*, %struct.pl022** %6, align 8
  %160 = getelementptr inbounds %struct.pl022, %struct.pl022* %159, i32 0, i32 8
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @SSP_ICR(i32 %161)
  %163 = call i32 @writew(i32 %158, i32 %162)
  %164 = load %struct.pl022*, %struct.pl022** %6, align 8
  %165 = getelementptr inbounds %struct.pl022, %struct.pl022* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.pl022*, %struct.pl022** %6, align 8
  %168 = getelementptr inbounds %struct.pl022, %struct.pl022* %167, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = icmp sgt i64 %166, %169
  %171 = zext i1 %170 to i32
  %172 = call i64 @unlikely(i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %188

174:                                              ; preds = %151
  %175 = load %struct.pl022*, %struct.pl022** %6, align 8
  %176 = getelementptr inbounds %struct.pl022, %struct.pl022* %175, i32 0, i32 7
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 0
  %179 = load %struct.pl022*, %struct.pl022** %6, align 8
  %180 = getelementptr inbounds %struct.pl022, %struct.pl022* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.pl022*, %struct.pl022** %6, align 8
  %183 = getelementptr inbounds %struct.pl022, %struct.pl022* %182, i32 0, i32 3
  %184 = load i64, i64* %183, align 8
  %185 = sub nsw i64 %181, %184
  %186 = trunc i64 %185 to i32
  %187 = call i32 @dev_warn(i32* %178, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.4, i64 0, i64 0), i32 %186)
  br label %188

188:                                              ; preds = %174, %151
  %189 = load %struct.pl022*, %struct.pl022** %6, align 8
  %190 = getelementptr inbounds %struct.pl022, %struct.pl022* %189, i32 0, i32 6
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.spi_message*, %struct.spi_message** %7, align 8
  %195 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = sext i32 %196 to i64
  %198 = add nsw i64 %197, %193
  %199 = trunc i64 %198 to i32
  store i32 %199, i32* %195, align 4
  %200 = load %struct.pl022*, %struct.pl022** %6, align 8
  %201 = getelementptr inbounds %struct.pl022, %struct.pl022* %200, i32 0, i32 6
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %214

206:                                              ; preds = %188
  %207 = load %struct.pl022*, %struct.pl022** %6, align 8
  %208 = getelementptr inbounds %struct.pl022, %struct.pl022* %207, i32 0, i32 5
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 0
  %211 = load i32 (i32)*, i32 (i32)** %210, align 8
  %212 = load i32, i32* @SSP_CHIP_DESELECT, align 4
  %213 = call i32 %211(i32 %212)
  br label %214

214:                                              ; preds = %206, %188
  %215 = load %struct.pl022*, %struct.pl022** %6, align 8
  %216 = call i32 @next_transfer(%struct.pl022* %215)
  %217 = load %struct.spi_message*, %struct.spi_message** %7, align 8
  %218 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %217, i32 0, i32 0
  store i32 %216, i32* %218, align 4
  %219 = load %struct.pl022*, %struct.pl022** %6, align 8
  %220 = getelementptr inbounds %struct.pl022, %struct.pl022* %219, i32 0, i32 4
  %221 = call i32 @tasklet_schedule(i32* %220)
  %222 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %222, i32* %3, align 4
  br label %225

223:                                              ; preds = %143
  %224 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %224, i32* %3, align 4
  br label %225

225:                                              ; preds = %223, %214, %83, %40, %21
  %226 = load i32, i32* %3, align 4
  ret i32 %226
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @readw(i32) #1

declare dso_local i32 @SSP_MIS(i32) #1

declare dso_local i32 @SSP_SR(i32) #1

declare dso_local i32 @writew(i32, i32) #1

declare dso_local i32 @SSP_IMSC(i32) #1

declare dso_local i32 @SSP_ICR(i32) #1

declare dso_local i32 @SSP_CR1(i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @readwriter(%struct.pl022*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @next_transfer(%struct.pl022*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
