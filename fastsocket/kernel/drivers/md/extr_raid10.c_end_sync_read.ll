; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid10.c_end_sync_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid10.c_end_sync_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, %struct.r10bio* }
%struct.r10bio = type { i32, i32, i32, i32, %struct.bio*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.r10conf* }
%struct.r10conf = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@BIO_UPTODATE = common dso_local global i32 0, align 4
@R10BIO_Uptodate = common dso_local global i32 0, align 4
@R10BIO_IsRecover = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*, i32)* @end_sync_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @end_sync_read(%struct.bio* %0, i32 %1) #0 {
  %3 = alloca %struct.bio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.r10bio*, align 8
  %6 = alloca %struct.r10conf*, align 8
  %7 = alloca i32, align 4
  store %struct.bio* %0, %struct.bio** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.bio*, %struct.bio** %3, align 8
  %9 = getelementptr inbounds %struct.bio, %struct.bio* %8, i32 0, i32 1
  %10 = load %struct.r10bio*, %struct.r10bio** %9, align 8
  store %struct.r10bio* %10, %struct.r10bio** %5, align 8
  %11 = load %struct.r10bio*, %struct.r10bio** %5, align 8
  %12 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %11, i32 0, i32 5
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.r10conf*, %struct.r10conf** %14, align 8
  store %struct.r10conf* %15, %struct.r10conf** %6, align 8
  %16 = load %struct.bio*, %struct.bio** %3, align 8
  %17 = load %struct.r10bio*, %struct.r10bio** %5, align 8
  %18 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %17, i32 0, i32 4
  %19 = load %struct.bio*, %struct.bio** %18, align 8
  %20 = icmp eq %struct.bio* %16, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.r10bio*, %struct.r10bio** %5, align 8
  %23 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %7, align 4
  br label %30

25:                                               ; preds = %2
  %26 = load %struct.r10conf*, %struct.r10conf** %6, align 8
  %27 = load %struct.r10bio*, %struct.r10bio** %5, align 8
  %28 = load %struct.bio*, %struct.bio** %3, align 8
  %29 = call i32 @find_bio_disk(%struct.r10conf* %26, %struct.r10bio* %27, %struct.bio* %28, i32* null, i32* null)
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %25, %21
  %31 = load i32, i32* @BIO_UPTODATE, align 4
  %32 = load %struct.bio*, %struct.bio** %3, align 8
  %33 = getelementptr inbounds %struct.bio, %struct.bio* %32, i32 0, i32 0
  %34 = call i64 @test_bit(i32 %31, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load i32, i32* @R10BIO_Uptodate, align 4
  %38 = load %struct.r10bio*, %struct.r10bio** %5, align 8
  %39 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %38, i32 0, i32 2
  %40 = call i32 @set_bit(i32 %37, i32* %39)
  br label %55

41:                                               ; preds = %30
  %42 = load %struct.r10bio*, %struct.r10bio** %5, align 8
  %43 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.r10conf*, %struct.r10conf** %6, align 8
  %46 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %45, i32 0, i32 1
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = call i32 @atomic_add(i32 %44, i32* %53)
  br label %55

55:                                               ; preds = %41, %36
  %56 = load %struct.r10conf*, %struct.r10conf** %6, align 8
  %57 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %56, i32 0, i32 1
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = load %struct.r10conf*, %struct.r10conf** %6, align 8
  %65 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @rdev_dec_pending(%struct.TYPE_6__* %63, i32 %66)
  %68 = load i32, i32* @R10BIO_IsRecover, align 4
  %69 = load %struct.r10bio*, %struct.r10bio** %5, align 8
  %70 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %69, i32 0, i32 2
  %71 = call i64 @test_bit(i32 %68, i32* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %55
  %74 = load %struct.r10bio*, %struct.r10bio** %5, align 8
  %75 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %74, i32 0, i32 1
  %76 = call i64 @atomic_dec_and_test(i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73, %55
  %79 = load %struct.r10bio*, %struct.r10bio** %5, align 8
  %80 = call i32 @reschedule_retry(%struct.r10bio* %79)
  br label %81

81:                                               ; preds = %78, %73
  ret void
}

declare dso_local i32 @find_bio_disk(%struct.r10conf*, %struct.r10bio*, %struct.bio*, i32*, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local i32 @rdev_dec_pending(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @reschedule_retry(%struct.r10bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
