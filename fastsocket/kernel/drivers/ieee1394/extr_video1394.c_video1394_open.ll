; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_video1394.c_video1394_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_video1394.c_video1394_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.file_ctx* }
%struct.file_ctx = type { i32*, i32, %struct.ti_ohci* }
%struct.ti_ohci = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@video1394_highlevel = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Cannot malloc file_ctx\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @video1394_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @video1394_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ti_ohci*, align 8
  %8 = alloca %struct.file_ctx*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call i32 @ieee1394_file_to_instance(%struct.file* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.ti_ohci* @hpsb_get_hostinfo_bykey(i32* @video1394_highlevel, i32 %11)
  store %struct.ti_ohci* %12, %struct.ti_ohci** %7, align 8
  %13 = load %struct.ti_ohci*, %struct.ti_ohci** %7, align 8
  %14 = icmp eq %struct.ti_ohci* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %45

18:                                               ; preds = %2
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.file_ctx* @kzalloc(i32 24, i32 %19)
  store %struct.file_ctx* %20, %struct.file_ctx** %8, align 8
  %21 = load %struct.file_ctx*, %struct.file_ctx** %8, align 8
  %22 = icmp ne %struct.file_ctx* %21, null
  br i1 %22, label %33, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @KERN_ERR, align 4
  %25 = load %struct.ti_ohci*, %struct.ti_ohci** %7, align 8
  %26 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @PRINT(i32 %24, i32 %29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %45

33:                                               ; preds = %18
  %34 = load %struct.ti_ohci*, %struct.ti_ohci** %7, align 8
  %35 = load %struct.file_ctx*, %struct.file_ctx** %8, align 8
  %36 = getelementptr inbounds %struct.file_ctx, %struct.file_ctx* %35, i32 0, i32 2
  store %struct.ti_ohci* %34, %struct.ti_ohci** %36, align 8
  %37 = load %struct.file_ctx*, %struct.file_ctx** %8, align 8
  %38 = getelementptr inbounds %struct.file_ctx, %struct.file_ctx* %37, i32 0, i32 1
  %39 = call i32 @INIT_LIST_HEAD(i32* %38)
  %40 = load %struct.file_ctx*, %struct.file_ctx** %8, align 8
  %41 = getelementptr inbounds %struct.file_ctx, %struct.file_ctx* %40, i32 0, i32 0
  store i32* null, i32** %41, align 8
  %42 = load %struct.file_ctx*, %struct.file_ctx** %8, align 8
  %43 = load %struct.file*, %struct.file** %5, align 8
  %44 = getelementptr inbounds %struct.file, %struct.file* %43, i32 0, i32 0
  store %struct.file_ctx* %42, %struct.file_ctx** %44, align 8
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %33, %23, %15
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @ieee1394_file_to_instance(%struct.file*) #1

declare dso_local %struct.ti_ohci* @hpsb_get_hostinfo_bykey(i32*, i32) #1

declare dso_local %struct.file_ctx* @kzalloc(i32, i32) #1

declare dso_local i32 @PRINT(i32, i32, i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
