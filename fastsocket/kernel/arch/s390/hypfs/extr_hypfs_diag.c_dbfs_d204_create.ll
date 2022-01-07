; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/hypfs/extr_hypfs_diag.c_dbfs_d204_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/hypfs/extr_hypfs_diag.c_dbfs_d204_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dbfs_d204 = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@diag204_buf_pages = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DBFS_D204_HDR_VERSION = common dso_local global i32 0, align 4
@diag204_store_sc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8**, i64*)* @dbfs_d204_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dbfs_d204_create(i8** %0, i8** %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.dbfs_d204*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64* %2, i64** %7, align 8
  %12 = load i32, i32* @PAGE_SIZE, align 4
  %13 = load i32, i32* @diag204_buf_pages, align 4
  %14 = add nsw i32 %13, 1
  %15 = mul nsw i32 %12, %14
  %16 = sext i32 %15 to i64
  %17 = add i64 %16, 12
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call i8* @vmalloc(i32 %19)
  store i8* %20, i8** %11, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %72

26:                                               ; preds = %3
  %27 = load i8*, i8** %11, align 8
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @memset(i8* %27, i32 0, i32 %28)
  %30 = load i8*, i8** %11, align 8
  %31 = getelementptr i8, i8* %30, i64 12
  %32 = call %struct.dbfs_d204* @page_align_ptr(i8* %31)
  %33 = getelementptr inbounds %struct.dbfs_d204, %struct.dbfs_d204* %32, i64 -12
  store %struct.dbfs_d204* %33, %struct.dbfs_d204** %8, align 8
  %34 = load %struct.dbfs_d204*, %struct.dbfs_d204** %8, align 8
  %35 = getelementptr inbounds %struct.dbfs_d204, %struct.dbfs_d204* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @diag204_buf_pages, align 4
  %38 = call i32 @diag204_do_store(i32 %36, i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %26
  %42 = load i8*, i8** %11, align 8
  %43 = call i32 @vfree(i8* %42)
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %4, align 4
  br label %72

45:                                               ; preds = %26
  %46 = load i32, i32* @DBFS_D204_HDR_VERSION, align 4
  %47 = load %struct.dbfs_d204*, %struct.dbfs_d204** %8, align 8
  %48 = getelementptr inbounds %struct.dbfs_d204, %struct.dbfs_d204* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* @PAGE_SIZE, align 4
  %51 = load i32, i32* @diag204_buf_pages, align 4
  %52 = mul nsw i32 %50, %51
  %53 = load %struct.dbfs_d204*, %struct.dbfs_d204** %8, align 8
  %54 = getelementptr inbounds %struct.dbfs_d204, %struct.dbfs_d204* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 4
  %56 = load i32, i32* @diag204_store_sc, align 4
  %57 = load %struct.dbfs_d204*, %struct.dbfs_d204** %8, align 8
  %58 = getelementptr inbounds %struct.dbfs_d204, %struct.dbfs_d204* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  store i32 %56, i32* %59, align 4
  %60 = load %struct.dbfs_d204*, %struct.dbfs_d204** %8, align 8
  %61 = bitcast %struct.dbfs_d204* %60 to i8*
  %62 = load i8**, i8*** %5, align 8
  store i8* %61, i8** %62, align 8
  %63 = load i8*, i8** %11, align 8
  %64 = load i8**, i8*** %6, align 8
  store i8* %63, i8** %64, align 8
  %65 = load %struct.dbfs_d204*, %struct.dbfs_d204** %8, align 8
  %66 = getelementptr inbounds %struct.dbfs_d204, %struct.dbfs_d204* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = add i64 %69, 4
  %71 = load i64*, i64** %7, align 8
  store i64 %70, i64* %71, align 8
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %45, %41, %23
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i8* @vmalloc(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local %struct.dbfs_d204* @page_align_ptr(i8*) #1

declare dso_local i32 @diag204_do_store(i32, i32) #1

declare dso_local i32 @vfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
