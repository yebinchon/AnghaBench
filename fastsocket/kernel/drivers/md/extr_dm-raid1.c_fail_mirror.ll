; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid1.c_fail_mirror.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid1.c_fail_mirror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mirror = type { %struct.TYPE_2__*, i32, i32, %struct.mirror_set* }
%struct.TYPE_2__ = type { i32 }
%struct.mirror_set = type { i32, i32, i32 }

@.str = private unnamed_addr constant [62 x i8] c"Primary mirror (%s) failed while out-of-sync: Reads may fail.\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"All sides of mirror have failed.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mirror*, i32)* @fail_mirror to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fail_mirror(%struct.mirror* %0, i32 %1) #0 {
  %3 = alloca %struct.mirror*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mirror_set*, align 8
  %6 = alloca %struct.mirror*, align 8
  store %struct.mirror* %0, %struct.mirror** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mirror*, %struct.mirror** %3, align 8
  %8 = getelementptr inbounds %struct.mirror, %struct.mirror* %7, i32 0, i32 3
  %9 = load %struct.mirror_set*, %struct.mirror_set** %8, align 8
  store %struct.mirror_set* %9, %struct.mirror_set** %5, align 8
  %10 = load %struct.mirror_set*, %struct.mirror_set** %5, align 8
  %11 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %10, i32 0, i32 0
  store i32 1, i32* %11, align 4
  %12 = load %struct.mirror*, %struct.mirror** %3, align 8
  %13 = getelementptr inbounds %struct.mirror, %struct.mirror* %12, i32 0, i32 2
  %14 = call i32 @atomic_inc(i32* %13)
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.mirror*, %struct.mirror** %3, align 8
  %17 = getelementptr inbounds %struct.mirror, %struct.mirror* %16, i32 0, i32 1
  %18 = call i64 @test_and_set_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %59

21:                                               ; preds = %2
  %22 = load %struct.mirror_set*, %struct.mirror_set** %5, align 8
  %23 = call i32 @errors_handled(%struct.mirror_set* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  br label %59

26:                                               ; preds = %21
  %27 = load %struct.mirror*, %struct.mirror** %3, align 8
  %28 = load %struct.mirror_set*, %struct.mirror_set** %5, align 8
  %29 = call %struct.mirror* @get_default_mirror(%struct.mirror_set* %28)
  %30 = icmp ne %struct.mirror* %27, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %55

32:                                               ; preds = %26
  %33 = load %struct.mirror_set*, %struct.mirror_set** %5, align 8
  %34 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %32
  %38 = load %struct.mirror*, %struct.mirror** %3, align 8
  %39 = getelementptr inbounds %struct.mirror, %struct.mirror* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @DMERR(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %55

44:                                               ; preds = %32
  %45 = load %struct.mirror_set*, %struct.mirror_set** %5, align 8
  %46 = call %struct.mirror* @get_valid_mirror(%struct.mirror_set* %45)
  store %struct.mirror* %46, %struct.mirror** %6, align 8
  %47 = load %struct.mirror*, %struct.mirror** %6, align 8
  %48 = icmp ne %struct.mirror* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.mirror*, %struct.mirror** %6, align 8
  %51 = call i32 @set_default_mirror(%struct.mirror* %50)
  br label %54

52:                                               ; preds = %44
  %53 = call i32 @DMWARN(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %49
  br label %55

55:                                               ; preds = %54, %37, %31
  %56 = load %struct.mirror_set*, %struct.mirror_set** %5, align 8
  %57 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %56, i32 0, i32 1
  %58 = call i32 @schedule_work(i32* %57)
  br label %59

59:                                               ; preds = %55, %25, %20
  ret void
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @errors_handled(%struct.mirror_set*) #1

declare dso_local %struct.mirror* @get_default_mirror(%struct.mirror_set*) #1

declare dso_local i32 @DMERR(i8*, i32) #1

declare dso_local %struct.mirror* @get_valid_mirror(%struct.mirror_set*) #1

declare dso_local i32 @set_default_mirror(%struct.mirror*) #1

declare dso_local i32 @DMWARN(i8*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
