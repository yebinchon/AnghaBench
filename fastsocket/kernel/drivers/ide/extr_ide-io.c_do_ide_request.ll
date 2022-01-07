; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-io.c_do_ide_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-io.c_do_ide_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, %struct.request*, %struct.TYPE_11__*, %struct.ide_host*, %struct.TYPE_9__* }
%struct.request = type { i32 }
%struct.ide_host = type { i32, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_10__*, i32)* }

@IDE_DFLAG_SLEEPING = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@IDE_HFLAG_SERIALIZE = common dso_local global i32 0, align 4
@IDE_DFLAG_NIEN_QUIRK = common dso_local global i32 0, align 4
@ATA_NIEN = common dso_local global i32 0, align 4
@ATA_DEVCTL_OBS = common dso_local global i32 0, align 4
@IDE_DFLAG_PARKED = common dso_local global i32 0, align 4
@IDE_DFLAG_BLOCKED = common dso_local global i32 0, align 4
@REQ_PREEMPT = common dso_local global i32 0, align 4
@ide_stopped = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_ide_request(%struct.request_queue* %0) #0 {
  %2 = alloca %struct.request_queue*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.ide_host*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %2, align 8
  %10 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %11 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %10, i32 0, i32 1
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %3, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 3
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %4, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 3
  %18 = load %struct.ide_host*, %struct.ide_host** %17, align 8
  store %struct.ide_host* %18, %struct.ide_host** %5, align 8
  store %struct.request* null, %struct.request** %6, align 8
  %19 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %20 = call i64 @blk_queue_flushing(%struct.request_queue* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %24 = call i32 @blk_remove_plug(%struct.request_queue* %23)
  br label %25

25:                                               ; preds = %22, %1
  %26 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %27 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @spin_unlock_irq(i32* %28)
  %30 = call i32 (...) @might_sleep()
  %31 = load %struct.ide_host*, %struct.ide_host** %5, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %33 = call i64 @ide_lock_host(%struct.ide_host* %31, %struct.TYPE_10__* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  br label %224

36:                                               ; preds = %25
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = call i32 @spin_lock_irq(i32* %38)
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %41 = call i32 @ide_lock_port(%struct.TYPE_10__* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %202, label %43

43:                                               ; preds = %36
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = load %struct.request*, %struct.request** %45, align 8
  %47 = call i32 @WARN_ON_ONCE(%struct.request* %46)
  br label %48

48:                                               ; preds = %195, %43
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 3
  %51 = load %struct.ide_host*, %struct.ide_host** %50, align 8
  %52 = getelementptr inbounds %struct.ide_host, %struct.ide_host* %51, i32 0, i32 1
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  store %struct.TYPE_10__* %53, %struct.TYPE_10__** %8, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @IDE_DFLAG_SLEEPING, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %48
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @jiffies, align 4
  %65 = call i64 @time_after(i32 %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %69 = call i32 @ide_unlock_port(%struct.TYPE_10__* %68)
  br label %218

70:                                               ; preds = %60, %48
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 3
  %73 = load %struct.ide_host*, %struct.ide_host** %72, align 8
  %74 = getelementptr inbounds %struct.ide_host, %struct.ide_host* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @IDE_HFLAG_SERIALIZE, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %119

79:                                               ; preds = %70
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %82 = icmp ne %struct.TYPE_10__* %80, %81
  br i1 %82, label %83, label %119

83:                                               ; preds = %79
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %85 = icmp ne %struct.TYPE_10__* %84, null
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %88, align 8
  br label %91

90:                                               ; preds = %83
  br label %91

91:                                               ; preds = %90, %86
  %92 = phi %struct.TYPE_11__* [ %89, %86 ], [ null, %90 ]
  store %struct.TYPE_11__* %92, %struct.TYPE_11__** %9, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %94 = icmp ne %struct.TYPE_11__* %93, null
  br i1 %94, label %95, label %113

95:                                               ; preds = %91
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @IDE_DFLAG_NIEN_QUIRK, align 4
  %100 = and i32 %98, %99
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %95
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 4
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load i32 (%struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_10__*, i32)** %106, align 8
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %109 = load i32, i32* @ATA_NIEN, align 4
  %110 = load i32, i32* @ATA_DEVCTL_OBS, align 4
  %111 = or i32 %109, %110
  %112 = call i32 %107(%struct.TYPE_10__* %108, i32 %111)
  br label %113

113:                                              ; preds = %102, %95, %91
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 3
  %117 = load %struct.ide_host*, %struct.ide_host** %116, align 8
  %118 = getelementptr inbounds %struct.ide_host, %struct.ide_host* %117, i32 0, i32 1
  store %struct.TYPE_10__* %114, %struct.TYPE_10__** %118, align 8
  br label %119

119:                                              ; preds = %113, %79, %70
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 2
  store %struct.TYPE_11__* %120, %struct.TYPE_11__** %122, align 8
  %123 = load i32, i32* @IDE_DFLAG_SLEEPING, align 4
  %124 = load i32, i32* @IDE_DFLAG_PARKED, align 4
  %125 = or i32 %123, %124
  %126 = xor i32 %125, -1
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = and i32 %129, %126
  store i32 %130, i32* %128, align 8
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = call i32 @spin_unlock_irq(i32* %132)
  %134 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %135 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = call i32 @spin_lock_irq(i32* %136)
  %138 = load %struct.request*, %struct.request** %6, align 8
  %139 = icmp ne %struct.request* %138, null
  br i1 %139, label %145, label %140

140:                                              ; preds = %119
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call %struct.request* @blk_fetch_request(i32 %143)
  store %struct.request* %144, %struct.request** %6, align 8
  br label %145

145:                                              ; preds = %140, %119
  %146 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %147 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = call i32 @spin_unlock_irq(i32* %148)
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = call i32 @spin_lock_irq(i32* %151)
  %153 = load %struct.request*, %struct.request** %6, align 8
  %154 = icmp ne %struct.request* %153, null
  br i1 %154, label %158, label %155

155:                                              ; preds = %145
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %157 = call i32 @ide_unlock_port(%struct.TYPE_10__* %156)
  br label %204

158:                                              ; preds = %145
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @IDE_DFLAG_BLOCKED, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %179

165:                                              ; preds = %158
  %166 = load %struct.request*, %struct.request** %6, align 8
  %167 = call i64 @blk_pm_request(%struct.request* %166)
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %169, label %179

169:                                              ; preds = %165
  %170 = load %struct.request*, %struct.request** %6, align 8
  %171 = getelementptr inbounds %struct.request, %struct.request* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @REQ_PREEMPT, align 4
  %174 = and i32 %172, %173
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %169
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %178 = call i32 @ide_unlock_port(%struct.TYPE_10__* %177)
  br label %218

179:                                              ; preds = %169, %165, %158
  %180 = load %struct.request*, %struct.request** %6, align 8
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 1
  store %struct.request* %180, %struct.request** %182, align 8
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 0
  %185 = call i32 @spin_unlock_irq(i32* %184)
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %187 = load %struct.request*, %struct.request** %6, align 8
  %188 = call i64 @start_request(%struct.TYPE_11__* %186, %struct.request* %187)
  store i64 %188, i64* %7, align 8
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 0
  %191 = call i32 @spin_lock_irq(i32* %190)
  %192 = load i64, i64* %7, align 8
  %193 = load i64, i64* @ide_stopped, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %201

195:                                              ; preds = %179
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 1
  %198 = load %struct.request*, %struct.request** %197, align 8
  store %struct.request* %198, %struct.request** %6, align 8
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 1
  store %struct.request* null, %struct.request** %200, align 8
  br label %48

201:                                              ; preds = %179
  br label %203

202:                                              ; preds = %36
  br label %218

203:                                              ; preds = %201
  br label %204

204:                                              ; preds = %203, %155
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 0
  %207 = call i32 @spin_unlock_irq(i32* %206)
  %208 = load %struct.request*, %struct.request** %6, align 8
  %209 = icmp eq %struct.request* %208, null
  br i1 %209, label %210, label %213

210:                                              ; preds = %204
  %211 = load %struct.ide_host*, %struct.ide_host** %5, align 8
  %212 = call i32 @ide_unlock_host(%struct.ide_host* %211)
  br label %213

213:                                              ; preds = %210, %204
  %214 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %215 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %214, i32 0, i32 0
  %216 = load i32*, i32** %215, align 8
  %217 = call i32 @spin_lock_irq(i32* %216)
  br label %242

218:                                              ; preds = %202, %176, %67
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 0
  %221 = call i32 @spin_unlock_irq(i32* %220)
  %222 = load %struct.ide_host*, %struct.ide_host** %5, align 8
  %223 = call i32 @ide_unlock_host(%struct.ide_host* %222)
  br label %224

224:                                              ; preds = %218, %35
  %225 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %226 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %225, i32 0, i32 0
  %227 = load i32*, i32** %226, align 8
  %228 = call i32 @spin_lock_irq(i32* %227)
  %229 = load %struct.request*, %struct.request** %6, align 8
  %230 = icmp ne %struct.request* %229, null
  br i1 %230, label %231, label %235

231:                                              ; preds = %224
  %232 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %233 = load %struct.request*, %struct.request** %6, align 8
  %234 = call i32 @blk_requeue_request(%struct.request_queue* %232, %struct.request* %233)
  br label %235

235:                                              ; preds = %231, %224
  %236 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %237 = call i32 @elv_queue_empty(%struct.request_queue* %236)
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %242, label %239

239:                                              ; preds = %235
  %240 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %241 = call i32 @blk_plug_device(%struct.request_queue* %240)
  br label %242

242:                                              ; preds = %213, %239, %235
  ret void
}

declare dso_local i64 @blk_queue_flushing(%struct.request_queue*) #1

declare dso_local i32 @blk_remove_plug(%struct.request_queue*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @might_sleep(...) #1

declare dso_local i64 @ide_lock_host(%struct.ide_host*, %struct.TYPE_10__*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @ide_lock_port(%struct.TYPE_10__*) #1

declare dso_local i32 @WARN_ON_ONCE(%struct.request*) #1

declare dso_local i64 @time_after(i32, i32) #1

declare dso_local i32 @ide_unlock_port(%struct.TYPE_10__*) #1

declare dso_local %struct.request* @blk_fetch_request(i32) #1

declare dso_local i64 @blk_pm_request(%struct.request*) #1

declare dso_local i64 @start_request(%struct.TYPE_11__*, %struct.request*) #1

declare dso_local i32 @ide_unlock_host(%struct.ide_host*) #1

declare dso_local i32 @blk_requeue_request(%struct.request_queue*, %struct.request*) #1

declare dso_local i32 @elv_queue_empty(%struct.request_queue*) #1

declare dso_local i32 @blk_plug_device(%struct.request_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
