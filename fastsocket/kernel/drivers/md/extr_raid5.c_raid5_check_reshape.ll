; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_raid5_check_reshape.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_raid5_check_reshape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, i64, i32, i32, i64, i32, i32, i32, %struct.r5conf* }
%struct.r5conf = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@MD_CHANGE_DEVS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*)* @raid5_check_reshape to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raid5_check_reshape(%struct.mddev* %0) #0 {
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
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %5, align 4
  %12 = load %struct.mddev*, %struct.mddev** %3, align 8
  %13 = getelementptr inbounds %struct.mddev, %struct.mddev* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp sge i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %1
  %17 = load %struct.mddev*, %struct.mddev** %3, align 8
  %18 = getelementptr inbounds %struct.mddev, %struct.mddev* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @algorithm_valid_raid5(i64 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %98

25:                                               ; preds = %16, %1
  %26 = load i32, i32* %5, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %55

28:                                               ; preds = %25
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @is_power_of_2(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %98

35:                                               ; preds = %28
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @PAGE_SIZE, align 4
  %38 = ashr i32 %37, 9
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %98

43:                                               ; preds = %35
  %44 = load %struct.mddev*, %struct.mddev** %3, align 8
  %45 = getelementptr inbounds %struct.mddev, %struct.mddev* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sub nsw i32 %47, 1
  %49 = and i32 %46, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %98

54:                                               ; preds = %43
  br label %55

55:                                               ; preds = %54, %25
  %56 = load %struct.mddev*, %struct.mddev** %3, align 8
  %57 = getelementptr inbounds %struct.mddev, %struct.mddev* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %60, label %95

60:                                               ; preds = %55
  %61 = load %struct.mddev*, %struct.mddev** %3, align 8
  %62 = getelementptr inbounds %struct.mddev, %struct.mddev* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp sge i64 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %60
  %66 = load %struct.mddev*, %struct.mddev** %3, align 8
  %67 = getelementptr inbounds %struct.mddev, %struct.mddev* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %70 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load %struct.mddev*, %struct.mddev** %3, align 8
  %72 = getelementptr inbounds %struct.mddev, %struct.mddev* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.mddev*, %struct.mddev** %3, align 8
  %75 = getelementptr inbounds %struct.mddev, %struct.mddev* %74, i32 0, i32 4
  store i64 %73, i64* %75, align 8
  br label %76

76:                                               ; preds = %65, %60
  %77 = load i32, i32* %5, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %76
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %82 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* %5, align 4
  %84 = load %struct.mddev*, %struct.mddev** %3, align 8
  %85 = getelementptr inbounds %struct.mddev, %struct.mddev* %84, i32 0, i32 5
  store i32 %83, i32* %85, align 8
  br label %86

86:                                               ; preds = %79, %76
  %87 = load i32, i32* @MD_CHANGE_DEVS, align 4
  %88 = load %struct.mddev*, %struct.mddev** %3, align 8
  %89 = getelementptr inbounds %struct.mddev, %struct.mddev* %88, i32 0, i32 7
  %90 = call i32 @set_bit(i32 %87, i32* %89)
  %91 = load %struct.mddev*, %struct.mddev** %3, align 8
  %92 = getelementptr inbounds %struct.mddev, %struct.mddev* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @md_wakeup_thread(i32 %93)
  br label %95

95:                                               ; preds = %86, %55
  %96 = load %struct.mddev*, %struct.mddev** %3, align 8
  %97 = call i32 @check_reshape(%struct.mddev* %96)
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %95, %51, %40, %32, %22
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @algorithm_valid_raid5(i64) #1

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @md_wakeup_thread(i32) #1

declare dso_local i32 @check_reshape(%struct.mddev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
