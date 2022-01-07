; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_scan.c_validate_vid_hdr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_scan.c_validate_vid_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_vid_hdr = type { i32, i32, i32, i32 }
%struct.ubi_scan_volume = type { i64, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"inconsistent vol_id\00", align 1
@UBI_STATIC_VOLUME = common dso_local global i64 0, align 8
@UBI_VID_STATIC = common dso_local global i32 0, align 4
@UBI_VID_DYNAMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"inconsistent vol_type\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"inconsistent used_ebs\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"inconsistent data_pad\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"inconsistent VID header at PEB %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_vid_hdr*, %struct.ubi_scan_volume*, i32)* @validate_vid_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_vid_hdr(%struct.ubi_vid_hdr* %0, %struct.ubi_scan_volume* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubi_vid_hdr*, align 8
  %6 = alloca %struct.ubi_scan_volume*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ubi_vid_hdr* %0, %struct.ubi_vid_hdr** %5, align 8
  store %struct.ubi_scan_volume* %1, %struct.ubi_scan_volume** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %5, align 8
  %14 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %5, align 8
  %17 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @be32_to_cpu(i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %5, align 8
  %21 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @be32_to_cpu(i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %5, align 8
  %25 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @be32_to_cpu(i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load %struct.ubi_scan_volume*, %struct.ubi_scan_volume** %6, align 8
  %29 = getelementptr inbounds %struct.ubi_scan_volume, %struct.ubi_scan_volume* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %73

32:                                               ; preds = %3
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.ubi_scan_volume*, %struct.ubi_scan_volume** %6, align 8
  %35 = getelementptr inbounds %struct.ubi_scan_volume, %struct.ubi_scan_volume* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %33, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = call i32 @dbg_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %74

40:                                               ; preds = %32
  %41 = load %struct.ubi_scan_volume*, %struct.ubi_scan_volume** %6, align 8
  %42 = getelementptr inbounds %struct.ubi_scan_volume, %struct.ubi_scan_volume* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @UBI_STATIC_VOLUME, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* @UBI_VID_STATIC, align 4
  store i32 %47, i32* %12, align 4
  br label %50

48:                                               ; preds = %40
  %49 = load i32, i32* @UBI_VID_DYNAMIC, align 4
  store i32 %49, i32* %12, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = call i32 @dbg_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %74

56:                                               ; preds = %50
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.ubi_scan_volume*, %struct.ubi_scan_volume** %6, align 8
  %59 = getelementptr inbounds %struct.ubi_scan_volume, %struct.ubi_scan_volume* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %57, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = call i32 @dbg_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %74

64:                                               ; preds = %56
  %65 = load i32, i32* %11, align 4
  %66 = load %struct.ubi_scan_volume*, %struct.ubi_scan_volume** %6, align 8
  %67 = getelementptr inbounds %struct.ubi_scan_volume, %struct.ubi_scan_volume* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %65, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = call i32 @dbg_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %74

72:                                               ; preds = %64
  br label %73

73:                                               ; preds = %72, %3
  store i32 0, i32* %4, align 4
  br label %83

74:                                               ; preds = %70, %62, %54, %38
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @ubi_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %75)
  %77 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %5, align 8
  %78 = call i32 @ubi_dbg_dump_vid_hdr(%struct.ubi_vid_hdr* %77)
  %79 = load %struct.ubi_scan_volume*, %struct.ubi_scan_volume** %6, align 8
  %80 = call i32 @ubi_dbg_dump_sv(%struct.ubi_scan_volume* %79)
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %74, %73
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @dbg_err(i8*) #1

declare dso_local i32 @ubi_err(i8*, i32) #1

declare dso_local i32 @ubi_dbg_dump_vid_hdr(%struct.ubi_vid_hdr*) #1

declare dso_local i32 @ubi_dbg_dump_sv(%struct.ubi_scan_volume*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
