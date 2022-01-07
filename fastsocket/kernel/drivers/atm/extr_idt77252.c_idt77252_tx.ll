; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_idt77252.c_idt77252_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_idt77252.c_idt77252_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt77252_dev = type { i32, i32, %struct.TYPE_2__, i32, i32, %struct.vc_map** }
%struct.TYPE_2__ = type { %struct.tsq_entry*, %struct.tsq_entry*, %struct.tsq_entry* }
%struct.tsq_entry = type { i32, i32 }
%struct.vc_map = type { i32, i32 }

@.str = private unnamed_addr constant [49 x i8] c"idt77252_tx: tsq  %p: base %p, next %p, last %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"idt77252_tx: tsqb %08x, tsqt %08x, tsqh %08x, \0A\00", align 1
@SAR_REG_TSQB = common dso_local global i32 0, align 4
@SAR_REG_TSQT = common dso_local global i32 0, align 4
@SAR_REG_TSQH = common dso_local global i32 0, align 4
@SAR_TSQE_INVALID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"tsqe: 0x%p [0x%08x 0x%08x]\0A\00", align 1
@SAR_TSQE_TYPE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"%s: Timer RollOver detected.\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"%s: could not find VC from conn %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"%s: Connection %d IDLE.\0A\00", align 1
@VCF_IDLE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"%s: no VC at index %d\0A\00", align 1
@SAR_TBD_VPI_SHIFT = common dso_local global i32 0, align 4
@SAR_TBD_VCI_SHIFT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [46 x i8] c"%s: TBD complete: out of range VPI.VCI %u.%u\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"%s: TBD complete: no VC at VPI.VCI %u.%u\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"tsqe: %p: base %p, next %p, last %p\0A\00", align 1
@.str.10 = private unnamed_addr constant [72 x i8] c"idt77252_tx-after writel%d: TSQ head = 0x%x, tail = 0x%x, next = 0x%p.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.idt77252_dev*)* @idt77252_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idt77252_tx(%struct.idt77252_dev* %0) #0 {
  %2 = alloca %struct.idt77252_dev*, align 8
  %3 = alloca %struct.tsq_entry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.vc_map*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.idt77252_dev* %0, %struct.idt77252_dev** %2, align 8
  %9 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %10 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.tsq_entry*, %struct.tsq_entry** %11, align 8
  %13 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %14 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load %struct.tsq_entry*, %struct.tsq_entry** %15, align 8
  %17 = icmp eq %struct.tsq_entry* %12, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %20 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load %struct.tsq_entry*, %struct.tsq_entry** %21, align 8
  store %struct.tsq_entry* %22, %struct.tsq_entry** %3, align 8
  br label %29

23:                                               ; preds = %1
  %24 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %25 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.tsq_entry*, %struct.tsq_entry** %26, align 8
  %28 = getelementptr inbounds %struct.tsq_entry, %struct.tsq_entry* %27, i64 1
  store %struct.tsq_entry* %28, %struct.tsq_entry** %3, align 8
  br label %29

29:                                               ; preds = %23, %18
  %30 = load %struct.tsq_entry*, %struct.tsq_entry** %3, align 8
  %31 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %32 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load %struct.tsq_entry*, %struct.tsq_entry** %33, align 8
  %35 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %36 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load %struct.tsq_entry*, %struct.tsq_entry** %37, align 8
  %39 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %40 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load %struct.tsq_entry*, %struct.tsq_entry** %41, align 8
  %43 = call i32 (i8*, %struct.tsq_entry*, ...) @TXPRINTK(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), %struct.tsq_entry* %30, %struct.tsq_entry* %34, %struct.tsq_entry* %38, %struct.tsq_entry* %42)
  %44 = load i32, i32* @SAR_REG_TSQB, align 4
  %45 = call i32 @readl(i32 %44)
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to %struct.tsq_entry*
  %48 = load i32, i32* @SAR_REG_TSQT, align 4
  %49 = call i32 @readl(i32 %48)
  %50 = load i32, i32* @SAR_REG_TSQH, align 4
  %51 = call i32 @readl(i32 %50)
  %52 = call i32 (i8*, %struct.tsq_entry*, ...) @TXPRINTK(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), %struct.tsq_entry* %47, i32 %49, i32 %51)
  %53 = load %struct.tsq_entry*, %struct.tsq_entry** %3, align 8
  %54 = getelementptr inbounds %struct.tsq_entry, %struct.tsq_entry* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @le32_to_cpu(i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @SAR_TSQE_INVALID, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %29
  br label %288

62:                                               ; preds = %29
  br label %63

63:                                               ; preds = %256, %62
  %64 = load %struct.tsq_entry*, %struct.tsq_entry** %3, align 8
  %65 = load %struct.tsq_entry*, %struct.tsq_entry** %3, align 8
  %66 = getelementptr inbounds %struct.tsq_entry, %struct.tsq_entry* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @le32_to_cpu(i32 %67)
  %69 = load %struct.tsq_entry*, %struct.tsq_entry** %3, align 8
  %70 = getelementptr inbounds %struct.tsq_entry, %struct.tsq_entry* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @le32_to_cpu(i32 %71)
  %73 = call i32 (i8*, %struct.tsq_entry*, ...) @TXPRINTK(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), %struct.tsq_entry* %64, i32 %68, i32 %72)
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @SAR_TSQE_TYPE, align 4
  %76 = and i32 %74, %75
  switch i32 %76, label %208 [
    i32 129, label %77
    i32 131, label %84
    i32 128, label %123
    i32 130, label %152
  ]

