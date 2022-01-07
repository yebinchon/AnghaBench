; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adv_pci_dio.c_pci_dio_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adv_pci_dio.c_pci_dio_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.comedi_device = type { i64 }

@.str = private unnamed_addr constant [43 x i8] c"adv_pci_dio EDBG: BGN: pci171x_reset(...)\0A\00", align 1
@this_board = common dso_local global %struct.TYPE_2__* null, align 8
@PCI1730_DO = common dso_local global i64 0, align 8
@PCI1730_IDO = common dso_local global i64 0, align 8
@PCI1730_3_INT_EN = common dso_local global i64 0, align 8
@PCI1730_3_INT_CLR = common dso_local global i64 0, align 8
@PCI1730_3_INT_RF = common dso_local global i64 0, align 8
@PCI1734_IDO = common dso_local global i64 0, align 8
@PCI1736_IDO = common dso_local global i64 0, align 8
@PCI1736_3_INT_EN = common dso_local global i64 0, align 8
@PCI1736_3_INT_CLR = common dso_local global i64 0, align 8
@PCI1736_3_INT_RF = common dso_local global i64 0, align 8
@PCI1750_ICR = common dso_local global i64 0, align 8
@PCI1752_6_CFC = common dso_local global i64 0, align 8
@PCI1752_IDO = common dso_local global i64 0, align 8
@PCI1752_IDO2 = common dso_local global i64 0, align 8
@PCI1753E_ICR0 = common dso_local global i64 0, align 8
@PCI1753E_ICR1 = common dso_local global i64 0, align 8
@PCI1753E_ICR2 = common dso_local global i64 0, align 8
@PCI1753E_ICR3 = common dso_local global i64 0, align 8
@PCI1753_ICR0 = common dso_local global i64 0, align 8
@PCI1753_ICR1 = common dso_local global i64 0, align 8
@PCI1753_ICR2 = common dso_local global i64 0, align 8
@PCI1753_ICR3 = common dso_local global i64 0, align 8
@PCI1754_6_ICR0 = common dso_local global i64 0, align 8
@PCI1754_6_ICR1 = common dso_local global i64 0, align 8
@PCI1754_ICR2 = common dso_local global i64 0, align 8
@PCI1754_ICR3 = common dso_local global i64 0, align 8
@PCI1756_IDO = common dso_local global i64 0, align 8
@PCI1762_ICR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"adv_pci_dio EDBG: END: pci171x_reset(...)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @pci_dio_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_dio_reset(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %3 = call i32 @DPRINTK(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @this_board, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %270 [
    i32 140, label %7
    i32 139, label %34
    i32 138, label %53
    i32 137, label %81
    i32 136, label %113
    i32 135, label %113
    i32 134, label %120
    i32 132, label %153
    i32 133, label %178
    i32 131, label %203
    i32 130, label %228
    i32 129, label %260
    i32 128, label %263
  ]

7:                                                ; preds = %1
  %8 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @PCI1730_DO, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @outb(i32 0, i64 %12)
  %14 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PCI1730_DO, align 8
  %18 = add nsw i64 %16, %17
  %19 = add nsw i64 %18, 1
  %20 = call i32 @outb(i32 0, i64 %19)
  %21 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %22 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PCI1730_IDO, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @outb(i32 0, i64 %25)
  %27 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %28 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PCI1730_IDO, align 8
  %31 = add nsw i64 %29, %30
  %32 = add nsw i64 %31, 1
  %33 = call i32 @outb(i32 0, i64 %32)
  br label %34

34:                                               ; preds = %1, %7
  %35 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %36 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @PCI1730_3_INT_EN, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @outb(i32 0, i64 %39)
  %41 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %42 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @PCI1730_3_INT_CLR, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @outb(i32 15, i64 %45)
  %47 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %48 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @PCI1730_3_INT_RF, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @outb(i32 0, i64 %51)
  br label %270

53:                                               ; preds = %1
  %54 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %55 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @PCI1734_IDO, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @outb(i32 0, i64 %58)
  %60 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %61 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @PCI1734_IDO, align 8
  %64 = add nsw i64 %62, %63
  %65 = add nsw i64 %64, 1
  %66 = call i32 @outb(i32 0, i64 %65)
  %67 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %68 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @PCI1734_IDO, align 8
  %71 = add nsw i64 %69, %70
  %72 = add nsw i64 %71, 2
  %73 = call i32 @outb(i32 0, i64 %72)
  %74 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %75 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @PCI1734_IDO, align 8
  %78 = add nsw i64 %76, %77
  %79 = add nsw i64 %78, 3
  %80 = call i32 @outb(i32 0, i64 %79)
  br label %270

81:                                               ; preds = %1
  %82 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %83 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @PCI1736_IDO, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @outb(i32 0, i64 %86)
  %88 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %89 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @PCI1736_IDO, align 8
  %92 = add nsw i64 %90, %91
  %93 = add nsw i64 %92, 1
  %94 = call i32 @outb(i32 0, i64 %93)
  %95 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %96 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @PCI1736_3_INT_EN, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @outb(i32 0, i64 %99)
  %101 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %102 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @PCI1736_3_INT_CLR, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i32 @outb(i32 15, i64 %105)
  %107 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %108 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @PCI1736_3_INT_RF, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @outb(i32 0, i64 %111)
  br label %270

