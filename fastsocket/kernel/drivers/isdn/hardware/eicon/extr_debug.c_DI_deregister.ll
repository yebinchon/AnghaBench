; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_debug.c_DI_deregister.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_debug.c_DI_deregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32*, %struct.TYPE_9__*, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32, i32 (i32)* }
%struct.TYPE_10__ = type { i32, i64, i8*, i32*, i64, i32*, i32*, i32*, i32*, i64 }
%struct.TYPE_11__ = type { i32, i64, i64, i32, i32, i8*, i8*, i64 }

@dbg_adapter_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"read\00", align 1
@dbg_q_lock = common dso_local global i32 0, align 4
@clients = common dso_local global %struct.TYPE_12__* null, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"DIMAINT - drv # %d = '%s' de-registered\00", align 1
@dbg_queue = common dso_local global i32 0, align 4
@dbg_sequence = common dso_local global i32 0, align 4
@MSG_TYPE_STRING = common dso_local global i32 0, align 4
@DLI_REG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"read_ack\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @DI_deregister to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DI_deregister(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
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
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  store i32* null, i32** %9, align 8
  %13 = call i32 @diva_os_get_time(i8** %5, i8** %6)
  %14 = call i32 @diva_os_enter_spin_lock(i32* @dbg_adapter_lock, i32* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @diva_os_enter_spin_lock(i32* @dbg_q_lock, i32* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %16

16:                                               ; preds = %167, %1
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** @clients, align 8
  %19 = call i32 @ARRAY_SIZE(%struct.TYPE_12__* %18)
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %170

21:                                               ; preds = %16
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** @clients, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %29 = icmp eq %struct.TYPE_10__* %27, %28
  br i1 %29, label %30, label %166

30:                                               ; preds = %21
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** @clients, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 2
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %35, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  store i32 -1, i32* %37, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 9
  store i64 0, i64* %39, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 8
  store i32* null, i32** %41, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 7
  store i32* null, i32** %43, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 6
  store i32* null, i32** %45, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %30
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 5
  store i32* null, i32** %52, align 8
  br label %53

53:                                               ; preds = %50, %30
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 4
  store i64 0, i64* %55, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 3
  store i32* null, i32** %57, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** @clients, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = icmp ne %struct.TYPE_9__* %63, null
  br i1 %64, label %65, label %99

65:                                               ; preds = %53
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** @clients, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = load i32 (i32)*, i32 (i32)** %72, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** @clients, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 %73(i32 %81)
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** @clients, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 1
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %87, align 8
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** @clients, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  store i32* %93, i32** %9, align 8
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** @clients, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  store i32* null, i32** %98, align 8
  br label %99

99:                                               ; preds = %65, %53
  %100 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %101 = load i32, i32* %7, align 4
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 2
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @sprintf(i8* %100, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %101, i8* %104)
  store i32 %105, i32* %12, align 4
  br label %106

106:                                              ; preds = %126, %99
  %107 = load i32, i32* @dbg_queue, align 4
  %108 = load i32, i32* %12, align 4
  %109 = add nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = add i64 %110, 56
  %112 = trunc i64 %111 to i32
  %113 = call i64 @queueAllocMsg(i32 %107, i32 %112)
  %114 = inttoptr i64 %113 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %114, %struct.TYPE_11__** %10, align 8
  %115 = icmp ne %struct.TYPE_11__* %114, null
  %116 = xor i1 %115, true
  br i1 %116, label %117, label %127

117:                                              ; preds = %106
  %118 = load i32, i32* @dbg_queue, align 4
  %119 = call i64 @queuePeekMsg(i32 %118, i32* %8)
  %120 = inttoptr i64 %119 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %120, %struct.TYPE_11__** %10, align 8
  %121 = icmp ne %struct.TYPE_11__* %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load i32, i32* @dbg_queue, align 4
  %124 = call i32 @queueFreeMsg(i32 %123)
  br label %126

125:                                              ; preds = %117
  br label %127

126:                                              ; preds = %122
  br label %106

127:                                              ; preds = %125, %106
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %129 = icmp ne %struct.TYPE_11__* %128, null
  br i1 %129, label %130, label %165

130:                                              ; preds = %127
  %131 = load i32, i32* @dbg_sequence, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* @dbg_sequence, align 4
  %133 = sext i32 %131 to i64
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 7
  store i64 %133, i64* %135, align 8
  %136 = load i8*, i8** %5, align 8
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 6
  store i8* %136, i8** %138, align 8
  %139 = load i8*, i8** %6, align 8
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 5
  store i8* %139, i8** %141, align 8
  %142 = load i32, i32* @MSG_TYPE_STRING, align 4
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 4
  store i32 %142, i32* %144, align 4
  %145 = load i32, i32* @DLI_REG, align 4
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 3
  store i32 %145, i32* %147, align 8
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 2
  store i64 0, i64* %149, align 8
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 1
  store i64 0, i64* %151, align 8
  %152 = load i32, i32* %12, align 4
  %153 = add nsw i32 %152, 1
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 8
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i64 1
  %158 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %159 = load i32, i32* %12, align 4
  %160 = add nsw i32 %159, 1
  %161 = call i32 @memcpy(%struct.TYPE_11__* %157, i8* %158, i32 %160)
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %163 = call i32 @queueCompleteMsg(%struct.TYPE_11__* %162)
  %164 = call i32 (...) @diva_maint_wakeup_read()
  br label %165

165:                                              ; preds = %130, %127
  br label %170

166:                                              ; preds = %21
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %7, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %7, align 4
  br label %16

170:                                              ; preds = %165, %16
  %171 = call i32 @diva_os_leave_spin_lock(i32* @dbg_q_lock, i32* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %172 = call i32 @diva_os_leave_spin_lock(i32* @dbg_adapter_lock, i32* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %173 = load i32*, i32** %9, align 8
  %174 = icmp ne i32* %173, null
  br i1 %174, label %175, label %178

175:                                              ; preds = %170
  %176 = load i32*, i32** %9, align 8
  %177 = call i32 @diva_os_free(i32 0, i32* %176)
  br label %178

178:                                              ; preds = %175, %170
  ret void
}

declare dso_local i32 @diva_os_get_time(i8**, i8**) #1

declare dso_local i32 @diva_os_enter_spin_lock(i32*, i32*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_12__*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i8*) #1

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
