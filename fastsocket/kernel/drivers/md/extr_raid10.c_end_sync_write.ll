; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid10.c_end_sync_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid10.c_end_sync_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { %struct.r10bio*, i32 }
%struct.r10bio = type { i32, i32, %struct.TYPE_6__*, %struct.mddev* }
%struct.TYPE_6__ = type { i32 }
%struct.mddev = type { %struct.r10conf* }
%struct.r10conf = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.md_rdev*, %struct.md_rdev* }
%struct.md_rdev = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }

@BIO_UPTODATE = common dso_local global i32 0, align 4
@WriteErrorSeen = common dso_local global i32 0, align 4
@WantReplacement = common dso_local global i32 0, align 4
@MD_RECOVERY_NEEDED = common dso_local global i32 0, align 4
@R10BIO_WriteError = common dso_local global i32 0, align 4
@R10BIO_MadeGood = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*, i32)* @end_sync_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @end_sync_write(%struct.bio* %0, i32 %1) #0 {
  %3 = alloca %struct.bio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.r10bio*, align 8
  %7 = alloca %struct.mddev*, align 8
  %8 = alloca %struct.r10conf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.md_rdev*, align 8
  store %struct.bio* %0, %struct.bio** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load i32, i32* @BIO_UPTODATE, align 4
  %16 = load %struct.bio*, %struct.bio** %3, align 8
  %17 = getelementptr inbounds %struct.bio, %struct.bio* %16, i32 0, i32 1
  %18 = call i32 @test_bit(i32 %15, i32* %17)
  store i32 %18, i32* %5, align 4
  %19 = load %struct.bio*, %struct.bio** %3, align 8
  %20 = getelementptr inbounds %struct.bio, %struct.bio* %19, i32 0, i32 0
  %21 = load %struct.r10bio*, %struct.r10bio** %20, align 8
  store %struct.r10bio* %21, %struct.r10bio** %6, align 8
  %22 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %23 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %22, i32 0, i32 3
  %24 = load %struct.mddev*, %struct.mddev** %23, align 8
  store %struct.mddev* %24, %struct.mddev** %7, align 8
  %25 = load %struct.mddev*, %struct.mddev** %7, align 8
  %26 = getelementptr inbounds %struct.mddev, %struct.mddev* %25, i32 0, i32 0
  %27 = load %struct.r10conf*, %struct.r10conf** %26, align 8
  store %struct.r10conf* %27, %struct.r10conf** %8, align 8
  store %struct.md_rdev* null, %struct.md_rdev** %14, align 8
  %28 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %29 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %30 = load %struct.bio*, %struct.bio** %3, align 8
  %31 = call i32 @find_bio_disk(%struct.r10conf* %28, %struct.r10bio* %29, %struct.bio* %30, i32* %12, i32* %13)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %2
  %35 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %36 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load %struct.md_rdev*, %struct.md_rdev** %41, align 8
  store %struct.md_rdev* %42, %struct.md_rdev** %14, align 8
  br label %52

43:                                               ; preds = %2
  %44 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %45 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load %struct.md_rdev*, %struct.md_rdev** %50, align 8
  store %struct.md_rdev* %51, %struct.md_rdev** %14, align 8
  br label %52

52:                                               ; preds = %43, %34
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %85, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load %struct.mddev*, %struct.mddev** %7, align 8
  %60 = load %struct.md_rdev*, %struct.md_rdev** %14, align 8
  %61 = call i32 @md_error(%struct.mddev* %59, %struct.md_rdev* %60)
  br label %84

62:                                               ; preds = %55
  %63 = load i32, i32* @WriteErrorSeen, align 4
  %64 = load %struct.md_rdev*, %struct.md_rdev** %14, align 8
  %65 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %64, i32 0, i32 1
  %66 = call i32 @set_bit(i32 %63, i32* %65)
  %67 = load i32, i32* @WantReplacement, align 4
  %68 = load %struct.md_rdev*, %struct.md_rdev** %14, align 8
  %69 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %68, i32 0, i32 1
  %70 = call i32 @test_and_set_bit(i32 %67, i32* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %62
  %73 = load i32, i32* @MD_RECOVERY_NEEDED, align 4
  %74 = load %struct.md_rdev*, %struct.md_rdev** %14, align 8
  %75 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %74, i32 0, i32 0
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = call i32 @set_bit(i32 %73, i32* %77)
  br label %79

79:                                               ; preds = %72, %62
  %80 = load i32, i32* @R10BIO_WriteError, align 4
  %81 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %82 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %81, i32 0, i32 0
  %83 = call i32 @set_bit(i32 %80, i32* %82)
  br label %84

84:                                               ; preds = %79, %58
  br label %106

85:                                               ; preds = %52
  %86 = load %struct.md_rdev*, %struct.md_rdev** %14, align 8
  %87 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %88 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %87, i32 0, i32 2
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = load i32, i32* %12, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %96 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @is_badblock(%struct.md_rdev* %86, i32 %94, i32 %97, i32* %10, i32* %11)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %85
  %101 = load i32, i32* @R10BIO_MadeGood, align 4
  %102 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %103 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %102, i32 0, i32 0
  %104 = call i32 @set_bit(i32 %101, i32* %103)
  br label %105

105:                                              ; preds = %100, %85
  br label %106

106:                                              ; preds = %105, %84
  %107 = load %struct.md_rdev*, %struct.md_rdev** %14, align 8
  %108 = load %struct.mddev*, %struct.mddev** %7, align 8
  %109 = call i32 @rdev_dec_pending(%struct.md_rdev* %107, %struct.mddev* %108)
  %110 = load %struct.r10bio*, %struct.r10bio** %6, align 8
  %111 = call i32 @end_sync_request(%struct.r10bio* %110)
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @find_bio_disk(%struct.r10conf*, %struct.r10bio*, %struct.bio*, i32*, i32*) #1

declare dso_local i32 @md_error(%struct.mddev*, %struct.md_rdev*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i64 @is_badblock(%struct.md_rdev*, i32, i32, i32*, i32*) #1

declare dso_local i32 @rdev_dec_pending(%struct.md_rdev*, %struct.mddev*) #1

declare dso_local i32 @end_sync_request(%struct.r10bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
