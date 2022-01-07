; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-floppy.c_idefloppy_create_rw_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-floppy.c_idefloppy_create_rw_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.ide_disk_obj* }
%struct.ide_disk_obj = type { i64 }
%struct.ide_atapi_pc = type { i32, %struct.request*, i32* }
%struct.request = type { i32, i32 }

@IDE_DBG_FUNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"block: %d, blocks: %d\00", align 1
@READ = common dso_local global i32 0, align 4
@GPCMD_READ_10 = common dso_local global i32 0, align 4
@GPCMD_WRITE_10 = common dso_local global i32 0, align 4
@REQ_WRITE = common dso_local global i32 0, align 4
@PC_FLAG_WRITING = common dso_local global i32 0, align 4
@PC_FLAG_DMA_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, %struct.ide_atapi_pc*, %struct.request*, i64)* @idefloppy_create_rw_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idefloppy_create_rw_cmd(%struct.TYPE_3__* %0, %struct.ide_atapi_pc* %1, %struct.request* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.ide_atapi_pc*, align 8
  %7 = alloca %struct.request*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ide_disk_obj*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store %struct.ide_atapi_pc* %1, %struct.ide_atapi_pc** %6, align 8
  store %struct.request* %2, %struct.request** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.ide_disk_obj*, %struct.ide_disk_obj** %14, align 8
  store %struct.ide_disk_obj* %15, %struct.ide_disk_obj** %9, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load %struct.ide_disk_obj*, %struct.ide_disk_obj** %9, align 8
  %18 = getelementptr inbounds %struct.ide_disk_obj, %struct.ide_disk_obj* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = udiv i64 %16, %19
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %10, align 4
  %22 = load %struct.request*, %struct.request** %7, align 8
  %23 = call i32 @blk_rq_sectors(%struct.request* %22)
  %24 = sext i32 %23 to i64
  %25 = load %struct.ide_disk_obj*, %struct.ide_disk_obj** %9, align 8
  %26 = getelementptr inbounds %struct.ide_disk_obj, %struct.ide_disk_obj* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = udiv i64 %24, %27
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %11, align 4
  %30 = load %struct.request*, %struct.request** %7, align 8
  %31 = call i32 @rq_data_dir(%struct.request* %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* @IDE_DBG_FUNC, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @ide_debug_log(i32 %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34)
  %36 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %6, align 8
  %37 = call i32 @ide_init_pc(%struct.ide_atapi_pc* %36)
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* @READ, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %4
  %42 = load i32, i32* @GPCMD_READ_10, align 4
  br label %45

43:                                               ; preds = %4
  %44 = load i32, i32* @GPCMD_WRITE_10, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  %47 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %6, align 8
  %48 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  store i32 %46, i32* %50, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @cpu_to_be16(i32 %51)
  %53 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %6, align 8
  %54 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 7
  %57 = bitcast i32* %56 to i16*
  %58 = call i32 (i32, ...) @put_unaligned(i32 %52, i16* %57)
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @cpu_to_be32(i32 %59)
  %61 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %6, align 8
  %62 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  %65 = call i32 (i32, ...) @put_unaligned(i32 %60, i32* %64)
  %66 = load %struct.request*, %struct.request** %7, align 8
  %67 = getelementptr inbounds %struct.request, %struct.request* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %6, align 8
  %70 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @memcpy(i32 %68, i32* %71, i32 12)
  %73 = load %struct.request*, %struct.request** %7, align 8
  %74 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %6, align 8
  %75 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %74, i32 0, i32 1
  store %struct.request* %73, %struct.request** %75, align 8
  %76 = load %struct.request*, %struct.request** %7, align 8
  %77 = getelementptr inbounds %struct.request, %struct.request* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @REQ_WRITE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %45
  %83 = load i32, i32* @PC_FLAG_WRITING, align 4
  %84 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %6, align 8
  %85 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 8
  br label %88

88:                                               ; preds = %82, %45
  %89 = load i32, i32* @PC_FLAG_DMA_OK, align 4
  %90 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %6, align 8
  %91 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 8
  ret void
}

declare dso_local i32 @blk_rq_sectors(%struct.request*) #1

declare dso_local i32 @rq_data_dir(%struct.request*) #1

declare dso_local i32 @ide_debug_log(i32, i8*, i32, i32) #1

declare dso_local i32 @ide_init_pc(%struct.ide_atapi_pc*) #1

declare dso_local i32 @put_unaligned(i32, ...) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
