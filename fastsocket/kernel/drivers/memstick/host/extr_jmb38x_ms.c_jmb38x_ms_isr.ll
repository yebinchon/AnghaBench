; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/host/extr_jmb38x_ms.c_jmb38x_ms_isr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/host/extr_jmb38x_ms.c_jmb38x_ms_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memstick_host = type { i32 }
%struct.jmb38x_ms_host = type { i32, i32, i32, %struct.TYPE_6__*, i64, %struct.TYPE_5__*, i8** }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@INT_STATUS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"irq_status = %08x\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@INT_STATUS_ANY_ERR = common dso_local global i32 0, align 4
@INT_STATUS_CRC_ERR = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@DMA_DATA = common dso_local global i32 0, align 4
@INT_STATUS_EOTRAN = common dso_local global i32 0, align 4
@FIFO_READY = common dso_local global i32 0, align 4
@INT_STATUS_FIFO_RRDY = common dso_local global i32 0, align 4
@INT_STATUS_FIFO_WRDY = common dso_local global i32 0, align 4
@INT_STATUS_EOTPC = common dso_local global i32 0, align 4
@CMD_READY = common dso_local global i32 0, align 4
@REG_DATA = common dso_local global i32 0, align 4
@READ = common dso_local global i64 0, align 8
@TPC_P0 = common dso_local global i64 0, align 8
@TPC_P1 = common dso_local global i64 0, align 8
@INT_STATUS_MEDIA_IN = common dso_local global i32 0, align 4
@INT_STATUS_MEDIA_OUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"media changed\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @jmb38x_ms_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jmb38x_ms_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.memstick_host*, align 8
  %7 = alloca %struct.jmb38x_ms_host*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.memstick_host*
  store %struct.memstick_host* %10, %struct.memstick_host** %6, align 8
  %11 = load %struct.memstick_host*, %struct.memstick_host** %6, align 8
  %12 = call %struct.jmb38x_ms_host* @memstick_priv(%struct.memstick_host* %11)
  store %struct.jmb38x_ms_host* %12, %struct.jmb38x_ms_host** %7, align 8
  %13 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %7, align 8
  %14 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %13, i32 0, i32 2
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %7, align 8
  %17 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @INT_STATUS, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i8* @readl(i64 %20)
  %22 = ptrtoint i8* %21 to i32
  store i32 %22, i32* %8, align 4
  %23 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %7, align 8
  %24 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %23, i32 0, i32 5
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %8, align 4
  %30 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %28, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %8, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %2
  %34 = load i32, i32* %8, align 4
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %41

36:                                               ; preds = %33, %2
  %37 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %7, align 8
  %38 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %37, i32 0, i32 2
  %39 = call i32 @spin_unlock(i32* %38)
  %40 = load i32, i32* @IRQ_NONE, align 4
  store i32 %40, i32* %3, align 4
  br label %231

41:                                               ; preds = %33
  %42 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %7, align 8
  %43 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %42, i32 0, i32 3
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = icmp ne %struct.TYPE_6__* %44, null
  br i1 %45, label %46, label %173

46:                                               ; preds = %41
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @INT_STATUS_ANY_ERR, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %46
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @INT_STATUS_CRC_ERR, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load i32, i32* @EILSEQ, align 4
  %58 = sub nsw i32 0, %57
  %59 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %7, align 8
  %60 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %59, i32 0, i32 3
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  store i32 %58, i32* %62, align 8
  br label %70

63:                                               ; preds = %51
  %64 = load i32, i32* @ETIME, align 4
  %65 = sub nsw i32 0, %64
  %66 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %7, align 8
  %67 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %66, i32 0, i32 3
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  store i32 %65, i32* %69, align 8
  br label %70

70:                                               ; preds = %63, %56
  br label %172

71:                                               ; preds = %46
  %72 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %7, align 8
  %73 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @DMA_DATA, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %71
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @INT_STATUS_EOTRAN, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load i32, i32* @FIFO_READY, align 4
  %85 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %7, align 8
  %86 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 8
  br label %89

89:                                               ; preds = %83, %78
  br label %114

90:                                               ; preds = %71
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @INT_STATUS_FIFO_RRDY, align 4
  %93 = load i32, i32* @INT_STATUS_FIFO_WRDY, align 4
  %94 = or i32 %92, %93
  %95 = and i32 %91, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %90
  %98 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %7, align 8
  %99 = call i32 @jmb38x_ms_transfer_data(%struct.jmb38x_ms_host* %98)
  br label %100

100:                                              ; preds = %97, %90
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* @INT_STATUS_EOTRAN, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %100
  %106 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %7, align 8
  %107 = call i32 @jmb38x_ms_transfer_data(%struct.jmb38x_ms_host* %106)
  %108 = load i32, i32* @FIFO_READY, align 4
  %109 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %7, align 8
  %110 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 8
  br label %113

