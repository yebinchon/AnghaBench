; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-io.c_execute_drive_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-io.c_execute_drive_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.request = type { i64, %struct.ide_cmd* }
%struct.ide_cmd = type { i64 }

@ATA_PROT_PIO = common dso_local global i64 0, align 8
@ide_stopped = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.request*)* @execute_drive_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @execute_drive_cmd(%struct.TYPE_6__* %0, %struct.request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.ide_cmd*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  %7 = load %struct.request*, %struct.request** %5, align 8
  %8 = getelementptr inbounds %struct.request, %struct.request* %7, i32 0, i32 1
  %9 = load %struct.ide_cmd*, %struct.ide_cmd** %8, align 8
  store %struct.ide_cmd* %9, %struct.ide_cmd** %6, align 8
  %10 = load %struct.ide_cmd*, %struct.ide_cmd** %6, align 8
  %11 = icmp ne %struct.ide_cmd* %10, null
  br i1 %11, label %12, label %31

12:                                               ; preds = %2
  %13 = load %struct.ide_cmd*, %struct.ide_cmd** %6, align 8
  %14 = getelementptr inbounds %struct.ide_cmd, %struct.ide_cmd* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ATA_PROT_PIO, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %12
  %19 = load %struct.ide_cmd*, %struct.ide_cmd** %6, align 8
  %20 = load %struct.request*, %struct.request** %5, align 8
  %21 = call i32 @blk_rq_sectors(%struct.request* %20)
  %22 = shl i32 %21, 9
  %23 = call i32 @ide_init_sg_cmd(%struct.ide_cmd* %19, i32 %22)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %25 = load %struct.ide_cmd*, %struct.ide_cmd** %6, align 8
  %26 = call i32 @ide_map_sg(%struct.TYPE_6__* %24, %struct.ide_cmd* %25)
  br label %27

27:                                               ; preds = %18, %12
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %29 = load %struct.ide_cmd*, %struct.ide_cmd** %6, align 8
  %30 = call i32 @do_rw_taskfile(%struct.TYPE_6__* %28, %struct.ide_cmd* %29)
  store i32 %30, i32* %3, align 4
  br label %39

31:                                               ; preds = %2
  %32 = load %struct.request*, %struct.request** %5, align 8
  %33 = getelementptr inbounds %struct.request, %struct.request* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %35 = load %struct.request*, %struct.request** %5, align 8
  %36 = call i32 @blk_rq_bytes(%struct.request* %35)
  %37 = call i32 @ide_complete_rq(%struct.TYPE_6__* %34, i32 0, i32 %36)
  %38 = load i32, i32* @ide_stopped, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %31, %27
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @ide_init_sg_cmd(%struct.ide_cmd*, i32) #1

declare dso_local i32 @blk_rq_sectors(%struct.request*) #1

declare dso_local i32 @ide_map_sg(%struct.TYPE_6__*, %struct.ide_cmd*) #1

declare dso_local i32 @do_rw_taskfile(%struct.TYPE_6__*, %struct.ide_cmd*) #1

declare dso_local i32 @ide_complete_rq(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @blk_rq_bytes(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
