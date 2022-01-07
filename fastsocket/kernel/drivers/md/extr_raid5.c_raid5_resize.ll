; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_raid5_resize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_raid5_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i64, i64, i64, i64, i32, i32, i64, i64, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@MD_RECOVERY_NEEDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, i64)* @raid5_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raid5_resize(%struct.mddev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.mddev*, %struct.mddev** %4, align 8
  %9 = getelementptr inbounds %struct.mddev, %struct.mddev* %8, i32 0, i32 9
  %10 = load i64, i64* %9, align 8
  %11 = sub nsw i64 %10, 1
  %12 = xor i64 %11, -1
  %13 = load i64, i64* %5, align 8
  %14 = and i64 %13, %12
  store i64 %14, i64* %5, align 8
  %15 = load %struct.mddev*, %struct.mddev** %4, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load %struct.mddev*, %struct.mddev** %4, align 8
  %18 = getelementptr inbounds %struct.mddev, %struct.mddev* %17, i32 0, i32 8
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @raid5_size(%struct.mddev* %15, i64 %16, i32 %19)
  store i64 %20, i64* %6, align 8
  %21 = load %struct.mddev*, %struct.mddev** %4, align 8
  %22 = getelementptr inbounds %struct.mddev, %struct.mddev* %21, i32 0, i32 7
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %2
  %26 = load %struct.mddev*, %struct.mddev** %4, align 8
  %27 = getelementptr inbounds %struct.mddev, %struct.mddev* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %95

34:                                               ; preds = %25, %2
  %35 = load %struct.mddev*, %struct.mddev** %4, align 8
  %36 = getelementptr inbounds %struct.mddev, %struct.mddev* %35, i32 0, i32 6
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %34
  %40 = load %struct.mddev*, %struct.mddev** %4, align 8
  %41 = getelementptr inbounds %struct.mddev, %struct.mddev* %40, i32 0, i32 6
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @bitmap_resize(i64 %42, i64 %43, i32 0, i32 0)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %3, align 4
  br label %95

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %49, %34
  %51 = load %struct.mddev*, %struct.mddev** %4, align 8
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @md_set_array_sectors(%struct.mddev* %51, i64 %52)
  %54 = load %struct.mddev*, %struct.mddev** %4, align 8
  %55 = getelementptr inbounds %struct.mddev, %struct.mddev* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.mddev*, %struct.mddev** %4, align 8
  %58 = getelementptr inbounds %struct.mddev, %struct.mddev* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @set_capacity(i32 %56, i64 %59)
  %61 = load %struct.mddev*, %struct.mddev** %4, align 8
  %62 = getelementptr inbounds %struct.mddev, %struct.mddev* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @revalidate_disk(i32 %63)
  %65 = load i64, i64* %5, align 8
  %66 = load %struct.mddev*, %struct.mddev** %4, align 8
  %67 = getelementptr inbounds %struct.mddev, %struct.mddev* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp sgt i64 %65, %68
  br i1 %69, label %70, label %88

70:                                               ; preds = %50
  %71 = load %struct.mddev*, %struct.mddev** %4, align 8
  %72 = getelementptr inbounds %struct.mddev, %struct.mddev* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.mddev*, %struct.mddev** %4, align 8
  %75 = getelementptr inbounds %struct.mddev, %struct.mddev* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp sgt i64 %73, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %70
  %79 = load %struct.mddev*, %struct.mddev** %4, align 8
  %80 = getelementptr inbounds %struct.mddev, %struct.mddev* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.mddev*, %struct.mddev** %4, align 8
  %83 = getelementptr inbounds %struct.mddev, %struct.mddev* %82, i32 0, i32 2
  store i64 %81, i64* %83, align 8
  %84 = load i32, i32* @MD_RECOVERY_NEEDED, align 4
  %85 = load %struct.mddev*, %struct.mddev** %4, align 8
  %86 = getelementptr inbounds %struct.mddev, %struct.mddev* %85, i32 0, i32 4
  %87 = call i32 @set_bit(i32 %84, i32* %86)
  br label %88

88:                                               ; preds = %78, %70, %50
  %89 = load i64, i64* %5, align 8
  %90 = load %struct.mddev*, %struct.mddev** %4, align 8
  %91 = getelementptr inbounds %struct.mddev, %struct.mddev* %90, i32 0, i32 1
  store i64 %89, i64* %91, align 8
  %92 = load i64, i64* %5, align 8
  %93 = load %struct.mddev*, %struct.mddev** %4, align 8
  %94 = getelementptr inbounds %struct.mddev, %struct.mddev* %93, i32 0, i32 3
  store i64 %92, i64* %94, align 8
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %88, %47, %31
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i64 @raid5_size(%struct.mddev*, i64, i32) #1

declare dso_local i32 @bitmap_resize(i64, i64, i32, i32) #1

declare dso_local i32 @md_set_array_sectors(%struct.mddev*, i64) #1

declare dso_local i32 @set_capacity(i32, i64) #1

declare dso_local i32 @revalidate_disk(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
