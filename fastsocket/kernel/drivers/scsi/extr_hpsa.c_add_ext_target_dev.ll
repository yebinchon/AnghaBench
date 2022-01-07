; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_add_ext_target_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_add_ext_target_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.hpsa_scsi_dev_t = type { i8, i64, i32 }

@MAX_EXT_TARGETS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [88 x i8] c"Maximum number of external target devices exceeded.  Check your hardware configuration.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctlr_info*, %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t*, i32*, i64*, i32*)* @add_ext_target_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_ext_target_dev(%struct.ctlr_info* %0, %struct.hpsa_scsi_dev_t* %1, %struct.hpsa_scsi_dev_t* %2, i32* %3, i64* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ctlr_info*, align 8
  %9 = alloca %struct.hpsa_scsi_dev_t*, align 8
  %10 = alloca %struct.hpsa_scsi_dev_t*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca [8 x i8], align 1
  store %struct.ctlr_info* %0, %struct.ctlr_info** %8, align 8
  store %struct.hpsa_scsi_dev_t* %1, %struct.hpsa_scsi_dev_t** %9, align 8
  store %struct.hpsa_scsi_dev_t* %2, %struct.hpsa_scsi_dev_t** %10, align 8
  store i32* %3, i32** %11, align 8
  store i64* %4, i64** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %9, align 8
  %16 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %15, i32 0, i32 0
  %17 = load i8, i8* %16, align 8
  %18 = load i64*, i64** %12, align 8
  %19 = call i64 @test_bit(i8 zeroext %17, i64* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %90

22:                                               ; preds = %6
  %23 = load i32*, i32** %11, align 8
  %24 = call i32 @is_logical_dev_addr_mode(i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  br label %90

27:                                               ; preds = %22
  %28 = load %struct.ctlr_info*, %struct.ctlr_info** %8, align 8
  %29 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %9, align 8
  %30 = call i32 @is_ext_target(%struct.ctlr_info* %28, %struct.hpsa_scsi_dev_t* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  store i32 0, i32* %7, align 4
  br label %90

33:                                               ; preds = %27
  %34 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %9, align 8
  %35 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 0, i32* %7, align 4
  br label %90

39:                                               ; preds = %33
  %40 = getelementptr inbounds [8 x i8], [8 x i8]* %14, i64 0, i64 0
  %41 = call i32 @memset(i8* %40, i32 0, i32 8)
  %42 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %9, align 8
  %43 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %42, i32 0, i32 0
  %44 = load i8, i8* %43, align 8
  %45 = getelementptr inbounds [8 x i8], [8 x i8]* %14, i64 0, i64 3
  store i8 %44, i8* %45, align 1
  %46 = getelementptr inbounds [8 x i8], [8 x i8]* %14, i64 0, i64 0
  %47 = call i64 @is_hba_lunid(i8* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  store i32 0, i32* %7, align 4
  br label %90

50:                                               ; preds = %39
  %51 = load %struct.ctlr_info*, %struct.ctlr_info** %8, align 8
  %52 = call i64 @is_scsi_rev_5(%struct.ctlr_info* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 0, i32* %7, align 4
  br label %90

55:                                               ; preds = %50
  %56 = load i32*, i32** %13, align 8
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @MAX_EXT_TARGETS, align 4
  %59 = icmp sge i32 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load %struct.ctlr_info*, %struct.ctlr_info** %8, align 8
  %62 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = call i32 @dev_warn(i32* %64, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %90

66:                                               ; preds = %55
  %67 = load %struct.ctlr_info*, %struct.ctlr_info** %8, align 8
  %68 = getelementptr inbounds [8 x i8], [8 x i8]* %14, i64 0, i64 0
  %69 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %10, align 8
  %70 = call i64 @hpsa_update_device_info(%struct.ctlr_info* %67, i8* %68, %struct.hpsa_scsi_dev_t* %69, i32* null)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  store i32 0, i32* %7, align 4
  br label %90

73:                                               ; preds = %66
  %74 = load i32*, i32** %13, align 8
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  %77 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %10, align 8
  %78 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %9, align 8
  %79 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %9, align 8
  %82 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %81, i32 0, i32 0
  %83 = load i8, i8* %82, align 8
  %84 = call i32 @hpsa_set_bus_target_lun(%struct.hpsa_scsi_dev_t* %77, i32 %80, i8 zeroext %83, i32 0)
  %85 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %9, align 8
  %86 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %85, i32 0, i32 0
  %87 = load i8, i8* %86, align 8
  %88 = load i64*, i64** %12, align 8
  %89 = call i32 @set_bit(i8 zeroext %87, i64* %88)
  store i32 1, i32* %7, align 4
  br label %90

90:                                               ; preds = %73, %72, %60, %54, %49, %38, %32, %26, %21
  %91 = load i32, i32* %7, align 4
  ret i32 %91
}

declare dso_local i64 @test_bit(i8 zeroext, i64*) #1

declare dso_local i32 @is_logical_dev_addr_mode(i32*) #1

declare dso_local i32 @is_ext_target(%struct.ctlr_info*, %struct.hpsa_scsi_dev_t*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @is_hba_lunid(i8*) #1

declare dso_local i64 @is_scsi_rev_5(%struct.ctlr_info*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i64 @hpsa_update_device_info(%struct.ctlr_info*, i8*, %struct.hpsa_scsi_dev_t*, i32*) #1

declare dso_local i32 @hpsa_set_bus_target_lun(%struct.hpsa_scsi_dev_t*, i32, i8 zeroext, i32) #1

declare dso_local i32 @set_bit(i8 zeroext, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
