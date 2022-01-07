; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/devices/extr_sst25l.c_sst25l_erase.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/devices/extr_sst25l.c_sst25l_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.erase_info = type { i64, i64, i32 }
%struct.sst25l_flash = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@MTD_ERASE_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Erase failed\0A\00", align 1
@MTD_ERASE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.erase_info*)* @sst25l_erase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst25l_erase(%struct.mtd_info* %0, %struct.erase_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca %struct.erase_info*, align 8
  %6 = alloca %struct.sst25l_flash*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store %struct.erase_info* %1, %struct.erase_info** %5, align 8
  %10 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %11 = call %struct.sst25l_flash* @to_sst25l_flash(%struct.mtd_info* %10)
  store %struct.sst25l_flash* %11, %struct.sst25l_flash** %6, align 8
  %12 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %13 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %16 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %14, %17
  %19 = load %struct.sst25l_flash*, %struct.sst25l_flash** %6, align 8
  %20 = getelementptr inbounds %struct.sst25l_flash, %struct.sst25l_flash* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %18, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %116

27:                                               ; preds = %2
  %28 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %29 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %33 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = srem i32 %31, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %27
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %116

40:                                               ; preds = %27
  %41 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %42 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %46 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = srem i32 %44, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %40
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %116

53:                                               ; preds = %40
  %54 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %55 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %61 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %59, %62
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %8, align 4
  %65 = load %struct.sst25l_flash*, %struct.sst25l_flash** %6, align 8
  %66 = getelementptr inbounds %struct.sst25l_flash, %struct.sst25l_flash* %65, i32 0, i32 0
  %67 = call i32 @mutex_lock(i32* %66)
  %68 = load %struct.sst25l_flash*, %struct.sst25l_flash** %6, align 8
  %69 = call i32 @sst25l_wait_till_ready(%struct.sst25l_flash* %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %53
  %73 = load %struct.sst25l_flash*, %struct.sst25l_flash** %6, align 8
  %74 = getelementptr inbounds %struct.sst25l_flash, %struct.sst25l_flash* %73, i32 0, i32 0
  %75 = call i32 @mutex_unlock(i32* %74)
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %3, align 4
  br label %116

77:                                               ; preds = %53
  br label %78

78:                                               ; preds = %101, %77
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %107

82:                                               ; preds = %78
  %83 = load %struct.sst25l_flash*, %struct.sst25l_flash** %6, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @sst25l_erase_sector(%struct.sst25l_flash* %83, i32 %84)
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %82
  %89 = load %struct.sst25l_flash*, %struct.sst25l_flash** %6, align 8
  %90 = getelementptr inbounds %struct.sst25l_flash, %struct.sst25l_flash* %89, i32 0, i32 0
  %91 = call i32 @mutex_unlock(i32* %90)
  %92 = load i32, i32* @MTD_ERASE_FAILED, align 4
  %93 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %94 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 8
  %95 = load %struct.sst25l_flash*, %struct.sst25l_flash** %6, align 8
  %96 = getelementptr inbounds %struct.sst25l_flash, %struct.sst25l_flash* %95, i32 0, i32 1
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = call i32 @dev_err(i32* %98, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %100 = load i32, i32* %9, align 4
  store i32 %100, i32* %3, align 4
  br label %116

101:                                              ; preds = %82
  %102 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %103 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %7, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* %7, align 4
  br label %78

107:                                              ; preds = %78
  %108 = load %struct.sst25l_flash*, %struct.sst25l_flash** %6, align 8
  %109 = getelementptr inbounds %struct.sst25l_flash, %struct.sst25l_flash* %108, i32 0, i32 0
  %110 = call i32 @mutex_unlock(i32* %109)
  %111 = load i32, i32* @MTD_ERASE_DONE, align 4
  %112 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %113 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 8
  %114 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %115 = call i32 @mtd_erase_callback(%struct.erase_info* %114)
  store i32 0, i32* %3, align 4
  br label %116

116:                                              ; preds = %107, %88, %72, %50, %37, %24
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local %struct.sst25l_flash* @to_sst25l_flash(%struct.mtd_info*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sst25l_wait_till_ready(%struct.sst25l_flash*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sst25l_erase_sector(%struct.sst25l_flash*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @mtd_erase_callback(%struct.erase_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
