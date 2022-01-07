; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/host/extr_jmb38x_ms.c_jmb38x_ms_issue_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/host/extr_jmb38x_ms.c_jmb38x_ms_issue_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memstick_host = type { i32 }
%struct.jmb38x_ms_host = type { i32, i32*, i64, %struct.TYPE_7__*, i64, i32, %struct.TYPE_6__*, i64, i64 }
%struct.TYPE_7__ = type { i32, i32, i64, i8*, i32, %struct.TYPE_8__, i64, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@STATUS_HAS_MEDIA = common dso_local global i32 0, align 4
@STATUS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"no media status\0A\00", align 1
@ETIME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"control %08x\0A\00", align 1
@HOST_CONTROL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"status %08x\0A\00", align 1
@INT_STATUS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"hstatus %08x\0A\00", align 1
@TPC_DATA_SEL = common dso_local global i32 0, align 4
@READ = common dso_local global i64 0, align 8
@TPC_DIR = common dso_local global i32 0, align 4
@TPC_WAIT_INT = common dso_local global i32 0, align 4
@no_dma = common dso_local global i32 0, align 4
@DMA_DATA = common dso_local global i32 0, align 4
@REG_DATA = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_ADDRESS = common dso_local global i64 0, align 8
@BLOCK_COUNT_MASK = common dso_local global i32 0, align 4
@BLOCK_SIZE_MASK = common dso_local global i32 0, align 4
@BLOCK = common dso_local global i64 0, align 8
@DMA_CONTROL_ENABLE = common dso_local global i32 0, align 4
@DMA_CONTROL = common dso_local global i64 0, align 8
@INT_STATUS_ENABLE = common dso_local global i64 0, align 8
@INT_STATUS_FIFO_RRDY = common dso_local global i32 0, align 4
@INT_STATUS_FIFO_WRDY = common dso_local global i32 0, align 4
@INT_SIGNAL_ENABLE = common dso_local global i64 0, align 8
@WRITE = common dso_local global i64 0, align 8
@TPC_P0 = common dso_local global i64 0, align 8
@TPC_P1 = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@HOST_CONTROL_LED = common dso_local global i32 0, align 4
@TPC = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"executing TPC %08x, len %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.memstick_host*)* @jmb38x_ms_issue_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jmb38x_ms_issue_cmd(%struct.memstick_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.memstick_host*, align 8
  %4 = alloca %struct.jmb38x_ms_host*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.memstick_host* %0, %struct.memstick_host** %3, align 8
  %9 = load %struct.memstick_host*, %struct.memstick_host** %3, align 8
  %10 = call %struct.jmb38x_ms_host* @memstick_priv(%struct.memstick_host* %9)
  store %struct.jmb38x_ms_host* %10, %struct.jmb38x_ms_host** %4, align 8
  %11 = load i32, i32* @STATUS_HAS_MEDIA, align 4
  %12 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %13 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @STATUS, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @readl(i64 %16)
  %18 = and i32 %11, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %35, label %20

20:                                               ; preds = %1
  %21 = load %struct.memstick_host*, %struct.memstick_host** %3, align 8
  %22 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %21, i32 0, i32 0
  %23 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ETIME, align 4
  %25 = sub nsw i32 0, %24
  %26 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %27 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %26, i32 0, i32 3
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  store i32 %25, i32* %29, align 8
  %30 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %31 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %30, i32 0, i32 3
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %2, align 4
  br label %395

35:                                               ; preds = %1
  %36 = load %struct.memstick_host*, %struct.memstick_host** %3, align 8
  %37 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %36, i32 0, i32 0
  %38 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %39 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @HOST_CONTROL, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @readl(i64 %42)
  %44 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load %struct.memstick_host*, %struct.memstick_host** %3, align 8
  %46 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %45, i32 0, i32 0
  %47 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %48 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @INT_STATUS, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @readl(i64 %51)
  %53 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %46, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = load %struct.memstick_host*, %struct.memstick_host** %3, align 8
  %55 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %54, i32 0, i32 0
  %56 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %57 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @STATUS, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @readl(i64 %60)
  %62 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  %63 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %64 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %63, i32 0, i32 0
  store i32 0, i32* %64, align 8
  %65 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %66 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %65, i32 0, i32 8
  store i64 0, i64* %66, align 8
  %67 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %68 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %67, i32 0, i32 7
  store i64 0, i64* %68, align 8
  %69 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %70 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  store i32 0, i32* %72, align 4
  %73 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %74 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  store i32 0, i32* %76, align 4
  %77 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %78 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %77, i32 0, i32 3
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = shl i32 %81, 16
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* @TPC_DATA_SEL, align 4
  %84 = load i32, i32* %7, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %7, align 4
  %86 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %87 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %86, i32 0, i32 3
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @READ, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %35
  %94 = load i32, i32* @TPC_DIR, align 4
  %95 = load i32, i32* %7, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %93, %35
  %98 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %99 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %98, i32 0, i32 3
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 7
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %97
  %105 = load i32, i32* @TPC_WAIT_INT, align 4
  %106 = load i32, i32* %7, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %7, align 4
  br label %108

108:                                              ; preds = %104, %97
  %109 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %110 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %109, i32 0, i32 3
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 3
  %113 = load i8*, i8** %112, align 8
  store i8* %113, i8** %5, align 8
  %114 = load i32, i32* @no_dma, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %122, label %116

116:                                              ; preds = %108
  %117 = load i32, i32* @DMA_DATA, align 4
  %118 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %119 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 8
  br label %122

122:                                              ; preds = %116, %108
  %123 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %124 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %123, i32 0, i32 3
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 6
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %122
  %130 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %131 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %130, i32 0, i32 3
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 5
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %6, align 4
  br label %148

136:                                              ; preds = %122
  %137 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %138 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %137, i32 0, i32 3
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  store i32 %141, i32* %6, align 4
  %142 = load i32, i32* @DMA_DATA, align 4
  %143 = xor i32 %142, -1
  %144 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %145 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = and i32 %146, %143
  store i32 %147, i32* %145, align 8
  br label %148

148:                                              ; preds = %136, %129
  %149 = load i32, i32* %6, align 4
  %150 = icmp ule i32 %149, 8
  br i1 %150, label %151, label %172

151:                                              ; preds = %148
  %152 = load i32, i32* @TPC_DATA_SEL, align 4
  %153 = or i32 %152, 15
  %154 = xor i32 %153, -1
  %155 = load i32, i32* %7, align 4
  %156 = and i32 %155, %154
  store i32 %156, i32* %7, align 4
  %157 = load i32, i32* @REG_DATA, align 4
  %158 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %159 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = or i32 %160, %157
  store i32 %161, i32* %159, align 8
  %162 = load i32, i32* %6, align 4
  %163 = and i32 %162, 15
  %164 = load i32, i32* %7, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %7, align 4
  %166 = load i32, i32* @DMA_DATA, align 4
  %167 = xor i32 %166, -1
  %168 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %169 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = and i32 %170, %167
  store i32 %171, i32* %169, align 8
  br label %172

172:                                              ; preds = %151, %148
  %173 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %174 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @DMA_DATA, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %252

179:                                              ; preds = %172
  %180 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %181 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %180, i32 0, i32 6
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %186 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %185, i32 0, i32 3
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 5
  %189 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %190 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %189, i32 0, i32 3
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 2
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @READ, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %198

196:                                              ; preds = %179
  %197 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  br label %200

198:                                              ; preds = %179
  %199 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  br label %200

200:                                              ; preds = %198, %196
  %201 = phi i32 [ %197, %196 ], [ %199, %198 ]
  %202 = call i32 @pci_map_sg(i32 %184, %struct.TYPE_8__* %188, i32 1, i32 %201)
  %203 = icmp ne i32 1, %202
  br i1 %203, label %204, label %216

204:                                              ; preds = %200
  %205 = load i32, i32* @ENOMEM, align 4
  %206 = sub nsw i32 0, %205
  %207 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %208 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %207, i32 0, i32 3
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 0
  store i32 %206, i32* %210, align 8
  %211 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %212 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %211, i32 0, i32 3
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  store i32 %215, i32* %2, align 4
  br label %395

216:                                              ; preds = %200
  %217 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %218 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %217, i32 0, i32 3
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 5
  %221 = call i32 @sg_dma_len(%struct.TYPE_8__* %220)
  store i32 %221, i32* %6, align 4
  %222 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %223 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %222, i32 0, i32 3
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 5
  %226 = call i32 @sg_dma_address(%struct.TYPE_8__* %225)
  %227 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %228 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %227, i32 0, i32 2
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* @DMA_ADDRESS, align 8
  %231 = add nsw i64 %229, %230
  %232 = call i32 @writel(i32 %226, i64 %231)
  %233 = load i32, i32* @BLOCK_COUNT_MASK, align 4
  %234 = and i32 65536, %233
  %235 = load i32, i32* %6, align 4
  %236 = load i32, i32* @BLOCK_SIZE_MASK, align 4
  %237 = and i32 %235, %236
  %238 = or i32 %234, %237
  %239 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %240 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %239, i32 0, i32 2
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* @BLOCK, align 8
  %243 = add nsw i64 %241, %242
  %244 = call i32 @writel(i32 %238, i64 %243)
  %245 = load i32, i32* @DMA_CONTROL_ENABLE, align 4
  %246 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %247 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %246, i32 0, i32 2
  %248 = load i64, i64* %247, align 8
  %249 = load i64, i64* @DMA_CONTROL, align 8
  %250 = add nsw i64 %248, %249
  %251 = call i32 @writel(i32 %245, i64 %250)
  br label %356

252:                                              ; preds = %172
  %253 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %254 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* @REG_DATA, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %307, label %259

259:                                              ; preds = %252
  %260 = load i32, i32* @BLOCK_COUNT_MASK, align 4
  %261 = and i32 65536, %260
  %262 = load i32, i32* %6, align 4
  %263 = load i32, i32* @BLOCK_SIZE_MASK, align 4
  %264 = and i32 %262, %263
  %265 = or i32 %261, %264
  %266 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %267 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %266, i32 0, i32 2
  %268 = load i64, i64* %267, align 8
  %269 = load i64, i64* @BLOCK, align 8
  %270 = add nsw i64 %268, %269
  %271 = call i32 @writel(i32 %265, i64 %270)
  %272 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %273 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %272, i32 0, i32 2
  %274 = load i64, i64* %273, align 8
  %275 = load i64, i64* @INT_STATUS_ENABLE, align 8
  %276 = add nsw i64 %274, %275
  %277 = call i32 @readl(i64 %276)
  store i32 %277, i32* %8, align 4
  %278 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %279 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %278, i32 0, i32 3
  %280 = load %struct.TYPE_7__*, %struct.TYPE_7__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %280, i32 0, i32 2
  %282 = load i64, i64* %281, align 8
  %283 = load i64, i64* @READ, align 8
  %284 = icmp eq i64 %282, %283
  br i1 %284, label %285, label %287

285:                                              ; preds = %259
  %286 = load i32, i32* @INT_STATUS_FIFO_RRDY, align 4
  br label %289

287:                                              ; preds = %259
  %288 = load i32, i32* @INT_STATUS_FIFO_WRDY, align 4
  br label %289

289:                                              ; preds = %287, %285
  %290 = phi i32 [ %286, %285 ], [ %288, %287 ]
  %291 = load i32, i32* %8, align 4
  %292 = or i32 %291, %290
  store i32 %292, i32* %8, align 4
  %293 = load i32, i32* %8, align 4
  %294 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %295 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %294, i32 0, i32 2
  %296 = load i64, i64* %295, align 8
  %297 = load i64, i64* @INT_STATUS_ENABLE, align 8
  %298 = add nsw i64 %296, %297
  %299 = call i32 @writel(i32 %293, i64 %298)
  %300 = load i32, i32* %8, align 4
  %301 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %302 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %301, i32 0, i32 2
  %303 = load i64, i64* %302, align 8
  %304 = load i64, i64* @INT_SIGNAL_ENABLE, align 8
  %305 = add nsw i64 %303, %304
  %306 = call i32 @writel(i32 %300, i64 %305)
  br label %355

307:                                              ; preds = %252
  %308 = load i32, i32* @TPC_DATA_SEL, align 4
  %309 = or i32 %308, 15
  %310 = xor i32 %309, -1
  %311 = load i32, i32* %7, align 4
  %312 = and i32 %311, %310
  store i32 %312, i32* %7, align 4
  %313 = load i32, i32* @REG_DATA, align 4
  %314 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %315 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = or i32 %316, %313
  store i32 %317, i32* %315, align 8
  %318 = load i32, i32* %6, align 4
  %319 = and i32 %318, 15
  %320 = load i32, i32* %7, align 4
  %321 = or i32 %320, %319
  store i32 %321, i32* %7, align 4
  %322 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %323 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %322, i32 0, i32 3
  %324 = load %struct.TYPE_7__*, %struct.TYPE_7__** %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %324, i32 0, i32 2
  %326 = load i64, i64* %325, align 8
  %327 = load i64, i64* @WRITE, align 8
  %328 = icmp eq i64 %326, %327
  br i1 %328, label %329, label %354

329:                                              ; preds = %307
  %330 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %331 = call i32 @jmb38x_ms_transfer_data(%struct.jmb38x_ms_host* %330)
  %332 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %333 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %332, i32 0, i32 1
  %334 = load i32*, i32** %333, align 8
  %335 = getelementptr inbounds i32, i32* %334, i64 0
  %336 = load i32, i32* %335, align 4
  %337 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %338 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %337, i32 0, i32 2
  %339 = load i64, i64* %338, align 8
  %340 = load i64, i64* @TPC_P0, align 8
  %341 = add nsw i64 %339, %340
  %342 = call i32 @writel(i32 %336, i64 %341)
  %343 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %344 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %343, i32 0, i32 1
  %345 = load i32*, i32** %344, align 8
  %346 = getelementptr inbounds i32, i32* %345, i64 1
  %347 = load i32, i32* %346, align 4
  %348 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %349 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %348, i32 0, i32 2
  %350 = load i64, i64* %349, align 8
  %351 = load i64, i64* @TPC_P1, align 8
  %352 = add nsw i64 %350, %351
  %353 = call i32 @writel(i32 %347, i64 %352)
  br label %354

354:                                              ; preds = %329, %307
  br label %355

355:                                              ; preds = %354, %289
  br label %356

356:                                              ; preds = %355, %216
  %357 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %358 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %357, i32 0, i32 5
  %359 = load i64, i64* @jiffies, align 8
  %360 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %361 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %360, i32 0, i32 4
  %362 = load i64, i64* %361, align 8
  %363 = add nsw i64 %359, %362
  %364 = call i32 @mod_timer(i32* %358, i64 %363)
  %365 = load i32, i32* @HOST_CONTROL_LED, align 4
  %366 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %367 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %366, i32 0, i32 2
  %368 = load i64, i64* %367, align 8
  %369 = load i64, i64* @HOST_CONTROL, align 8
  %370 = add nsw i64 %368, %369
  %371 = call i32 @readl(i64 %370)
  %372 = or i32 %365, %371
  %373 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %374 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %373, i32 0, i32 2
  %375 = load i64, i64* %374, align 8
  %376 = load i64, i64* @HOST_CONTROL, align 8
  %377 = add nsw i64 %375, %376
  %378 = call i32 @writel(i32 %372, i64 %377)
  %379 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %380 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %379, i32 0, i32 3
  %381 = load %struct.TYPE_7__*, %struct.TYPE_7__** %380, align 8
  %382 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %381, i32 0, i32 0
  store i32 0, i32* %382, align 8
  %383 = load i32, i32* %7, align 4
  %384 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %385 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %384, i32 0, i32 2
  %386 = load i64, i64* %385, align 8
  %387 = load i64, i64* @TPC, align 8
  %388 = add nsw i64 %386, %387
  %389 = call i32 @writel(i32 %383, i64 %388)
  %390 = load %struct.memstick_host*, %struct.memstick_host** %3, align 8
  %391 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %390, i32 0, i32 0
  %392 = load i32, i32* %7, align 4
  %393 = load i32, i32* %6, align 4
  %394 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %391, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %392, i32 %393)
  store i32 0, i32* %2, align 4
  br label %395

395:                                              ; preds = %356, %204, %20
  %396 = load i32, i32* %2, align 4
  ret i32 %396
}

declare dso_local %struct.jmb38x_ms_host* @memstick_priv(%struct.memstick_host*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @pci_map_sg(i32, %struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @sg_dma_len(%struct.TYPE_8__*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @sg_dma_address(%struct.TYPE_8__*) #1

declare dso_local i32 @jmb38x_ms_transfer_data(%struct.jmb38x_ms_host*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
