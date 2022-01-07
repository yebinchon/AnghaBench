; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid1.c_call_bio_endio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid1.c_call_bio_endio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r1bio = type { i32, %struct.TYPE_2__*, %struct.bio* }
%struct.TYPE_2__ = type { %struct.r1conf* }
%struct.r1conf = type { i32 }
%struct.bio = type { i64, i32 }

@R1BIO_Uptodate = common dso_local global i32 0, align 4
@BIO_UPTODATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r1bio*)* @call_bio_endio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @call_bio_endio(%struct.r1bio* %0) #0 {
  %2 = alloca %struct.r1bio*, align 8
  %3 = alloca %struct.bio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.r1conf*, align 8
  %6 = alloca i64, align 8
  store %struct.r1bio* %0, %struct.r1bio** %2, align 8
  %7 = load %struct.r1bio*, %struct.r1bio** %2, align 8
  %8 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %7, i32 0, i32 2
  %9 = load %struct.bio*, %struct.bio** %8, align 8
  store %struct.bio* %9, %struct.bio** %3, align 8
  %10 = load %struct.r1bio*, %struct.r1bio** %2, align 8
  %11 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.r1conf*, %struct.r1conf** %13, align 8
  store %struct.r1conf* %14, %struct.r1conf** %5, align 8
  %15 = load %struct.bio*, %struct.bio** %3, align 8
  %16 = getelementptr inbounds %struct.bio, %struct.bio* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %1
  %20 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %21 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %20, i32 0, i32 0
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.bio*, %struct.bio** %3, align 8
  %25 = getelementptr inbounds %struct.bio, %struct.bio* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, -1
  store i64 %27, i64* %25, align 8
  %28 = load %struct.bio*, %struct.bio** %3, align 8
  %29 = getelementptr inbounds %struct.bio, %struct.bio* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %4, align 4
  %33 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %34 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %33, i32 0, i32 0
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  br label %38

37:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  br label %38

38:                                               ; preds = %37, %19
  %39 = load i32, i32* @R1BIO_Uptodate, align 4
  %40 = load %struct.r1bio*, %struct.r1bio** %2, align 8
  %41 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %40, i32 0, i32 0
  %42 = call i32 @test_bit(i32 %39, i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %38
  %45 = load i32, i32* @BIO_UPTODATE, align 4
  %46 = load %struct.bio*, %struct.bio** %3, align 8
  %47 = getelementptr inbounds %struct.bio, %struct.bio* %46, i32 0, i32 1
  %48 = call i32 @clear_bit(i32 %45, i32* %47)
  br label %49

49:                                               ; preds = %44, %38
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load %struct.bio*, %struct.bio** %3, align 8
  %54 = call i32 @bio_endio(%struct.bio* %53, i32 0)
  %55 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %56 = call i32 @allow_barrier(%struct.r1conf* %55)
  br label %57

57:                                               ; preds = %52, %49
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @bio_endio(%struct.bio*, i32) #1

declare dso_local i32 @allow_barrier(%struct.r1conf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
