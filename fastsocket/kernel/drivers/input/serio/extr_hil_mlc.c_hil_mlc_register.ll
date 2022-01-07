; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_hil_mlc.c_hil_mlc_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_hil_mlc.c_hil_mlc_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32*, i64*, i64*, %struct.TYPE_8__*, %struct.serio**, i32, i64, i64, i32, i32, i32, i64, i64 }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_9__* }
%struct.serio = type { %struct.TYPE_8__*, i32, i32, i32, %struct.TYPE_10__, i32, i32 }

@HIL_MLC_DEVMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"HIL_SERIO%d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"HIL%d\00", align 1
@hil_mlc_serio_id = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@hil_mlc_serio_write = common dso_local global i32 0, align 4
@hil_mlc_serio_open = common dso_local global i32 0, align 4
@hil_mlc_serio_close = common dso_local global i32 0, align 4
@hil_mlcs_tasklet = common dso_local global i32 0, align 4
@hil_mlcs_lock = common dso_local global i32 0, align 4
@hil_mlcs = common dso_local global i32 0, align 4
@HILSEN_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hil_mlc_register(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.serio*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %7 = icmp eq %struct.TYPE_9__* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @BUG_ON(i32 %8)
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 15
  store i64 0, i64* %11, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 14
  store i64 0, i64* %13, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 13
  %16 = call i32 @rwlock_init(i32* %15)
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 12
  %19 = call i32 @init_MUTEX(i32* %18)
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 11
  %22 = call i32 @init_MUTEX(i32* %21)
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  store i32 -1, i32* %24, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 10
  store i64 0, i64* %26, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 9
  store i64 0, i64* %28, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 8
  %31 = call i32 @init_MUTEX_LOCKED(i32* %30)
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %33 = call i32 @hil_mlc_clear_di_scratch(%struct.TYPE_9__* %32)
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %35 = call i32 @hil_mlc_clear_di_map(%struct.TYPE_9__* %34, i32 0)
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %124, %1
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @HIL_MLC_DEVMEM, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %127

40:                                               ; preds = %36
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @hil_mlc_copy_di_scratch(%struct.TYPE_9__* %41, i32 %42)
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call %struct.serio* @kzalloc(i32 32, i32 %44)
  store %struct.serio* %45, %struct.serio** %5, align 8
  %46 = load %struct.serio*, %struct.serio** %5, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 7
  %49 = load %struct.serio**, %struct.serio*** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.serio*, %struct.serio** %49, i64 %51
  store %struct.serio* %46, %struct.serio** %52, align 8
  %53 = load %struct.serio*, %struct.serio** %5, align 8
  %54 = getelementptr inbounds %struct.serio, %struct.serio* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @snprintf(i32 %55, i32 3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load %struct.serio*, %struct.serio** %5, align 8
  %59 = getelementptr inbounds %struct.serio, %struct.serio* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @snprintf(i32 %60, i32 3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load %struct.serio*, %struct.serio** %5, align 8
  %64 = getelementptr inbounds %struct.serio, %struct.serio* %63, i32 0, i32 4
  %65 = bitcast %struct.TYPE_10__* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %65, i8* align 4 bitcast (%struct.TYPE_10__* @hil_mlc_serio_id to i8*), i64 4, i1 false)
  %66 = load i32, i32* %3, align 4
  %67 = load %struct.serio*, %struct.serio** %5, align 8
  %68 = getelementptr inbounds %struct.serio, %struct.serio* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 4
  %70 = load i32, i32* @hil_mlc_serio_write, align 4
  %71 = load %struct.serio*, %struct.serio** %5, align 8
  %72 = getelementptr inbounds %struct.serio, %struct.serio* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* @hil_mlc_serio_open, align 4
  %74 = load %struct.serio*, %struct.serio** %5, align 8
  %75 = getelementptr inbounds %struct.serio, %struct.serio* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @hil_mlc_serio_close, align 4
  %77 = load %struct.serio*, %struct.serio** %5, align 8
  %78 = getelementptr inbounds %struct.serio, %struct.serio* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 6
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = load i32, i32* %3, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i64 %83
  %85 = load %struct.serio*, %struct.serio** %5, align 8
  %86 = getelementptr inbounds %struct.serio, %struct.serio* %85, i32 0, i32 0
  store %struct.TYPE_8__* %84, %struct.TYPE_8__** %86, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 6
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = load i32, i32* %3, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 2
  store %struct.TYPE_9__* %87, %struct.TYPE_9__** %94, align 8
  %95 = load i32, i32* %3, align 4
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 6
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = load i32, i32* %3, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  store i32 %95, i32* %102, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 6
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = load i32, i32* %3, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  store i32 -1, i32* %109, align 4
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 5
  %112 = load i64*, i64** %111, align 8
  %113 = load i32, i32* %3, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %112, i64 %114
  store i64 0, i64* %115, align 8
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 4
  %118 = load i64*, i64** %117, align 8
  %119 = load i32, i32* %3, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %118, i64 %120
  store i64 0, i64* %121, align 8
  %122 = load %struct.serio*, %struct.serio** %5, align 8
  %123 = call i32 @serio_register_port(%struct.serio* %122)
  br label %124

124:                                              ; preds = %40
  %125 = load i32, i32* %3, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %3, align 4
  br label %36

127:                                              ; preds = %36
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 3
  store i32* @hil_mlcs_tasklet, i32** %129, align 8
  %130 = load i64, i64* %4, align 8
  %131 = call i32 @write_lock_irqsave(i32* @hil_mlcs_lock, i64 %130)
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 2
  %134 = call i32 @list_add_tail(i32* %133, i32* @hil_mlcs)
  %135 = load i32, i32* @HILSEN_START, align 4
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 4
  %138 = load i64, i64* %4, align 8
  %139 = call i32 @write_unlock_irqrestore(i32* @hil_mlcs_lock, i64 %138)
  %140 = call i32 @tasklet_schedule(i32* @hil_mlcs_tasklet)
  ret i32 0
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @init_MUTEX(i32*) #1

declare dso_local i32 @init_MUTEX_LOCKED(i32*) #1

declare dso_local i32 @hil_mlc_clear_di_scratch(%struct.TYPE_9__*) #1

declare dso_local i32 @hil_mlc_clear_di_map(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @hil_mlc_copy_di_scratch(%struct.TYPE_9__*, i32) #1

declare dso_local %struct.serio* @kzalloc(i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @serio_register_port(%struct.serio*) #1

declare dso_local i32 @write_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
