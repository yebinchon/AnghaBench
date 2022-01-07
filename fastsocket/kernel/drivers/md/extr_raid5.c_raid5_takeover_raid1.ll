; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_raid5_takeover_raid1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_raid5_takeover_raid1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@STRIPE_SIZE = common dso_local global i32 0, align 4
@ALGORITHM_LEFT_SYMMETRIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.mddev*)* @raid5_takeover_raid1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @raid5_takeover_raid1(%struct.mddev* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %3, align 8
  %5 = load %struct.mddev*, %struct.mddev** %3, align 8
  %6 = getelementptr inbounds %struct.mddev, %struct.mddev* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 2
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load %struct.mddev*, %struct.mddev** %3, align 8
  %11 = getelementptr inbounds %struct.mddev, %struct.mddev* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %14, label %18

14:                                               ; preds = %9, %1
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  %17 = call i8* @ERR_PTR(i32 %16)
  store i8* %17, i8** %2, align 8
  br label %55

18:                                               ; preds = %9
  store i32 128, i32* %4, align 4
  br label %19

19:                                               ; preds = %32, %18
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  %23 = load %struct.mddev*, %struct.mddev** %3, align 8
  %24 = getelementptr inbounds %struct.mddev, %struct.mddev* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %4, align 4
  %27 = sub nsw i32 %26, 1
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br label %30

30:                                               ; preds = %22, %19
  %31 = phi i1 [ false, %19 ], [ %29, %22 ]
  br i1 %31, label %32, label %35

32:                                               ; preds = %30
  %33 = load i32, i32* %4, align 4
  %34 = ashr i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %19

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4
  %37 = shl i32 %36, 9
  %38 = load i32, i32* @STRIPE_SIZE, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  %43 = call i8* @ERR_PTR(i32 %42)
  store i8* %43, i8** %2, align 8
  br label %55

44:                                               ; preds = %35
  %45 = load %struct.mddev*, %struct.mddev** %3, align 8
  %46 = getelementptr inbounds %struct.mddev, %struct.mddev* %45, i32 0, i32 3
  store i32 5, i32* %46, align 4
  %47 = load i32, i32* @ALGORITHM_LEFT_SYMMETRIC, align 4
  %48 = load %struct.mddev*, %struct.mddev** %3, align 8
  %49 = getelementptr inbounds %struct.mddev, %struct.mddev* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load %struct.mddev*, %struct.mddev** %3, align 8
  %52 = getelementptr inbounds %struct.mddev, %struct.mddev* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 4
  %53 = load %struct.mddev*, %struct.mddev** %3, align 8
  %54 = call i8* @setup_conf(%struct.mddev* %53)
  store i8* %54, i8** %2, align 8
  br label %55

55:                                               ; preds = %44, %40, %14
  %56 = load i8*, i8** %2, align 8
  ret i8* %56
}

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i8* @setup_conf(%struct.mddev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
