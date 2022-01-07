; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_block.c_tapeblock_cleanup_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_block.c_tapeblock_cleanup_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { %struct.tape_device* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tapeblock_cleanup_device(%struct.tape_device* %0) #0 {
  %2 = alloca %struct.tape_device*, align 8
  store %struct.tape_device* %0, %struct.tape_device** %2, align 8
  %3 = call i32 (...) @flush_scheduled_work()
  %4 = load %struct.tape_device*, %struct.tape_device** %2, align 8
  %5 = call i8* @tape_put_device(%struct.tape_device* %4)
  %6 = load %struct.tape_device*, %struct.tape_device** %2, align 8
  %7 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = icmp ne %struct.TYPE_6__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %39

12:                                               ; preds = %1
  %13 = load %struct.tape_device*, %struct.tape_device** %2, align 8
  %14 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = call i32 @del_gendisk(%struct.TYPE_6__* %16)
  %18 = load %struct.tape_device*, %struct.tape_device** %2, align 8
  %19 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.tape_device*, %struct.tape_device** %22, align 8
  %24 = call i8* @tape_put_device(%struct.tape_device* %23)
  %25 = bitcast i8* %24 to %struct.tape_device*
  %26 = load %struct.tape_device*, %struct.tape_device** %2, align 8
  %27 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store %struct.tape_device* %25, %struct.tape_device** %30, align 8
  %31 = load %struct.tape_device*, %struct.tape_device** %2, align 8
  %32 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = call i32 @put_disk(%struct.TYPE_6__* %34)
  %36 = load %struct.tape_device*, %struct.tape_device** %2, align 8
  %37 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %38, align 8
  br label %39

39:                                               ; preds = %12, %11
  %40 = load %struct.tape_device*, %struct.tape_device** %2, align 8
  %41 = call i8* @tape_put_device(%struct.tape_device* %40)
  %42 = load %struct.tape_device*, %struct.tape_device** %2, align 8
  %43 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  store i8* %41, i8** %46, align 8
  %47 = load %struct.tape_device*, %struct.tape_device** %2, align 8
  %48 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = call i32 @blk_cleanup_queue(%struct.TYPE_7__* %50)
  %52 = load %struct.tape_device*, %struct.tape_device** %2, align 8
  %53 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %54, align 8
  ret void
}

declare dso_local i32 @flush_scheduled_work(...) #1

declare dso_local i8* @tape_put_device(%struct.tape_device*) #1

declare dso_local i32 @del_gendisk(%struct.TYPE_6__*) #1

declare dso_local i32 @put_disk(%struct.TYPE_6__*) #1

declare dso_local i32 @blk_cleanup_queue(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
