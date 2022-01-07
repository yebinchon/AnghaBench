; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_check_reshape.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_check_reshape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i64, i64, i64, i64, i64, i64, i32, i32, %struct.r5conf* }
%struct.r5conf = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MaxSector = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*)* @check_reshape to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_reshape(%struct.mddev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca %struct.r5conf*, align 8
  %5 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %3, align 8
  %6 = load %struct.mddev*, %struct.mddev** %3, align 8
  %7 = getelementptr inbounds %struct.mddev, %struct.mddev* %6, i32 0, i32 8
  %8 = load %struct.r5conf*, %struct.r5conf** %7, align 8
  store %struct.r5conf* %8, %struct.r5conf** %4, align 8
  %9 = load %struct.mddev*, %struct.mddev** %3, align 8
  %10 = getelementptr inbounds %struct.mddev, %struct.mddev* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %1
  %14 = load %struct.mddev*, %struct.mddev** %3, align 8
  %15 = getelementptr inbounds %struct.mddev, %struct.mddev* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.mddev*, %struct.mddev** %3, align 8
  %18 = getelementptr inbounds %struct.mddev, %struct.mddev* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %13
  %22 = load %struct.mddev*, %struct.mddev** %3, align 8
  %23 = getelementptr inbounds %struct.mddev, %struct.mddev* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.mddev*, %struct.mddev** %3, align 8
  %26 = getelementptr inbounds %struct.mddev, %struct.mddev* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %89

30:                                               ; preds = %21, %13, %1
  %31 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %32 = call i64 @has_failed(%struct.r5conf* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %89

37:                                               ; preds = %30
  %38 = load %struct.mddev*, %struct.mddev** %3, align 8
  %39 = getelementptr inbounds %struct.mddev, %struct.mddev* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %70

42:                                               ; preds = %37
  %43 = load %struct.mddev*, %struct.mddev** %3, align 8
  %44 = getelementptr inbounds %struct.mddev, %struct.mddev* %43, i32 0, i32 5
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @MaxSector, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %70

48:                                               ; preds = %42
  store i32 2, i32* %5, align 4
  %49 = load %struct.mddev*, %struct.mddev** %3, align 8
  %50 = getelementptr inbounds %struct.mddev, %struct.mddev* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, 6
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 4, i32* %5, align 4
  br label %54

54:                                               ; preds = %53, %48
  %55 = load %struct.mddev*, %struct.mddev** %3, align 8
  %56 = getelementptr inbounds %struct.mddev, %struct.mddev* %55, i32 0, i32 7
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = load %struct.mddev*, %struct.mddev** %3, align 8
  %60 = getelementptr inbounds %struct.mddev, %struct.mddev* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %58, %61
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = icmp slt i64 %62, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %54
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %89

69:                                               ; preds = %54
  br label %70

70:                                               ; preds = %69, %42, %37
  %71 = load %struct.mddev*, %struct.mddev** %3, align 8
  %72 = call i32 @check_stripe_cache(%struct.mddev* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %70
  %75 = load i32, i32* @ENOSPC, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %89

77:                                               ; preds = %70
  %78 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %79 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %80 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = load %struct.mddev*, %struct.mddev** %3, align 8
  %84 = getelementptr inbounds %struct.mddev, %struct.mddev* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %82, %85
  %87 = trunc i64 %86 to i32
  %88 = call i32 @resize_stripes(%struct.r5conf* %78, i32 %87)
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %77, %74, %66, %34, %29
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i64 @has_failed(%struct.r5conf*) #1

declare dso_local i32 @check_stripe_cache(%struct.mddev*) #1

declare dso_local i32 @resize_stripes(%struct.r5conf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
