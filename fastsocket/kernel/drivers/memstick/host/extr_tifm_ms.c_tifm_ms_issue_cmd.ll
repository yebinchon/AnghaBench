; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/host/extr_tifm_ms.c_tifm_ms_issue_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/host/extr_tifm_ms.c_tifm_ms_issue_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tifm_ms = type { i32, i32, %struct.TYPE_5__*, i64, i32, i64, i64, i64, i64, %struct.tifm_dev* }
%struct.TYPE_5__ = type { i8*, i32, i64, i32, i32, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.tifm_dev = type { i32, i64 }

@no_dma = common dso_local global i32 0, align 4
@TIFM_FIFO_INT_SETALL = common dso_local global i32 0, align 4
@SOCK_DMA_FIFO_INT_ENABLE_CLEAR = common dso_local global i64 0, align 8
@TIFM_FIFO_ENABLE = common dso_local global i32 0, align 4
@SOCK_FIFO_CONTROL = common dso_local global i64 0, align 8
@READ = common dso_local global i64 0, align 8
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SOCK_FIFO_PAGE_SIZE = common dso_local global i64 0, align 8
@TIFM_FIFO_INTMASK = common dso_local global i32 0, align 4
@SOCK_DMA_FIFO_INT_ENABLE_SET = common dso_local global i64 0, align 8
@TIFM_DMA_EN = common dso_local global i32 0, align 4
@WRITE = common dso_local global i64 0, align 8
@TIFM_DMA_TX = common dso_local global i32 0, align 4
@SOCK_DMA_ADDRESS = common dso_local global i64 0, align 8
@SOCK_DMA_CONTROL = common dso_local global i64 0, align 8
@TIFM_MS_SYS_FIFO = common dso_local global i32 0, align 4
@SOCK_MS_SYSTEM = common dso_local global i64 0, align 8
@TIFM_FIFO_MORE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@TIFM_CTRL_LED = common dso_local global i32 0, align 4
@SOCK_CONTROL = common dso_local global i64 0, align 8
@TIFM_MS_SYS_INTCLR = common dso_local global i32 0, align 4
@TIFM_MS_SYS_DMA = common dso_local global i32 0, align 4
@SOCK_MS_COMMAND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"executing TPC %x, %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tifm_ms*)* @tifm_ms_issue_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tifm_ms_issue_cmd(%struct.tifm_ms* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tifm_ms*, align 8
  %4 = alloca %struct.tifm_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tifm_ms* %0, %struct.tifm_ms** %3, align 8
  %9 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %10 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %9, i32 0, i32 9
  %11 = load %struct.tifm_dev*, %struct.tifm_dev** %10, align 8
  store %struct.tifm_dev* %11, %struct.tifm_dev** %4, align 8
  %12 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %13 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %12, i32 0, i32 5
  store i64 0, i64* %13, align 8
  %14 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %15 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %14, i32 0, i32 8
  store i64 0, i64* %15, align 8
  %16 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %17 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %16, i32 0, i32 7
  store i64 0, i64* %17, align 8
  %18 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %19 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %18, i32 0, i32 6
  store i64 0, i64* %19, align 8
  %20 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %21 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %20, i32 0, i32 5
  store i64 0, i64* %21, align 8
  %22 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %23 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %22, i32 0, i32 2
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %5, align 8
  %27 = load i32, i32* @no_dma, align 4
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %32 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %34 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %33, i32 0, i32 2
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 6
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %1
  %40 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %41 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %40, i32 0, i32 2
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @is_power_of_2(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %39
  %50 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %51 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %50, i32 0, i32 0
  store i32 0, i32* %51, align 8
  br label %52

52:                                               ; preds = %49, %39
  br label %61

53:                                               ; preds = %1
  %54 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %55 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %54, i32 0, i32 2
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %6, align 4
  %59 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %60 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %59, i32 0, i32 0
  store i32 0, i32* %60, align 8
  br label %61

61:                                               ; preds = %53, %52
  %62 = load i32, i32* @TIFM_FIFO_INT_SETALL, align 4
  %63 = load %struct.tifm_dev*, %struct.tifm_dev** %4, align 8
  %64 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @SOCK_DMA_FIFO_INT_ENABLE_CLEAR, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @writel(i32 %62, i64 %67)
  %69 = load i32, i32* @TIFM_FIFO_ENABLE, align 4
  %70 = load %struct.tifm_dev*, %struct.tifm_dev** %4, align 8
  %71 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @SOCK_FIFO_CONTROL, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @writel(i32 %69, i64 %74)
  %76 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %77 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %174

80:                                               ; preds = %61
  %81 = load %struct.tifm_dev*, %struct.tifm_dev** %4, align 8
  %82 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %83 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %82, i32 0, i32 2
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 5
  %86 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %87 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %86, i32 0, i32 2
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @READ, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %80
  %94 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  br label %97

95:                                               ; preds = %80
  %96 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi i32 [ %94, %93 ], [ %96, %95 ]
  %99 = call i32 @tifm_map_sg(%struct.tifm_dev* %81, %struct.TYPE_6__* %85, i32 1, i32 %98)
  %100 = icmp ne i32 1, %99
  br i1 %100, label %101, label %113

101:                                              ; preds = %97
  %102 = load i32, i32* @ENOMEM, align 4
  %103 = sub nsw i32 0, %102
  %104 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %105 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %104, i32 0, i32 2
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 3
  store i32 %103, i32* %107, align 8
  %108 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %109 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %108, i32 0, i32 2
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  store i32 %112, i32* %2, align 4
  br label %272

113:                                              ; preds = %97
  %114 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %115 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %114, i32 0, i32 2
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 5
  %118 = call i32 @sg_dma_len(%struct.TYPE_6__* %117)
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @ilog2(i32 %119)
  %121 = sub i32 %120, 2
  %122 = load %struct.tifm_dev*, %struct.tifm_dev** %4, align 8
  %123 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @SOCK_FIFO_PAGE_SIZE, align 8
  %126 = add nsw i64 %124, %125
  %127 = call i32 @writel(i32 %121, i64 %126)
  %128 = load i32, i32* @TIFM_FIFO_INTMASK, align 4
  %129 = load %struct.tifm_dev*, %struct.tifm_dev** %4, align 8
  %130 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @SOCK_DMA_FIFO_INT_ENABLE_SET, align 8
  %133 = add nsw i64 %131, %132
  %134 = call i32 @writel(i32 %128, i64 %133)
  %135 = load i32, i32* @TIFM_DMA_EN, align 4
  %136 = or i32 %135, 256
  store i32 %136, i32* %8, align 4
  %137 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %138 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %137, i32 0, i32 2
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @WRITE, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %113
  %145 = load i32, i32* @TIFM_DMA_TX, align 4
  %146 = load i32, i32* %8, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %8, align 4
  br label %148

148:                                              ; preds = %144, %113
  %149 = load i32, i32* @TIFM_FIFO_INTMASK, align 4
  %150 = load %struct.tifm_dev*, %struct.tifm_dev** %4, align 8
  %151 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @SOCK_DMA_FIFO_INT_ENABLE_SET, align 8
  %154 = add nsw i64 %152, %153
  %155 = call i32 @writel(i32 %149, i64 %154)
  %156 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %157 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %156, i32 0, i32 2
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 5
  %160 = call i32 @sg_dma_address(%struct.TYPE_6__* %159)
  %161 = load %struct.tifm_dev*, %struct.tifm_dev** %4, align 8
  %162 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @SOCK_DMA_ADDRESS, align 8
  %165 = add nsw i64 %163, %164
  %166 = call i32 @writel(i32 %160, i64 %165)
  %167 = load i32, i32* %8, align 4
  %168 = load %struct.tifm_dev*, %struct.tifm_dev** %4, align 8
  %169 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @SOCK_DMA_CONTROL, align 8
  %172 = add nsw i64 %170, %171
  %173 = call i32 @writel(i32 %167, i64 %172)
  br label %193

174:                                              ; preds = %61
  %175 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %176 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @TIFM_MS_SYS_FIFO, align 4
  %179 = or i32 %177, %178
  %180 = load %struct.tifm_dev*, %struct.tifm_dev** %4, align 8
  %181 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @SOCK_MS_SYSTEM, align 8
  %184 = add nsw i64 %182, %183
  %185 = call i32 @writel(i32 %179, i64 %184)
  %186 = load i32, i32* @TIFM_FIFO_MORE, align 4
  %187 = load %struct.tifm_dev*, %struct.tifm_dev** %4, align 8
  %188 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @SOCK_DMA_FIFO_INT_ENABLE_SET, align 8
  %191 = add nsw i64 %189, %190
  %192 = call i32 @writel(i32 %186, i64 %191)
  br label %193

193:                                              ; preds = %174, %148
  %194 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %195 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %194, i32 0, i32 4
  %196 = load i64, i64* @jiffies, align 8
  %197 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %198 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %197, i32 0, i32 3
  %199 = load i64, i64* %198, align 8
  %200 = add nsw i64 %196, %199
  %201 = call i32 @mod_timer(i32* %195, i64 %200)
  %202 = load i32, i32* @TIFM_CTRL_LED, align 4
  %203 = load %struct.tifm_dev*, %struct.tifm_dev** %4, align 8
  %204 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @SOCK_CONTROL, align 8
  %207 = add nsw i64 %205, %206
  %208 = call i32 @readl(i64 %207)
  %209 = or i32 %202, %208
  %210 = load %struct.tifm_dev*, %struct.tifm_dev** %4, align 8
  %211 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @SOCK_CONTROL, align 8
  %214 = add nsw i64 %212, %213
  %215 = call i32 @writel(i32 %209, i64 %214)
  %216 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %217 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %216, i32 0, i32 2
  %218 = load %struct.TYPE_5__*, %struct.TYPE_5__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 3
  store i32 0, i32* %219, align 8
  %220 = load %struct.tifm_dev*, %struct.tifm_dev** %4, align 8
  %221 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @SOCK_MS_SYSTEM, align 8
  %224 = add nsw i64 %222, %223
  %225 = call i32 @readl(i64 %224)
  store i32 %225, i32* %8, align 4
  %226 = load i32, i32* @TIFM_MS_SYS_INTCLR, align 4
  %227 = load i32, i32* %8, align 4
  %228 = or i32 %227, %226
  store i32 %228, i32* %8, align 4
  %229 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %230 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %193
  %234 = load i32, i32* @TIFM_MS_SYS_DMA, align 4
  %235 = load i32, i32* %8, align 4
  %236 = or i32 %235, %234
  store i32 %236, i32* %8, align 4
  br label %242

237:                                              ; preds = %193
  %238 = load i32, i32* @TIFM_MS_SYS_DMA, align 4
  %239 = xor i32 %238, -1
  %240 = load i32, i32* %8, align 4
  %241 = and i32 %240, %239
  store i32 %241, i32* %8, align 4
  br label %242

242:                                              ; preds = %237, %233
  %243 = load i32, i32* %8, align 4
  %244 = load %struct.tifm_dev*, %struct.tifm_dev** %4, align 8
  %245 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %244, i32 0, i32 1
  %246 = load i64, i64* %245, align 8
  %247 = load i64, i64* @SOCK_MS_SYSTEM, align 8
  %248 = add nsw i64 %246, %247
  %249 = call i32 @writel(i32 %243, i64 %248)
  %250 = load %struct.tifm_ms*, %struct.tifm_ms** %3, align 8
  %251 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %250, i32 0, i32 2
  %252 = load %struct.TYPE_5__*, %struct.TYPE_5__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i32 0, i32 4
  %254 = load i32, i32* %253, align 4
  %255 = and i32 %254, 15
  %256 = shl i32 %255, 12
  store i32 %256, i32* %7, align 4
  %257 = load i32, i32* %6, align 4
  %258 = load i32, i32* %7, align 4
  %259 = or i32 %258, %257
  store i32 %259, i32* %7, align 4
  %260 = load i32, i32* %7, align 4
  %261 = load %struct.tifm_dev*, %struct.tifm_dev** %4, align 8
  %262 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %261, i32 0, i32 1
  %263 = load i64, i64* %262, align 8
  %264 = load i64, i64* @SOCK_MS_COMMAND, align 8
  %265 = add nsw i64 %263, %264
  %266 = call i32 @writel(i32 %260, i64 %265)
  %267 = load %struct.tifm_dev*, %struct.tifm_dev** %4, align 8
  %268 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %267, i32 0, i32 0
  %269 = load i32, i32* %7, align 4
  %270 = load i32, i32* %8, align 4
  %271 = call i32 @dev_dbg(i32* %268, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %269, i32 %270)
  store i32 0, i32* %2, align 4
  br label %272

272:                                              ; preds = %242, %101
  %273 = load i32, i32* %2, align 4
  ret i32 %273
}

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @tifm_map_sg(%struct.tifm_dev*, %struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @sg_dma_len(%struct.TYPE_6__*) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @sg_dma_address(%struct.TYPE_6__*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
