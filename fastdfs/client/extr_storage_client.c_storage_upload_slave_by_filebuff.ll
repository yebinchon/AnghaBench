; ModuleID = '/home/carl/AnghaBench/fastdfs/client/extr_storage_client.c_storage_upload_slave_by_filebuff.c'
source_filename = "/home/carl/AnghaBench/fastdfs/client/extr_storage_client.c_storage_upload_slave_by_filebuff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@STORAGE_PROTO_CMD_UPLOAD_SLAVE_FILE = common dso_local global i32 0, align 4
@FDFS_UPLOAD_BY_BUFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @storage_upload_slave_by_filebuff(i32* %0, i32* %1, i8* %2, i32 %3, i8* %4, i8* %5, i8* %6, i32* %7, i32 %8, i8* %9, i8* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  store i32* %0, i32** %13, align 8
  store i32* %1, i32** %14, align 8
  store i8* %2, i8** %15, align 8
  store i32 %3, i32* %16, align 4
  store i8* %4, i8** %17, align 8
  store i8* %5, i8** %18, align 8
  store i8* %6, i8** %19, align 8
  store i32* %7, i32** %20, align 8
  store i32 %8, i32* %21, align 4
  store i8* %9, i8** %22, align 8
  store i8* %10, i8** %23, align 8
  %24 = load i8*, i8** %17, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %47, label %26

26:                                               ; preds = %11
  %27 = load i8*, i8** %17, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %47, label %31

31:                                               ; preds = %26
  %32 = load i8*, i8** %18, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %47, label %34

34:                                               ; preds = %31
  %35 = load i8*, i8** %18, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %34
  %40 = load i8*, i8** %22, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %39
  %43 = load i8*, i8** %22, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42, %39, %34, %31, %26, %11
  %48 = load i32, i32* @EINVAL, align 4
  store i32 %48, i32* %12, align 4
  br label %64

49:                                               ; preds = %42
  %50 = load i32*, i32** %13, align 8
  %51 = load i32*, i32** %14, align 8
  %52 = load i32, i32* @STORAGE_PROTO_CMD_UPLOAD_SLAVE_FILE, align 4
  %53 = load i32, i32* @FDFS_UPLOAD_BY_BUFF, align 4
  %54 = load i8*, i8** %15, align 8
  %55 = load i32, i32* %16, align 4
  %56 = load i8*, i8** %17, align 8
  %57 = load i8*, i8** %18, align 8
  %58 = load i8*, i8** %19, align 8
  %59 = load i32*, i32** %20, align 8
  %60 = load i32, i32* %21, align 4
  %61 = load i8*, i8** %22, align 8
  %62 = load i8*, i8** %23, align 8
  %63 = call i32 @storage_do_upload_file(i32* %50, i32* %51, i32 0, i32 %52, i32 %53, i8* %54, i32* null, i32 %55, i8* %56, i8* %57, i8* %58, i32* %59, i32 %60, i8* %61, i8* %62)
  store i32 %63, i32* %12, align 4
  br label %64

64:                                               ; preds = %49, %47
  %65 = load i32, i32* %12, align 4
  ret i32 %65
}

declare dso_local i32 @storage_do_upload_file(i32*, i32*, i32, i32, i32, i8*, i32*, i32, i8*, i8*, i8*, i32*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
