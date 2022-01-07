; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_want_replace.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_want_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe_head = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.md_rdev* }
%struct.md_rdev = type { i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64 }

@Faulty = common dso_local global i32 0, align 4
@In_sync = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stripe_head*, i32)* @want_replace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @want_replace(%struct.stripe_head* %0, i32 %1) #0 {
  %3 = alloca %struct.stripe_head*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.md_rdev*, align 8
  %6 = alloca i32, align 4
  store %struct.stripe_head* %0, %struct.stripe_head** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %8 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %7, i32 0, i32 1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.md_rdev*, %struct.md_rdev** %15, align 8
  store %struct.md_rdev* %16, %struct.md_rdev** %5, align 8
  %17 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %18 = icmp ne %struct.md_rdev* %17, null
  br i1 %18, label %19, label %50

19:                                               ; preds = %2
  %20 = load i32, i32* @Faulty, align 4
  %21 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %22 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %21, i32 0, i32 2
  %23 = call i32 @test_bit(i32 %20, i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %50, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @In_sync, align 4
  %27 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %28 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %27, i32 0, i32 2
  %29 = call i32 @test_bit(i32 %26, i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %50, label %31

31:                                               ; preds = %25
  %32 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %33 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %36 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sle i64 %34, %37
  br i1 %38, label %49, label %39

39:                                               ; preds = %31
  %40 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %41 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.stripe_head*, %struct.stripe_head** %3, align 8
  %46 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp sle i64 %44, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %39, %31
  store i32 1, i32* %6, align 4
  br label %50

50:                                               ; preds = %49, %39, %25, %19, %2
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
