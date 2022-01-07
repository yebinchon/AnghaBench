; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_genhd.c_blk_alloc_devt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_genhd.c_blk_alloc_devt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hd_struct = type { i64 }
%struct.gendisk = type { i64, i64, i32 }

@ext_devt_idr = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ext_devt_mutex = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@MAX_EXT_DEVT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@BLOCK_EXT_MAJOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blk_alloc_devt(%struct.hd_struct* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hd_struct*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.gendisk*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hd_struct* %0, %struct.hd_struct** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.hd_struct*, %struct.hd_struct** %4, align 8
  %10 = call %struct.gendisk* @part_to_disk(%struct.hd_struct* %9)
  store %struct.gendisk* %10, %struct.gendisk** %6, align 8
  %11 = load %struct.hd_struct*, %struct.hd_struct** %4, align 8
  %12 = getelementptr inbounds %struct.hd_struct, %struct.hd_struct* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %15 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %13, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %2
  %19 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %20 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %23 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.hd_struct*, %struct.hd_struct** %4, align 8
  %26 = getelementptr inbounds %struct.hd_struct, %struct.hd_struct* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %24, %27
  %29 = call i32 @MKDEV(i32 %21, i64 %28)
  %30 = load i32*, i32** %5, align 8
  store i32 %29, i32* %30, align 4
  store i32 0, i32* %3, align 4
  br label %71

31:                                               ; preds = %2
  br label %32

32:                                               ; preds = %44, %31
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i32 @idr_pre_get(i32* @ext_devt_idr, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %71

39:                                               ; preds = %32
  %40 = call i32 @mutex_lock(i32* @ext_devt_mutex)
  %41 = load %struct.hd_struct*, %struct.hd_struct** %4, align 8
  %42 = call i32 @idr_get_new(i32* @ext_devt_idr, %struct.hd_struct* %41, i32* %7)
  store i32 %42, i32* %8, align 4
  %43 = call i32 @mutex_unlock(i32* @ext_devt_mutex)
  br label %44

44:                                               ; preds = %39
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @EAGAIN, align 4
  %47 = sub nsw i32 0, %46
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %32, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %3, align 4
  br label %71

54:                                               ; preds = %49
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @MAX_EXT_DEVT, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %54
  %59 = call i32 @mutex_lock(i32* @ext_devt_mutex)
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @idr_remove(i32* @ext_devt_idr, i32 %60)
  %62 = call i32 @mutex_unlock(i32* @ext_devt_mutex)
  %63 = load i32, i32* @EBUSY, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %71

65:                                               ; preds = %54
  %66 = load i32, i32* @BLOCK_EXT_MAJOR, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i64 @blk_mangle_minor(i32 %67)
  %69 = call i32 @MKDEV(i32 %66, i64 %68)
  %70 = load i32*, i32** %5, align 8
  store i32 %69, i32* %70, align 4
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %65, %58, %52, %36, %18
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.gendisk* @part_to_disk(%struct.hd_struct*) #1

declare dso_local i32 @MKDEV(i32, i64) #1

declare dso_local i32 @idr_pre_get(i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @idr_get_new(i32*, %struct.hd_struct*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i64 @blk_mangle_minor(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
