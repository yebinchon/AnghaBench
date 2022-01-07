; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_ftl.c_erase_xfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_ftl.c_erase_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.xfer_info_t* }
%struct.TYPE_7__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_9__*, %struct.erase_info*)* }
%struct.erase_info = type { i32, i64, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_6__ = type { i32 }
%struct.xfer_info_t = type { i32, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"ftl_cs: erasing xfer unit at 0x%x\0A\00", align 1
@XFER_ERASING = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ftl_erase_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i64)* @erase_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @erase_xfer(%struct.TYPE_8__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xfer_info_t*, align 8
  %8 = alloca %struct.erase_info*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  %11 = load %struct.xfer_info_t*, %struct.xfer_info_t** %10, align 8
  %12 = load i64, i64* %5, align 8
  %13 = getelementptr inbounds %struct.xfer_info_t, %struct.xfer_info_t* %11, i64 %12
  store %struct.xfer_info_t* %13, %struct.xfer_info_t** %7, align 8
  %14 = load %struct.xfer_info_t*, %struct.xfer_info_t** %7, align 8
  %15 = getelementptr inbounds %struct.xfer_info_t, %struct.xfer_info_t* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @DEBUG(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @XFER_ERASING, align 4
  %19 = load %struct.xfer_info_t*, %struct.xfer_info_t** %7, align 8
  %20 = getelementptr inbounds %struct.xfer_info_t, %struct.xfer_info_t* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.erase_info* @kmalloc(i32 32, i32 %21)
  store %struct.erase_info* %22, %struct.erase_info** %8, align 8
  %23 = load %struct.erase_info*, %struct.erase_info** %8, align 8
  %24 = icmp ne %struct.erase_info* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %78

28:                                               ; preds = %2
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = load %struct.erase_info*, %struct.erase_info** %8, align 8
  %34 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %33, i32 0, i32 4
  store %struct.TYPE_9__* %32, %struct.TYPE_9__** %34, align 8
  %35 = load i32, i32* @ftl_erase_callback, align 4
  %36 = load %struct.erase_info*, %struct.erase_info** %8, align 8
  %37 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load %struct.xfer_info_t*, %struct.xfer_info_t** %7, align 8
  %39 = getelementptr inbounds %struct.xfer_info_t, %struct.xfer_info_t* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.erase_info*, %struct.erase_info** %8, align 8
  %42 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = shl i32 1, %46
  %48 = load %struct.erase_info*, %struct.erase_info** %8, align 8
  %49 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %51 = ptrtoint %struct.TYPE_8__* %50 to i64
  %52 = load %struct.erase_info*, %struct.erase_info** %8, align 8
  %53 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32 (%struct.TYPE_9__*, %struct.erase_info*)*, i32 (%struct.TYPE_9__*, %struct.erase_info*)** %58, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = load %struct.erase_info*, %struct.erase_info** %8, align 8
  %65 = call i32 %59(%struct.TYPE_9__* %63, %struct.erase_info* %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %28
  %69 = load %struct.xfer_info_t*, %struct.xfer_info_t** %7, align 8
  %70 = getelementptr inbounds %struct.xfer_info_t, %struct.xfer_info_t* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  br label %76

73:                                               ; preds = %28
  %74 = load %struct.erase_info*, %struct.erase_info** %8, align 8
  %75 = call i32 @kfree(%struct.erase_info* %74)
  br label %76

76:                                               ; preds = %73, %68
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %76, %25
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @DEBUG(i32, i8*, i32) #1

declare dso_local %struct.erase_info* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.erase_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
