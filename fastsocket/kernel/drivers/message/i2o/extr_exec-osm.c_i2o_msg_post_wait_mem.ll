; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_exec-osm.c_i2o_msg_post_wait_mem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_exec-osm.c_i2o_msg_post_wait_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.i2o_controller = type { i32 }
%struct.i2o_message = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.i2o_dma = type { i32* }
%struct.i2o_exec_wait = type { i32, i32, %struct.TYPE_7__*, i64, i32*, i32, i32, %struct.i2o_dma }
%struct.TYPE_7__ = type { i32* }

@wq = common dso_local global i32 0, align 4
@i2o_msg_post_wait_mem.tcntxt = internal global i32 -2147483648, align 4
@ENOMEM = common dso_local global i32 0, align 4
@i2o_exec_driver = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@i2o_exec_wait_list = common dso_local global i32 0, align 4
@HZ = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2o_msg_post_wait_mem(%struct.i2o_controller* %0, %struct.i2o_message* %1, i64 %2, %struct.i2o_dma* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2o_controller*, align 8
  %7 = alloca %struct.i2o_message*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.i2o_dma*, align 8
  %10 = alloca %struct.i2o_exec_wait*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.i2o_controller* %0, %struct.i2o_controller** %6, align 8
  store %struct.i2o_message* %1, %struct.i2o_message** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.i2o_dma* %3, %struct.i2o_dma** %9, align 8
  %13 = load i32, i32* @wq, align 4
  %14 = call i32 @DECLARE_WAIT_QUEUE_HEAD_ONSTACK(i32 %13)
  store i32 0, i32* %12, align 4
  %15 = call %struct.i2o_exec_wait* (...) @i2o_exec_wait_alloc()
  store %struct.i2o_exec_wait* %15, %struct.i2o_exec_wait** %10, align 8
  %16 = load %struct.i2o_exec_wait*, %struct.i2o_exec_wait** %10, align 8
  %17 = icmp ne %struct.i2o_exec_wait* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %4
  %19 = load %struct.i2o_controller*, %struct.i2o_controller** %6, align 8
  %20 = load %struct.i2o_message*, %struct.i2o_message** %7, align 8
  %21 = call i32 @i2o_msg_nop(%struct.i2o_controller* %19, %struct.i2o_message* %20)
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %120

24:                                               ; preds = %4
  %25 = load i32, i32* @i2o_msg_post_wait_mem.tcntxt, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 -2147483648, i32* @i2o_msg_post_wait_mem.tcntxt, align 4
  br label %28

28:                                               ; preds = %27, %24
  %29 = load %struct.i2o_dma*, %struct.i2o_dma** %9, align 8
  %30 = icmp ne %struct.i2o_dma* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load %struct.i2o_exec_wait*, %struct.i2o_exec_wait** %10, align 8
  %33 = getelementptr inbounds %struct.i2o_exec_wait, %struct.i2o_exec_wait* %32, i32 0, i32 7
  %34 = load %struct.i2o_dma*, %struct.i2o_dma** %9, align 8
  %35 = bitcast %struct.i2o_dma* %33 to i8*
  %36 = bitcast %struct.i2o_dma* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 %36, i64 8, i1 false)
  br label %37

