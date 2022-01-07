; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68knommu/platform/68360/extr_ints.c_init_IRQ.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68knommu/platform/68360/extr_ints.c_init_IRQ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32*, i32*, i32 }

@CPM_VECTOR_BASE = common dso_local global i32 0, align 4
@buserr = common dso_local global i32 0, align 4
@_ramvec = common dso_local global i32* null, align 8
@trap = common dso_local global i32 0, align 4
@system_call = common dso_local global i32 0, align 4
@pquicc = common dso_local global %struct.TYPE_3__* null, align 8
@bad_interrupt = common dso_local global i32 0, align 4
@CPMVEC_ERROR = common dso_local global i32 0, align 4
@inthandler = common dso_local global i32 0, align 4
@CPMVEC_PIO_PC11 = common dso_local global i32 0, align 4
@CPMVEC_PIO_PC10 = common dso_local global i32 0, align 4
@CPMVEC_SMC2 = common dso_local global i32 0, align 4
@CPMVEC_SMC1 = common dso_local global i32 0, align 4
@CPMVEC_SPI = common dso_local global i32 0, align 4
@CPMVEC_PIO_PC9 = common dso_local global i32 0, align 4
@CPMVEC_TIMER4 = common dso_local global i32 0, align 4
@CPMVEC_RESERVED1 = common dso_local global i32 0, align 4
@CPMVEC_PIO_PC8 = common dso_local global i32 0, align 4
@CPMVEC_PIO_PC7 = common dso_local global i32 0, align 4
@CPMVEC_PIO_PC6 = common dso_local global i32 0, align 4
@CPMVEC_TIMER3 = common dso_local global i32 0, align 4
@CPMVEC_RISCTIMER = common dso_local global i32 0, align 4
@CPMVEC_PIO_PC5 = common dso_local global i32 0, align 4
@CPMVEC_PIO_PC4 = common dso_local global i32 0, align 4
@CPMVEC_RESERVED2 = common dso_local global i32 0, align 4
@CPMVEC_TIMER2 = common dso_local global i32 0, align 4
@CPMVEC_RESERVED3 = common dso_local global i32 0, align 4
@CPMVEC_IDMA2 = common dso_local global i32 0, align 4
@CPMVEC_IDMA1 = common dso_local global i32 0, align 4
@CPMVEC_SDMA_CB_ERR = common dso_local global i32 0, align 4
@CPMVEC_PIO_PC3 = common dso_local global i32 0, align 4
@CPMVEC_PIO_PC2 = common dso_local global i32 0, align 4
@CPMVEC_TIMER1 = common dso_local global i32 0, align 4
@CPMVEC_PIO_PC1 = common dso_local global i32 0, align 4
@CPMVEC_SCC4 = common dso_local global i32 0, align 4
@CPMVEC_SCC3 = common dso_local global i32 0, align 4
@CPMVEC_SCC2 = common dso_local global i32 0, align 4
@CPMVEC_SCC1 = common dso_local global i32 0, align 4
@CPMVEC_PIO_PC0 = common dso_local global i32 0, align 4
@NR_IRQS = common dso_local global i32 0, align 4
@IRQ_DISABLED = common dso_local global i32 0, align 4
@irq_desc = common dso_local global %struct.TYPE_4__* null, align 8
@intc_irq_chip = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_IRQ() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @CPM_VECTOR_BASE, align 4
  %4 = shl i32 %3, 4
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* @buserr, align 4
  %6 = load i32*, i32** @_ramvec, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 2
  store i32 %5, i32* %7, align 4
  %8 = load i32, i32* @trap, align 4
  %9 = load i32*, i32** @_ramvec, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 3
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @trap, align 4
  %12 = load i32*, i32** @_ramvec, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 4
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @trap, align 4
  %15 = load i32*, i32** @_ramvec, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 5
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @trap, align 4
  %18 = load i32*, i32** @_ramvec, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 6
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @trap, align 4
  %21 = load i32*, i32** @_ramvec, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 7
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @trap, align 4
  %24 = load i32*, i32** @_ramvec, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 8
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @trap, align 4
  %27 = load i32*, i32** @_ramvec, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 9
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @trap, align 4
  %30 = load i32*, i32** @_ramvec, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 10
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @trap, align 4
  %33 = load i32*, i32** @_ramvec, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 11
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @trap, align 4
  %36 = load i32*, i32** @_ramvec, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 12
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @trap, align 4
  %39 = load i32*, i32** @_ramvec, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 13
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @trap, align 4
  %42 = load i32*, i32** @_ramvec, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 14
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @trap, align 4
  %45 = load i32*, i32** @_ramvec, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 15
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @system_call, align 4
  %48 = load i32*, i32** @_ramvec, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 32
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @trap, align 4
  %51 = load i32*, i32** @_ramvec, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 33
  store i32 %50, i32* %52, align 4
  %53 = call i32 (...) @cpm_interrupt_init()
  %54 = load i32, i32* %2, align 4
  %55 = or i32 14982912, %54
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pquicc, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @bad_interrupt, align 4
  %59 = load i32*, i32** @_ramvec, align 8
  %60 = load i32, i32* %2, align 4
  %61 = load i32, i32* @CPMVEC_ERROR, align 4
  %62 = add nsw i32 %60, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %59, i64 %63
  store i32 %58, i32* %64, align 4
  %65 = load i32, i32* @inthandler, align 4
  %66 = load i32*, i32** @_ramvec, align 8
  %67 = load i32, i32* %2, align 4
  %68 = load i32, i32* @CPMVEC_PIO_PC11, align 4
  %69 = add nsw i32 %67, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %66, i64 %70
  store i32 %65, i32* %71, align 4
  %72 = load i32, i32* @inthandler, align 4
  %73 = load i32*, i32** @_ramvec, align 8
  %74 = load i32, i32* %2, align 4
  %75 = load i32, i32* @CPMVEC_PIO_PC10, align 4
  %76 = add nsw i32 %74, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %73, i64 %77
  store i32 %72, i32* %78, align 4
  %79 = load i32, i32* @inthandler, align 4
  %80 = load i32*, i32** @_ramvec, align 8
  %81 = load i32, i32* %2, align 4
  %82 = load i32, i32* @CPMVEC_SMC2, align 4
  %83 = add nsw i32 %81, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %80, i64 %84
  store i32 %79, i32* %85, align 4
  %86 = load i32, i32* @inthandler, align 4
  %87 = load i32*, i32** @_ramvec, align 8
  %88 = load i32, i32* %2, align 4
  %89 = load i32, i32* @CPMVEC_SMC1, align 4
  %90 = add nsw i32 %88, %89
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %87, i64 %91
  store i32 %86, i32* %92, align 4
  %93 = load i32, i32* @inthandler, align 4
  %94 = load i32*, i32** @_ramvec, align 8
  %95 = load i32, i32* %2, align 4
  %96 = load i32, i32* @CPMVEC_SPI, align 4
  %97 = add nsw i32 %95, %96
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %94, i64 %98
  store i32 %93, i32* %99, align 4
  %100 = load i32, i32* @inthandler, align 4
  %101 = load i32*, i32** @_ramvec, align 8
  %102 = load i32, i32* %2, align 4
  %103 = load i32, i32* @CPMVEC_PIO_PC9, align 4
  %104 = add nsw i32 %102, %103
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %101, i64 %105
  store i32 %100, i32* %106, align 4
  %107 = load i32, i32* @inthandler, align 4
  %108 = load i32*, i32** @_ramvec, align 8
  %109 = load i32, i32* %2, align 4
  %110 = load i32, i32* @CPMVEC_TIMER4, align 4
  %111 = add nsw i32 %109, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %108, i64 %112
  store i32 %107, i32* %113, align 4
  %114 = load i32, i32* @inthandler, align 4
  %115 = load i32*, i32** @_ramvec, align 8
  %116 = load i32, i32* %2, align 4
  %117 = load i32, i32* @CPMVEC_RESERVED1, align 4
  %118 = add nsw i32 %116, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %115, i64 %119
  store i32 %114, i32* %120, align 4
  %121 = load i32, i32* @inthandler, align 4
  %122 = load i32*, i32** @_ramvec, align 8
  %123 = load i32, i32* %2, align 4
  %124 = load i32, i32* @CPMVEC_PIO_PC8, align 4
  %125 = add nsw i32 %123, %124
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %122, i64 %126
  store i32 %121, i32* %127, align 4
  %128 = load i32, i32* @inthandler, align 4
  %129 = load i32*, i32** @_ramvec, align 8
  %130 = load i32, i32* %2, align 4
  %131 = load i32, i32* @CPMVEC_PIO_PC7, align 4
  %132 = add nsw i32 %130, %131
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %129, i64 %133
  store i32 %128, i32* %134, align 4
  %135 = load i32, i32* @inthandler, align 4
  %136 = load i32*, i32** @_ramvec, align 8
  %137 = load i32, i32* %2, align 4
  %138 = load i32, i32* @CPMVEC_PIO_PC6, align 4
  %139 = add nsw i32 %137, %138
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %136, i64 %140
  store i32 %135, i32* %141, align 4
  %142 = load i32, i32* @inthandler, align 4
  %143 = load i32*, i32** @_ramvec, align 8
  %144 = load i32, i32* %2, align 4
  %145 = load i32, i32* @CPMVEC_TIMER3, align 4
  %146 = add nsw i32 %144, %145
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %143, i64 %147
  store i32 %142, i32* %148, align 4
  %149 = load i32, i32* @inthandler, align 4
  %150 = load i32*, i32** @_ramvec, align 8
  %151 = load i32, i32* %2, align 4
  %152 = load i32, i32* @CPMVEC_RISCTIMER, align 4
  %153 = add nsw i32 %151, %152
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %150, i64 %154
  store i32 %149, i32* %155, align 4
  %156 = load i32, i32* @inthandler, align 4
  %157 = load i32*, i32** @_ramvec, align 8
  %158 = load i32, i32* %2, align 4
  %159 = load i32, i32* @CPMVEC_PIO_PC5, align 4
  %160 = add nsw i32 %158, %159
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %157, i64 %161
  store i32 %156, i32* %162, align 4
  %163 = load i32, i32* @inthandler, align 4
  %164 = load i32*, i32** @_ramvec, align 8
  %165 = load i32, i32* %2, align 4
  %166 = load i32, i32* @CPMVEC_PIO_PC4, align 4
  %167 = add nsw i32 %165, %166
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %164, i64 %168
  store i32 %163, i32* %169, align 4
  %170 = load i32, i32* @inthandler, align 4
  %171 = load i32*, i32** @_ramvec, align 8
  %172 = load i32, i32* %2, align 4
  %173 = load i32, i32* @CPMVEC_RESERVED2, align 4
  %174 = add nsw i32 %172, %173
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %171, i64 %175
  store i32 %170, i32* %176, align 4
  %177 = load i32, i32* @inthandler, align 4
  %178 = load i32*, i32** @_ramvec, align 8
  %179 = load i32, i32* %2, align 4
  %180 = load i32, i32* @CPMVEC_RISCTIMER, align 4
  %181 = add nsw i32 %179, %180
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %178, i64 %182
  store i32 %177, i32* %183, align 4
  %184 = load i32, i32* @inthandler, align 4
  %185 = load i32*, i32** @_ramvec, align 8
  %186 = load i32, i32* %2, align 4
  %187 = load i32, i32* @CPMVEC_TIMER2, align 4
  %188 = add nsw i32 %186, %187
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %185, i64 %189
  store i32 %184, i32* %190, align 4
  %191 = load i32, i32* @inthandler, align 4
  %192 = load i32*, i32** @_ramvec, align 8
  %193 = load i32, i32* %2, align 4
  %194 = load i32, i32* @CPMVEC_RESERVED3, align 4
  %195 = add nsw i32 %193, %194
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %192, i64 %196
  store i32 %191, i32* %197, align 4
  %198 = load i32, i32* @inthandler, align 4
  %199 = load i32*, i32** @_ramvec, align 8
  %200 = load i32, i32* %2, align 4
  %201 = load i32, i32* @CPMVEC_IDMA2, align 4
  %202 = add nsw i32 %200, %201
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %199, i64 %203
  store i32 %198, i32* %204, align 4
  %205 = load i32, i32* @inthandler, align 4
  %206 = load i32*, i32** @_ramvec, align 8
  %207 = load i32, i32* %2, align 4
  %208 = load i32, i32* @CPMVEC_IDMA1, align 4
  %209 = add nsw i32 %207, %208
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %206, i64 %210
  store i32 %205, i32* %211, align 4
  %212 = load i32, i32* @inthandler, align 4
  %213 = load i32*, i32** @_ramvec, align 8
  %214 = load i32, i32* %2, align 4
  %215 = load i32, i32* @CPMVEC_SDMA_CB_ERR, align 4
  %216 = add nsw i32 %214, %215
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %213, i64 %217
  store i32 %212, i32* %218, align 4
  %219 = load i32, i32* @inthandler, align 4
  %220 = load i32*, i32** @_ramvec, align 8
  %221 = load i32, i32* %2, align 4
  %222 = load i32, i32* @CPMVEC_PIO_PC3, align 4
  %223 = add nsw i32 %221, %222
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %220, i64 %224
  store i32 %219, i32* %225, align 4
  %226 = load i32, i32* @inthandler, align 4
  %227 = load i32*, i32** @_ramvec, align 8
  %228 = load i32, i32* %2, align 4
  %229 = load i32, i32* @CPMVEC_PIO_PC2, align 4
  %230 = add nsw i32 %228, %229
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %227, i64 %231
  store i32 %226, i32* %232, align 4
  %233 = load i32, i32* @inthandler, align 4
  %234 = load i32*, i32** @_ramvec, align 8
  %235 = load i32, i32* %2, align 4
  %236 = load i32, i32* @CPMVEC_TIMER1, align 4
  %237 = add nsw i32 %235, %236
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %234, i64 %238
  store i32 %233, i32* %239, align 4
  %240 = load i32, i32* @inthandler, align 4
  %241 = load i32*, i32** @_ramvec, align 8
  %242 = load i32, i32* %2, align 4
  %243 = load i32, i32* @CPMVEC_PIO_PC1, align 4
  %244 = add nsw i32 %242, %243
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %241, i64 %245
  store i32 %240, i32* %246, align 4
  %247 = load i32, i32* @inthandler, align 4
  %248 = load i32*, i32** @_ramvec, align 8
  %249 = load i32, i32* %2, align 4
  %250 = load i32, i32* @CPMVEC_SCC4, align 4
  %251 = add nsw i32 %249, %250
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %248, i64 %252
  store i32 %247, i32* %253, align 4
  %254 = load i32, i32* @inthandler, align 4
  %255 = load i32*, i32** @_ramvec, align 8
  %256 = load i32, i32* %2, align 4
  %257 = load i32, i32* @CPMVEC_SCC3, align 4
  %258 = add nsw i32 %256, %257
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %255, i64 %259
  store i32 %254, i32* %260, align 4
  %261 = load i32, i32* @inthandler, align 4
  %262 = load i32*, i32** @_ramvec, align 8
  %263 = load i32, i32* %2, align 4
  %264 = load i32, i32* @CPMVEC_SCC2, align 4
  %265 = add nsw i32 %263, %264
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %262, i64 %266
  store i32 %261, i32* %267, align 4
  %268 = load i32, i32* @inthandler, align 4
  %269 = load i32*, i32** @_ramvec, align 8
  %270 = load i32, i32* %2, align 4
  %271 = load i32, i32* @CPMVEC_SCC1, align 4
  %272 = add nsw i32 %270, %271
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %269, i64 %273
  store i32 %268, i32* %274, align 4
  %275 = load i32, i32* @inthandler, align 4
  %276 = load i32*, i32** @_ramvec, align 8
  %277 = load i32, i32* %2, align 4
  %278 = load i32, i32* @CPMVEC_PIO_PC0, align 4
  %279 = add nsw i32 %277, %278
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %276, i64 %280
  store i32 %275, i32* %281, align 4
  %282 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pquicc, align 8
  %283 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %282, i32 0, i32 1
  store i32 0, i32* %283, align 4
  store i32 0, i32* %1, align 4
  br label %284

