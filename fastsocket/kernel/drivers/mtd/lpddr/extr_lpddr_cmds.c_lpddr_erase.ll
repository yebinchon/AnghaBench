; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/lpddr/extr_lpddr_cmds.c_lpddr_erase.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/lpddr/extr_lpddr_cmds.c_lpddr_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64, %struct.map_info* }
%struct.map_info = type { %struct.lpddr_private* }
%struct.lpddr_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.erase_info = type { i64, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@MTD_ERASE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.erase_info*)* @lpddr_erase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpddr_erase(%struct.mtd_info* %0, %struct.erase_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca %struct.erase_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.map_info*, align 8
  %10 = alloca %struct.lpddr_private*, align 8
  %11 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store %struct.erase_info* %1, %struct.erase_info** %5, align 8
  %12 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %13 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %12, i32 0, i32 1
  %14 = load %struct.map_info*, %struct.map_info** %13, align 8
  store %struct.map_info* %14, %struct.map_info** %9, align 8
  %15 = load %struct.map_info*, %struct.map_info** %9, align 8
  %16 = getelementptr inbounds %struct.map_info, %struct.map_info* %15, i32 0, i32 0
  %17 = load %struct.lpddr_private*, %struct.lpddr_private** %16, align 8
  store %struct.lpddr_private* %17, %struct.lpddr_private** %10, align 8
  %18 = load %struct.lpddr_private*, %struct.lpddr_private** %10, align 8
  %19 = getelementptr inbounds %struct.lpddr_private, %struct.lpddr_private* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 1, %22
  store i32 %23, i32* %11, align 4
  %24 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %25 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %6, align 8
  %27 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %28 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %7, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %32 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ugt i64 %30, %33
  br i1 %34, label %43, label %35

35:                                               ; preds = %2
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* %6, align 8
  %38 = add i64 %36, %37
  %39 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %40 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ugt i64 %38, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %35, %2
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %73

46:                                               ; preds = %35
  br label %47

47:                                               ; preds = %58, %46
  %48 = load i64, i64* %7, align 8
  %49 = icmp ugt i64 %48, 0
  br i1 %49, label %50, label %67

50:                                               ; preds = %47
  %51 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @do_erase_oneblock(%struct.mtd_info* %51, i64 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %3, align 4
  br label %73

58:                                               ; preds = %50
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* %6, align 8
  %62 = add i64 %61, %60
  store i64 %62, i64* %6, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* %7, align 8
  %66 = sub i64 %65, %64
  store i64 %66, i64* %7, align 8
  br label %47

67:                                               ; preds = %47
  %68 = load i32, i32* @MTD_ERASE_DONE, align 4
  %69 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %70 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %72 = call i32 @mtd_erase_callback(%struct.erase_info* %71)
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %67, %56, %43
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @do_erase_oneblock(%struct.mtd_info*, i64) #1

declare dso_local i32 @mtd_erase_callback(%struct.erase_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
