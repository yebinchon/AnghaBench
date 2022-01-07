; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_cciss.c_cciss_get_serial_no.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_cciss.c_cciss_get_serial_no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GFP_KERNEL = common dso_local global i32 0, align 4
@CISS_INQUIRY = common dso_local global i32 0, align 4
@TYPE_CMD = common dso_local global i32 0, align 4
@IO_OK = common dso_local global i32 0, align 4
@PAGE_83_INQ_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*, i32)* @cciss_get_serial_no to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cciss_get_serial_no(i32* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca [8 x i8], align 1
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp sgt i32 %12, 16
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32 16, i32* %8, align 4
  br label %15

15:                                               ; preds = %14, %4
  %16 = load i8*, i8** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @memset(i8* %16, i32 255, i32 %17)
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i8* @kzalloc(i32 64, i32 %19)
  store i8* %20, i8** %10, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %15
  br label %50

24:                                               ; preds = %15
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @memset(i8* %25, i32 0, i32 %26)
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 0
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @log_unit_to_scsi3addr(i32* %28, i8* %29, i32 %30)
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* @CISS_INQUIRY, align 4
  %34 = load i8*, i8** %10, align 8
  %35 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 0
  %36 = load i32, i32* @TYPE_CMD, align 4
  %37 = call i32 @sendcmd_withirq(i32* %32, i32 %33, i8* %34, i32 64, i32 131, i8* %35, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @IO_OK, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %24
  %42 = load i8*, i8** %7, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @memcpy(i8* %42, i8* %44, i32 %45)
  br label %47

47:                                               ; preds = %41, %24
  %48 = load i8*, i8** %10, align 8
  %49 = call i32 @kfree(i8* %48)
  br label %50

50:                                               ; preds = %47, %23
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @log_unit_to_scsi3addr(i32*, i8*, i32) #1

declare dso_local i32 @sendcmd_withirq(i32*, i32, i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