37:                                               ; preds = %31, %28
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i2o_exec_driver, i32 0, i32 0), align 4
  %39 = call i8* @cpu_to_le32(i32 %38)
  %40 = load %struct.i2o_message*, %struct.i2o_message** %7, align 8
  %41 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  store i8* %39, i8** %43, align 8
  %44 = load i32, i32* @i2o_msg_post_wait_mem.tcntxt, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* @i2o_msg_post_wait_mem.tcntxt, align 4
  %46 = load %struct.i2o_exec_wait*, %struct.i2o_exec_wait** %10, align 8
  %47 = getelementptr inbounds %struct.i2o_exec_wait, %struct.i2o_exec_wait* %46, i32 0, i32 6
  store i32 %44, i32* %47, align 4
  %48 = load %struct.i2o_exec_wait*, %struct.i2o_exec_wait** %10, align 8
  %49 = getelementptr inbounds %struct.i2o_exec_wait, %struct.i2o_exec_wait* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @cpu_to_le32(i32 %50)
  %52 = load %struct.i2o_message*, %struct.i2o_message** %7, align 8
  %53 = getelementptr inbounds %struct.i2o_message, %struct.i2o_message* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store i8* %51, i8** %55, align 8
  %56 = load %struct.i2o_exec_wait*, %struct.i2o_exec_wait** %10, align 8
  %57 = getelementptr inbounds %struct.i2o_exec_wait, %struct.i2o_exec_wait* %56, i32 0, i32 4
  store i32* @wq, i32** %57, align 8
  %58 = load %struct.i2o_exec_wait*, %struct.i2o_exec_wait** %10, align 8
  %59 = getelementptr inbounds %struct.i2o_exec_wait, %struct.i2o_exec_wait* %58, i32 0, i32 5
  %60 = call i32 @list_add(i32* %59, i32* @i2o_exec_wait_list)
  %61 = load %struct.i2o_controller*, %struct.i2o_controller** %6, align 8
  %62 = load %struct.i2o_message*, %struct.i2o_message** %7, align 8
  %63 = call i32 @i2o_msg_post(%struct.i2o_controller* %61, %struct.i2o_message* %62)
  %64 = load i32, i32* @wq, align 4
  %65 = load %struct.i2o_exec_wait*, %struct.i2o_exec_wait** %10, align 8
  %66 = getelementptr inbounds %struct.i2o_exec_wait, %struct.i2o_exec_wait* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* @HZ, align 8
  %70 = mul i64 %68, %69
  %71 = call i32 @wait_event_interruptible_timeout(i32 %64, i64 %67, i64 %70)
  %72 = load %struct.i2o_exec_wait*, %struct.i2o_exec_wait** %10, align 8
  %73 = getelementptr inbounds %struct.i2o_exec_wait, %struct.i2o_exec_wait* %72, i32 0, i32 1
  %74 = load i64, i64* %11, align 8
  %75 = call i32 @spin_lock_irqsave(i32* %73, i64 %74)
  %76 = load %struct.i2o_exec_wait*, %struct.i2o_exec_wait** %10, align 8
  %77 = getelementptr inbounds %struct.i2o_exec_wait, %struct.i2o_exec_wait* %76, i32 0, i32 4
  store i32* null, i32** %77, align 8
  %78 = load %struct.i2o_exec_wait*, %struct.i2o_exec_wait** %10, align 8
  %79 = getelementptr inbounds %struct.i2o_exec_wait, %struct.i2o_exec_wait* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %37
  %83 = load %struct.i2o_exec_wait*, %struct.i2o_exec_wait** %10, align 8
  %84 = getelementptr inbounds %struct.i2o_exec_wait, %struct.i2o_exec_wait* %83, i32 0, i32 2
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @le32_to_cpu(i32 %89)
  %91 = ashr i32 %90, 24
  store i32 %91, i32* %12, align 4
  br label %101

92:                                               ; preds = %37
  %93 = load %struct.i2o_dma*, %struct.i2o_dma** %9, align 8
  %94 = icmp ne %struct.i2o_dma* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load %struct.i2o_dma*, %struct.i2o_dma** %9, align 8
  %97 = getelementptr inbounds %struct.i2o_dma, %struct.i2o_dma* %96, i32 0, i32 0
  store i32* null, i32** %97, align 8
  br label %98

98:                                               ; preds = %95, %92
  %99 = load i32, i32* @ETIMEDOUT, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %12, align 4
  br label %101

101:                                              ; preds = %98, %82
  %102 = load %struct.i2o_exec_wait*, %struct.i2o_exec_wait** %10, align 8
  %103 = getelementptr inbounds %struct.i2o_exec_wait, %struct.i2o_exec_wait* %102, i32 0, i32 1
  %104 = load i64, i64* %11, align 8
  %105 = call i32 @spin_unlock_irqrestore(i32* %103, i64 %104)
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* @ETIMEDOUT, align 4
  %108 = sub nsw i32 0, %107
  %109 = icmp ne i32 %106, %108
  br i1 %109, label %110, label %118

110:                                              ; preds = %101
  %111 = load %struct.i2o_controller*, %struct.i2o_controller** %6, align 8
  %112 = load %struct.i2o_exec_wait*, %struct.i2o_exec_wait** %10, align 8
  %113 = getelementptr inbounds %struct.i2o_exec_wait, %struct.i2o_exec_wait* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @i2o_flush_reply(%struct.i2o_controller* %111, i32 %114)
  %116 = load %struct.i2o_exec_wait*, %struct.i2o_exec_wait** %10, align 8
  %117 = call i32 @i2o_exec_wait_free(%struct.i2o_exec_wait* %116)
  br label %118

118:                                              ; preds = %110, %101
  %119 = load i32, i32* %12, align 4
  store i32 %119, i32* %5, align 4
  br label %120

120:                                              ; preds = %118, %18
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

declare dso_local i32 @DECLARE_WAIT_QUEUE_HEAD_ONSTACK(i32) #1

declare dso_local %struct.i2o_exec_wait* @i2o_exec_wait_alloc(...) #1

declare dso_local i32 @i2o_msg_nop(%struct.i2o_controller*, %struct.i2o_message*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @i2o_msg_post(%struct.i2o_controller*, %struct.i2o_message*) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i64, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @i2o_flush_reply(%struct.i2o_controller*, i32) #1

declare dso_local i32 @i2o_exec_wait_free(%struct.i2o_exec_wait*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
