; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdpart.c_part_write_oob.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdpart.c_part_write_oob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32, i64 }
%struct.mtd_oob_ops = type { i64, i64 }
%struct.mtd_part = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, i64, %struct.mtd_oob_ops*)* }

@MTD_WRITEABLE = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i64, %struct.mtd_oob_ops*)* @part_write_oob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @part_write_oob(%struct.mtd_info* %0, i64 %1, %struct.mtd_oob_ops* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mtd_oob_ops*, align 8
  %8 = alloca %struct.mtd_part*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.mtd_oob_ops* %2, %struct.mtd_oob_ops** %7, align 8
  %9 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %10 = call %struct.mtd_part* @PART(%struct.mtd_info* %9)
  store %struct.mtd_part* %10, %struct.mtd_part** %8, align 8
  %11 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %12 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @MTD_WRITEABLE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EROFS, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %63

20:                                               ; preds = %3
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %23 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp sge i64 %21, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %63

29:                                               ; preds = %20
  %30 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %31 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %29
  %35 = load i64, i64* %6, align 8
  %36 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %37 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %35, %38
  %40 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %41 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %39, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %34
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %63

47:                                               ; preds = %34, %29
  %48 = load %struct.mtd_part*, %struct.mtd_part** %8, align 8
  %49 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32 (%struct.TYPE_2__*, i64, %struct.mtd_oob_ops*)*, i32 (%struct.TYPE_2__*, i64, %struct.mtd_oob_ops*)** %51, align 8
  %53 = load %struct.mtd_part*, %struct.mtd_part** %8, align 8
  %54 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i64, i64* %6, align 8
  %57 = load %struct.mtd_part*, %struct.mtd_part** %8, align 8
  %58 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %56, %59
  %61 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %62 = call i32 %52(%struct.TYPE_2__* %55, i64 %60, %struct.mtd_oob_ops* %61)
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %47, %44, %26, %17
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local %struct.mtd_part* @PART(%struct.mtd_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
