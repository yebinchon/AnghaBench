; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/arm/extr_fas216.c_fas216_eh_device_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/arm/extr_fas216.c_fas216_eh_device_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32*, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i32, i32, %struct.scsi_cmnd*, i32, i32, %struct.TYPE_14__, i32, %struct.TYPE_24__*, %struct.TYPE_22__*, %struct.TYPE_20__, %struct.TYPE_18__* }
%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64 }

@FAILED = common dso_local global i32 0, align 4
@LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"device reset for target %d\00", align 1
@fas216_devicereset_done = common dso_local global i64 0, align 8
@PHASE_IDLE = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"device reset complete: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fas216_eh_device_reset(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %8 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %9 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %8, i32 0, i32 1
  %10 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %15, %struct.TYPE_15__** %3, align 8
  %16 = load i32, i32* @FAILED, align 4
  store i32 %16, i32* %6, align 4
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %18 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %17, i32 0, i32 1
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %7, align 4
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %23 = load i32, i32* @LOG_ERROR, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @fas216_log(%struct.TYPE_15__* %22, i32 %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 1
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  br label %30

30:                                               ; preds = %1
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 10
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %32, align 8
  %34 = icmp ne %struct.TYPE_18__* %33, null
  br i1 %34, label %35, label %57

35:                                               ; preds = %30
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %57, label %41

41:                                               ; preds = %35
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 10
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %50 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %49, i32 0, i32 1
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = icmp eq i64 %48, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %41
  br label %172

57:                                               ; preds = %41, %35, %30
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 9
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 1
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @queue_remove_all_target(i32* %60, i32 %61)
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 9
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 0
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @queue_remove_all_target(i32* %65, i32 %66)
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 8
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %69, align 8
  %71 = icmp ne %struct.TYPE_22__* %70, null
  br i1 %71, label %72, label %85

72:                                               ; preds = %57
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 8
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %72
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %84, align 8
  br label %85

85:                                               ; preds = %82, %72, %57
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 7
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %87, align 8
  %89 = icmp ne %struct.TYPE_24__* %88, null
  br i1 %89, label %90, label %103

90:                                               ; preds = %85
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 7
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %7, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %90
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 7
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %102, align 8
  br label %103

103:                                              ; preds = %100, %90, %85
  store i32 0, i32* %5, align 4
  br label %104

104:                                              ; preds = %116, %103
  %105 = load i32, i32* %5, align 4
  %106 = icmp slt i32 %105, 8
  br i1 %106, label %107, label %119

107:                                              ; preds = %104
  %108 = load i32, i32* %7, align 4
  %109 = mul nsw i32 %108, 8
  %110 = load i32, i32* %5, align 4
  %111 = add nsw i32 %109, %110
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 6
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @clear_bit(i32 %111, i32 %114)
  br label %116

116:                                              ; preds = %107
  %117 = load i32, i32* %5, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %5, align 4
  br label %104

119:                                              ; preds = %104
  %120 = load i64, i64* @fas216_devicereset_done, align 8
  %121 = inttoptr i64 %120 to i8*
  %122 = bitcast i8* %121 to i32*
  %123 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %124 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %123, i32 0, i32 0
  store i32* %122, i32** %124, align 8
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 0
  store i32 0, i32* %126, align 8
  %127 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 2
  store %struct.scsi_cmnd* %127, %struct.scsi_cmnd** %129, align 8
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 5
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @PHASE_IDLE, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %119
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %138 = call i32 @fas216_kick(%struct.TYPE_15__* %137)
  br label %139

139:                                              ; preds = %136, %119
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 3
  %142 = load i32, i32* @HZ, align 4
  %143 = mul nsw i32 30, %142
  %144 = call i32 @mod_timer(i32* %141, i32 %143)
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 1
  %147 = load i64, i64* %4, align 8
  %148 = call i32 @spin_unlock_irqrestore(i32* %146, i64 %147)
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @wait_event(i32 %151, i32 %154)
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 3
  %158 = call i32 @del_timer_sync(i32* %157)
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 1
  %161 = load i64, i64* %4, align 8
  %162 = call i32 @spin_lock_irqsave(i32* %160, i64 %161)
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 2
  store %struct.scsi_cmnd* null, %struct.scsi_cmnd** %164, align 8
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = icmp eq i32 %167, 1
  br i1 %168, label %169, label %171

169:                                              ; preds = %139
  %170 = load i32, i32* @SUCCESS, align 4
  store i32 %170, i32* %6, align 4
  br label %171

171:                                              ; preds = %169, %139
  br label %172

172:                                              ; preds = %171, %56
  %173 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %174 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %173, i32 0, i32 0
  store i32* null, i32** %174, align 8
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 1
  %177 = load i64, i64* %4, align 8
  %178 = call i32 @spin_unlock_irqrestore(i32* %176, i64 %177)
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %180 = load i32, i32* @LOG_ERROR, align 4
  %181 = load i32, i32* %6, align 4
  %182 = load i32, i32* @SUCCESS, align 4
  %183 = icmp eq i32 %181, %182
  %184 = zext i1 %183 to i64
  %185 = select i1 %183, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)
  %186 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @fas216_log(%struct.TYPE_15__* %179, i32 %180, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %185)
  %187 = load i32, i32* %6, align 4
  ret i32 %187
}

declare dso_local i32 @fas216_log(%struct.TYPE_15__*, i32, i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @queue_remove_all_target(i32*, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @fas216_kick(%struct.TYPE_15__*) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
