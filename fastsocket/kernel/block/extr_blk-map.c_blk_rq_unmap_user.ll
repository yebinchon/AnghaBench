; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-map.c_blk_rq_unmap_user.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-map.c_blk_rq_unmap_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { %struct.bio*, %struct.bio* }

@BIO_BOUNCED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blk_rq_unmap_user(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.bio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bio* %0, %struct.bio** %2, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %30, %1
  %7 = load %struct.bio*, %struct.bio** %2, align 8
  %8 = icmp ne %struct.bio* %7, null
  br i1 %8, label %9, label %37

9:                                                ; preds = %6
  %10 = load %struct.bio*, %struct.bio** %2, align 8
  store %struct.bio* %10, %struct.bio** %3, align 8
  %11 = load %struct.bio*, %struct.bio** %2, align 8
  %12 = load i32, i32* @BIO_BOUNCED, align 4
  %13 = call i32 @bio_flagged(%struct.bio* %11, i32 %12)
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %9
  %17 = load %struct.bio*, %struct.bio** %2, align 8
  %18 = getelementptr inbounds %struct.bio, %struct.bio* %17, i32 0, i32 1
  %19 = load %struct.bio*, %struct.bio** %18, align 8
  store %struct.bio* %19, %struct.bio** %3, align 8
  br label %20

20:                                               ; preds = %16, %9
  %21 = load %struct.bio*, %struct.bio** %3, align 8
  %22 = call i32 @__blk_rq_unmap_user(%struct.bio* %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %28, %25, %20
  %31 = load %struct.bio*, %struct.bio** %2, align 8
  store %struct.bio* %31, %struct.bio** %3, align 8
  %32 = load %struct.bio*, %struct.bio** %2, align 8
  %33 = getelementptr inbounds %struct.bio, %struct.bio* %32, i32 0, i32 0
  %34 = load %struct.bio*, %struct.bio** %33, align 8
  store %struct.bio* %34, %struct.bio** %2, align 8
  %35 = load %struct.bio*, %struct.bio** %3, align 8
  %36 = call i32 @bio_put(%struct.bio* %35)
  br label %6

37:                                               ; preds = %6
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @bio_flagged(%struct.bio*, i32) #1

declare dso_local i32 @__blk_rq_unmap_user(%struct.bio*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
