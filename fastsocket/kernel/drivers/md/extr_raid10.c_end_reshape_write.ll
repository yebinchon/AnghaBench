; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid10.c_end_reshape_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid10.c_end_reshape_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { %struct.r10bio*, i32 }
%struct.r10bio = type { %struct.mddev* }
%struct.mddev = type { %struct.r10conf* }
%struct.r10conf = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.md_rdev*, %struct.md_rdev* }
%struct.md_rdev = type { i32 }

@BIO_UPTODATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*, i32)* @end_reshape_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @end_reshape_write(%struct.bio* %0, i32 %1) #0 {
  %3 = alloca %struct.bio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.r10bio*, align 8
  %7 = alloca %struct.mddev*, align 8
  %8 = alloca %struct.r10conf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.md_rdev*, align 8
  store %struct.bio* %0, %struct.bio** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load i32, i32* @BIO_UPTODATE, align 4
  %14 = load %struct.bio*, %struct.bio** %3, align 8
  %15 = getelementptr inbounds %struct.bio, %struct.bio* %14, i32 0, i32 1
  %16 = call i32 @test_bit(i32 %13, i32* %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.bio*, %struct.bio** %3, align 8
  %18 = getelementptr inbounds %struct.bio, %struct.bio* %17, i32 0, i32 0
  %19 = load %struct.r10bio*, %struct.r10bio** %18, align 8
  store %struct.r10bio* %19, %struct.r10bio** %6, align 8
  %20 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %21 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %20, i32 0, i32 0
  %22 = load %struct.mddev*, %struct.mddev** %21, align 8
  store %struct.mddev* %22, %struct.mddev** %7, align 8
  %23 = load %struct.mddev*, %struct.mddev** %7, align 8
  %24 = getelementptr inbounds %struct.mddev, %struct.mddev* %23, i32 0, i32 0
  %25 = load %struct.r10conf*, %struct.r10conf** %24, align 8
  store %struct.r10conf* %25, %struct.r10conf** %8, align 8
  store %struct.md_rdev* null, %struct.md_rdev** %12, align 8
  %26 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %27 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %28 = load %struct.bio*, %struct.bio** %3, align 8
  %29 = call i32 @find_bio_disk(%struct.r10conf* %26, %struct.r10bio* %27, %struct.bio* %28, i32* %10, i32* %11)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %2
  %33 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %34 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load %struct.md_rdev*, %struct.md_rdev** %39, align 8
  store %struct.md_rdev* %40, %struct.md_rdev** %12, align 8
  br label %41

41:                                               ; preds = %32, %2
  %42 = load %struct.md_rdev*, %struct.md_rdev** %12, align 8
  %43 = icmp ne %struct.md_rdev* %42, null
  br i1 %43, label %54, label %44

44:                                               ; preds = %41
  %45 = call i32 (...) @smp_mb()
  %46 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %47 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load %struct.md_rdev*, %struct.md_rdev** %52, align 8
  store %struct.md_rdev* %53, %struct.md_rdev** %12, align 8
  br label %54

54:                                               ; preds = %44, %41
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %54
  %58 = load %struct.mddev*, %struct.mddev** %7, align 8
  %59 = load %struct.md_rdev*, %struct.md_rdev** %12, align 8
  %60 = call i32 @md_error(%struct.mddev* %58, %struct.md_rdev* %59)
  br label %61

61:                                               ; preds = %57, %54
  %62 = load %struct.md_rdev*, %struct.md_rdev** %12, align 8
  %63 = load %struct.mddev*, %struct.mddev** %7, align 8
  %64 = call i32 @rdev_dec_pending(%struct.md_rdev* %62, %struct.mddev* %63)
  %65 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %66 = call i32 @end_reshape_request(%struct.r10bio* %65)
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @find_bio_disk(%struct.r10conf*, %struct.r10bio*, %struct.bio*, i32*, i32*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @md_error(%struct.mddev*, %struct.md_rdev*) #1

declare dso_local i32 @rdev_dec_pending(%struct.md_rdev*, %struct.mddev*) #1

declare dso_local i32 @end_reshape_request(%struct.r10bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
