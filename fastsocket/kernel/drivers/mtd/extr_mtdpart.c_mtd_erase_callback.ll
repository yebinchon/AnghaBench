; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdpart.c_mtd_erase_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdpart.c_mtd_erase_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.erase_info = type { i64, i32 (%struct.erase_info*)*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.mtd_part = type { i64 }

@part_erase = common dso_local global i64 0, align 8
@MTD_FAIL_ADDR_UNKNOWN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mtd_erase_callback(%struct.erase_info* %0) #0 {
  %2 = alloca %struct.erase_info*, align 8
  %3 = alloca %struct.mtd_part*, align 8
  store %struct.erase_info* %0, %struct.erase_info** %2, align 8
  %4 = load %struct.erase_info*, %struct.erase_info** %2, align 8
  %5 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %4, i32 0, i32 3
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @part_erase, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %39

11:                                               ; preds = %1
  %12 = load %struct.erase_info*, %struct.erase_info** %2, align 8
  %13 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %12, i32 0, i32 3
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = call %struct.mtd_part* @PART(%struct.TYPE_2__* %14)
  store %struct.mtd_part* %15, %struct.mtd_part** %3, align 8
  %16 = load %struct.erase_info*, %struct.erase_info** %2, align 8
  %17 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MTD_FAIL_ADDR_UNKNOWN, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %11
  %22 = load %struct.mtd_part*, %struct.mtd_part** %3, align 8
  %23 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.erase_info*, %struct.erase_info** %2, align 8
  %26 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %27, %24
  store i64 %28, i64* %26, align 8
  br label %29

29:                                               ; preds = %21, %11
  %30 = load %struct.mtd_part*, %struct.mtd_part** %3, align 8
  %31 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.erase_info*, %struct.erase_info** %2, align 8
  %34 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = sub nsw i64 %36, %32
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %34, align 8
  br label %39

39:                                               ; preds = %29, %1
  %40 = load %struct.erase_info*, %struct.erase_info** %2, align 8
  %41 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %40, i32 0, i32 1
  %42 = load i32 (%struct.erase_info*)*, i32 (%struct.erase_info*)** %41, align 8
  %43 = icmp ne i32 (%struct.erase_info*)* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load %struct.erase_info*, %struct.erase_info** %2, align 8
  %46 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %45, i32 0, i32 1
  %47 = load i32 (%struct.erase_info*)*, i32 (%struct.erase_info*)** %46, align 8
  %48 = load %struct.erase_info*, %struct.erase_info** %2, align 8
  %49 = call i32 %47(%struct.erase_info* %48)
  br label %50

50:                                               ; preds = %44, %39
  ret void
}

declare dso_local %struct.mtd_part* @PART(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
