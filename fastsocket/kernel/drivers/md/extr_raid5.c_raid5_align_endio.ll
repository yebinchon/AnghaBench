; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_raid5_align_endio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_raid5_align_endio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, i32*, i32, %struct.bio* }
%struct.mddev = type { %struct.r5conf* }
%struct.r5conf = type { i32, i32, i32 }
%struct.md_rdev = type { %struct.mddev* }

@BIO_UPTODATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"raid5_align_endio : io error...handing IO for a retry\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*, i32)* @raid5_align_endio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raid5_align_endio(%struct.bio* %0, i32 %1) #0 {
  %3 = alloca %struct.bio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.mddev*, align 8
  %7 = alloca %struct.r5conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.md_rdev*, align 8
  store %struct.bio* %0, %struct.bio** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.bio*, %struct.bio** %3, align 8
  %11 = getelementptr inbounds %struct.bio, %struct.bio* %10, i32 0, i32 3
  %12 = load %struct.bio*, %struct.bio** %11, align 8
  store %struct.bio* %12, %struct.bio** %5, align 8
  %13 = load i32, i32* @BIO_UPTODATE, align 4
  %14 = load %struct.bio*, %struct.bio** %3, align 8
  %15 = getelementptr inbounds %struct.bio, %struct.bio* %14, i32 0, i32 2
  %16 = call i32 @test_bit(i32 %13, i32* %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.bio*, %struct.bio** %3, align 8
  %18 = call i32 @bio_put(%struct.bio* %17)
  %19 = load %struct.bio*, %struct.bio** %5, align 8
  %20 = getelementptr inbounds %struct.bio, %struct.bio* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = bitcast i32* %21 to i8*
  %23 = bitcast i8* %22 to %struct.md_rdev*
  store %struct.md_rdev* %23, %struct.md_rdev** %9, align 8
  %24 = load %struct.bio*, %struct.bio** %5, align 8
  %25 = getelementptr inbounds %struct.bio, %struct.bio* %24, i32 0, i32 1
  store i32* null, i32** %25, align 8
  %26 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %27 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %26, i32 0, i32 0
  %28 = load %struct.mddev*, %struct.mddev** %27, align 8
  store %struct.mddev* %28, %struct.mddev** %6, align 8
  %29 = load %struct.mddev*, %struct.mddev** %6, align 8
  %30 = getelementptr inbounds %struct.mddev, %struct.mddev* %29, i32 0, i32 0
  %31 = load %struct.r5conf*, %struct.r5conf** %30, align 8
  store %struct.r5conf* %31, %struct.r5conf** %7, align 8
  %32 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %33 = load %struct.r5conf*, %struct.r5conf** %7, align 8
  %34 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @rdev_dec_pending(%struct.md_rdev* %32, i32 %35)
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %60, label %39

39:                                               ; preds = %2
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %39
  %43 = load %struct.bio*, %struct.bio** %5, align 8
  %44 = getelementptr inbounds %struct.bio, %struct.bio* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @bdev_get_queue(i32 %45)
  %47 = load %struct.bio*, %struct.bio** %5, align 8
  %48 = call i32 @trace_block_bio_complete(i32 %46, %struct.bio* %47)
  %49 = load %struct.bio*, %struct.bio** %5, align 8
  %50 = call i32 @bio_endio(%struct.bio* %49, i32 0)
  %51 = load %struct.r5conf*, %struct.r5conf** %7, align 8
  %52 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %51, i32 0, i32 1
  %53 = call i64 @atomic_dec_and_test(i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %42
  %56 = load %struct.r5conf*, %struct.r5conf** %7, align 8
  %57 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %56, i32 0, i32 0
  %58 = call i32 @wake_up(i32* %57)
  br label %59

59:                                               ; preds = %55, %42
  br label %65

60:                                               ; preds = %39, %2
  %61 = call i32 @pr_debug(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %62 = load %struct.bio*, %struct.bio** %5, align 8
  %63 = load %struct.r5conf*, %struct.r5conf** %7, align 8
  %64 = call i32 @add_bio_to_retry(%struct.bio* %62, %struct.r5conf* %63)
  br label %65

65:                                               ; preds = %60, %59
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local i32 @rdev_dec_pending(%struct.md_rdev*, i32) #1

declare dso_local i32 @trace_block_bio_complete(i32, %struct.bio*) #1

declare dso_local i32 @bdev_get_queue(i32) #1

declare dso_local i32 @bio_endio(%struct.bio*, i32) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @add_bio_to_retry(%struct.bio*, %struct.r5conf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
