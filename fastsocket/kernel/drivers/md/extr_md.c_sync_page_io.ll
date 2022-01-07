; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_sync_page_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_sync_page_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_rdev = type { i64, i64, i64, %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.page = type { i32 }
%struct.bio = type { i32, i32, %struct.completion*, i64, i64 }
%struct.completion = type { i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@BIO_RW_SYNCIO = common dso_local global i32 0, align 4
@BIO_RW_UNPLUG = common dso_local global i32 0, align 4
@MaxSector = common dso_local global i64 0, align 8
@bi_complete = common dso_local global i32 0, align 4
@BIO_UPTODATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sync_page_io(%struct.md_rdev* %0, i64 %1, i32 %2, %struct.page* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.md_rdev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.page*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.bio*, align 8
  %14 = alloca %struct.completion, align 4
  %15 = alloca i32, align 4
  store %struct.md_rdev* %0, %struct.md_rdev** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.page* %3, %struct.page** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load i32, i32* @GFP_NOIO, align 4
  %17 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %18 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %17, i32 0, i32 3
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = call %struct.bio* @bio_alloc_mddev(i32 %16, i32 1, %struct.TYPE_2__* %19)
  store %struct.bio* %20, %struct.bio** %13, align 8
  %21 = load i32, i32* @BIO_RW_SYNCIO, align 4
  %22 = shl i32 1, %21
  %23 = load i32, i32* @BIO_RW_UNPLUG, align 4
  %24 = shl i32 1, %23
  %25 = or i32 %22, %24
  %26 = load i32, i32* %11, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %6
  %31 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %32 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %37 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %36, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  br label %43

39:                                               ; preds = %30, %6
  %40 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %41 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  br label %43

43:                                               ; preds = %39, %35
  %44 = phi i64 [ %38, %35 ], [ %42, %39 ]
  %45 = load %struct.bio*, %struct.bio** %13, align 8
  %46 = getelementptr inbounds %struct.bio, %struct.bio* %45, i32 0, i32 4
  store i64 %44, i64* %46, align 8
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %43
  %50 = load i64, i64* %8, align 8
  %51 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %52 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %50, %53
  %55 = load %struct.bio*, %struct.bio** %13, align 8
  %56 = getelementptr inbounds %struct.bio, %struct.bio* %55, i32 0, i32 3
  store i64 %54, i64* %56, align 8
  br label %97

57:                                               ; preds = %43
  %58 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %59 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %58, i32 0, i32 3
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @MaxSector, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %88

65:                                               ; preds = %57
  %66 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %67 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %66, i32 0, i32 3
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i64, i64* %8, align 8
  %72 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %73 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %72, i32 0, i32 3
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp sge i64 %71, %76
  %78 = zext i1 %77 to i32
  %79 = icmp eq i32 %70, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %65
  %81 = load i64, i64* %8, align 8
  %82 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %83 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %81, %84
  %86 = load %struct.bio*, %struct.bio** %13, align 8
  %87 = getelementptr inbounds %struct.bio, %struct.bio* %86, i32 0, i32 3
  store i64 %85, i64* %87, align 8
  br label %96

88:                                               ; preds = %65, %57
  %89 = load i64, i64* %8, align 8
  %90 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %91 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %89, %92
  %94 = load %struct.bio*, %struct.bio** %13, align 8
  %95 = getelementptr inbounds %struct.bio, %struct.bio* %94, i32 0, i32 3
  store i64 %93, i64* %95, align 8
  br label %96

96:                                               ; preds = %88, %80
  br label %97

97:                                               ; preds = %96, %49
  %98 = load %struct.bio*, %struct.bio** %13, align 8
  %99 = load %struct.page*, %struct.page** %10, align 8
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @bio_add_page(%struct.bio* %98, %struct.page* %99, i32 %100, i32 0)
  %102 = call i32 @init_completion(%struct.completion* %14)
  %103 = load %struct.bio*, %struct.bio** %13, align 8
  %104 = getelementptr inbounds %struct.bio, %struct.bio* %103, i32 0, i32 2
  store %struct.completion* %14, %struct.completion** %104, align 8
  %105 = load i32, i32* @bi_complete, align 4
  %106 = load %struct.bio*, %struct.bio** %13, align 8
  %107 = getelementptr inbounds %struct.bio, %struct.bio* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* %11, align 4
  %109 = load %struct.bio*, %struct.bio** %13, align 8
  %110 = call i32 @submit_bio(i32 %108, %struct.bio* %109)
  %111 = call i32 @wait_for_completion(%struct.completion* %14)
  %112 = load i32, i32* @BIO_UPTODATE, align 4
  %113 = load %struct.bio*, %struct.bio** %13, align 8
  %114 = getelementptr inbounds %struct.bio, %struct.bio* %113, i32 0, i32 0
  %115 = call i32 @test_bit(i32 %112, i32* %114)
  store i32 %115, i32* %15, align 4
  %116 = load %struct.bio*, %struct.bio** %13, align 8
  %117 = call i32 @bio_put(%struct.bio* %116)
  %118 = load i32, i32* %15, align 4
  ret i32 %118
}

declare dso_local %struct.bio* @bio_alloc_mddev(i32, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @bio_add_page(%struct.bio*, %struct.page*, i32, i32) #1

declare dso_local i32 @init_completion(%struct.completion*) #1

declare dso_local i32 @submit_bio(i32, %struct.bio*) #1

declare dso_local i32 @wait_for_completion(%struct.completion*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
