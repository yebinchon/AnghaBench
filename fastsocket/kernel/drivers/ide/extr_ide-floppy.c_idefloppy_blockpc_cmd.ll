; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-floppy.c_idefloppy_blockpc_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-floppy.c_idefloppy_blockpc_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ide_disk_obj = type { i32 }
%struct.ide_atapi_pc = type { i32, %struct.request*, i32 }
%struct.request = type { i32 }

@PC_FLAG_DMA_OK = common dso_local global i32 0, align 4
@WRITE = common dso_local global i64 0, align 8
@PC_FLAG_WRITING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ide_disk_obj*, %struct.ide_atapi_pc*, %struct.request*)* @idefloppy_blockpc_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idefloppy_blockpc_cmd(%struct.ide_disk_obj* %0, %struct.ide_atapi_pc* %1, %struct.request* %2) #0 {
  %4 = alloca %struct.ide_disk_obj*, align 8
  %5 = alloca %struct.ide_atapi_pc*, align 8
  %6 = alloca %struct.request*, align 8
  store %struct.ide_disk_obj* %0, %struct.ide_disk_obj** %4, align 8
  store %struct.ide_atapi_pc* %1, %struct.ide_atapi_pc** %5, align 8
  store %struct.request* %2, %struct.request** %6, align 8
  %7 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %5, align 8
  %8 = call i32 @ide_init_pc(%struct.ide_atapi_pc* %7)
  %9 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %5, align 8
  %10 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.request*, %struct.request** %6, align 8
  %13 = getelementptr inbounds %struct.request, %struct.request* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @memcpy(i32 %11, i32 %14, i32 4)
  %16 = load %struct.request*, %struct.request** %6, align 8
  %17 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %5, align 8
  %18 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %17, i32 0, i32 1
  store %struct.request* %16, %struct.request** %18, align 8
  %19 = load %struct.request*, %struct.request** %6, align 8
  %20 = call i64 @blk_rq_bytes(%struct.request* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %3
  %23 = load i32, i32* @PC_FLAG_DMA_OK, align 4
  %24 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %5, align 8
  %25 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load %struct.request*, %struct.request** %6, align 8
  %29 = call i64 @rq_data_dir(%struct.request* %28)
  %30 = load i64, i64* @WRITE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %22
  %33 = load i32, i32* @PC_FLAG_WRITING, align 4
  %34 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %5, align 8
  %35 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 8
  br label %38

38:                                               ; preds = %32, %22
  br label %39

39:                                               ; preds = %38, %3
  ret void
}

declare dso_local i32 @ide_init_pc(%struct.ide_atapi_pc*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @blk_rq_bytes(%struct.request*) #1

declare dso_local i64 @rq_data_dir(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
