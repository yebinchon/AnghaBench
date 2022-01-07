; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-lib.c_blkdev_issue_zeroout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-lib.c_blkdev_issue_zeroout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32 }
%struct.bio = type { %struct.bio_batch*, i32, %struct.block_device*, i64 }
%struct.bio_batch = type { i32, i32, i32* }

@wait = common dso_local global i32 0, align 4
@BIO_UPTODATE = common dso_local global i32 0, align 4
@BIO_MAX_PAGES = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@bio_batch_end_io = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@WRITE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blkdev_issue_zeroout(%struct.block_device* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.block_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bio*, align 8
  %11 = alloca %struct.bio_batch, align 8
  %12 = alloca i32, align 4
  store %struct.block_device* %0, %struct.block_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* @wait, align 4
  %14 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %13)
  %15 = getelementptr inbounds %struct.bio_batch, %struct.bio_batch* %11, i32 0, i32 1
  %16 = call i32 @atomic_set(i32* %15, i32 1)
  %17 = load i32, i32* @BIO_UPTODATE, align 4
  %18 = shl i32 1, %17
  %19 = getelementptr inbounds %struct.bio_batch, %struct.bio_batch* %11, i32 0, i32 0
  store i32 %18, i32* %19, align 8
  %20 = getelementptr inbounds %struct.bio_batch, %struct.bio_batch* %11, i32 0, i32 2
  store i32* @wait, i32** %20, align 8
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %76, %4
  %22 = load i64, i64* %7, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %82

24:                                               ; preds = %21
  %25 = load i32, i32* %8, align 4
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* @BIO_MAX_PAGES, align 8
  %28 = call i32 @min(i64 %26, i64 %27)
  %29 = call %struct.bio* @bio_alloc(i32 %25, i32 %28)
  store %struct.bio* %29, %struct.bio** %10, align 8
  %30 = load %struct.bio*, %struct.bio** %10, align 8
  %31 = icmp ne %struct.bio* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %24
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %9, align 4
  br label %82

35:                                               ; preds = %24
  %36 = load i64, i64* %6, align 8
  %37 = load %struct.bio*, %struct.bio** %10, align 8
  %38 = getelementptr inbounds %struct.bio, %struct.bio* %37, i32 0, i32 3
  store i64 %36, i64* %38, align 8
  %39 = load %struct.block_device*, %struct.block_device** %5, align 8
  %40 = load %struct.bio*, %struct.bio** %10, align 8
  %41 = getelementptr inbounds %struct.bio, %struct.bio* %40, i32 0, i32 2
  store %struct.block_device* %39, %struct.block_device** %41, align 8
  %42 = load i32, i32* @bio_batch_end_io, align 4
  %43 = load %struct.bio*, %struct.bio** %10, align 8
  %44 = getelementptr inbounds %struct.bio, %struct.bio* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load %struct.bio*, %struct.bio** %10, align 8
  %46 = getelementptr inbounds %struct.bio, %struct.bio* %45, i32 0, i32 0
  store %struct.bio_batch* %11, %struct.bio_batch** %46, align 8
  br label %47

47:                                               ; preds = %75, %35
  %48 = load i64, i64* %7, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %76

50:                                               ; preds = %47
  %51 = load i64, i64* @PAGE_SIZE, align 8
  %52 = ashr i64 %51, 9
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @min(i64 %52, i64 %53)
  store i32 %54, i32* %12, align 4
  %55 = load %struct.bio*, %struct.bio** %10, align 8
  %56 = call i32 @ZERO_PAGE(i32 0)
  %57 = load i32, i32* %12, align 4
  %58 = shl i32 %57, 9
  %59 = call i32 @bio_add_page(%struct.bio* %55, i32 %56, i32 %58, i32 0)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = ashr i32 %60, 9
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* %7, align 8
  %64 = sub nsw i64 %63, %62
  store i64 %64, i64* %7, align 8
  %65 = load i32, i32* %9, align 4
  %66 = ashr i32 %65, 9
  %67 = sext i32 %66 to i64
  %68 = load i64, i64* %6, align 8
  %69 = add nsw i64 %68, %67
  store i64 %69, i64* %6, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %12, align 4
  %72 = shl i32 %71, 9
  %73 = icmp ult i32 %70, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %50
  br label %76

75:                                               ; preds = %50
  br label %47

76:                                               ; preds = %74, %47
  store i32 0, i32* %9, align 4
  %77 = getelementptr inbounds %struct.bio_batch, %struct.bio_batch* %11, i32 0, i32 1
  %78 = call i32 @atomic_inc(i32* %77)
  %79 = load i32, i32* @WRITE, align 4
  %80 = load %struct.bio*, %struct.bio** %10, align 8
  %81 = call i32 @submit_bio(i32 %79, %struct.bio* %80)
  br label %21

82:                                               ; preds = %32, %21
  %83 = getelementptr inbounds %struct.bio_batch, %struct.bio_batch* %11, i32 0, i32 1
  %84 = call i32 @atomic_dec_and_test(i32* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %82
  %87 = call i32 @wait_for_completion(i32* @wait)
  br label %88

88:                                               ; preds = %86, %82
  %89 = load i32, i32* @BIO_UPTODATE, align 4
  %90 = getelementptr inbounds %struct.bio_batch, %struct.bio_batch* %11, i32 0, i32 0
  %91 = call i32 @test_bit(i32 %89, i32* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %88
  %94 = load i32, i32* @EIO, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %9, align 4
  br label %96

96:                                               ; preds = %93, %88
  %97 = load i32, i32* %9, align 4
  ret i32 %97
}

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local %struct.bio* @bio_alloc(i32, i32) #1

declare dso_local i32 @min(i64, i64) #1

declare dso_local i32 @bio_add_page(%struct.bio*, i32, i32, i32) #1

declare dso_local i32 @ZERO_PAGE(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @submit_bio(i32, %struct.bio*) #1

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
