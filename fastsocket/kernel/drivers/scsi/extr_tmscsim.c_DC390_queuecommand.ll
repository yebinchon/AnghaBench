; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_tmscsim.c_DC390_queuecommand.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_tmscsim.c_DC390_queuecommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { void (%struct.scsi_cmnd*)*, i8*, i64, %struct.scsi_device* }
%struct.scsi_device = type { i64, %struct.dc390_dcb*, %struct.TYPE_2__* }
%struct.dc390_dcb = type { i64 }
%struct.TYPE_2__ = type { i64 }
%struct.dc390_acb = type { i32, %struct.dc390_srb*, i32, i64 }
%struct.dc390_srb = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.scsi_cmnd*, %struct.dc390_dcb*, %struct.dc390_srb* }

@RESET_DETECT = common dso_local global i32 0, align 4
@RESET_DONE = common dso_local global i32 0, align 4
@RESET_DEV = common dso_local global i32 0, align 4
@SCSI_NO_TAG = common dso_local global i32 0, align 4
@SCSI_MLQUEUE_HOST_BUSY = common dso_local global i32 0, align 4
@SCSI_MLQUEUE_DEVICE_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, void (%struct.scsi_cmnd*)*)* @DC390_queuecommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DC390_queuecommand(%struct.scsi_cmnd* %0, void (%struct.scsi_cmnd*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca void (%struct.scsi_cmnd*)*, align 8
  %6 = alloca %struct.scsi_device*, align 8
  %7 = alloca %struct.dc390_acb*, align 8
  %8 = alloca %struct.dc390_dcb*, align 8
  %9 = alloca %struct.dc390_srb*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store void (%struct.scsi_cmnd*)* %1, void (%struct.scsi_cmnd*)** %5, align 8
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %11 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %10, i32 0, i32 3
  %12 = load %struct.scsi_device*, %struct.scsi_device** %11, align 8
  store %struct.scsi_device* %12, %struct.scsi_device** %6, align 8
  %13 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %14 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.dc390_acb*
  store %struct.dc390_acb* %18, %struct.dc390_acb** %7, align 8
  %19 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %20 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %19, i32 0, i32 1
  %21 = load %struct.dc390_dcb*, %struct.dc390_dcb** %20, align 8
  store %struct.dc390_dcb* %21, %struct.dc390_dcb** %8, align 8
  %22 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %23 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.dc390_dcb*, %struct.dc390_dcb** %8, align 8
  %26 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sle i64 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  br label %127

30:                                               ; preds = %2
  %31 = load %struct.dc390_acb*, %struct.dc390_acb** %7, align 8
  %32 = getelementptr inbounds %struct.dc390_acb, %struct.dc390_acb* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %125

36:                                               ; preds = %30
  %37 = load %struct.dc390_acb*, %struct.dc390_acb** %7, align 8
  %38 = getelementptr inbounds %struct.dc390_acb, %struct.dc390_acb* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @RESET_DETECT, align 4
  %41 = load i32, i32* @RESET_DONE, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @RESET_DEV, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %39, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  br label %125

48:                                               ; preds = %36
  %49 = load %struct.dc390_acb*, %struct.dc390_acb** %7, align 8
  %50 = getelementptr inbounds %struct.dc390_acb, %struct.dc390_acb* %49, i32 0, i32 1
  %51 = load %struct.dc390_srb*, %struct.dc390_srb** %50, align 8
  store %struct.dc390_srb* %51, %struct.dc390_srb** %9, align 8
  %52 = load %struct.dc390_srb*, %struct.dc390_srb** %9, align 8
  %53 = icmp eq %struct.dc390_srb* %52, null
  %54 = zext i1 %53 to i32
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  br label %125

58:                                               ; preds = %48
  %59 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %5, align 8
  %60 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %61 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %60, i32 0, i32 0
  store void (%struct.scsi_cmnd*)* %59, void (%struct.scsi_cmnd*)** %61, align 8
  %62 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %63 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %62, i32 0, i32 2
  store i64 0, i64* %63, align 8
  %64 = load %struct.dc390_acb*, %struct.dc390_acb** %7, align 8
  %65 = getelementptr inbounds %struct.dc390_acb, %struct.dc390_acb* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 8
  %68 = load %struct.dc390_srb*, %struct.dc390_srb** %9, align 8
  %69 = getelementptr inbounds %struct.dc390_srb, %struct.dc390_srb* %68, i32 0, i32 15
  %70 = load %struct.dc390_srb*, %struct.dc390_srb** %69, align 8
  %71 = load %struct.dc390_acb*, %struct.dc390_acb** %7, align 8
  %72 = getelementptr inbounds %struct.dc390_acb, %struct.dc390_acb* %71, i32 0, i32 1
  store %struct.dc390_srb* %70, %struct.dc390_srb** %72, align 8
  %73 = load %struct.dc390_srb*, %struct.dc390_srb** %9, align 8
  %74 = getelementptr inbounds %struct.dc390_srb, %struct.dc390_srb* %73, i32 0, i32 15
  store %struct.dc390_srb* null, %struct.dc390_srb** %74, align 8
  %75 = load %struct.dc390_dcb*, %struct.dc390_dcb** %8, align 8
  %76 = load %struct.dc390_srb*, %struct.dc390_srb** %9, align 8
  %77 = getelementptr inbounds %struct.dc390_srb, %struct.dc390_srb* %76, i32 0, i32 14
  store %struct.dc390_dcb* %75, %struct.dc390_dcb** %77, align 8
  %78 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %79 = load %struct.dc390_srb*, %struct.dc390_srb** %9, align 8
  %80 = getelementptr inbounds %struct.dc390_srb, %struct.dc390_srb* %79, i32 0, i32 13
  store %struct.scsi_cmnd* %78, %struct.scsi_cmnd** %80, align 8
  %81 = load %struct.dc390_srb*, %struct.dc390_srb** %9, align 8
  %82 = bitcast %struct.dc390_srb* %81 to i8*
  %83 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %84 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %83, i32 0, i32 1
  store i8* %82, i8** %84, align 8
  %85 = load %struct.dc390_srb*, %struct.dc390_srb** %9, align 8
  %86 = getelementptr inbounds %struct.dc390_srb, %struct.dc390_srb* %85, i32 0, i32 12
  store i64 0, i64* %86, align 8
  %87 = load %struct.dc390_srb*, %struct.dc390_srb** %9, align 8
  %88 = getelementptr inbounds %struct.dc390_srb, %struct.dc390_srb* %87, i32 0, i32 11
  store i64 0, i64* %88, align 8
  %89 = load %struct.dc390_srb*, %struct.dc390_srb** %9, align 8
  %90 = getelementptr inbounds %struct.dc390_srb, %struct.dc390_srb* %89, i32 0, i32 10
  store i64 0, i64* %90, align 8
  %91 = load %struct.dc390_srb*, %struct.dc390_srb** %9, align 8
  %92 = getelementptr inbounds %struct.dc390_srb, %struct.dc390_srb* %91, i32 0, i32 9
  store i64 0, i64* %92, align 8
  %93 = load %struct.dc390_srb*, %struct.dc390_srb** %9, align 8
  %94 = getelementptr inbounds %struct.dc390_srb, %struct.dc390_srb* %93, i32 0, i32 8
  store i64 0, i64* %94, align 8
  %95 = load %struct.dc390_srb*, %struct.dc390_srb** %9, align 8
  %96 = getelementptr inbounds %struct.dc390_srb, %struct.dc390_srb* %95, i32 0, i32 7
  store i64 0, i64* %96, align 8
  %97 = load %struct.dc390_srb*, %struct.dc390_srb** %9, align 8
  %98 = getelementptr inbounds %struct.dc390_srb, %struct.dc390_srb* %97, i32 0, i32 6
  store i64 0, i64* %98, align 8
  %99 = load %struct.dc390_srb*, %struct.dc390_srb** %9, align 8
  %100 = getelementptr inbounds %struct.dc390_srb, %struct.dc390_srb* %99, i32 0, i32 5
  store i64 0, i64* %100, align 8
  %101 = load %struct.dc390_srb*, %struct.dc390_srb** %9, align 8
  %102 = getelementptr inbounds %struct.dc390_srb, %struct.dc390_srb* %101, i32 0, i32 4
  store i64 0, i64* %102, align 8
  %103 = load %struct.dc390_srb*, %struct.dc390_srb** %9, align 8
  %104 = getelementptr inbounds %struct.dc390_srb, %struct.dc390_srb* %103, i32 0, i32 3
  store i64 0, i64* %104, align 8
  %105 = load %struct.dc390_srb*, %struct.dc390_srb** %9, align 8
  %106 = getelementptr inbounds %struct.dc390_srb, %struct.dc390_srb* %105, i32 0, i32 2
  store i64 0, i64* %106, align 8
  %107 = load %struct.dc390_srb*, %struct.dc390_srb** %9, align 8
  %108 = getelementptr inbounds %struct.dc390_srb, %struct.dc390_srb* %107, i32 0, i32 1
  store i64 0, i64* %108, align 8
  %109 = load i32, i32* @SCSI_NO_TAG, align 4
  %110 = load %struct.dc390_srb*, %struct.dc390_srb** %9, align 8
  %111 = getelementptr inbounds %struct.dc390_srb, %struct.dc390_srb* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  %112 = load %struct.dc390_acb*, %struct.dc390_acb** %7, align 8
  %113 = load %struct.dc390_dcb*, %struct.dc390_dcb** %8, align 8
  %114 = load %struct.dc390_srb*, %struct.dc390_srb** %9, align 8
  %115 = call i64 @dc390_StartSCSI(%struct.dc390_acb* %112, %struct.dc390_dcb* %113, %struct.dc390_srb* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %58
  %118 = load %struct.dc390_acb*, %struct.dc390_acb** %7, align 8
  %119 = load %struct.dc390_srb*, %struct.dc390_srb** %9, align 8
  %120 = call i32 @dc390_Free_insert(%struct.dc390_acb* %118, %struct.dc390_srb* %119)
  br label %125

121:                                              ; preds = %58
  %122 = load %struct.dc390_dcb*, %struct.dc390_dcb** %8, align 8
  %123 = load %struct.dc390_srb*, %struct.dc390_srb** %9, align 8
  %124 = call i32 @dc390_Going_append(%struct.dc390_dcb* %122, %struct.dc390_srb* %123)
  store i32 0, i32* %3, align 4
  br label %129

125:                                              ; preds = %117, %57, %47, %35
  %126 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %126, i32* %3, align 4
  br label %129

127:                                              ; preds = %29
  %128 = load i32, i32* @SCSI_MLQUEUE_DEVICE_BUSY, align 4
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %127, %125, %121
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @dc390_StartSCSI(%struct.dc390_acb*, %struct.dc390_dcb*, %struct.dc390_srb*) #1

declare dso_local i32 @dc390_Free_insert(%struct.dc390_acb*, %struct.dc390_srb*) #1

declare dso_local i32 @dc390_Going_append(%struct.dc390_dcb*, %struct.dc390_srb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
