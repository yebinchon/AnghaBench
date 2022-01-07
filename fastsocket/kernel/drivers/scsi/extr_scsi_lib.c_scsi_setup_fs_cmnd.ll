; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_lib.c_scsi_setup_fs_cmnd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_lib.c_scsi_setup_fs_cmnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { {}* }
%struct.request = type { i32 }
%struct.scsi_cmnd = type { i32 }

@BLKPREP_OK = common dso_local global i32 0, align 4
@BLKPREP_DEFER = common dso_local global i32 0, align 4
@BLK_MAX_CDB = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_setup_fs_cmnd(%struct.scsi_device* %0, %struct.request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  %8 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %9 = load %struct.request*, %struct.request** %5, align 8
  %10 = call i32 @scsi_prep_state_check(%struct.scsi_device* %8, %struct.request* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @BLKPREP_OK, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %3, align 4
  br label %89

16:                                               ; preds = %2
  %17 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %18 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = icmp ne %struct.TYPE_4__* %19, null
  br i1 %20, label %21, label %38

21:                                               ; preds = %16
  %22 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %23 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = icmp ne %struct.TYPE_3__* %26, null
  br i1 %27, label %28, label %38

28:                                               ; preds = %21
  %29 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %30 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = bitcast {}** %34 to i32 (%struct.scsi_device*, %struct.request*)**
  %36 = load i32 (%struct.scsi_device*, %struct.request*)*, i32 (%struct.scsi_device*, %struct.request*)** %35, align 8
  %37 = icmp ne i32 (%struct.scsi_device*, %struct.request*)* %36, null
  br label %38

38:                                               ; preds = %28, %21, %16
  %39 = phi i1 [ false, %21 ], [ false, %16 ], [ %37, %28 ]
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %61

43:                                               ; preds = %38
  %44 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %45 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = bitcast {}** %49 to i32 (%struct.scsi_device*, %struct.request*)**
  %51 = load i32 (%struct.scsi_device*, %struct.request*)*, i32 (%struct.scsi_device*, %struct.request*)** %50, align 8
  %52 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %53 = load %struct.request*, %struct.request** %5, align 8
  %54 = call i32 %51(%struct.scsi_device* %52, %struct.request* %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @BLKPREP_OK, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %43
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %3, align 4
  br label %89

60:                                               ; preds = %43
  br label %61

61:                                               ; preds = %60, %38
  %62 = load %struct.request*, %struct.request** %5, align 8
  %63 = getelementptr inbounds %struct.request, %struct.request* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = call i32 @BUG_ON(i32 %67)
  %69 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %70 = load %struct.request*, %struct.request** %5, align 8
  %71 = call %struct.scsi_cmnd* @scsi_get_cmd_from_req(%struct.scsi_device* %69, %struct.request* %70)
  store %struct.scsi_cmnd* %71, %struct.scsi_cmnd** %6, align 8
  %72 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %73 = icmp ne %struct.scsi_cmnd* %72, null
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = call i64 @unlikely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %61
  %79 = load i32, i32* @BLKPREP_DEFER, align 4
  store i32 %79, i32* %3, align 4
  br label %89

80:                                               ; preds = %61
  %81 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %82 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @BLK_MAX_CDB, align 4
  %85 = call i32 @memset(i32 %83, i32 0, i32 %84)
  %86 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %87 = load i32, i32* @GFP_ATOMIC, align 4
  %88 = call i32 @scsi_init_io(%struct.scsi_cmnd* %86, i32 %87)
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %80, %78, %58, %14
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @scsi_prep_state_check(%struct.scsi_device*, %struct.request*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.scsi_cmnd* @scsi_get_cmd_from_req(%struct.scsi_device*, %struct.request*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @scsi_init_io(%struct.scsi_cmnd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
