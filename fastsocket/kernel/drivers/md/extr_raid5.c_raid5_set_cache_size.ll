; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_raid5_set_cache_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_raid5_set_cache_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { %struct.r5conf* }
%struct.r5conf = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @raid5_set_cache_size(%struct.mddev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.r5conf*, align 8
  %7 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.mddev*, %struct.mddev** %4, align 8
  %9 = getelementptr inbounds %struct.mddev, %struct.mddev* %8, i32 0, i32 0
  %10 = load %struct.r5conf*, %struct.r5conf** %9, align 8
  store %struct.r5conf* %10, %struct.r5conf** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp sle i32 %11, 16
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp sgt i32 %14, 32768
  br i1 %15, label %16, label %19

16:                                               ; preds = %13, %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %63

19:                                               ; preds = %13
  br label %20

20:                                               ; preds = %36, %19
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %23 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %20
  %27 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %28 = call i64 @drop_one_stripe(%struct.r5conf* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %32 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %32, align 4
  br label %36

35:                                               ; preds = %26
  br label %37

36:                                               ; preds = %30
  br label %20

37:                                               ; preds = %35, %20
  %38 = load %struct.mddev*, %struct.mddev** %4, align 8
  %39 = call i32 @md_allow_write(%struct.mddev* %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %3, align 4
  br label %63

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %61, %44
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %48 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp sgt i32 %46, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %45
  %52 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %53 = call i64 @grow_one_stripe(%struct.r5conf* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %57 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  br label %61

60:                                               ; preds = %51
  br label %62

61:                                               ; preds = %55
  br label %45

62:                                               ; preds = %60, %45
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %42, %16
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i64 @drop_one_stripe(%struct.r5conf*) #1

declare dso_local i32 @md_allow_write(%struct.mddev*) #1

declare dso_local i64 @grow_one_stripe(%struct.r5conf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
