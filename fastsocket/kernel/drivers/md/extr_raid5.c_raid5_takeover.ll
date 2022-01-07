; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_raid5_takeover.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_raid5_takeover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, i32, i32 }

@ALGORITHM_PARITY_N = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.mddev*)* @raid5_takeover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @raid5_takeover(%struct.mddev* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mddev*, align 8
  store %struct.mddev* %0, %struct.mddev** %3, align 8
  %4 = load %struct.mddev*, %struct.mddev** %3, align 8
  %5 = getelementptr inbounds %struct.mddev, %struct.mddev* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.mddev*, %struct.mddev** %3, align 8
  %10 = call i8* @raid45_takeover_raid0(%struct.mddev* %9, i32 5)
  store i8* %10, i8** %2, align 8
  br label %44

11:                                               ; preds = %1
  %12 = load %struct.mddev*, %struct.mddev** %3, align 8
  %13 = getelementptr inbounds %struct.mddev, %struct.mddev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load %struct.mddev*, %struct.mddev** %3, align 8
  %18 = call i8* @raid5_takeover_raid1(%struct.mddev* %17)
  store i8* %18, i8** %2, align 8
  br label %44

19:                                               ; preds = %11
  %20 = load %struct.mddev*, %struct.mddev** %3, align 8
  %21 = getelementptr inbounds %struct.mddev, %struct.mddev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 4
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load i32, i32* @ALGORITHM_PARITY_N, align 4
  %26 = load %struct.mddev*, %struct.mddev** %3, align 8
  %27 = getelementptr inbounds %struct.mddev, %struct.mddev* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.mddev*, %struct.mddev** %3, align 8
  %29 = getelementptr inbounds %struct.mddev, %struct.mddev* %28, i32 0, i32 1
  store i32 5, i32* %29, align 4
  %30 = load %struct.mddev*, %struct.mddev** %3, align 8
  %31 = call i8* @setup_conf(%struct.mddev* %30)
  store i8* %31, i8** %2, align 8
  br label %44

32:                                               ; preds = %19
  %33 = load %struct.mddev*, %struct.mddev** %3, align 8
  %34 = getelementptr inbounds %struct.mddev, %struct.mddev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 6
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load %struct.mddev*, %struct.mddev** %3, align 8
  %39 = call i8* @raid5_takeover_raid6(%struct.mddev* %38)
  store i8* %39, i8** %2, align 8
  br label %44

40:                                               ; preds = %32
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  %43 = call i8* @ERR_PTR(i32 %42)
  store i8* %43, i8** %2, align 8
  br label %44

44:                                               ; preds = %40, %37, %24, %16, %8
  %45 = load i8*, i8** %2, align 8
  ret i8* %45
}

declare dso_local i8* @raid45_takeover_raid0(%struct.mddev*, i32) #1

declare dso_local i8* @raid5_takeover_raid1(%struct.mddev*) #1

declare dso_local i8* @setup_conf(%struct.mddev*) #1

declare dso_local i8* @raid5_takeover_raid6(%struct.mddev*) #1

declare dso_local i8* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
