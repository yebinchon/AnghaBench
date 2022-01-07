; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-tape.c_idetape_flush_tape_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-tape.c_idetape_flush_tape_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.ide_tape_obj* }
%struct.ide_tape_obj = type { i32 }
%struct.ide_atapi_pc = type { i32 }

@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @idetape_flush_tape_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idetape_flush_tape_buffers(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.ide_tape_obj*, align 8
  %5 = alloca %struct.ide_atapi_pc, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load %struct.ide_tape_obj*, %struct.ide_tape_obj** %8, align 8
  store %struct.ide_tape_obj* %9, %struct.ide_tape_obj** %4, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = call i32 @idetape_create_write_filemark_cmd(%struct.TYPE_6__* %10, %struct.ide_atapi_pc* %5, i32 0)
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = load %struct.ide_tape_obj*, %struct.ide_tape_obj** %4, align 8
  %14 = getelementptr inbounds %struct.ide_tape_obj, %struct.ide_tape_obj* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ide_queue_pc_tail(%struct.TYPE_6__* %12, i32 %15, %struct.ide_atapi_pc* %5, i32* null, i32 0)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %2, align 4
  br label %26

21:                                               ; preds = %1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = load i32, i32* @HZ, align 4
  %24 = mul nsw i32 300, %23
  %25 = call i32 @idetape_wait_ready(%struct.TYPE_6__* %22, i32 %24)
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %21, %19
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @idetape_create_write_filemark_cmd(%struct.TYPE_6__*, %struct.ide_atapi_pc*, i32) #1

declare dso_local i32 @ide_queue_pc_tail(%struct.TYPE_6__*, i32, %struct.ide_atapi_pc*, i32*, i32) #1

declare dso_local i32 @idetape_wait_ready(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
