; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sr_ioctl.c_sr_is_xa.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sr_ioctl.c_sr_is_xa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32 }

@xa_test = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CD_FRAMESIZE_RAW1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sr_is_xa(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %6 = load i32, i32* @xa_test, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %43

9:                                                ; preds = %1
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = call i32 @SR_GFP_DMA(%struct.TYPE_7__* %11)
  %13 = or i32 %10, %12
  %14 = call i8* @kmalloc(i32 2048, i32 %13)
  store i8* %14, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %9
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %43

20:                                               ; preds = %9
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 16
  %26 = load i32, i32* @CD_FRAMESIZE_RAW1, align 4
  %27 = load i8*, i8** %4, align 8
  %28 = call i64 @sr_read_sector(%struct.TYPE_7__* %21, i64 %25, i32 %26, i8* %27)
  %29 = icmp eq i64 0, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %20
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 3
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 1, i32 0
  store i32 %37, i32* %5, align 4
  br label %39

38:                                               ; preds = %20
  store i32 -1, i32* %5, align 4
  br label %39

39:                                               ; preds = %38, %30
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 @kfree(i8* %40)
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %39, %17, %8
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @SR_GFP_DMA(%struct.TYPE_7__*) #1

declare dso_local i64 @sr_read_sector(%struct.TYPE_7__*, i64, i32, i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