77:                                               ; preds = %63
  %78 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %79 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = inttoptr i64 %81 to %struct.tsq_entry*
  %83 = call i32 (i8*, %struct.tsq_entry*, ...) @TXPRINTK(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), %struct.tsq_entry* %82)
  br label %208

84:                                               ; preds = %63
  %85 = load %struct.tsq_entry*, %struct.tsq_entry** %3, align 8
  %86 = getelementptr inbounds %struct.tsq_entry, %struct.tsq_entry* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @le32_to_cpu(i32 %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @SAR_TSQE_TAG(i32 %89)
  %91 = icmp eq i32 %90, 16
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  br label %208

93:                                               ; preds = %84
  %94 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %95 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %94, i32 0, i32 5
  %96 = load %struct.vc_map**, %struct.vc_map*** %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = and i32 %97, 8191
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.vc_map*, %struct.vc_map** %96, i64 %99
  %101 = load %struct.vc_map*, %struct.vc_map** %100, align 8
  store %struct.vc_map* %101, %struct.vc_map** %6, align 8
  %102 = load %struct.vc_map*, %struct.vc_map** %6, align 8
  %103 = icmp ne %struct.vc_map* %102, null
  br i1 %103, label %111, label %104

104:                                              ; preds = %93
  %105 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %106 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %7, align 4
  %109 = and i32 %108, 8191
  %110 = call i32 (i8*, i32, i32, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %107, i32 %109)
  br label %208

111:                                              ; preds = %93
  %112 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %113 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.vc_map*, %struct.vc_map** %6, align 8
  %116 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 (i8*, i32, i32, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %114, i32 %117)
  %119 = load i32, i32* @VCF_IDLE, align 4
  %120 = load %struct.vc_map*, %struct.vc_map** %6, align 8
  %121 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %120, i32 0, i32 0
  %122 = call i32 @set_bit(i32 %119, i32* %121)
  br label %208

123:                                              ; preds = %63
  %124 = load %struct.tsq_entry*, %struct.tsq_entry** %3, align 8
  %125 = getelementptr inbounds %struct.tsq_entry, %struct.tsq_entry* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @le32_to_cpu(i32 %126)
  store i32 %127, i32* %7, align 4
  %128 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %129 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %128, i32 0, i32 5
  %130 = load %struct.vc_map**, %struct.vc_map*** %129, align 8
  %131 = load i32, i32* %7, align 4
  %132 = and i32 %131, 8191
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.vc_map*, %struct.vc_map** %130, i64 %133
  %135 = load %struct.vc_map*, %struct.vc_map** %134, align 8
  store %struct.vc_map* %135, %struct.vc_map** %6, align 8
  %136 = load %struct.vc_map*, %struct.vc_map** %6, align 8
  %137 = icmp ne %struct.vc_map* %136, null
  br i1 %137, label %148, label %138

138:                                              ; preds = %123
  %139 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %140 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.tsq_entry*, %struct.tsq_entry** %3, align 8
  %143 = getelementptr inbounds %struct.tsq_entry, %struct.tsq_entry* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @le32_to_cpu(i32 %144)
  %146 = and i32 %145, 8191
  %147 = call i32 (i8*, i32, i32, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %141, i32 %146)
  br label %208

148:                                              ; preds = %123
  %149 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %150 = load %struct.vc_map*, %struct.vc_map** %6, align 8
  %151 = call i32 @drain_scq(%struct.idt77252_dev* %149, %struct.vc_map* %150)
  br label %208

152:                                              ; preds = %63
  %153 = load %struct.tsq_entry*, %struct.tsq_entry** %3, align 8
  %154 = getelementptr inbounds %struct.tsq_entry, %struct.tsq_entry* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @le32_to_cpu(i32 %155)
  store i32 %156, i32* %7, align 4
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* @SAR_TBD_VPI_SHIFT, align 4
  %159 = ashr i32 %157, %158
  %160 = and i32 %159, 255
  store i32 %160, i32* %4, align 4
  %161 = load i32, i32* %7, align 4
  %162 = load i32, i32* @SAR_TBD_VCI_SHIFT, align 4
  %163 = ashr i32 %161, %162
  %164 = and i32 %163, 65535
  store i32 %164, i32* %5, align 4
  %165 = load i32, i32* %4, align 4
  %166 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %167 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = shl i32 1, %168
  %170 = icmp uge i32 %165, %169
  br i1 %170, label %178, label %171

171:                                              ; preds = %152
  %172 = load i32, i32* %5, align 4
  %173 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %174 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = shl i32 1, %175
  %177 = icmp uge i32 %172, %176
  br i1 %177, label %178, label %185

178:                                              ; preds = %171, %152
  %179 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %180 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* %4, align 4
  %183 = load i32, i32* %5, align 4
  %184 = call i32 (i8*, i32, i32, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i32 %181, i32 %182, i32 %183)
  br label %208

185:                                              ; preds = %171
  %186 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %187 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %186, i32 0, i32 5
  %188 = load %struct.vc_map**, %struct.vc_map*** %187, align 8
  %189 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %190 = load i32, i32* %4, align 4
  %191 = load i32, i32* %5, align 4
  %192 = call i64 @VPCI2VC(%struct.idt77252_dev* %189, i32 %190, i32 %191)
  %193 = getelementptr inbounds %struct.vc_map*, %struct.vc_map** %188, i64 %192
  %194 = load %struct.vc_map*, %struct.vc_map** %193, align 8
  store %struct.vc_map* %194, %struct.vc_map** %6, align 8
  %195 = load %struct.vc_map*, %struct.vc_map** %6, align 8
  %196 = icmp ne %struct.vc_map* %195, null
  br i1 %196, label %204, label %197

197:                                              ; preds = %185
  %198 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %199 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %198, i32 0, i32 4
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* %4, align 4
  %202 = load i32, i32* %5, align 4
  %203 = call i32 (i8*, i32, i32, ...) @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i32 %200, i32 %201, i32 %202)
  br label %208

