; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_alua.c_alua_activate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/device_handler/extr_scsi_dh_alua.c_alua_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.alua_dh_data = type { i32, i32, i32, i32*, i32 (i8*, i32)*, i32 }

@SCSI_DH_OK = common dso_local global i32 0, align 4
@TPGS_MODE_EXPLICIT = common dso_local global i32 0, align 4
@ALUA_OPTIMIZE_STPG = common dso_local global i32 0, align 4
@TPGS_MODE_IMPLICIT = common dso_local global i32 0, align 4
@SCSI_DH_IO = common dso_local global i32 0, align 4
@SCSI_DH_RETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, i32 (i8*, i32)*, i8*)* @alua_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alua_activate(%struct.scsi_device* %0, i32 (i8*, i32)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scsi_device*, align 8
  %6 = alloca i32 (i8*, i32)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.alua_dh_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %5, align 8
  store i32 (i8*, i32)* %1, i32 (i8*, i32)** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %12 = call %struct.alua_dh_data* @get_alua_data(%struct.scsi_device* %11)
  store %struct.alua_dh_data* %12, %struct.alua_dh_data** %8, align 8
  %13 = load i32, i32* @SCSI_DH_OK, align 4
  store i32 %13, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %15 = load %struct.alua_dh_data*, %struct.alua_dh_data** %8, align 8
  %16 = call i32 @alua_rtpg(%struct.scsi_device* %14, %struct.alua_dh_data* %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @SCSI_DH_OK, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %83

21:                                               ; preds = %3
  %22 = load %struct.alua_dh_data*, %struct.alua_dh_data** %8, align 8
  %23 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @TPGS_MODE_EXPLICIT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %60

28:                                               ; preds = %21
  %29 = load %struct.alua_dh_data*, %struct.alua_dh_data** %8, align 8
  %30 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %58 [
    i32 132, label %32
    i32 130, label %53
    i32 128, label %53
    i32 131, label %54
    i32 129, label %56
  ]

32:                                               ; preds = %28
  store i32 1, i32* %10, align 4
  %33 = load %struct.alua_dh_data*, %struct.alua_dh_data** %8, align 8
  %34 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @ALUA_OPTIMIZE_STPG, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %32
  %40 = load %struct.alua_dh_data*, %struct.alua_dh_data** %8, align 8
  %41 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %39
  %45 = load %struct.alua_dh_data*, %struct.alua_dh_data** %8, align 8
  %46 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @TPGS_MODE_IMPLICIT, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  store i32 0, i32* %10, align 4
  br label %52

52:                                               ; preds = %51, %44, %39, %32
  br label %59

53:                                               ; preds = %28, %28
  store i32 1, i32* %10, align 4
  br label %59

54:                                               ; preds = %28
  %55 = load i32, i32* @SCSI_DH_IO, align 4
  store i32 %55, i32* %9, align 4
  br label %59

56:                                               ; preds = %28
  %57 = load i32, i32* @SCSI_DH_RETRY, align 4
  store i32 %57, i32* %9, align 4
  br label %59

58:                                               ; preds = %28
  br label %59

59:                                               ; preds = %58, %56, %54, %53, %52
  br label %60

60:                                               ; preds = %59, %21
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %82

63:                                               ; preds = %60
  %64 = load i32 (i8*, i32)*, i32 (i8*, i32)** %6, align 8
  %65 = load %struct.alua_dh_data*, %struct.alua_dh_data** %8, align 8
  %66 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %65, i32 0, i32 4
  store i32 (i8*, i32)* %64, i32 (i8*, i32)** %66, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = bitcast i8* %67 to i32*
  %69 = load %struct.alua_dh_data*, %struct.alua_dh_data** %8, align 8
  %70 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %69, i32 0, i32 3
  store i32* %68, i32** %70, align 8
  %71 = load %struct.alua_dh_data*, %struct.alua_dh_data** %8, align 8
  %72 = call i32 @submit_stpg(%struct.alua_dh_data* %71)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @SCSI_DH_OK, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %63
  store i32 0, i32* %4, align 4
  br label %92

77:                                               ; preds = %63
  %78 = load %struct.alua_dh_data*, %struct.alua_dh_data** %8, align 8
  %79 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %78, i32 0, i32 3
  store i32* null, i32** %79, align 8
  %80 = load %struct.alua_dh_data*, %struct.alua_dh_data** %8, align 8
  %81 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %80, i32 0, i32 4
  store i32 (i8*, i32)* null, i32 (i8*, i32)** %81, align 8
  br label %82

82:                                               ; preds = %77, %60
  br label %83

83:                                               ; preds = %82, %20
  %84 = load i32 (i8*, i32)*, i32 (i8*, i32)** %6, align 8
  %85 = icmp ne i32 (i8*, i32)* %84, null
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load i32 (i8*, i32)*, i32 (i8*, i32)** %6, align 8
  %88 = load i8*, i8** %7, align 8
  %89 = load i32, i32* %9, align 4
  %90 = call i32 %87(i8* %88, i32 %89)
  br label %91

91:                                               ; preds = %86, %83
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %91, %76
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local %struct.alua_dh_data* @get_alua_data(%struct.scsi_device*) #1

declare dso_local i32 @alua_rtpg(%struct.scsi_device*, %struct.alua_dh_data*) #1

declare dso_local i32 @submit_stpg(%struct.alua_dh_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
