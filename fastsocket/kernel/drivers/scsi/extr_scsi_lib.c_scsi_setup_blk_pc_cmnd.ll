; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_lib.c_scsi_setup_blk_pc_cmnd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_lib.c_scsi_setup_blk_pc_cmnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.request = type { i32, i32, i32*, i32, i64 }
%struct.scsi_cmnd = type { i32, i32, i32, i32, i32 }

@BLKPREP_OK = common dso_local global i32 0, align 4
@BLKPREP_DEFER = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@DMA_NONE = common dso_local global i32 0, align 4
@WRITE = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_setup_blk_pc_cmnd(%struct.scsi_device* %0, %struct.request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  %9 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %10 = load %struct.request*, %struct.request** %5, align 8
  %11 = call i32 @scsi_prep_state_check(%struct.scsi_device* %9, %struct.request* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @BLKPREP_OK, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %98

17:                                               ; preds = %2
  %18 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %19 = load %struct.request*, %struct.request** %5, align 8
  %20 = call %struct.scsi_cmnd* @scsi_get_cmd_from_req(%struct.scsi_device* %18, %struct.request* %19)
  store %struct.scsi_cmnd* %20, %struct.scsi_cmnd** %6, align 8
  %21 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %22 = icmp ne %struct.scsi_cmnd* %21, null
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = load i32, i32* @BLKPREP_DEFER, align 4
  store i32 %28, i32* %3, align 4
  br label %98

29:                                               ; preds = %17
  %30 = load %struct.request*, %struct.request** %5, align 8
  %31 = getelementptr inbounds %struct.request, %struct.request* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %51

34:                                               ; preds = %29
  %35 = load %struct.request*, %struct.request** %5, align 8
  %36 = getelementptr inbounds %struct.request, %struct.request* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i32 @BUG_ON(i32 %40)
  %42 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %43 = load i32, i32* @GFP_ATOMIC, align 4
  %44 = call i32 @scsi_init_io(%struct.scsi_cmnd* %42, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %34
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %3, align 4
  br label %98

50:                                               ; preds = %34
  br label %60

51:                                               ; preds = %29
  %52 = load %struct.request*, %struct.request** %5, align 8
  %53 = call i32 @blk_rq_bytes(%struct.request* %52)
  %54 = call i32 @BUG_ON(i32 %53)
  %55 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %56 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %55, i32 0, i32 4
  %57 = call i32 @memset(i32* %56, i32 0, i32 4)
  %58 = load %struct.request*, %struct.request** %5, align 8
  %59 = getelementptr inbounds %struct.request, %struct.request* %58, i32 0, i32 2
  store i32* null, i32** %59, align 8
  br label %60

60:                                               ; preds = %51, %50
  %61 = load %struct.request*, %struct.request** %5, align 8
  %62 = getelementptr inbounds %struct.request, %struct.request* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %65 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = load %struct.request*, %struct.request** %5, align 8
  %67 = call i32 @blk_rq_bytes(%struct.request* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %60
  %70 = load i32, i32* @DMA_NONE, align 4
  %71 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %72 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  br label %87

73:                                               ; preds = %60
  %74 = load %struct.request*, %struct.request** %5, align 8
  %75 = call i64 @rq_data_dir(%struct.request* %74)
  %76 = load i64, i64* @WRITE, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load i32, i32* @DMA_TO_DEVICE, align 4
  %80 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %81 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 4
  br label %86

82:                                               ; preds = %73
  %83 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %84 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %85 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 4
  br label %86

86:                                               ; preds = %82, %78
  br label %87

87:                                               ; preds = %86, %69
  %88 = load %struct.request*, %struct.request** %5, align 8
  %89 = call i32 @blk_rq_bytes(%struct.request* %88)
  %90 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %91 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 4
  %92 = load %struct.request*, %struct.request** %5, align 8
  %93 = getelementptr inbounds %struct.request, %struct.request* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %96 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* @BLKPREP_OK, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %87, %48, %27, %15
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @scsi_prep_state_check(%struct.scsi_device*, %struct.request*) #1

declare dso_local %struct.scsi_cmnd* @scsi_get_cmd_from_req(%struct.scsi_device*, %struct.request*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @scsi_init_io(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @blk_rq_bytes(%struct.request*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @rq_data_dir(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
