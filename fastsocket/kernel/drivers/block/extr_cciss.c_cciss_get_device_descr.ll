; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_cciss.c_cciss_get_device_descr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_cciss.c_cciss_get_device_descr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@CISS_INQUIRY = common dso_local global i32 0, align 4
@TYPE_CMD = common dso_local global i32 0, align 4
@IO_OK = common dso_local global i32 0, align 4
@VENDOR_LEN = common dso_local global i64 0, align 8
@MODEL_LEN = common dso_local global i64 0, align 8
@REV_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*, i8*, i8*)* @cciss_get_device_descr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cciss_get_device_descr(i32* %0, i32 %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca [8 x i8], align 1
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %14 = load i8*, i8** %8, align 8
  store i8 0, i8* %14, align 1
  %15 = load i8*, i8** %9, align 8
  store i8 0, i8* %15, align 1
  %16 = load i8*, i8** %10, align 8
  store i8 0, i8* %16, align 1
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.TYPE_5__* @kzalloc(i32 8, i32 %17)
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %12, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %20 = icmp ne %struct.TYPE_5__* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %5
  br label %70

22:                                               ; preds = %5
  %23 = load i32*, i32** %6, align 8
  %24 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @log_unit_to_scsi3addr(i32* %23, i8* %24, i32 %25)
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* @CISS_INQUIRY, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %30 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0
  %31 = load i32, i32* @TYPE_CMD, align 4
  %32 = call i32 @sendcmd_withirq(i32* %27, i32 %28, %struct.TYPE_5__* %29, i32 8, i32 0, i8* %30, i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @IO_OK, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %67

36:                                               ; preds = %22
  %37 = load i8*, i8** %8, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 8
  %42 = load i64, i64* @VENDOR_LEN, align 8
  %43 = call i32 @memcpy(i8* %37, i32* %41, i64 %42)
  %44 = load i8*, i8** %8, align 8
  %45 = load i64, i64* @VENDOR_LEN, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8 0, i8* %46, align 1
  %47 = load i8*, i8** %9, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 16
  %52 = load i64, i64* @MODEL_LEN, align 8
  %53 = call i32 @memcpy(i8* %47, i32* %51, i64 %52)
  %54 = load i8*, i8** %9, align 8
  %55 = load i64, i64* @MODEL_LEN, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8 0, i8* %56, align 1
  %57 = load i8*, i8** %10, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 32
  %62 = load i64, i64* @REV_LEN, align 8
  %63 = call i32 @memcpy(i8* %57, i32* %61, i64 %62)
  %64 = load i8*, i8** %10, align 8
  %65 = load i64, i64* @REV_LEN, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  store i8 0, i8* %66, align 1
  br label %67

67:                                               ; preds = %36, %22
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %69 = call i32 @kfree(%struct.TYPE_5__* %68)
  br label %70

70:                                               ; preds = %67, %21
  ret void
}

declare dso_local %struct.TYPE_5__* @kzalloc(i32, i32) #1

declare dso_local i32 @log_unit_to_scsi3addr(i32*, i8*, i32) #1

declare dso_local i32 @sendcmd_withirq(i32*, i32, %struct.TYPE_5__*, i32, i32, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

declare dso_local i32 @kfree(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
