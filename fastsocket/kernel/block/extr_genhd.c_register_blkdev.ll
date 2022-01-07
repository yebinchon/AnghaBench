; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_genhd.c_register_blkdev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_genhd.c_register_blkdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_major_name = type { i32, %struct.blk_major_name*, i32 }

@block_class_lock = common dso_local global i32 0, align 4
@major_names = common dso_local global %struct.blk_major_name** null, align 8
@.str = private unnamed_addr constant [45 x i8] c"register_blkdev: failed to get major for %s\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"register_blkdev: cannot get major %d for %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @register_blkdev(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.blk_major_name**, align 8
  %6 = alloca %struct.blk_major_name*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %8, align 4
  %9 = call i32 @mutex_lock(i32* @block_class_lock)
  %10 = load i32, i32* %3, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %42

12:                                               ; preds = %2
  %13 = load %struct.blk_major_name**, %struct.blk_major_name*** @major_names, align 8
  %14 = call i32 @ARRAY_SIZE(%struct.blk_major_name** %13)
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %7, align 4
  br label %16

16:                                               ; preds = %28, %12
  %17 = load i32, i32* %7, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %16
  %20 = load %struct.blk_major_name**, %struct.blk_major_name*** @major_names, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.blk_major_name*, %struct.blk_major_name** %20, i64 %22
  %24 = load %struct.blk_major_name*, %struct.blk_major_name** %23, align 8
  %25 = icmp eq %struct.blk_major_name* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %31

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %7, align 4
  br label %16

31:                                               ; preds = %26, %16
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %35)
  %37 = load i32, i32* @EBUSY, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %8, align 4
  br label %104

39:                                               ; preds = %31
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %39, %2
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call %struct.blk_major_name* @kmalloc(i32 24, i32 %43)
  store %struct.blk_major_name* %44, %struct.blk_major_name** %6, align 8
  %45 = load %struct.blk_major_name*, %struct.blk_major_name** %6, align 8
  %46 = icmp eq %struct.blk_major_name* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %8, align 4
  br label %104

50:                                               ; preds = %42
  %51 = load i32, i32* %3, align 4
  %52 = load %struct.blk_major_name*, %struct.blk_major_name** %6, align 8
  %53 = getelementptr inbounds %struct.blk_major_name, %struct.blk_major_name* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.blk_major_name*, %struct.blk_major_name** %6, align 8
  %55 = getelementptr inbounds %struct.blk_major_name, %struct.blk_major_name* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i8*, i8** %4, align 8
  %58 = call i32 @strlcpy(i32 %56, i8* %57, i32 4)
  %59 = load %struct.blk_major_name*, %struct.blk_major_name** %6, align 8
  %60 = getelementptr inbounds %struct.blk_major_name, %struct.blk_major_name* %59, i32 0, i32 1
  store %struct.blk_major_name* null, %struct.blk_major_name** %60, align 8
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @major_to_index(i32 %61)
  store i32 %62, i32* %7, align 4
  %63 = load %struct.blk_major_name**, %struct.blk_major_name*** @major_names, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.blk_major_name*, %struct.blk_major_name** %63, i64 %65
  store %struct.blk_major_name** %66, %struct.blk_major_name*** %5, align 8
  br label %67

67:                                               ; preds = %80, %50
  %68 = load %struct.blk_major_name**, %struct.blk_major_name*** %5, align 8
  %69 = load %struct.blk_major_name*, %struct.blk_major_name** %68, align 8
  %70 = icmp ne %struct.blk_major_name* %69, null
  br i1 %70, label %71, label %84

71:                                               ; preds = %67
  %72 = load %struct.blk_major_name**, %struct.blk_major_name*** %5, align 8
  %73 = load %struct.blk_major_name*, %struct.blk_major_name** %72, align 8
  %74 = getelementptr inbounds %struct.blk_major_name, %struct.blk_major_name* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %3, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  br label %84

79:                                               ; preds = %71
  br label %80

80:                                               ; preds = %79
  %81 = load %struct.blk_major_name**, %struct.blk_major_name*** %5, align 8
  %82 = load %struct.blk_major_name*, %struct.blk_major_name** %81, align 8
  %83 = getelementptr inbounds %struct.blk_major_name, %struct.blk_major_name* %82, i32 0, i32 1
  store %struct.blk_major_name** %83, %struct.blk_major_name*** %5, align 8
  br label %67

84:                                               ; preds = %78, %67
  %85 = load %struct.blk_major_name**, %struct.blk_major_name*** %5, align 8
  %86 = load %struct.blk_major_name*, %struct.blk_major_name** %85, align 8
  %87 = icmp ne %struct.blk_major_name* %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %84
  %89 = load %struct.blk_major_name*, %struct.blk_major_name** %6, align 8
  %90 = load %struct.blk_major_name**, %struct.blk_major_name*** %5, align 8
  store %struct.blk_major_name* %89, %struct.blk_major_name** %90, align 8
  br label %94

91:                                               ; preds = %84
  %92 = load i32, i32* @EBUSY, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %8, align 4
  br label %94

94:                                               ; preds = %91, %88
  %95 = load i32, i32* %8, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %94
  %98 = load i32, i32* %3, align 4
  %99 = load i8*, i8** %4, align 8
  %100 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %98, i8* %99)
  %101 = load %struct.blk_major_name*, %struct.blk_major_name** %6, align 8
  %102 = call i32 @kfree(%struct.blk_major_name* %101)
  br label %103

103:                                              ; preds = %97, %94
  br label %104

104:                                              ; preds = %103, %47, %34
  %105 = call i32 @mutex_unlock(i32* @block_class_lock)
  %106 = load i32, i32* %8, align 4
  ret i32 %106
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.blk_major_name**) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local %struct.blk_major_name* @kmalloc(i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @major_to_index(i32) #1

declare dso_local i32 @kfree(%struct.blk_major_name*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
