; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_osst.c_osst_analyze_sense.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_osst.c_osst_analyze_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.osst_request = type { i32* }
%struct.st_cmdstatus = type { i32, i32, i32, i32, i32, i64, i32 }

@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.osst_request*, %struct.st_cmdstatus*)* @osst_analyze_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @osst_analyze_sense(%struct.osst_request* %0, %struct.st_cmdstatus* %1) #0 {
  %3 = alloca %struct.osst_request*, align 8
  %4 = alloca %struct.st_cmdstatus*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.osst_request* %0, %struct.osst_request** %3, align 8
  store %struct.st_cmdstatus* %1, %struct.st_cmdstatus** %4, align 8
  %7 = load %struct.osst_request*, %struct.osst_request** %3, align 8
  %8 = getelementptr inbounds %struct.osst_request, %struct.osst_request* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %6, align 8
  %10 = load %struct.osst_request*, %struct.osst_request** %3, align 8
  %11 = getelementptr inbounds %struct.osst_request, %struct.osst_request* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %14 = load %struct.st_cmdstatus*, %struct.st_cmdstatus** %4, align 8
  %15 = getelementptr inbounds %struct.st_cmdstatus, %struct.st_cmdstatus* %14, i32 0, i32 6
  %16 = call i64 @scsi_normalize_sense(i32* %12, i32 %13, i32* %15)
  %17 = load %struct.st_cmdstatus*, %struct.st_cmdstatus** %4, align 8
  %18 = getelementptr inbounds %struct.st_cmdstatus, %struct.st_cmdstatus* %17, i32 0, i32 5
  store i64 %16, i64* %18, align 8
  %19 = load %struct.st_cmdstatus*, %struct.st_cmdstatus** %4, align 8
  %20 = getelementptr inbounds %struct.st_cmdstatus, %struct.st_cmdstatus* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = load %struct.st_cmdstatus*, %struct.st_cmdstatus** %4, align 8
  %22 = getelementptr inbounds %struct.st_cmdstatus, %struct.st_cmdstatus* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %73

25:                                               ; preds = %2
  %26 = load %struct.st_cmdstatus*, %struct.st_cmdstatus** %4, align 8
  %27 = getelementptr inbounds %struct.st_cmdstatus, %struct.st_cmdstatus* %26, i32 0, i32 1
  store i32 0, i32* %27, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %30 = load %struct.st_cmdstatus*, %struct.st_cmdstatus** %4, align 8
  %31 = getelementptr inbounds %struct.st_cmdstatus, %struct.st_cmdstatus* %30, i32 0, i32 3
  %32 = call i32 @scsi_get_sense_info_fld(i32* %28, i32 %29, i32* %31)
  %33 = load %struct.st_cmdstatus*, %struct.st_cmdstatus** %4, align 8
  %34 = getelementptr inbounds %struct.st_cmdstatus, %struct.st_cmdstatus* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 127
  switch i32 %38, label %72 [
    i32 113, label %39
    i32 112, label %42
    i32 115, label %51
    i32 114, label %54
  ]

39:                                               ; preds = %25
  %40 = load %struct.st_cmdstatus*, %struct.st_cmdstatus** %4, align 8
  %41 = getelementptr inbounds %struct.st_cmdstatus, %struct.st_cmdstatus* %40, i32 0, i32 1
  store i32 1, i32* %41, align 4
  br label %42

42:                                               ; preds = %25, %39
  %43 = load %struct.st_cmdstatus*, %struct.st_cmdstatus** %4, align 8
  %44 = getelementptr inbounds %struct.st_cmdstatus, %struct.st_cmdstatus* %43, i32 0, i32 2
  store i32 1, i32* %44, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 224
  %49 = load %struct.st_cmdstatus*, %struct.st_cmdstatus** %4, align 8
  %50 = getelementptr inbounds %struct.st_cmdstatus, %struct.st_cmdstatus* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  br label %72

51:                                               ; preds = %25
  %52 = load %struct.st_cmdstatus*, %struct.st_cmdstatus** %4, align 8
  %53 = getelementptr inbounds %struct.st_cmdstatus, %struct.st_cmdstatus* %52, i32 0, i32 1
  store i32 1, i32* %53, align 4
  br label %54

54:                                               ; preds = %25, %51
  %55 = load %struct.st_cmdstatus*, %struct.st_cmdstatus** %4, align 8
  %56 = getelementptr inbounds %struct.st_cmdstatus, %struct.st_cmdstatus* %55, i32 0, i32 2
  store i32 0, i32* %56, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %59 = call i32* @scsi_sense_desc_find(i32* %57, i32 %58, i32 4)
  store i32* %59, i32** %5, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %54
  %63 = load i32*, i32** %5, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 3
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 224
  br label %68

67:                                               ; preds = %54
  br label %68

68:                                               ; preds = %67, %62
  %69 = phi i32 [ %66, %62 ], [ 0, %67 ]
  %70 = load %struct.st_cmdstatus*, %struct.st_cmdstatus** %4, align 8
  %71 = getelementptr inbounds %struct.st_cmdstatus, %struct.st_cmdstatus* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  br label %72

72:                                               ; preds = %25, %68, %42
  br label %73

73:                                               ; preds = %72, %2
  ret void
}

declare dso_local i64 @scsi_normalize_sense(i32*, i32, i32*) #1

declare dso_local i32 @scsi_get_sense_info_fld(i32*, i32, i32*) #1

declare dso_local i32* @scsi_sense_desc_find(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