284:                                              ; preds = %310, %0
  %285 = load i32, i32* %1, align 4
  %286 = load i32, i32* @NR_IRQS, align 4
  %287 = icmp slt i32 %285, %286
  br i1 %287, label %288, label %313

288:                                              ; preds = %284
  %289 = load i32, i32* @IRQ_DISABLED, align 4
  %290 = load %struct.TYPE_4__*, %struct.TYPE_4__** @irq_desc, align 8
  %291 = load i32, i32* %1, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %290, i64 %292
  %294 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %293, i32 0, i32 3
  store i32 %289, i32* %294, align 8
  %295 = load %struct.TYPE_4__*, %struct.TYPE_4__** @irq_desc, align 8
  %296 = load i32, i32* %1, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %295, i64 %297
  %299 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %298, i32 0, i32 2
  store i32* null, i32** %299, align 8
  %300 = load %struct.TYPE_4__*, %struct.TYPE_4__** @irq_desc, align 8
  %301 = load i32, i32* %1, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %300, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %303, i32 0, i32 0
  store i32 1, i32* %304, align 8
  %305 = load %struct.TYPE_4__*, %struct.TYPE_4__** @irq_desc, align 8
  %306 = load i32, i32* %1, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %305, i64 %307
  %309 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %308, i32 0, i32 1
  store i32* @intc_irq_chip, i32** %309, align 8
  br label %310

310:                                              ; preds = %288
  %311 = load i32, i32* %1, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %1, align 4
  br label %284

313:                                              ; preds = %284
  ret void
}

declare dso_local i32 @cpm_interrupt_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
