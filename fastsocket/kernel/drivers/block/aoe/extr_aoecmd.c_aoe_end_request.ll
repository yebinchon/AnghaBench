; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/aoe/extr_aoecmd.c_aoe_end_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/aoe/extr_aoecmd.c_aoe_end_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aoedev = type { %struct.TYPE_2__, %struct.request_queue* }
%struct.TYPE_2__ = type { %struct.request* }
%struct.request_queue = type { i32 }
%struct.request = type { %struct.bio* }
%struct.bio = type { i32, i32 }

@BIO_UPTODATE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aoe_end_request(%struct.aoedev* %0, %struct.request* %1, i32 %2) #0 {
  %4 = alloca %struct.aoedev*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.request_queue*, align 8
  store %struct.aoedev* %0, %struct.aoedev** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.aoedev*, %struct.aoedev** %4, align 8
  %11 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %10, i32 0, i32 1
  %12 = load %struct.request_queue*, %struct.request_queue** %11, align 8
  store %struct.request_queue* %12, %struct.request_queue** %9, align 8
  %13 = load %struct.request*, %struct.request** %5, align 8
  %14 = load %struct.aoedev*, %struct.aoedev** %4, align 8
  %15 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.request*, %struct.request** %16, align 8
  %18 = icmp eq %struct.request* %13, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load %struct.aoedev*, %struct.aoedev** %4, align 8
  %21 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store %struct.request* null, %struct.request** %22, align 8
  br label %23

23:                                               ; preds = %19, %3
  br label %24

24:                                               ; preds = %47, %23
  %25 = load %struct.request*, %struct.request** %5, align 8
  %26 = getelementptr inbounds %struct.request, %struct.request* %25, i32 0, i32 0
  %27 = load %struct.bio*, %struct.bio** %26, align 8
  store %struct.bio* %27, %struct.bio** %7, align 8
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @BIO_UPTODATE, align 4
  %32 = load %struct.bio*, %struct.bio** %7, align 8
  %33 = getelementptr inbounds %struct.bio, %struct.bio* %32, i32 0, i32 0
  %34 = call i64 @test_bit(i32 %31, i32* %33)
  %35 = icmp ne i64 %34, 0
  br label %36

36:                                               ; preds = %30, %24
  %37 = phi i1 [ false, %24 ], [ %35, %30 ]
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %36
  %40 = load %struct.request*, %struct.request** %5, align 8
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  br label %47

47:                                               ; preds = %44, %43
  %48 = phi i32 [ 0, %43 ], [ %46, %44 ]
  %49 = load %struct.bio*, %struct.bio** %7, align 8
  %50 = getelementptr inbounds %struct.bio, %struct.bio* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @__blk_end_request(%struct.request* %40, i32 %48, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %24, label %54

54:                                               ; preds = %47
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load %struct.request_queue*, %struct.request_queue** %9, align 8
  %59 = call i32 @__blk_run_queue(%struct.request_queue* %58)
  br label %60

60:                                               ; preds = %57, %54
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @__blk_end_request(%struct.request*, i32, i32) #1

declare dso_local i32 @__blk_run_queue(%struct.request_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