204:                                              ; preds = %185
  %205 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %206 = load %struct.vc_map*, %struct.vc_map** %6, align 8
  %207 = call i32 @drain_scq(%struct.idt77252_dev* %205, %struct.vc_map* %206)
  br label %208

208:                                              ; preds = %63, %204, %197, %178, %148, %138, %111, %104, %92, %77
  %209 = load i32, i32* @SAR_TSQE_INVALID, align 4
  %210 = call i32 @cpu_to_le32(i32 %209)
  %211 = load %struct.tsq_entry*, %struct.tsq_entry** %3, align 8
  %212 = getelementptr inbounds %struct.tsq_entry, %struct.tsq_entry* %211, i32 0, i32 0
  store i32 %210, i32* %212, align 4
  %213 = load %struct.tsq_entry*, %struct.tsq_entry** %3, align 8
  %214 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %215 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %214, i32 0, i32 2
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 0
  store %struct.tsq_entry* %213, %struct.tsq_entry** %216, align 8
  %217 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %218 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %217, i32 0, i32 2
  %219 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %218, i32 0, i32 0
  %220 = load %struct.tsq_entry*, %struct.tsq_entry** %219, align 8
  %221 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %222 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %221, i32 0, i32 2
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i32 0, i32 2
  %224 = load %struct.tsq_entry*, %struct.tsq_entry** %223, align 8
  %225 = icmp eq %struct.tsq_entry* %220, %224
  br i1 %225, label %226, label %231

