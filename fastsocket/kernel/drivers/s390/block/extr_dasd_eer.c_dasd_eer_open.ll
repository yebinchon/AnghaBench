; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eer.c_dasd_eer_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eer.c_dasd_eer_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.eerbuffer* }
%struct.eerbuffer = type { i32, i32, i32, %struct.eerbuffer* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@eer_pages = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DBF_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [87 x i8] c"can't open device since module parameter eer_pages is smaller than 1 or bigger than %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@bufferlock = common dso_local global i32 0, align 4
@bufferlist = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @dasd_eer_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_eer_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.eerbuffer*, align 8
  %7 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.eerbuffer* @kzalloc(i32 24, i32 %8)
  store %struct.eerbuffer* %9, %struct.eerbuffer** %6, align 8
  %10 = load %struct.eerbuffer*, %struct.eerbuffer** %6, align 8
  %11 = icmp ne %struct.eerbuffer* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %105

15:                                               ; preds = %2
  %16 = call i32 (...) @lock_kernel()
  %17 = load i32, i32* @eer_pages, align 4
  %18 = load %struct.eerbuffer*, %struct.eerbuffer** %6, align 8
  %19 = getelementptr inbounds %struct.eerbuffer, %struct.eerbuffer* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.eerbuffer*, %struct.eerbuffer** %6, align 8
  %21 = getelementptr inbounds %struct.eerbuffer, %struct.eerbuffer* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %22, 1
  br i1 %23, label %32, label %24

24:                                               ; preds = %15
  %25 = load %struct.eerbuffer*, %struct.eerbuffer** %6, align 8
  %26 = getelementptr inbounds %struct.eerbuffer, %struct.eerbuffer* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @INT_MAX, align 4
  %29 = load i32, i32* @PAGE_SIZE, align 4
  %30 = sdiv i32 %28, %29
  %31 = icmp sgt i32 %27, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %24, %15
  %33 = load %struct.eerbuffer*, %struct.eerbuffer** %6, align 8
  %34 = call i32 @kfree(%struct.eerbuffer* %33)
  %35 = load i32, i32* @DBF_WARNING, align 4
  %36 = load i32, i32* @INT_MAX, align 4
  %37 = load i32, i32* @PAGE_SIZE, align 4
  %38 = sdiv i32 %36, %37
  %39 = call i32 @DBF_EVENT(i32 %35, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = call i32 (...) @unlock_kernel()
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %105

43:                                               ; preds = %24
  %44 = load %struct.eerbuffer*, %struct.eerbuffer** %6, align 8
  %45 = getelementptr inbounds %struct.eerbuffer, %struct.eerbuffer* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @PAGE_SIZE, align 4
  %48 = mul nsw i32 %46, %47
  %49 = load %struct.eerbuffer*, %struct.eerbuffer** %6, align 8
  %50 = getelementptr inbounds %struct.eerbuffer, %struct.eerbuffer* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.eerbuffer*, %struct.eerbuffer** %6, align 8
  %52 = getelementptr inbounds %struct.eerbuffer, %struct.eerbuffer* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 8
  %56 = trunc i64 %55 to i32
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call %struct.eerbuffer* @kmalloc(i32 %56, i32 %57)
  %59 = load %struct.eerbuffer*, %struct.eerbuffer** %6, align 8
  %60 = getelementptr inbounds %struct.eerbuffer, %struct.eerbuffer* %59, i32 0, i32 3
  store %struct.eerbuffer* %58, %struct.eerbuffer** %60, align 8
  %61 = load %struct.eerbuffer*, %struct.eerbuffer** %6, align 8
  %62 = getelementptr inbounds %struct.eerbuffer, %struct.eerbuffer* %61, i32 0, i32 3
  %63 = load %struct.eerbuffer*, %struct.eerbuffer** %62, align 8
  %64 = icmp ne %struct.eerbuffer* %63, null
  br i1 %64, label %71, label %65

65:                                               ; preds = %43
  %66 = load %struct.eerbuffer*, %struct.eerbuffer** %6, align 8
  %67 = call i32 @kfree(%struct.eerbuffer* %66)
  %68 = call i32 (...) @unlock_kernel()
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %105

71:                                               ; preds = %43
  %72 = load %struct.eerbuffer*, %struct.eerbuffer** %6, align 8
  %73 = getelementptr inbounds %struct.eerbuffer, %struct.eerbuffer* %72, i32 0, i32 3
  %74 = load %struct.eerbuffer*, %struct.eerbuffer** %73, align 8
  %75 = load %struct.eerbuffer*, %struct.eerbuffer** %6, align 8
  %76 = getelementptr inbounds %struct.eerbuffer, %struct.eerbuffer* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @dasd_eer_allocate_buffer_pages(%struct.eerbuffer* %74, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %71
  %81 = load %struct.eerbuffer*, %struct.eerbuffer** %6, align 8
  %82 = getelementptr inbounds %struct.eerbuffer, %struct.eerbuffer* %81, i32 0, i32 3
  %83 = load %struct.eerbuffer*, %struct.eerbuffer** %82, align 8
  %84 = call i32 @kfree(%struct.eerbuffer* %83)
  %85 = load %struct.eerbuffer*, %struct.eerbuffer** %6, align 8
  %86 = call i32 @kfree(%struct.eerbuffer* %85)
  %87 = call i32 (...) @unlock_kernel()
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %105

90:                                               ; preds = %71
  %91 = load %struct.eerbuffer*, %struct.eerbuffer** %6, align 8
  %92 = load %struct.file*, %struct.file** %5, align 8
  %93 = getelementptr inbounds %struct.file, %struct.file* %92, i32 0, i32 0
  store %struct.eerbuffer* %91, %struct.eerbuffer** %93, align 8
  %94 = load i64, i64* %7, align 8
  %95 = call i32 @spin_lock_irqsave(i32* @bufferlock, i64 %94)
  %96 = load %struct.eerbuffer*, %struct.eerbuffer** %6, align 8
  %97 = getelementptr inbounds %struct.eerbuffer, %struct.eerbuffer* %96, i32 0, i32 2
  %98 = call i32 @list_add(i32* %97, i32* @bufferlist)
  %99 = load i64, i64* %7, align 8
  %100 = call i32 @spin_unlock_irqrestore(i32* @bufferlock, i64 %99)
  %101 = call i32 (...) @unlock_kernel()
  %102 = load %struct.inode*, %struct.inode** %4, align 8
  %103 = load %struct.file*, %struct.file** %5, align 8
  %104 = call i32 @nonseekable_open(%struct.inode* %102, %struct.file* %103)
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %90, %80, %65, %32, %12
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local %struct.eerbuffer* @kzalloc(i32, i32) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @kfree(%struct.eerbuffer*) #1

declare dso_local i32 @DBF_EVENT(i32, i8*, i32) #1

declare dso_local i32 @unlock_kernel(...) #1

declare dso_local %struct.eerbuffer* @kmalloc(i32, i32) #1

declare dso_local i64 @dasd_eer_allocate_buffer_pages(%struct.eerbuffer*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @nonseekable_open(%struct.inode*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
