; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-integrity.c_blk_integrity_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-integrity.c_blk_integrity_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { %struct.TYPE_5__*, %struct.blk_integrity* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.blk_integrity = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@blk_integrity_register.seen = internal global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"DIF/DIX support\00", align 1
@integrity_cachep = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@integrity_ktype = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"integrity\00", align 1
@KOBJ_ADD = common dso_local global i32 0, align 4
@INTEGRITY_FLAG_READ = common dso_local global i32 0, align 4
@INTEGRITY_FLAG_WRITE = common dso_local global i32 0, align 4
@bi_unsupported_name = common dso_local global i32 0, align 4
@BDI_CAP_STABLE_WRITES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blk_integrity_register(%struct.gendisk* %0, %struct.blk_integrity* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gendisk*, align 8
  %5 = alloca %struct.blk_integrity*, align 8
  %6 = alloca %struct.blk_integrity*, align 8
  store %struct.gendisk* %0, %struct.gendisk** %4, align 8
  store %struct.blk_integrity* %1, %struct.blk_integrity** %5, align 8
  %7 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %8 = icmp eq %struct.gendisk* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load i32, i32* @blk_integrity_register.seen, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = call i32 @mark_tech_preview(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32 1, i32* @blk_integrity_register.seen, align 4
  br label %15

15:                                               ; preds = %13, %2
  %16 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %17 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %16, i32 0, i32 1
  %18 = load %struct.blk_integrity*, %struct.blk_integrity** %17, align 8
  %19 = icmp eq %struct.blk_integrity* %18, null
  br i1 %19, label %20, label %62

20:                                               ; preds = %15
  %21 = load i32, i32* @integrity_cachep, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = load i32, i32* @__GFP_ZERO, align 4
  %24 = or i32 %22, %23
  %25 = call %struct.blk_integrity* @kmem_cache_alloc(i32 %21, i32 %24)
  store %struct.blk_integrity* %25, %struct.blk_integrity** %6, align 8
  %26 = load %struct.blk_integrity*, %struct.blk_integrity** %6, align 8
  %27 = icmp ne %struct.blk_integrity* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %20
  store i32 -1, i32* %3, align 4
  br label %118

29:                                               ; preds = %20
  %30 = load %struct.blk_integrity*, %struct.blk_integrity** %6, align 8
  %31 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %30, i32 0, i32 9
  %32 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %33 = call %struct.TYPE_6__* @disk_to_dev(%struct.gendisk* %32)
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = call i64 @kobject_init_and_add(i32* %31, i32* @integrity_ktype, i32* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load i32, i32* @integrity_cachep, align 4
  %39 = load %struct.blk_integrity*, %struct.blk_integrity** %6, align 8
  %40 = call i32 @kmem_cache_free(i32 %38, %struct.blk_integrity* %39)
  store i32 -1, i32* %3, align 4
  br label %118

41:                                               ; preds = %29
  %42 = load %struct.blk_integrity*, %struct.blk_integrity** %6, align 8
  %43 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %42, i32 0, i32 9
  %44 = load i32, i32* @KOBJ_ADD, align 4
  %45 = call i32 @kobject_uevent(i32* %43, i32 %44)
  %46 = load i32, i32* @INTEGRITY_FLAG_READ, align 4
  %47 = load i32, i32* @INTEGRITY_FLAG_WRITE, align 4
  %48 = or i32 %46, %47
  %49 = load %struct.blk_integrity*, %struct.blk_integrity** %6, align 8
  %50 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %54 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = call i32 @queue_logical_block_size(%struct.TYPE_5__* %55)
  %57 = load %struct.blk_integrity*, %struct.blk_integrity** %6, align 8
  %58 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %57, i32 0, i32 8
  store i32 %56, i32* %58, align 4
  %59 = load %struct.blk_integrity*, %struct.blk_integrity** %6, align 8
  %60 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %61 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %60, i32 0, i32 1
  store %struct.blk_integrity* %59, %struct.blk_integrity** %61, align 8
  br label %66

62:                                               ; preds = %15
  %63 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %64 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %63, i32 0, i32 1
  %65 = load %struct.blk_integrity*, %struct.blk_integrity** %64, align 8
  store %struct.blk_integrity* %65, %struct.blk_integrity** %6, align 8
  br label %66

66:                                               ; preds = %62, %41
  %67 = load %struct.blk_integrity*, %struct.blk_integrity** %5, align 8
  %68 = icmp ne %struct.blk_integrity* %67, null
  br i1 %68, label %69, label %105

69:                                               ; preds = %66
  %70 = load %struct.blk_integrity*, %struct.blk_integrity** %5, align 8
  %71 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.blk_integrity*, %struct.blk_integrity** %6, align 8
  %74 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.blk_integrity*, %struct.blk_integrity** %5, align 8
  %76 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %75, i32 0, i32 7
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.blk_integrity*, %struct.blk_integrity** %6, align 8
  %79 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %78, i32 0, i32 7
  store i32 %77, i32* %79, align 4
  %80 = load %struct.blk_integrity*, %struct.blk_integrity** %5, align 8
  %81 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.blk_integrity*, %struct.blk_integrity** %6, align 8
  %84 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %83, i32 0, i32 6
  store i32 %82, i32* %84, align 4
  %85 = load %struct.blk_integrity*, %struct.blk_integrity** %5, align 8
  %86 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.blk_integrity*, %struct.blk_integrity** %6, align 8
  %89 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %88, i32 0, i32 5
  store i32 %87, i32* %89, align 4
  %90 = load %struct.blk_integrity*, %struct.blk_integrity** %5, align 8
  %91 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.blk_integrity*, %struct.blk_integrity** %6, align 8
  %94 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %93, i32 0, i32 4
  store i32 %92, i32* %94, align 4
  %95 = load %struct.blk_integrity*, %struct.blk_integrity** %5, align 8
  %96 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.blk_integrity*, %struct.blk_integrity** %6, align 8
  %99 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 4
  %100 = load %struct.blk_integrity*, %struct.blk_integrity** %5, align 8
  %101 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.blk_integrity*, %struct.blk_integrity** %6, align 8
  %104 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 4
  br label %109

105:                                              ; preds = %66
  %106 = load i32, i32* @bi_unsupported_name, align 4
  %107 = load %struct.blk_integrity*, %struct.blk_integrity** %6, align 8
  %108 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  br label %109

109:                                              ; preds = %105, %69
  %110 = load i32, i32* @BDI_CAP_STABLE_WRITES, align 4
  %111 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %112 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %111, i32 0, i32 0
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %110
  store i32 %117, i32* %115, align 4
  store i32 0, i32* %3, align 4
  br label %118

118:                                              ; preds = %109, %37, %28
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mark_tech_preview(i8*, i32*) #1

declare dso_local %struct.blk_integrity* @kmem_cache_alloc(i32, i32) #1

declare dso_local i64 @kobject_init_and_add(i32*, i32*, i32*, i8*, i8*) #1

declare dso_local %struct.TYPE_6__* @disk_to_dev(%struct.gendisk*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.blk_integrity*) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

declare dso_local i32 @queue_logical_block_size(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
