; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-block-manager.c_dm_bm_read_try_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-block-manager.c_dm_bm_read_try_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_block_manager = type { i32 }
%struct.dm_block_validator = type { i32 }
%struct.dm_block = type { i32 }
%struct.buffer_aux = type { i32, i64 }
%struct.dm_buffer = type { i32 }

@EWOULDBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_bm_read_try_lock(%struct.dm_block_manager* %0, i32 %1, %struct.dm_block_validator* %2, %struct.dm_block** %3) #0 {
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
  %19 = call i8* @dm_bufio_get(i32 %15, i32 %16, %struct.dm_buffer** %18)
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
  br label %79

27:                                               ; preds = %4
  %28 = load i8*, i8** %11, align 8
  %29 = icmp ne i8* %28, null
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i32, i32* @EWOULDBLOCK, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %79

37:                                               ; preds = %27
  %38 = load %struct.dm_block**, %struct.dm_block*** %9, align 8
  %39 = load %struct.dm_block*, %struct.dm_block** %38, align 8
  %40 = call i32 @to_buffer(%struct.dm_block* %39)
  %41 = call %struct.buffer_aux* @dm_bufio_get_aux_data(i32 %40)
  store %struct.buffer_aux* %41, %struct.buffer_aux** %10, align 8
  %42 = load %struct.buffer_aux*, %struct.buffer_aux** %10, align 8
  %43 = getelementptr inbounds %struct.buffer_aux, %struct.buffer_aux* %42, i32 0, i32 0
  %44 = call i32 @bl_down_read_nonblock(i32* %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %37
  %48 = load %struct.dm_block**, %struct.dm_block*** %9, align 8
  %49 = load %struct.dm_block*, %struct.dm_block** %48, align 8
  %50 = call i32 @to_buffer(%struct.dm_block* %49)
  %51 = call i32 @dm_bufio_release(i32 %50)
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @report_recursive_bug(i32 %52, i32 %53)
  %55 = load i32, i32* %12, align 4
  store i32 %55, i32* %5, align 4
  br label %79

56:                                               ; preds = %37
  %57 = load %struct.buffer_aux*, %struct.buffer_aux** %10, align 8
  %58 = getelementptr inbounds %struct.buffer_aux, %struct.buffer_aux* %57, i32 0, i32 1
  store i64 0, i64* %58, align 8
  %59 = load %struct.dm_block_manager*, %struct.dm_block_manager** %6, align 8
  %60 = load %struct.dm_block**, %struct.dm_block*** %9, align 8
  %61 = load %struct.dm_block*, %struct.dm_block** %60, align 8
  %62 = call i32 @to_buffer(%struct.dm_block* %61)
  %63 = load %struct.buffer_aux*, %struct.buffer_aux** %10, align 8
  %64 = load %struct.dm_block_validator*, %struct.dm_block_validator** %8, align 8
  %65 = call i32 @dm_bm_validate_buffer(%struct.dm_block_manager* %59, i32 %62, %struct.buffer_aux* %63, %struct.dm_block_validator* %64)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %56
  %70 = load %struct.buffer_aux*, %struct.buffer_aux** %10, align 8
  %71 = getelementptr inbounds %struct.buffer_aux, %struct.buffer_aux* %70, i32 0, i32 0
  %72 = call i32 @bl_up_read(i32* %71)
  %73 = load %struct.dm_block**, %struct.dm_block*** %9, align 8
  %74 = load %struct.dm_block*, %struct.dm_block** %73, align 8
  %75 = call i32 @to_buffer(%struct.dm_block* %74)
  %76 = call i32 @dm_bufio_release(i32 %75)
  %77 = load i32, i32* %12, align 4
  store i32 %77, i32* %5, align 4
  br label %79

78:                                               ; preds = %56
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %78, %69, %47, %34, %24
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i8* @dm_bufio_get(i32, i32, %struct.dm_buffer**) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local %struct.buffer_aux* @dm_bufio_get_aux_data(i32) #1

declare dso_local i32 @to_buffer(%struct.dm_block*) #1

declare dso_local i32 @bl_down_read_nonblock(i32*) #1

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
