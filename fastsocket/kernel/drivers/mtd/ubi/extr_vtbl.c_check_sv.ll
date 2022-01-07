; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_vtbl.c_check_sv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_vtbl.c_check_sv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_volume = type { i64, i64, i64 }
%struct.ubi_scan_volume = type { i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [35 x i8] c"bad scanning information, error %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_volume*, %struct.ubi_scan_volume*)* @check_sv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_sv(%struct.ubi_volume* %0, %struct.ubi_scan_volume* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubi_volume*, align 8
  %5 = alloca %struct.ubi_scan_volume*, align 8
  %6 = alloca i32, align 4
  store %struct.ubi_volume* %0, %struct.ubi_volume** %4, align 8
  store %struct.ubi_scan_volume* %1, %struct.ubi_scan_volume** %5, align 8
  %7 = load %struct.ubi_scan_volume*, %struct.ubi_scan_volume** %5, align 8
  %8 = getelementptr inbounds %struct.ubi_scan_volume, %struct.ubi_scan_volume* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.ubi_volume*, %struct.ubi_volume** %4, align 8
  %11 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sge i64 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %52

15:                                               ; preds = %2
  %16 = load %struct.ubi_scan_volume*, %struct.ubi_scan_volume** %5, align 8
  %17 = getelementptr inbounds %struct.ubi_scan_volume, %struct.ubi_scan_volume* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.ubi_volume*, %struct.ubi_volume** %4, align 8
  %20 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  store i32 2, i32* %6, align 4
  br label %52

24:                                               ; preds = %15
  %25 = load %struct.ubi_scan_volume*, %struct.ubi_scan_volume** %5, align 8
  %26 = getelementptr inbounds %struct.ubi_scan_volume, %struct.ubi_scan_volume* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.ubi_volume*, %struct.ubi_volume** %4, align 8
  %29 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  store i32 3, i32* %6, align 4
  br label %52

33:                                               ; preds = %24
  %34 = load %struct.ubi_scan_volume*, %struct.ubi_scan_volume** %5, align 8
  %35 = getelementptr inbounds %struct.ubi_scan_volume, %struct.ubi_scan_volume* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.ubi_volume*, %struct.ubi_volume** %4, align 8
  %38 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  store i32 4, i32* %6, align 4
  br label %52

42:                                               ; preds = %33
  %43 = load %struct.ubi_scan_volume*, %struct.ubi_scan_volume** %5, align 8
  %44 = getelementptr inbounds %struct.ubi_scan_volume, %struct.ubi_scan_volume* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.ubi_volume*, %struct.ubi_volume** %4, align 8
  %47 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %45, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  store i32 5, i32* %6, align 4
  br label %52

51:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %61

52:                                               ; preds = %50, %41, %32, %23, %14
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @ubi_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load %struct.ubi_scan_volume*, %struct.ubi_scan_volume** %5, align 8
  %56 = call i32 @ubi_dbg_dump_sv(%struct.ubi_scan_volume* %55)
  %57 = load %struct.ubi_volume*, %struct.ubi_volume** %4, align 8
  %58 = call i32 @ubi_dbg_dump_vol_info(%struct.ubi_volume* %57)
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %52, %51
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @ubi_err(i8*, i32) #1

declare dso_local i32 @ubi_dbg_dump_sv(%struct.ubi_scan_volume*) #1

declare dso_local i32 @ubi_dbg_dump_vol_info(%struct.ubi_volume*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