113:                                              ; preds = %105, %100
  br label %114

114:                                              ; preds = %113, %89
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* @INT_STATUS_EOTPC, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %171

119:                                              ; preds = %114
  %120 = load i32, i32* @CMD_READY, align 4
  %121 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %7, align 8
  %122 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 8
  %125 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %7, align 8
  %126 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @REG_DATA, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %170

131:                                              ; preds = %119
  %132 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %7, align 8
  %133 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %132, i32 0, i32 3
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @READ, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %164

139:                                              ; preds = %131
  %140 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %7, align 8
  %141 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %140, i32 0, i32 4
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @TPC_P0, align 8
  %144 = add nsw i64 %142, %143
  %145 = call i8* @readl(i64 %144)
  %146 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %7, align 8
  %147 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %146, i32 0, i32 6
  %148 = load i8**, i8*** %147, align 8
  %149 = getelementptr inbounds i8*, i8** %148, i64 0
  store i8* %145, i8** %149, align 8
  %150 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %7, align 8
  %151 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %150, i32 0, i32 4
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @TPC_P1, align 8
  %154 = add nsw i64 %152, %153
  %155 = call i8* @readl(i64 %154)
  %156 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %7, align 8
  %157 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %156, i32 0, i32 6
  %158 = load i8**, i8*** %157, align 8
  %159 = getelementptr inbounds i8*, i8** %158, i64 1
  store i8* %155, i8** %159, align 8
  %160 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %7, align 8
  %161 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %160, i32 0, i32 1
  store i32 8, i32* %161, align 4
  %162 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %7, align 8
  %163 = call i32 @jmb38x_ms_transfer_data(%struct.jmb38x_ms_host* %162)
  br label %164

164:                                              ; preds = %139, %131
  %165 = load i32, i32* @FIFO_READY, align 4
  %166 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %7, align 8
  %167 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = or i32 %168, %165
  store i32 %169, i32* %167, align 8
  br label %170

170:                                              ; preds = %164, %119
  br label %171

171:                                              ; preds = %170, %114
  br label %172

172:                                              ; preds = %171, %70
  br label %173

173:                                              ; preds = %172, %41
  %174 = load i32, i32* %8, align 4
  %175 = load i32, i32* @INT_STATUS_MEDIA_IN, align 4
  %176 = load i32, i32* @INT_STATUS_MEDIA_OUT, align 4
  %177 = or i32 %175, %176
  %178 = and i32 %174, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %190

180:                                              ; preds = %173
  %181 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %7, align 8
  %182 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %181, i32 0, i32 5
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 0
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  %187 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %186, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %188 = load %struct.memstick_host*, %struct.memstick_host** %6, align 8
  %189 = call i32 @memstick_detect_change(%struct.memstick_host* %188)
  br label %190

190:                                              ; preds = %180, %173
  %191 = load i32, i32* %8, align 4
  %192 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %7, align 8
  %193 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %192, i32 0, i32 4
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @INT_STATUS, align 8
  %196 = add nsw i64 %194, %195
  %197 = call i32 @writel(i32 %191, i64 %196)
  %198 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %7, align 8
  %199 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %198, i32 0, i32 3
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %199, align 8
  %201 = icmp ne %struct.TYPE_6__* %200, null
  br i1 %201, label %202, label %226

202:                                              ; preds = %190
  %203 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %7, align 8
  %204 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* @CMD_READY, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %216

209:                                              ; preds = %202
  %210 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %7, align 8
  %211 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @FIFO_READY, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %223, label %216

216:                                              ; preds = %209, %202
  %217 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %7, align 8
  %218 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %217, i32 0, i32 3
  %219 = load %struct.TYPE_6__*, %struct.TYPE_6__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %216, %209
  %224 = load %struct.memstick_host*, %struct.memstick_host** %6, align 8
  %225 = call i32 @jmb38x_ms_complete_cmd(%struct.memstick_host* %224, i32 0)
  br label %226

226:                                              ; preds = %223, %216, %190
  %227 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %7, align 8
  %228 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %227, i32 0, i32 2
  %229 = call i32 @spin_unlock(i32* %228)
  %230 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %230, i32* %3, align 4
  br label %231

231:                                              ; preds = %226, %36
  %232 = load i32, i32* %3, align 4
  ret i32 %232
}

declare dso_local %struct.jmb38x_ms_host* @memstick_priv(%struct.memstick_host*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i8* @readl(i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @jmb38x_ms_transfer_data(%struct.jmb38x_ms_host*) #1

declare dso_local i32 @memstick_detect_change(%struct.memstick_host*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @jmb38x_ms_complete_cmd(%struct.memstick_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
