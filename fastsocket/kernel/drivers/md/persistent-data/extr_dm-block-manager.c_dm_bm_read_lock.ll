; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-block-manager.c_dm_bm_read_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-block-manager.c_dm_bm_read_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_block_manager = type { i32 }
%struct.dm_block_validator = type { i32 }
%struct.dm_block = type { i32 }
%struct.buffer_aux = type { i32, i64 }
%struct.dm_buffer = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_bm_read_lock(%struct.dm_block_manager* %0, i32 %1, %struct.dm_block_validator* %2, %struct.dm_block** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dm_block_manager*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dm_block_validator*, align 8
  %9 = alloca %struct.dm_block**, align 8
  %10 = alloca %struct.buffer_aux*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.dm_block_manager* %0, %struct.dm_block_manager** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.dm_block_validator* %2, %struct.dm_block_validator** %8, align 8
  store %struct.dm_block** %3, %struct.dm_block*** %9, align 8
  %13 = load %struct.dm_block_manager*, %struct.dm_block_manager** %6, align 8
  %14 = getelementptr inbounds %struct.dm_block_manager, %struct.dm_block_manager* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.dm_block**, %struct.dm_block*** %9, align 8
  %18 = bitcast %struct.dm_block** %17 to %struct.dm_buffer**
  %19 = call i8* @dm_bufio_read(i32 %15, i32 %16, %struct.dm_buffer** %18)
  store i8* %19, i8** %11, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = call i32 @IS_ERR(i8* %20)
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i8*, i8** %11, align 8
  %26 = call i32 @PTR_ERR(i8* %25)
  store i32 %26, i32* %5, align 4
  br label %70

27:                                               ; preds = %4
  %28 = load %struct.dm_block**, %struct.dm_block*** %9, align 8
  %29 = load %struct.dm_block*, %struct.dm_block** %28, align 8
  %30 = call i32 @to_buffer(%struct.dm_block* %29)
  %31 = call %struct.buffer_aux* @dm_bufio_get_aux_data(i32 %30)
  store %struct.buffer_aux* %31, %struct.buffer_aux** %10, align 8
  %32 = load %struct.buffer_aux*, %struct.buffer_aux** %10, align 8
  %33 = getelementptr inbounds %struct.buffer_aux, %struct.buffer_aux* %32, i32 0, i32 0
  %34 = call i32 @bl_down_read(i32* %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %27
  %39 = load %struct.dm_block**, %struct.dm_block*** %9, align 8
  %40 = load %struct.dm_block*, %struct.dm_block** %39, align 8
  %41 = call i32 @to_buffer(%struct.dm_block* %40)
  %42 = call i32 @dm_bufio_release(i32 %41)
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @report_recursive_bug(i32 %43, i32 %44)
  %46 = load i32, i32* %12, align 4
  store i32 %46, i32* %5, align 4
  br label %70

47:                                               ; preds = %27
  %48 = load %struct.buffer_aux*, %struct.buffer_aux** %10, align 8
  %49 = getelementptr inbounds %struct.buffer_aux, %struct.buffer_aux* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  %50 = load %struct.dm_block_manager*, %struct.dm_block_manager** %6, align 8
  %51 = load %struct.dm_block**, %struct.dm_block*** %9, align 8
  %52 = load %struct.dm_block*, %struct.dm_block** %51, align 8
  %53 = call i32 @to_buffer(%struct.dm_block* %52)
  %54 = load %struct.buffer_aux*, %struct.buffer_aux** %10, align 8
  %55 = load %struct.dm_block_validator*, %struct.dm_block_validator** %8, align 8
  %56 = call i32 @dm_bm_validate_buffer(%struct.dm_block_manager* %50, i32 %53, %struct.buffer_aux* %54, %struct.dm_block_validator* %55)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %47
  %61 = load %struct.buffer_aux*, %struct.buffer_aux** %10, align 8
  %62 = getelementptr inbounds %struct.buffer_aux, %struct.buffer_aux* %61, i32 0, i32 0
  %63 = call i32 @bl_up_read(i32* %62)
  %64 = load %struct.dm_block**, %struct.dm_block*** %9, align 8
  %65 = load %struct.dm_block*, %struct.dm_block** %64, align 8
  %66 = call i32 @to_buffer(%struct.dm_block* %65)
  %67 = call i32 @dm_bufio_release(i32 %66)
  %68 = load i32, i32* %12, align 4
  store i32 %68, i32* %5, align 4
  br label %70

69:                                               ; preds = %47
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %69, %60, %38, %24
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i8* @dm_bufio_read(i32, i32, %struct.dm_buffer**) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local %struct.buffer_aux* @dm_bufio_get_aux_data(i32) #1

declare dso_local i32 @to_buffer(%struct.dm_block*) #1

declare dso_local i32 @bl_down_read(i32*) #1

declare dso_local i32 @dm_bufio_release(i32) #1

declare dso_local i32 @report_recursive_bug(i32, i32) #1

declare dso_local i32 @dm_bm_validate_buffer(%struct.dm_block_manager*, i32, %struct.buffer_aux*, %struct.dm_block_validator*) #1

declare dso_local i32 @bl_up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
