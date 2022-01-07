; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_hpsa_update_device_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_hpsa_update_device_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.hpsa_scsi_dev_t = type { i8, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"hpsa_update_device_info: inquiry failed\0A\00", align 1
@TYPE_DISK = common dso_local global i8 0, align 1
@RAID_UNKNOWN = common dso_local global i32 0, align 4
@TYPE_ROM = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"$DR-10\00", align 1
@OBDR_SIG_LEN = common dso_local global i32 0, align 4
@OBDR_SIG_OFFSET = common dso_local global i64 0, align 8
@OBDR_TAPE_INQ_SIZE = common dso_local global i64 0, align 8
@OBDR_TAPE_SIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctlr_info*, i8*, %struct.hpsa_scsi_dev_t*, i8*)* @hpsa_update_device_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpsa_update_device_info(%struct.ctlr_info* %0, i8* %1, %struct.hpsa_scsi_dev_t* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ctlr_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.hpsa_scsi_dev_t*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.ctlr_info* %0, %struct.ctlr_info** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.hpsa_scsi_dev_t* %2, %struct.hpsa_scsi_dev_t** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i8* @kzalloc(i64 49, i32 %12)
  store i8* %13, i8** %10, align 8
  %14 = load i8*, i8** %10, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  br label %111

17:                                               ; preds = %4
  %18 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = call i64 @hpsa_scsi_do_inquiry(%struct.ctlr_info* %18, i8* %19, i32 0, i8* %20, i8 zeroext 49)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %25 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %111

29:                                               ; preds = %17
  %30 = load i8*, i8** %10, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = and i32 %33, 31
  %35 = trunc i32 %34 to i8
  %36 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %8, align 8
  %37 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %36, i32 0, i32 0
  store i8 %35, i8* %37, align 4
  %38 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %8, align 8
  %39 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @memcpy(i32 %40, i8* %41, i32 8)
  %43 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %8, align 8
  %44 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load i8*, i8** %10, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 8
  %48 = call i32 @memcpy(i32 %45, i8* %47, i32 4)
  %49 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %8, align 8
  %50 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load i8*, i8** %10, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 16
  %54 = call i32 @memcpy(i32 %51, i8* %53, i32 4)
  %55 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %8, align 8
  %56 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @memset(i32 %57, i32 0, i32 4)
  %59 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %8, align 8
  %62 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @hpsa_get_device_id(%struct.ctlr_info* %59, i8* %60, i32 %63, i32 4)
  %65 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %8, align 8
  %66 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %65, i32 0, i32 0
  %67 = load i8, i8* %66, align 4
  %68 = zext i8 %67 to i32
  %69 = load i8, i8* @TYPE_DISK, align 1
  %70 = zext i8 %69 to i32
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %29
  %73 = load i8*, i8** %7, align 8
  %74 = call i64 @is_logical_dev_addr_mode(i8* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %72
  %77 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %78 = load i8*, i8** %7, align 8
  %79 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %8, align 8
  %80 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %79, i32 0, i32 1
  %81 = call i32 @hpsa_get_raid_level(%struct.ctlr_info* %77, i8* %78, i32* %80)
  br label %86

82:                                               ; preds = %72, %29
  %83 = load i32, i32* @RAID_UNKNOWN, align 4
  %84 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %8, align 8
  %85 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  br label %86

86:                                               ; preds = %82, %76
  %87 = load i8*, i8** %9, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %108

89:                                               ; preds = %86
  %90 = load i8*, i8** %10, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 43
  store i8* %91, i8** %11, align 8
  %92 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %8, align 8
  %93 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %92, i32 0, i32 0
  %94 = load i8, i8* %93, align 4
  %95 = zext i8 %94 to i32
  %96 = load i8, i8* @TYPE_ROM, align 1
  %97 = zext i8 %96 to i32
  %98 = icmp eq i32 %95, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %89
  %100 = load i8*, i8** %11, align 8
  %101 = call i64 @strncmp(i8* %100, i32 ptrtoint ([7 x i8]* @.str.1 to i32), i32 6)
  %102 = icmp eq i64 %101, 0
  br label %103

103:                                              ; preds = %99, %89
  %104 = phi i1 [ false, %89 ], [ %102, %99 ]
  %105 = zext i1 %104 to i32
  %106 = trunc i32 %105 to i8
  %107 = load i8*, i8** %9, align 8
  store i8 %106, i8* %107, align 1
  br label %108

108:                                              ; preds = %103, %86
  %109 = load i8*, i8** %10, align 8
  %110 = call i32 @kfree(i8* %109)
  store i32 0, i32* %5, align 4
  br label %114

111:                                              ; preds = %23, %16
  %112 = load i8*, i8** %10, align 8
  %113 = call i32 @kfree(i8* %112)
  store i32 1, i32* %5, align 4
  br label %114

114:                                              ; preds = %111, %108
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local i8* @kzalloc(i64, i32) #1

declare dso_local i64 @hpsa_scsi_do_inquiry(%struct.ctlr_info*, i8*, i32, i8*, i8 zeroext) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @hpsa_get_device_id(%struct.ctlr_info*, i8*, i32, i32) #1

declare dso_local i64 @is_logical_dev_addr_mode(i8*) #1

declare dso_local i32 @hpsa_get_raid_level(%struct.ctlr_info*, i8*, i32*) #1

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
