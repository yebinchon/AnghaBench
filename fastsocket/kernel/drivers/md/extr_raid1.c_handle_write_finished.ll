; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid1.c_handle_write_finished.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid1.c_handle_write_finished.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r1conf = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.md_rdev* }
%struct.md_rdev = type { i32 }
%struct.r1bio = type { i32, i32**, i32, i32 }

@IO_MADE_GOOD = common dso_local global i32* null, align 8
@R1BIO_Degraded = common dso_local global i32 0, align 4
@R1BIO_WriteError = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r1conf*, %struct.r1bio*)* @handle_write_finished to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_write_finished(%struct.r1conf* %0, %struct.r1bio* %1) #0 {
  %3 = alloca %struct.r1conf*, align 8
  %4 = alloca %struct.r1bio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.md_rdev*, align 8
  store %struct.r1conf* %0, %struct.r1conf** %3, align 8
  store %struct.r1bio* %1, %struct.r1bio** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %92, %2
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %10 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = mul nsw i32 %11, 2
  %13 = icmp slt i32 %8, %12
  br i1 %13, label %14, label %95

14:                                               ; preds = %7
  %15 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %16 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %15, i32 0, i32 1
  %17 = load i32**, i32*** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32*, i32** %17, i64 %19
  %21 = load i32*, i32** %20, align 8
  %22 = load i32*, i32** @IO_MADE_GOOD, align 8
  %23 = icmp eq i32* %21, %22
  br i1 %23, label %24, label %46

24:                                               ; preds = %14
  %25 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %26 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.md_rdev*, %struct.md_rdev** %31, align 8
  store %struct.md_rdev* %32, %struct.md_rdev** %6, align 8
  %33 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %34 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %35 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %38 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @rdev_clear_badblocks(%struct.md_rdev* %33, i32 %36, i32 %39, i32 0)
  %41 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %42 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %43 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @rdev_dec_pending(%struct.md_rdev* %41, i32 %44)
  br label %91

46:                                               ; preds = %14
  %47 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %48 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %47, i32 0, i32 1
  %49 = load i32**, i32*** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %49, i64 %51
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %90

55:                                               ; preds = %46
  %56 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @narrow_write_error(%struct.r1bio* %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %77, label %60

60:                                               ; preds = %55
  %61 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %62 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %65 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %64, i32 0, i32 2
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load %struct.md_rdev*, %struct.md_rdev** %70, align 8
  %72 = call i32 @md_error(i32 %63, %struct.md_rdev* %71)
  %73 = load i32, i32* @R1BIO_Degraded, align 4
  %74 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %75 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %74, i32 0, i32 0
  %76 = call i32 @set_bit(i32 %73, i32* %75)
  br label %77

77:                                               ; preds = %60, %55
  %78 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %79 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %78, i32 0, i32 2
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load %struct.md_rdev*, %struct.md_rdev** %84, align 8
  %86 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %87 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @rdev_dec_pending(%struct.md_rdev* %85, i32 %88)
  br label %90

90:                                               ; preds = %77, %46
  br label %91

91:                                               ; preds = %90, %24
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %5, align 4
  br label %7

95:                                               ; preds = %7
  %96 = load i32, i32* @R1BIO_WriteError, align 4
  %97 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %98 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %97, i32 0, i32 0
  %99 = call i64 @test_bit(i32 %96, i32* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %103 = call i32 @close_write(%struct.r1bio* %102)
  br label %104

104:                                              ; preds = %101, %95
  %105 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %106 = call i32 @raid_end_bio_io(%struct.r1bio* %105)
  ret void
}

declare dso_local i32 @rdev_clear_badblocks(%struct.md_rdev*, i32, i32, i32) #1

declare dso_local i32 @rdev_dec_pending(%struct.md_rdev*, i32) #1

declare dso_local i32 @narrow_write_error(%struct.r1bio*, i32) #1

declare dso_local i32 @md_error(i32, %struct.md_rdev*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @close_write(%struct.r1bio*) #1

declare dso_local i32 @raid_end_bio_io(%struct.r1bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
