; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-tape.c_idetape_chrdev_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-tape.c_idetape_chrdev_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.ide_tape_obj* }
%struct.ide_tape_obj = type { i64, i64, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.ide_tape_obj* }

@IDE_DBG_FUNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"enter\00", align 1
@IDETAPE_DIR_WRITE = common dso_local global i64 0, align 8
@IDETAPE_DIR_READ = common dso_local global i64 0, align 8
@IDE_AFLAG_MEDIUM_PRESENT = common dso_local global i32 0, align 4
@IDETAPE_DIR_NONE = common dso_local global i64 0, align 8
@DOOR_LOCKED = common dso_local global i64 0, align 8
@DOOR_UNLOCKED = common dso_local global i64 0, align 8
@IDE_AFLAG_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @idetape_chrdev_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idetape_chrdev_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.ide_tape_obj*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.ide_tape_obj*, %struct.ide_tape_obj** %9, align 8
  store %struct.ide_tape_obj* %10, %struct.ide_tape_obj** %5, align 8
  %11 = load %struct.ide_tape_obj*, %struct.ide_tape_obj** %5, align 8
  %12 = getelementptr inbounds %struct.ide_tape_obj, %struct.ide_tape_obj* %11, i32 0, i32 3
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %6, align 8
  %14 = load %struct.inode*, %struct.inode** %3, align 8
  %15 = call i32 @iminor(%struct.inode* %14)
  store i32 %15, i32* %7, align 4
  %16 = call i32 (...) @lock_kernel()
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load %struct.ide_tape_obj*, %struct.ide_tape_obj** %18, align 8
  store %struct.ide_tape_obj* %19, %struct.ide_tape_obj** %5, align 8
  %20 = load i32, i32* @IDE_DBG_FUNC, align 4
  %21 = call i32 @ide_debug_log(i32 %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.ide_tape_obj*, %struct.ide_tape_obj** %5, align 8
  %23 = getelementptr inbounds %struct.ide_tape_obj, %struct.ide_tape_obj* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @IDETAPE_DIR_WRITE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @idetape_write_release(%struct.TYPE_6__* %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %2
  %32 = load %struct.ide_tape_obj*, %struct.ide_tape_obj** %5, align 8
  %33 = getelementptr inbounds %struct.ide_tape_obj, %struct.ide_tape_obj* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @IDETAPE_DIR_READ, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load i32, i32* %7, align 4
  %39 = icmp ult i32 %38, 128
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %42 = call i32 @ide_tape_discard_merge_buffer(%struct.TYPE_6__* %41, i32 1)
  br label %43

43:                                               ; preds = %40, %37
  br label %44

44:                                               ; preds = %43, %31
  %45 = load i32, i32* %7, align 4
  %46 = icmp ult i32 %45, 128
  br i1 %46, label %47, label %57

47:                                               ; preds = %44
  %48 = load i32, i32* @IDE_AFLAG_MEDIUM_PRESENT, align 4
  %49 = call i32 @ilog2(i32 %48)
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = call i64 @test_bit(i32 %49, i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %56 = call i32 @idetape_rewind_tape(%struct.TYPE_6__* %55)
  br label %57

57:                                               ; preds = %54, %47, %44
  %58 = load %struct.ide_tape_obj*, %struct.ide_tape_obj** %5, align 8
  %59 = getelementptr inbounds %struct.ide_tape_obj, %struct.ide_tape_obj* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @IDETAPE_DIR_NONE, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %82

63:                                               ; preds = %57
  %64 = load %struct.ide_tape_obj*, %struct.ide_tape_obj** %5, align 8
  %65 = getelementptr inbounds %struct.ide_tape_obj, %struct.ide_tape_obj* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @DOOR_LOCKED, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %63
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %71 = load %struct.ide_tape_obj*, %struct.ide_tape_obj** %5, align 8
  %72 = getelementptr inbounds %struct.ide_tape_obj, %struct.ide_tape_obj* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @ide_set_media_lock(%struct.TYPE_6__* %70, i32 %73, i32 0)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %69
  %77 = load i64, i64* @DOOR_UNLOCKED, align 8
  %78 = load %struct.ide_tape_obj*, %struct.ide_tape_obj** %5, align 8
  %79 = getelementptr inbounds %struct.ide_tape_obj, %struct.ide_tape_obj* %78, i32 0, i32 1
  store i64 %77, i64* %79, align 8
  br label %80

80:                                               ; preds = %76, %69
  br label %81

81:                                               ; preds = %80, %63
  br label %82

82:                                               ; preds = %81, %57
  %83 = load i32, i32* @IDE_AFLAG_BUSY, align 4
  %84 = call i32 @ilog2(i32 %83)
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = call i32 @clear_bit(i32 %84, i32* %86)
  %88 = load %struct.ide_tape_obj*, %struct.ide_tape_obj** %5, align 8
  %89 = call i32 @ide_tape_put(%struct.ide_tape_obj* %88)
  %90 = call i32 (...) @unlock_kernel()
  ret i32 0
}

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @ide_debug_log(i32, i8*) #1

declare dso_local i32 @idetape_write_release(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @ide_tape_discard_merge_buffer(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @idetape_rewind_tape(%struct.TYPE_6__*) #1

declare dso_local i32 @ide_set_media_lock(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @ide_tape_put(%struct.ide_tape_obj*) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
