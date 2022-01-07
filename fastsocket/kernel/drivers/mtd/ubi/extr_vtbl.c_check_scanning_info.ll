; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_vtbl.c_check_scanning_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_vtbl.c_check_scanning_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i64, %struct.ubi_volume** }
%struct.ubi_volume = type { i64 }
%struct.ubi_scan_info = type { i64, i64 }
%struct.ubi_scan_volume = type { i32 }

@UBI_INT_VOL_COUNT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"scanning found %d volumes, maximum is %d + %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@UBI_INTERNAL_VOL_START = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"too large volume ID %d found by scanning\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"finish volume %d removal\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_device*, %struct.ubi_scan_info*)* @check_scanning_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_scanning_info(%struct.ubi_device* %0, %struct.ubi_scan_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubi_device*, align 8
  %5 = alloca %struct.ubi_scan_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubi_scan_volume*, align 8
  %9 = alloca %struct.ubi_volume*, align 8
  store %struct.ubi_device* %0, %struct.ubi_device** %4, align 8
  store %struct.ubi_scan_info* %1, %struct.ubi_scan_info** %5, align 8
  %10 = load %struct.ubi_scan_info*, %struct.ubi_scan_info** %5, align 8
  %11 = getelementptr inbounds %struct.ubi_scan_info, %struct.ubi_scan_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @UBI_INT_VOL_COUNT, align 8
  %14 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %15 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %13, %16
  %18 = icmp sgt i64 %12, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %2
  %20 = load %struct.ubi_scan_info*, %struct.ubi_scan_info** %5, align 8
  %21 = getelementptr inbounds %struct.ubi_scan_info, %struct.ubi_scan_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @UBI_INT_VOL_COUNT, align 8
  %24 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %25 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 (i8*, i64, ...) @ubi_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %22, i64 %23, i64 %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %128

30:                                               ; preds = %2
  %31 = load %struct.ubi_scan_info*, %struct.ubi_scan_info** %5, align 8
  %32 = getelementptr inbounds %struct.ubi_scan_info, %struct.ubi_scan_info* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %35 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @UBI_INT_VOL_COUNT, align 8
  %38 = add nsw i64 %36, %37
  %39 = icmp sge i64 %33, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %30
  %41 = load %struct.ubi_scan_info*, %struct.ubi_scan_info** %5, align 8
  %42 = getelementptr inbounds %struct.ubi_scan_info, %struct.ubi_scan_info* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @UBI_INTERNAL_VOL_START, align 8
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load %struct.ubi_scan_info*, %struct.ubi_scan_info** %5, align 8
  %48 = getelementptr inbounds %struct.ubi_scan_info, %struct.ubi_scan_info* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i32 (i8*, i64, ...) @ubi_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %128

53:                                               ; preds = %40, %30
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %124, %53
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %58 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @UBI_INT_VOL_COUNT, align 8
  %61 = add nsw i64 %59, %60
  %62 = icmp slt i64 %56, %61
  br i1 %62, label %63, label %127

63:                                               ; preds = %54
  %64 = call i32 (...) @cond_resched()
  %65 = load %struct.ubi_scan_info*, %struct.ubi_scan_info** %5, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call %struct.ubi_scan_volume* @ubi_scan_find_sv(%struct.ubi_scan_info* %65, i32 %66)
  store %struct.ubi_scan_volume* %67, %struct.ubi_scan_volume** %8, align 8
  %68 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %69 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %68, i32 0, i32 1
  %70 = load %struct.ubi_volume**, %struct.ubi_volume*** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.ubi_volume*, %struct.ubi_volume** %70, i64 %72
  %74 = load %struct.ubi_volume*, %struct.ubi_volume** %73, align 8
  store %struct.ubi_volume* %74, %struct.ubi_volume** %9, align 8
  %75 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %76 = icmp ne %struct.ubi_volume* %75, null
  br i1 %76, label %85, label %77

77:                                               ; preds = %63
  %78 = load %struct.ubi_scan_volume*, %struct.ubi_scan_volume** %8, align 8
  %79 = icmp ne %struct.ubi_scan_volume* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load %struct.ubi_scan_info*, %struct.ubi_scan_info** %5, align 8
  %82 = load %struct.ubi_scan_volume*, %struct.ubi_scan_volume** %8, align 8
  %83 = call i32 @ubi_scan_rm_volume(%struct.ubi_scan_info* %81, %struct.ubi_scan_volume* %82)
  br label %84

84:                                               ; preds = %80, %77
  br label %124

85:                                               ; preds = %63
  %86 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %87 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %110

90:                                               ; preds = %85
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %94 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp slt i64 %92, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 @ubi_assert(i32 %97)
  %99 = load %struct.ubi_scan_volume*, %struct.ubi_scan_volume** %8, align 8
  %100 = icmp ne %struct.ubi_scan_volume* %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %90
  br label %124

102:                                              ; preds = %90
  %103 = load %struct.ubi_scan_volume*, %struct.ubi_scan_volume** %8, align 8
  %104 = getelementptr inbounds %struct.ubi_scan_volume, %struct.ubi_scan_volume* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @ubi_msg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %105)
  %107 = load %struct.ubi_scan_info*, %struct.ubi_scan_info** %5, align 8
  %108 = load %struct.ubi_scan_volume*, %struct.ubi_scan_volume** %8, align 8
  %109 = call i32 @ubi_scan_rm_volume(%struct.ubi_scan_info* %107, %struct.ubi_scan_volume* %108)
  br label %123

110:                                              ; preds = %85
  %111 = load %struct.ubi_scan_volume*, %struct.ubi_scan_volume** %8, align 8
  %112 = icmp ne %struct.ubi_scan_volume* %111, null
  br i1 %112, label %113, label %122

113:                                              ; preds = %110
  %114 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %115 = load %struct.ubi_scan_volume*, %struct.ubi_scan_volume** %8, align 8
  %116 = call i32 @check_sv(%struct.ubi_volume* %114, %struct.ubi_scan_volume* %115)
  store i32 %116, i32* %6, align 4
  %117 = load i32, i32* %6, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %113
  %120 = load i32, i32* %6, align 4
  store i32 %120, i32* %3, align 4
  br label %128

121:                                              ; preds = %113
  br label %122

122:                                              ; preds = %121, %110
  br label %123

123:                                              ; preds = %122, %102
  br label %124

124:                                              ; preds = %123, %101, %84
  %125 = load i32, i32* %7, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %7, align 4
  br label %54

127:                                              ; preds = %54
  store i32 0, i32* %3, align 4
  br label %128

128:                                              ; preds = %127, %119, %46, %19
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i32 @ubi_err(i8*, i64, ...) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local %struct.ubi_scan_volume* @ubi_scan_find_sv(%struct.ubi_scan_info*, i32) #1

declare dso_local i32 @ubi_scan_rm_volume(%struct.ubi_scan_info*, %struct.ubi_scan_volume*) #1

declare dso_local i32 @ubi_assert(i32) #1

declare dso_local i32 @ubi_msg(i8*, i32) #1

declare dso_local i32 @check_sv(%struct.ubi_volume*, %struct.ubi_scan_volume*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
