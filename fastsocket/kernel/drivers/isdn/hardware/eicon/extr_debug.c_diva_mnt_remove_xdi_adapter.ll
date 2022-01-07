; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_debug.c_diva_mnt_remove_xdi_adapter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_debug.c_diva_mnt_remove_xdi_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_13__, i32*, i64, i32*, i32*, %struct.TYPE_10__* }
%struct.TYPE_13__ = type { i8* }
%struct.TYPE_10__ = type { i32, i32 (i32)* }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { i32, i64, i64, i32, i32, i8*, i8*, i64 }

@dbg_adapter_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"read\00", align 1
@dbg_q_lock = common dso_local global i32 0, align 4
@clients = common dso_local global %struct.TYPE_14__* null, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"DIMAINT - drv # %d = '%s' de-registered\00", align 1
@dbg_queue = common dso_local global i32 0, align 4
@dbg_sequence = common dso_local global i32 0, align 4
@MSG_TYPE_STRING = common dso_local global i32 0, align 4
@DLI_REG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"read_ack\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @diva_mnt_remove_xdi_adapter(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca [256 x i8], align 16
  %12 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  store i32* null, i32** %9, align 8
  %13 = call i32 @diva_os_get_time(i8** %5, i8** %6)
  %14 = call i32 @diva_os_enter_spin_lock(i32* @dbg_adapter_lock, i32* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @diva_os_enter_spin_lock(i32* @dbg_q_lock, i32* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %16

16:                                               ; preds = %202, %1
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** @clients, align 8
  %19 = call i32 @ARRAY_SIZE(%struct.TYPE_14__* %18)
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %205

21:                                               ; preds = %16
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** @clients, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 4
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %201

29:                                               ; preds = %21
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** @clients, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %35, %38
  br i1 %39, label %40, label %201

40:                                               ; preds = %29
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** @clients, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 6
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = icmp ne %struct.TYPE_10__* %46, null
  br i1 %47, label %48, label %82

48:                                               ; preds = %40
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** @clients, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 6
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i32 (i32)*, i32 (i32)** %55, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** @clients, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 6
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 %56(i32 %64)
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** @clients, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 6
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %70, align 8
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** @clients, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 5
  %76 = load i32*, i32** %75, align 8
  store i32* %76, i32** %9, align 8
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** @clients, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 5
  store i32* null, i32** %81, align 8
  br label %82

82:                                               ; preds = %48, %40
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** @clients, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 4
  store i32* null, i32** %87, align 8
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** @clients, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 3
  store i64 0, i64* %92, align 8
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** @clients, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp sge i32 %98, 0
  br i1 %99, label %100, label %119

100:                                              ; preds = %82
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** @clients, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** @clients, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @diva_free_dma_descriptor(i32* %106, i32 %112)
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** @clients, align 8
  %115 = load i32, i32* %7, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  store i32 -1, i32* %118, align 8
  br label %119

119:                                              ; preds = %100, %82
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** @clients, align 8
  %121 = load i32, i32* %7, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 2
  store i32* null, i32** %124, align 8
  %125 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %126 = load i32, i32* %7, align 4
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** @clients, align 8
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 @sprintf(i8* %125, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %126, i8* %133)
  store i32 %134, i32* %12, align 4
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** @clients, align 8
  %136 = load i32, i32* %7, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 1
  %140 = call i32 @memset(%struct.TYPE_13__* %139, i32 0, i32 8)
  br label %141

141:                                              ; preds = %161, %119
  %142 = load i32, i32* @dbg_queue, align 4
  %143 = load i32, i32* %12, align 4
  %144 = add nsw i32 %143, 1
  %145 = sext i32 %144 to i64
  %146 = add i64 %145, 56
  %147 = trunc i64 %146 to i32
  %148 = call i64 @queueAllocMsg(i32 %142, i32 %147)
  %149 = inttoptr i64 %148 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %149, %struct.TYPE_11__** %10, align 8
  %150 = icmp ne %struct.TYPE_11__* %149, null
  %151 = xor i1 %150, true
  br i1 %151, label %152, label %162

152:                                              ; preds = %141
  %153 = load i32, i32* @dbg_queue, align 4
  %154 = call i64 @queuePeekMsg(i32 %153, i32* %8)
  %155 = inttoptr i64 %154 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %155, %struct.TYPE_11__** %10, align 8
  %156 = icmp ne %struct.TYPE_11__* %155, null
  br i1 %156, label %157, label %160

157:                                              ; preds = %152
  %158 = load i32, i32* @dbg_queue, align 4
  %159 = call i32 @queueFreeMsg(i32 %158)
  br label %161

160:                                              ; preds = %152
  br label %162

161:                                              ; preds = %157
  br label %141

162:                                              ; preds = %160, %141
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %164 = icmp ne %struct.TYPE_11__* %163, null
  br i1 %164, label %165, label %200

165:                                              ; preds = %162
  %166 = load i32, i32* @dbg_sequence, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* @dbg_sequence, align 4
  %168 = sext i32 %166 to i64
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 7
  store i64 %168, i64* %170, align 8
  %171 = load i8*, i8** %5, align 8
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 6
  store i8* %171, i8** %173, align 8
  %174 = load i8*, i8** %6, align 8
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 5
  store i8* %174, i8** %176, align 8
  %177 = load i32, i32* @MSG_TYPE_STRING, align 4
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 4
  store i32 %177, i32* %179, align 4
  %180 = load i32, i32* @DLI_REG, align 4
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 3
  store i32 %180, i32* %182, align 8
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 2
  store i64 0, i64* %184, align 8
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 1
  store i64 0, i64* %186, align 8
  %187 = load i32, i32* %12, align 4
  %188 = add nsw i32 %187, 1
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 0
  store i32 %188, i32* %190, align 8
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i64 1
  %193 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %194 = load i32, i32* %12, align 4
  %195 = add nsw i32 %194, 1
  %196 = call i32 @memcpy(%struct.TYPE_11__* %192, i8* %193, i32 %195)
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %198 = call i32 @queueCompleteMsg(%struct.TYPE_11__* %197)
  %199 = call i32 (...) @diva_maint_wakeup_read()
  br label %200

200:                                              ; preds = %165, %162
  br label %205

201:                                              ; preds = %29, %21
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %7, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %7, align 4
  br label %16

205:                                              ; preds = %200, %16
  %206 = call i32 @diva_os_leave_spin_lock(i32* @dbg_q_lock, i32* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %207 = call i32 @diva_os_leave_spin_lock(i32* @dbg_adapter_lock, i32* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %208 = load i32*, i32** %9, align 8
  %209 = icmp ne i32* %208, null
  br i1 %209, label %210, label %213

210:                                              ; preds = %205
  %211 = load i32*, i32** %9, align 8
  %212 = call i32 @diva_os_free(i32 0, i32* %211)
  br label %213

213:                                              ; preds = %210, %205
  ret void
}

declare dso_local i32 @diva_os_get_time(i8**, i8**) #1

declare dso_local i32 @diva_os_enter_spin_lock(i32*, i32*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_14__*) #1

declare dso_local i32 @diva_free_dma_descriptor(i32*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i64 @queueAllocMsg(i32, i32) #1

declare dso_local i64 @queuePeekMsg(i32, i32*) #1

declare dso_local i32 @queueFreeMsg(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32 @queueCompleteMsg(%struct.TYPE_11__*) #1

declare dso_local i32 @diva_maint_wakeup_read(...) #1

declare dso_local i32 @diva_os_leave_spin_lock(i32*, i32*, i8*) #1

declare dso_local i32 @diva_os_free(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