226:                                              ; preds = %208
  %227 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %228 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %227, i32 0, i32 2
  %229 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %228, i32 0, i32 1
  %230 = load %struct.tsq_entry*, %struct.tsq_entry** %229, align 8
  store %struct.tsq_entry* %230, %struct.tsq_entry** %3, align 8
  br label %237

231:                                              ; preds = %208
  %232 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %233 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %232, i32 0, i32 2
  %234 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %233, i32 0, i32 0
  %235 = load %struct.tsq_entry*, %struct.tsq_entry** %234, align 8
  %236 = getelementptr inbounds %struct.tsq_entry, %struct.tsq_entry* %235, i64 1
  store %struct.tsq_entry* %236, %struct.tsq_entry** %3, align 8
  br label %237

237:                                              ; preds = %231, %226
  %238 = load %struct.tsq_entry*, %struct.tsq_entry** %3, align 8
  %239 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %240 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %239, i32 0, i32 2
  %241 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %240, i32 0, i32 1
  %242 = load %struct.tsq_entry*, %struct.tsq_entry** %241, align 8
  %243 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %244 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %243, i32 0, i32 2
  %245 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %244, i32 0, i32 0
  %246 = load %struct.tsq_entry*, %struct.tsq_entry** %245, align 8
  %247 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %248 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %247, i32 0, i32 2
  %249 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %248, i32 0, i32 2
  %250 = load %struct.tsq_entry*, %struct.tsq_entry** %249, align 8
  %251 = call i32 (i8*, %struct.tsq_entry*, ...) @TXPRINTK(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), %struct.tsq_entry* %238, %struct.tsq_entry* %242, %struct.tsq_entry* %246, %struct.tsq_entry* %250)
  %252 = load %struct.tsq_entry*, %struct.tsq_entry** %3, align 8
  %253 = getelementptr inbounds %struct.tsq_entry, %struct.tsq_entry* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @le32_to_cpu(i32 %254)
  store i32 %255, i32* %8, align 4
  br label %256

256:                                              ; preds = %237
  %257 = load i32, i32* %8, align 4
  %258 = load i32, i32* @SAR_TSQE_INVALID, align 4
  %259 = and i32 %257, %258
  %260 = icmp ne i32 %259, 0
  %261 = xor i1 %260, true
  br i1 %261, label %63, label %262

262:                                              ; preds = %256
  %263 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %264 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %263, i32 0, i32 2
  %265 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %264, i32 0, i32 0
  %266 = load %struct.tsq_entry*, %struct.tsq_entry** %265, align 8
  %267 = ptrtoint %struct.tsq_entry* %266 to i64
  %268 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %269 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %268, i32 0, i32 2
  %270 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %269, i32 0, i32 1
  %271 = load %struct.tsq_entry*, %struct.tsq_entry** %270, align 8
  %272 = ptrtoint %struct.tsq_entry* %271 to i64
  %273 = sub i64 %267, %272
  %274 = load i32, i32* @SAR_REG_TSQH, align 4
  %275 = call i32 @writel(i64 %273, i32 %274)
  %276 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %277 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %276, i32 0, i32 3
  %278 = load i32, i32* %277, align 8
  %279 = load i32, i32* @SAR_REG_TSQH, align 4
  %280 = call i32 @readl(i32 %279)
  %281 = load i32, i32* @SAR_REG_TSQT, align 4
  %282 = call i32 @readl(i32 %281)
  %283 = load %struct.idt77252_dev*, %struct.idt77252_dev** %2, align 8
  %284 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %283, i32 0, i32 2
  %285 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %284, i32 0, i32 0
  %286 = load %struct.tsq_entry*, %struct.tsq_entry** %285, align 8
  %287 = call i32 @XPRINTK(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.10, i64 0, i64 0), i32 %278, i32 %280, i32 %282, %struct.tsq_entry* %286)
  br label %288

288:                                              ; preds = %262, %61
  ret void
}

declare dso_local i32 @TXPRINTK(i8*, %struct.tsq_entry*, ...) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @SAR_TSQE_TAG(i32) #1

declare dso_local i32 @printk(i8*, i32, i32, ...) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @drain_scq(%struct.idt77252_dev*, %struct.vc_map*) #1

declare dso_local i64 @VPCI2VC(%struct.idt77252_dev*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @writel(i64, i32) #1

declare dso_local i32 @XPRINTK(i8*, i32, i32, i32, %struct.tsq_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
