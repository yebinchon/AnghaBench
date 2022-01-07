; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dcssblk.c_dcssblk_load_segment.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dcssblk.c_dcssblk_load_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.segment_info = type { i32, i32, i32, i32, i32 }

@dcssblk_devices_sem = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SEGMENT_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.segment_info**)* @dcssblk_load_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcssblk_load_segment(i8* %0, %struct.segment_info** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.segment_info**, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.segment_info** %1, %struct.segment_info*** %5, align 8
  %7 = call i32 @down_read(i32* @dcssblk_devices_sem)
  %8 = load i8*, i8** %4, align 8
  %9 = call %struct.segment_info* @dcssblk_get_segment_by_name(i8* %8)
  %10 = load %struct.segment_info**, %struct.segment_info*** %5, align 8
  store %struct.segment_info* %9, %struct.segment_info** %10, align 8
  %11 = call i32 @up_read(i32* @dcssblk_devices_sem)
  %12 = load %struct.segment_info**, %struct.segment_info*** %5, align 8
  %13 = load %struct.segment_info*, %struct.segment_info** %12, align 8
  %14 = icmp ne %struct.segment_info* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EEXIST, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %67

18:                                               ; preds = %2
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.segment_info* @kzalloc(i32 20, i32 %19)
  %21 = load %struct.segment_info**, %struct.segment_info*** %5, align 8
  store %struct.segment_info* %20, %struct.segment_info** %21, align 8
  %22 = load %struct.segment_info**, %struct.segment_info*** %5, align 8
  %23 = load %struct.segment_info*, %struct.segment_info** %22, align 8
  %24 = icmp eq %struct.segment_info* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %67

28:                                               ; preds = %18
  %29 = load %struct.segment_info**, %struct.segment_info*** %5, align 8
  %30 = load %struct.segment_info*, %struct.segment_info** %29, align 8
  %31 = getelementptr inbounds %struct.segment_info, %struct.segment_info* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @strcpy(i32 %32, i8* %33)
  %35 = load i8*, i8** %4, align 8
  %36 = load i32, i32* @SEGMENT_SHARED, align 4
  %37 = load %struct.segment_info**, %struct.segment_info*** %5, align 8
  %38 = load %struct.segment_info*, %struct.segment_info** %37, align 8
  %39 = getelementptr inbounds %struct.segment_info, %struct.segment_info* %38, i32 0, i32 4
  %40 = load %struct.segment_info**, %struct.segment_info*** %5, align 8
  %41 = load %struct.segment_info*, %struct.segment_info** %40, align 8
  %42 = getelementptr inbounds %struct.segment_info, %struct.segment_info* %41, i32 0, i32 3
  %43 = call i32 @segment_load(i8* %35, i32 %36, i32* %39, i32* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %28
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.segment_info**, %struct.segment_info*** %5, align 8
  %49 = load %struct.segment_info*, %struct.segment_info** %48, align 8
  %50 = getelementptr inbounds %struct.segment_info, %struct.segment_info* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @segment_warning(i32 %47, i32 %51)
  %53 = load %struct.segment_info**, %struct.segment_info*** %5, align 8
  %54 = load %struct.segment_info*, %struct.segment_info** %53, align 8
  %55 = call i32 @kfree(%struct.segment_info* %54)
  br label %65

56:                                               ; preds = %28
  %57 = load %struct.segment_info**, %struct.segment_info*** %5, align 8
  %58 = load %struct.segment_info*, %struct.segment_info** %57, align 8
  %59 = getelementptr inbounds %struct.segment_info, %struct.segment_info* %58, i32 0, i32 1
  %60 = call i32 @INIT_LIST_HEAD(i32* %59)
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.segment_info**, %struct.segment_info*** %5, align 8
  %63 = load %struct.segment_info*, %struct.segment_info** %62, align 8
  %64 = getelementptr inbounds %struct.segment_info, %struct.segment_info* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 4
  br label %65

65:                                               ; preds = %56, %46
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %65, %25, %15
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.segment_info* @dcssblk_get_segment_by_name(i8*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local %struct.segment_info* @kzalloc(i32, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @segment_load(i8*, i32, i32*, i32*) #1

declare dso_local i32 @segment_warning(i32, i32) #1

declare dso_local i32 @kfree(%struct.segment_info*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
