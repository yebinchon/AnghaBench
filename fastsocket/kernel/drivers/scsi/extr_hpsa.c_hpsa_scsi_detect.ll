; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_hpsa_scsi_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_hpsa_scsi_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { i64, i32, %struct.TYPE_2__*, i32*, %struct.Scsi_Host*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.Scsi_Host = type { i32, i32, i64*, i32, i32, i32, i32, i32, i8*, i8*, i32, i64, i64 }

@hpsa_driver_template = common dso_local global i32 0, align 4
@MAX_COMMAND_SIZE = common dso_local global i32 0, align 4
@HPSA_MAX_LUN = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [58 x i8] c"hpsa_scsi_detect: scsi_add_host failed for controller %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"hpsa_scsi_detect: scsi_host_alloc failed for controller %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctlr_info*)* @hpsa_scsi_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpsa_scsi_detect(%struct.ctlr_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ctlr_info*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca i32, align 4
  store %struct.ctlr_info* %0, %struct.ctlr_info** %3, align 8
  %6 = call %struct.Scsi_Host* @scsi_host_alloc(i32* @hpsa_driver_template, i32 8)
  store %struct.Scsi_Host* %6, %struct.Scsi_Host** %4, align 8
  %7 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %8 = icmp eq %struct.Scsi_Host* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %91

10:                                               ; preds = %1
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %12 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %11, i32 0, i32 12
  store i64 0, i64* %12, align 8
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %14 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %13, i32 0, i32 11
  store i64 0, i64* %14, align 8
  %15 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %16 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %15, i32 0, i32 0
  store i32 -1, i32* %16, align 8
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %18 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %17, i32 0, i32 1
  store i32 3, i32* %18, align 4
  %19 = load i32, i32* @MAX_COMMAND_SIZE, align 4
  %20 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %21 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %20, i32 0, i32 10
  store i32 %19, i32* %21, align 8
  %22 = load i8*, i8** @HPSA_MAX_LUN, align 8
  %23 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %24 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %23, i32 0, i32 9
  store i8* %22, i8** %24, align 8
  %25 = load i8*, i8** @HPSA_MAX_LUN, align 8
  %26 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %27 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %26, i32 0, i32 8
  store i8* %25, i8** %27, align 8
  %28 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %29 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %32 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %31, i32 0, i32 7
  store i32 %30, i32* %32, align 8
  %33 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %34 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %37 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %36, i32 0, i32 6
  store i32 %35, i32* %37, align 4
  %38 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %39 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %42 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 8
  %43 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %44 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %45 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %44, i32 0, i32 4
  store %struct.Scsi_Host* %43, %struct.Scsi_Host** %45, align 8
  %46 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %47 = ptrtoint %struct.ctlr_info* %46 to i64
  %48 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %49 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %48, i32 0, i32 2
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 0
  store i64 %47, i64* %51, align 8
  %52 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %53 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %56 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %61 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 8
  %62 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %63 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %66 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 4
  %67 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %68 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %69 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %68, i32 0, i32 2
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = call i32 @scsi_add_host(%struct.Scsi_Host* %67, i32* %71)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %10
  br label %79

76:                                               ; preds = %10
  %77 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %78 = call i32 @scsi_scan_host(%struct.Scsi_Host* %77)
  store i32 0, i32* %2, align 4
  br label %102

79:                                               ; preds = %75
  %80 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %81 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %80, i32 0, i32 2
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %85 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @dev_err(i32* %83, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %86)
  %88 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %89 = call i32 @scsi_host_put(%struct.Scsi_Host* %88)
  %90 = load i32, i32* %5, align 4
  store i32 %90, i32* %2, align 4
  br label %102

91:                                               ; preds = %9
  %92 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %93 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %92, i32 0, i32 2
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %97 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @dev_err(i32* %95, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* @ENOMEM, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %91, %79, %76
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local %struct.Scsi_Host* @scsi_host_alloc(i32*, i32) #1

declare dso_local i32 @scsi_add_host(%struct.Scsi_Host*, i32*) #1

declare dso_local i32 @scsi_scan_host(%struct.Scsi_Host*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
