; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_dma-buf.c_dma_buf_export.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_dma-buf.c_dma_buf_export.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_buf = type { i64, i32, i32, %struct.file*, %struct.dma_buf_ops*, i8* }
%struct.file = type { i32 }
%struct.dma_buf_ops = type { i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"dmabuf\00", align 1
@dma_buf_fops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dma_buf* @dma_buf_export(i8* %0, %struct.dma_buf_ops* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.dma_buf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dma_buf_ops*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dma_buf*, align 8
  %11 = alloca %struct.file*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.dma_buf_ops* %1, %struct.dma_buf_ops** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %48

14:                                               ; preds = %4
  %15 = load %struct.dma_buf_ops*, %struct.dma_buf_ops** %7, align 8
  %16 = icmp ne %struct.dma_buf_ops* %15, null
  br i1 %16, label %17, label %48

17:                                               ; preds = %14
  %18 = load %struct.dma_buf_ops*, %struct.dma_buf_ops** %7, align 8
  %19 = getelementptr inbounds %struct.dma_buf_ops, %struct.dma_buf_ops* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %48

22:                                               ; preds = %17
  %23 = load %struct.dma_buf_ops*, %struct.dma_buf_ops** %7, align 8
  %24 = getelementptr inbounds %struct.dma_buf_ops, %struct.dma_buf_ops* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %48

27:                                               ; preds = %22
  %28 = load %struct.dma_buf_ops*, %struct.dma_buf_ops** %7, align 8
  %29 = getelementptr inbounds %struct.dma_buf_ops, %struct.dma_buf_ops* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %27
  %33 = load %struct.dma_buf_ops*, %struct.dma_buf_ops** %7, align 8
  %34 = getelementptr inbounds %struct.dma_buf_ops, %struct.dma_buf_ops* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %32
  %38 = load %struct.dma_buf_ops*, %struct.dma_buf_ops** %7, align 8
  %39 = getelementptr inbounds %struct.dma_buf_ops, %struct.dma_buf_ops* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.dma_buf_ops*, %struct.dma_buf_ops** %7, align 8
  %44 = getelementptr inbounds %struct.dma_buf_ops, %struct.dma_buf_ops* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  br label %48

48:                                               ; preds = %42, %37, %32, %27, %22, %17, %14, %4
  %49 = phi i1 [ true, %37 ], [ true, %32 ], [ true, %27 ], [ true, %22 ], [ true, %17 ], [ true, %14 ], [ true, %4 ], [ %47, %42 ]
  %50 = zext i1 %49 to i32
  %51 = call i64 @WARN_ON(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  %56 = call %struct.dma_buf* @ERR_PTR(i32 %55)
  store %struct.dma_buf* %56, %struct.dma_buf** %5, align 8
  br label %89

57:                                               ; preds = %48
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call %struct.dma_buf* @kzalloc(i32 40, i32 %58)
  store %struct.dma_buf* %59, %struct.dma_buf** %10, align 8
  %60 = load %struct.dma_buf*, %struct.dma_buf** %10, align 8
  %61 = icmp eq %struct.dma_buf* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  %65 = call %struct.dma_buf* @ERR_PTR(i32 %64)
  store %struct.dma_buf* %65, %struct.dma_buf** %5, align 8
  br label %89

66:                                               ; preds = %57
  %67 = load i8*, i8** %6, align 8
  %68 = load %struct.dma_buf*, %struct.dma_buf** %10, align 8
  %69 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %68, i32 0, i32 5
  store i8* %67, i8** %69, align 8
  %70 = load %struct.dma_buf_ops*, %struct.dma_buf_ops** %7, align 8
  %71 = load %struct.dma_buf*, %struct.dma_buf** %10, align 8
  %72 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %71, i32 0, i32 4
  store %struct.dma_buf_ops* %70, %struct.dma_buf_ops** %72, align 8
  %73 = load i64, i64* %8, align 8
  %74 = load %struct.dma_buf*, %struct.dma_buf** %10, align 8
  %75 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = load %struct.dma_buf*, %struct.dma_buf** %10, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call %struct.file* @anon_inode_getfile(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* @dma_buf_fops, %struct.dma_buf* %76, i32 %77)
  store %struct.file* %78, %struct.file** %11, align 8
  %79 = load %struct.file*, %struct.file** %11, align 8
  %80 = load %struct.dma_buf*, %struct.dma_buf** %10, align 8
  %81 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %80, i32 0, i32 3
  store %struct.file* %79, %struct.file** %81, align 8
  %82 = load %struct.dma_buf*, %struct.dma_buf** %10, align 8
  %83 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %82, i32 0, i32 2
  %84 = call i32 @mutex_init(i32* %83)
  %85 = load %struct.dma_buf*, %struct.dma_buf** %10, align 8
  %86 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %85, i32 0, i32 1
  %87 = call i32 @INIT_LIST_HEAD(i32* %86)
  %88 = load %struct.dma_buf*, %struct.dma_buf** %10, align 8
  store %struct.dma_buf* %88, %struct.dma_buf** %5, align 8
  br label %89

89:                                               ; preds = %66, %62, %53
  %90 = load %struct.dma_buf*, %struct.dma_buf** %5, align 8
  ret %struct.dma_buf* %90
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.dma_buf* @ERR_PTR(i32) #1

declare dso_local %struct.dma_buf* @kzalloc(i32, i32) #1

declare dso_local %struct.file* @anon_inode_getfile(i8*, i32*, %struct.dma_buf*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
