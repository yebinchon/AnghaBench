; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-merge.c_blk_rq_merge_ok.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-merge.c_blk_rq_merge_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.bio = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@BIO_DISCARD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blk_rq_merge_ok(%struct.request* %0, %struct.bio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.bio*, align 8
  store %struct.request* %0, %struct.request** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  %6 = load %struct.request*, %struct.request** %4, align 8
  %7 = call i32 @rq_mergeable(%struct.request* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.bio*, %struct.bio** %5, align 8
  %11 = call i32 @bio_mergeable(%struct.bio* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9, %2
  store i32 0, i32* %3, align 4
  br label %60

14:                                               ; preds = %9
  %15 = load %struct.bio*, %struct.bio** %5, align 8
  %16 = getelementptr inbounds %struct.bio, %struct.bio* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @BIO_DISCARD, align 4
  %19 = and i32 %17, %18
  %20 = load %struct.request*, %struct.request** %4, align 8
  %21 = getelementptr inbounds %struct.request, %struct.request* %20, i32 0, i32 2
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @BIO_DISCARD, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %19, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %60

29:                                               ; preds = %14
  %30 = load %struct.bio*, %struct.bio** %5, align 8
  %31 = call i64 @bio_data_dir(%struct.bio* %30)
  %32 = load %struct.request*, %struct.request** %4, align 8
  %33 = call i64 @rq_data_dir(%struct.request* %32)
  %34 = icmp ne i64 %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %60

36:                                               ; preds = %29
  %37 = load %struct.request*, %struct.request** %4, align 8
  %38 = getelementptr inbounds %struct.request, %struct.request* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.bio*, %struct.bio** %5, align 8
  %41 = getelementptr inbounds %struct.bio, %struct.bio* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %39, %44
  br i1 %45, label %51, label %46

46:                                               ; preds = %36
  %47 = load %struct.request*, %struct.request** %4, align 8
  %48 = getelementptr inbounds %struct.request, %struct.request* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46, %36
  store i32 0, i32* %3, align 4
  br label %60

52:                                               ; preds = %46
  %53 = load %struct.bio*, %struct.bio** %5, align 8
  %54 = call i64 @bio_integrity(%struct.bio* %53)
  %55 = load %struct.request*, %struct.request** %4, align 8
  %56 = call i64 @blk_integrity_rq(%struct.request* %55)
  %57 = icmp ne i64 %54, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %60

59:                                               ; preds = %52
  store i32 1, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %58, %51, %35, %28, %13
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @rq_mergeable(%struct.request*) #1

declare dso_local i32 @bio_mergeable(%struct.bio*) #1

declare dso_local i64 @bio_data_dir(%struct.bio*) #1

declare dso_local i64 @rq_data_dir(%struct.request*) #1

declare dso_local i64 @bio_integrity(%struct.bio*) #1

declare dso_local i64 @blk_integrity_rq(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
