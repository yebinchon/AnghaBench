; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_3990_erp.c_dasd_3990_erp_error_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_3990_erp.c_dasd_3990_erp_error_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_ccw_req = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SCHN_STAT_INTF_CTRL_CHK = common dso_local global i32 0, align 4
@SCHN_STAT_CHN_CTRL_CHK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_ccw_req*, %struct.dasd_ccw_req*)* @dasd_3990_erp_error_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_3990_erp_error_match(%struct.dasd_ccw_req* %0, %struct.dasd_ccw_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dasd_ccw_req*, align 8
  %5 = alloca %struct.dasd_ccw_req*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.dasd_ccw_req* %0, %struct.dasd_ccw_req** %4, align 8
  store %struct.dasd_ccw_req* %1, %struct.dasd_ccw_req** %5, align 8
  %8 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %9 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %5, align 8
  %12 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %10, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %92

16:                                               ; preds = %2
  %17 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %18 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %17, i32 0, i32 1
  %19 = call i8* @dasd_get_sense(%struct.TYPE_2__* %18)
  store i8* %19, i8** %6, align 8
  %20 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %5, align 8
  %21 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %20, i32 0, i32 1
  %22 = call i8* @dasd_get_sense(%struct.TYPE_2__* %21)
  store i8* %22, i8** %7, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = icmp ne i8* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = load i8*, i8** %7, align 8
  %28 = icmp ne i8* %27, null
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = icmp ne i32 %26, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %92

33:                                               ; preds = %16
  %34 = load i8*, i8** %6, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %59, label %36

36:                                               ; preds = %33
  %37 = load i8*, i8** %7, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %59, label %39

39:                                               ; preds = %36
  %40 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %41 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i32 @scsw_cstat(i32* %42)
  %44 = load i32, i32* @SCHN_STAT_INTF_CTRL_CHK, align 4
  %45 = load i32, i32* @SCHN_STAT_CHN_CTRL_CHK, align 4
  %46 = or i32 %44, %45
  %47 = and i32 %43, %46
  %48 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %5, align 8
  %49 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = call i32 @scsw_cstat(i32* %50)
  %52 = load i32, i32* @SCHN_STAT_INTF_CTRL_CHK, align 4
  %53 = load i32, i32* @SCHN_STAT_CHN_CTRL_CHK, align 4
  %54 = or i32 %52, %53
  %55 = and i32 %51, %54
  %56 = icmp eq i32 %47, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %39
  store i32 1, i32* %3, align 4
  br label %92

58:                                               ; preds = %39
  br label %59

59:                                               ; preds = %58, %36, %33
  %60 = load i8*, i8** %6, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %90

62:                                               ; preds = %59
  %63 = load i8*, i8** %7, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %90

65:                                               ; preds = %62
  %66 = load i8*, i8** %6, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = call i64 @memcmp(i8* %66, i8* %67, i32 3)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %90

70:                                               ; preds = %65
  %71 = load i8*, i8** %6, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 27
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = load i8*, i8** %7, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 27
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %74, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %70
  %81 = load i8*, i8** %6, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 25
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = load i8*, i8** %7, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 25
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %84, %88
  br i1 %89, label %91, label %90

90:                                               ; preds = %80, %70, %65, %62, %59
  store i32 0, i32* %3, align 4
  br label %92

91:                                               ; preds = %80
  store i32 1, i32* %3, align 4
  br label %92

92:                                               ; preds = %91, %90, %57, %32, %15
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i8* @dasd_get_sense(%struct.TYPE_2__*) #1

declare dso_local i32 @scsw_cstat(i32*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
