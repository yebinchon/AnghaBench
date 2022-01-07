; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-floppy.c_ide_floppy_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-floppy.c_ide_floppy_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32*, %struct.ide_disk_obj* }
%struct.ide_disk_obj = type { i32 }

@ide_floppy_callback = common dso_local global i32 0, align 4
@ATA_ID_PROD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"IOMEGA ZIP 100 ATAPI\00", align 1
@IDE_AFLAG_ZIP_DRIVE = common dso_local global i32 0, align 4
@IDEFLOPPY_PC_DELAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"IOMEGA Clik!\00", align 1
@IDE_AFLAG_CLIK_DRIVE = common dso_local global i32 0, align 4
@IDE_DFLAG_DOORLOCKING = common dso_local global i32 0, align 4
@IDE_DFLAG_ATTACH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @ide_floppy_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ide_floppy_setup(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.ide_disk_obj*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 6
  %7 = load %struct.ide_disk_obj*, %struct.ide_disk_obj** %6, align 8
  store %struct.ide_disk_obj* %7, %struct.ide_disk_obj** %3, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 5
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %4, align 8
  %11 = load i32, i32* @ide_floppy_callback, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 4
  store i32 %11, i32* %13, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = load i64, i64* @ATA_ID_PROD, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = bitcast i32* %16 to i8*
  %18 = call i64 @strncmp(i8* %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 20)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @IDE_AFLAG_ZIP_DRIVE, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load i32, i32* @IDEFLOPPY_PC_DELAY, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @blk_queue_max_hw_sectors(i32 %31, i32 64)
  br label %33

33:                                               ; preds = %20, %1
  %34 = load i32*, i32** %4, align 8
  %35 = load i64, i64* @ATA_ID_PROD, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = bitcast i32* %36 to i8*
  %38 = call i64 @strncmp(i8* %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 11)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %33
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @blk_queue_max_hw_sectors(i32 %43, i32 64)
  %45 = load i32, i32* @IDE_AFLAG_CLIK_DRIVE, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  %50 = load i32, i32* @IDE_DFLAG_DOORLOCKING, align 4
  %51 = xor i32 %50, -1
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, %51
  store i32 %55, i32* %53, align 8
  br label %56

56:                                               ; preds = %40, %33
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %58 = call i32 @ide_floppy_get_capacity(%struct.TYPE_5__* %57)
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %60 = load %struct.ide_disk_obj*, %struct.ide_disk_obj** %3, align 8
  %61 = getelementptr inbounds %struct.ide_disk_obj, %struct.ide_disk_obj* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ide_proc_register_driver(%struct.TYPE_5__* %59, i32 %62)
  %64 = load i32, i32* @IDE_DFLAG_ATTACH, align 4
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  ret void
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @blk_queue_max_hw_sectors(i32, i32) #1

declare dso_local i32 @ide_floppy_get_capacity(%struct.TYPE_5__*) #1

declare dso_local i32 @ide_proc_register_driver(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