113:                                              ; preds = %1, %1
  %114 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %115 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @PCI1750_ICR, align 8
  %118 = add nsw i64 %116, %117
  %119 = call i32 @outb(i32 136, i64 %118)
  br label %270

120:                                              ; preds = %1
  %121 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %122 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @PCI1752_6_CFC, align 8
  %125 = add nsw i64 %123, %124
  %126 = call i32 @outw(i32 0, i64 %125)
  %127 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %128 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @PCI1752_IDO, align 8
  %131 = add nsw i64 %129, %130
  %132 = call i32 @outw(i32 0, i64 %131)
  %133 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %134 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @PCI1752_IDO, align 8
  %137 = add nsw i64 %135, %136
  %138 = add nsw i64 %137, 2
  %139 = call i32 @outw(i32 0, i64 %138)
  %140 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %141 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @PCI1752_IDO2, align 8
  %144 = add nsw i64 %142, %143
  %145 = call i32 @outw(i32 0, i64 %144)
  %146 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %147 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @PCI1752_IDO2, align 8
  %150 = add nsw i64 %148, %149
  %151 = add nsw i64 %150, 2
  %152 = call i32 @outw(i32 0, i64 %151)
  br label %270

153:                                              ; preds = %1
  %154 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %155 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @PCI1753E_ICR0, align 8
  %158 = add nsw i64 %156, %157
  %159 = call i32 @outb(i32 136, i64 %158)
  %160 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %161 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @PCI1753E_ICR1, align 8
  %164 = add nsw i64 %162, %163
  %165 = call i32 @outb(i32 128, i64 %164)
  %166 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %167 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @PCI1753E_ICR2, align 8
  %170 = add nsw i64 %168, %169
  %171 = call i32 @outb(i32 128, i64 %170)
  %172 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %173 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @PCI1753E_ICR3, align 8
  %176 = add nsw i64 %174, %175
  %177 = call i32 @outb(i32 128, i64 %176)
  br label %178

178:                                              ; preds = %1, %153
  %179 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %180 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @PCI1753_ICR0, align 8
  %183 = add nsw i64 %181, %182
  %184 = call i32 @outb(i32 136, i64 %183)
  %185 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %186 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @PCI1753_ICR1, align 8
  %189 = add nsw i64 %187, %188
  %190 = call i32 @outb(i32 128, i64 %189)
  %191 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %192 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @PCI1753_ICR2, align 8
  %195 = add nsw i64 %193, %194
  %196 = call i32 @outb(i32 128, i64 %195)
  %197 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %198 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @PCI1753_ICR3, align 8
  %201 = add nsw i64 %199, %200
  %202 = call i32 @outb(i32 128, i64 %201)
  br label %270

203:                                              ; preds = %1
  %204 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %205 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @PCI1754_6_ICR0, align 8
  %208 = add nsw i64 %206, %207
  %209 = call i32 @outw(i32 8, i64 %208)
  %210 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %211 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @PCI1754_6_ICR1, align 8
  %214 = add nsw i64 %212, %213
  %215 = call i32 @outw(i32 8, i64 %214)
  %216 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %217 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* @PCI1754_ICR2, align 8
  %220 = add nsw i64 %218, %219
  %221 = call i32 @outw(i32 8, i64 %220)
  %222 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %223 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @PCI1754_ICR3, align 8
  %226 = add nsw i64 %224, %225
  %227 = call i32 @outw(i32 8, i64 %226)
  br label %270

228:                                              ; preds = %1
  %229 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %230 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = load i64, i64* @PCI1752_6_CFC, align 8
  %233 = add nsw i64 %231, %232
  %234 = call i32 @outw(i32 0, i64 %233)
  %235 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %236 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* @PCI1754_6_ICR0, align 8
  %239 = add nsw i64 %237, %238
  %240 = call i32 @outw(i32 8, i64 %239)
  %241 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %242 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* @PCI1754_6_ICR1, align 8
  %245 = add nsw i64 %243, %244
  %246 = call i32 @outw(i32 8, i64 %245)
  %247 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %248 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = load i64, i64* @PCI1756_IDO, align 8
  %251 = add nsw i64 %249, %250
  %252 = call i32 @outw(i32 0, i64 %251)
  %253 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %254 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = load i64, i64* @PCI1756_IDO, align 8
  %257 = add nsw i64 %255, %256
  %258 = add nsw i64 %257, 2
  %259 = call i32 @outw(i32 0, i64 %258)
  br label %270

260:                                              ; preds = %1
  %261 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %262 = call i32 @pci1760_reset(%struct.comedi_device* %261)
  br label %270

263:                                              ; preds = %1
  %264 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %265 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = load i64, i64* @PCI1762_ICR, align 8
  %268 = add nsw i64 %266, %267
  %269 = call i32 @outw(i32 257, i64 %268)
  br label %270

270:                                              ; preds = %1, %263, %260, %228, %203, %178, %120, %113, %81, %53, %34
  %271 = call i32 @DPRINTK(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @DPRINTK(i8*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @pci1760_reset(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
