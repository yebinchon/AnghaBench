; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_stex.c_stex_scsi_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_stex.c_stex_scsi_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_ccb = type { i32, i32, %struct.scsi_cmnd* }
%struct.scsi_cmnd = type { i32, i32 (%struct.scsi_cmnd*)* }

@SRB_STATUS_SUCCESS = common dso_local global i32 0, align 4
@DID_OK = common dso_local global i32 0, align 4
@COMMAND_COMPLETE = common dso_local global i32 0, align 4
@DRIVER_SENSE = common dso_local global i32 0, align 4
@DID_BUS_BUSY = common dso_local global i32 0, align 4
@DID_ERROR = common dso_local global i32 0, align 4
@SRB_SEE_SENSE = common dso_local global i32 0, align 4
@DID_NO_CONNECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_ccb*)* @stex_scsi_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stex_scsi_done(%struct.st_ccb* %0) #0 {
  %2 = alloca %struct.st_ccb*, align 8
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca i32, align 4
  store %struct.st_ccb* %0, %struct.st_ccb** %2, align 8
  %5 = load %struct.st_ccb*, %struct.st_ccb** %2, align 8
  %6 = getelementptr inbounds %struct.st_ccb, %struct.st_ccb* %5, i32 0, i32 2
  %7 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  store %struct.scsi_cmnd* %7, %struct.scsi_cmnd** %3, align 8
  %8 = load %struct.st_ccb*, %struct.st_ccb** %2, align 8
  %9 = getelementptr inbounds %struct.st_ccb, %struct.st_ccb* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @SRB_STATUS_SUCCESS, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = load %struct.st_ccb*, %struct.st_ccb** %2, align 8
  %15 = getelementptr inbounds %struct.st_ccb, %struct.st_ccb* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %55

18:                                               ; preds = %13, %1
  %19 = load %struct.st_ccb*, %struct.st_ccb** %2, align 8
  %20 = getelementptr inbounds %struct.st_ccb, %struct.st_ccb* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %4, align 4
  %22 = load %struct.st_ccb*, %struct.st_ccb** %2, align 8
  %23 = getelementptr inbounds %struct.st_ccb, %struct.st_ccb* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %46 [
    i32 132, label %25
    i32 133, label %33
    i32 134, label %38
  ]

25:                                               ; preds = %18
  %26 = load i32, i32* @DID_OK, align 4
  %27 = shl i32 %26, 16
  %28 = load i32, i32* @COMMAND_COMPLETE, align 4
  %29 = shl i32 %28, 8
  %30 = or i32 %27, %29
  %31 = load i32, i32* %4, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %4, align 4
  br label %54

33:                                               ; preds = %18
  %34 = load i32, i32* @DRIVER_SENSE, align 4
  %35 = shl i32 %34, 24
  %36 = load i32, i32* %4, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %4, align 4
  br label %54

38:                                               ; preds = %18
  %39 = load i32, i32* @DID_BUS_BUSY, align 4
  %40 = shl i32 %39, 16
  %41 = load i32, i32* @COMMAND_COMPLETE, align 4
  %42 = shl i32 %41, 8
  %43 = or i32 %40, %42
  %44 = load i32, i32* %4, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %4, align 4
  br label %54

46:                                               ; preds = %18
  %47 = load i32, i32* @DID_ERROR, align 4
  %48 = shl i32 %47, 16
  %49 = load i32, i32* @COMMAND_COMPLETE, align 4
  %50 = shl i32 %49, 8
  %51 = or i32 %48, %50
  %52 = load i32, i32* %4, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %46, %38, %33, %25
  br label %91

55:                                               ; preds = %13
  %56 = load %struct.st_ccb*, %struct.st_ccb** %2, align 8
  %57 = getelementptr inbounds %struct.st_ccb, %struct.st_ccb* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @SRB_SEE_SENSE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = load i32, i32* @DRIVER_SENSE, align 4
  %64 = shl i32 %63, 24
  %65 = or i32 %64, 133
  store i32 %65, i32* %4, align 4
  br label %90

66:                                               ; preds = %55
  %67 = load %struct.st_ccb*, %struct.st_ccb** %2, align 8
  %68 = getelementptr inbounds %struct.st_ccb, %struct.st_ccb* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  switch i32 %69, label %83 [
    i32 128, label %70
    i32 131, label %76
    i32 129, label %82
    i32 130, label %82
  ]

70:                                               ; preds = %66
  %71 = load i32, i32* @DID_NO_CONNECT, align 4
  %72 = shl i32 %71, 16
  %73 = load i32, i32* @COMMAND_COMPLETE, align 4
  %74 = shl i32 %73, 8
  %75 = or i32 %72, %74
  store i32 %75, i32* %4, align 4
  br label %89

76:                                               ; preds = %66
  %77 = load i32, i32* @DID_BUS_BUSY, align 4
  %78 = shl i32 %77, 16
  %79 = load i32, i32* @COMMAND_COMPLETE, align 4
  %80 = shl i32 %79, 8
  %81 = or i32 %78, %80
  store i32 %81, i32* %4, align 4
  br label %89

82:                                               ; preds = %66, %66
  br label %83

83:                                               ; preds = %66, %82
  %84 = load i32, i32* @DID_ERROR, align 4
  %85 = shl i32 %84, 16
  %86 = load i32, i32* @COMMAND_COMPLETE, align 4
  %87 = shl i32 %86, 8
  %88 = or i32 %85, %87
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %83, %76, %70
  br label %90

90:                                               ; preds = %89, %62
  br label %91

91:                                               ; preds = %90, %54
  %92 = load i32, i32* %4, align 4
  %93 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %94 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %96 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %95, i32 0, i32 1
  %97 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %96, align 8
  %98 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %99 = call i32 %97(%struct.scsi_cmnd* %98)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
