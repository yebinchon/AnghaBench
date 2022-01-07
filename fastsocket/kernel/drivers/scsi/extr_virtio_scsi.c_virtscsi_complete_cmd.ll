; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_virtio_scsi.c_virtscsi_complete_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_virtio_scsi.c_virtscsi_complete_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_scsi_cmd = type { %struct.TYPE_3__, %struct.scsi_cmnd* }
%struct.TYPE_3__ = type { %struct.virtio_scsi_cmd_resp }
%struct.virtio_scsi_cmd_resp = type { i32, i64, i32, i32, i32 }
%struct.scsi_cmnd = type { i32 (%struct.scsi_cmnd*)*, i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"cmd %p response %u status %#02x sense_len %u\0A\00", align 1
@DID_OK = common dso_local global i32 0, align 4
@DID_ERROR = common dso_local global i32 0, align 4
@DID_ABORT = common dso_local global i32 0, align 4
@DID_BAD_TARGET = common dso_local global i32 0, align 4
@DID_RESET = common dso_local global i32 0, align 4
@DID_BUS_BUSY = common dso_local global i32 0, align 4
@DID_TRANSPORT_DISRUPTED = common dso_local global i32 0, align 4
@DID_TARGET_FAILURE = common dso_local global i32 0, align 4
@DID_NEXUS_FAILURE = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Unknown response %d\00", align 1
@VIRTIO_SCSI_SENSE_SIZE = common dso_local global i64 0, align 8
@u32 = common dso_local global i32 0, align 4
@DRIVER_SENSE = common dso_local global i32 0, align 4
@virtscsi_cmd_pool = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @virtscsi_complete_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virtscsi_complete_cmd(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.virtio_scsi_cmd*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.virtio_scsi_cmd_resp*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.virtio_scsi_cmd*
  store %struct.virtio_scsi_cmd* %7, %struct.virtio_scsi_cmd** %3, align 8
  %8 = load %struct.virtio_scsi_cmd*, %struct.virtio_scsi_cmd** %3, align 8
  %9 = getelementptr inbounds %struct.virtio_scsi_cmd, %struct.virtio_scsi_cmd* %8, i32 0, i32 1
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  store %struct.scsi_cmnd* %10, %struct.scsi_cmnd** %4, align 8
  %11 = load %struct.virtio_scsi_cmd*, %struct.virtio_scsi_cmd** %3, align 8
  %12 = getelementptr inbounds %struct.virtio_scsi_cmd, %struct.virtio_scsi_cmd* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store %struct.virtio_scsi_cmd_resp* %13, %struct.virtio_scsi_cmd_resp** %5, align 8
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %15 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %14, i32 0, i32 3
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %19 = load %struct.virtio_scsi_cmd_resp*, %struct.virtio_scsi_cmd_resp** %5, align 8
  %20 = getelementptr inbounds %struct.virtio_scsi_cmd_resp, %struct.virtio_scsi_cmd_resp* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.virtio_scsi_cmd_resp*, %struct.virtio_scsi_cmd_resp** %5, align 8
  %23 = getelementptr inbounds %struct.virtio_scsi_cmd_resp, %struct.virtio_scsi_cmd_resp* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.virtio_scsi_cmd_resp*, %struct.virtio_scsi_cmd_resp** %5, align 8
  %26 = getelementptr inbounds %struct.virtio_scsi_cmd_resp, %struct.virtio_scsi_cmd_resp* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @dev_dbg(i32* %17, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), %struct.scsi_cmnd* %18, i32 %21, i32 %24, i64 %27)
  %29 = load %struct.virtio_scsi_cmd_resp*, %struct.virtio_scsi_cmd_resp** %5, align 8
  %30 = getelementptr inbounds %struct.virtio_scsi_cmd_resp, %struct.virtio_scsi_cmd_resp* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %33 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %35 = load %struct.virtio_scsi_cmd_resp*, %struct.virtio_scsi_cmd_resp** %5, align 8
  %36 = getelementptr inbounds %struct.virtio_scsi_cmd_resp, %struct.virtio_scsi_cmd_resp* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @virtscsi_compute_resid(%struct.scsi_cmnd* %34, i32 %37)
  %39 = load %struct.virtio_scsi_cmd_resp*, %struct.virtio_scsi_cmd_resp** %5, align 8
  %40 = getelementptr inbounds %struct.virtio_scsi_cmd_resp, %struct.virtio_scsi_cmd_resp* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %78 [
    i32 132, label %42
    i32 131, label %46
    i32 137, label %50
    i32 136, label %54
    i32 130, label %58
    i32 135, label %62
    i32 128, label %66
    i32 129, label %70
    i32 133, label %74
    i32 134, label %85
  ]

42:                                               ; preds = %1
  %43 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %44 = load i32, i32* @DID_OK, align 4
  %45 = call i32 @set_host_byte(%struct.scsi_cmnd* %43, i32 %44)
  br label %89

46:                                               ; preds = %1
  %47 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %48 = load i32, i32* @DID_ERROR, align 4
  %49 = call i32 @set_host_byte(%struct.scsi_cmnd* %47, i32 %48)
  br label %89

50:                                               ; preds = %1
  %51 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %52 = load i32, i32* @DID_ABORT, align 4
  %53 = call i32 @set_host_byte(%struct.scsi_cmnd* %51, i32 %52)
  br label %89

54:                                               ; preds = %1
  %55 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %56 = load i32, i32* @DID_BAD_TARGET, align 4
  %57 = call i32 @set_host_byte(%struct.scsi_cmnd* %55, i32 %56)
  br label %89

58:                                               ; preds = %1
  %59 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %60 = load i32, i32* @DID_RESET, align 4
  %61 = call i32 @set_host_byte(%struct.scsi_cmnd* %59, i32 %60)
  br label %89

62:                                               ; preds = %1
  %63 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %64 = load i32, i32* @DID_BUS_BUSY, align 4
  %65 = call i32 @set_host_byte(%struct.scsi_cmnd* %63, i32 %64)
  br label %89

66:                                               ; preds = %1
  %67 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %68 = load i32, i32* @DID_TRANSPORT_DISRUPTED, align 4
  %69 = call i32 @set_host_byte(%struct.scsi_cmnd* %67, i32 %68)
  br label %89

70:                                               ; preds = %1
  %71 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %72 = load i32, i32* @DID_TARGET_FAILURE, align 4
  %73 = call i32 @set_host_byte(%struct.scsi_cmnd* %71, i32 %72)
  br label %89

74:                                               ; preds = %1
  %75 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %76 = load i32, i32* @DID_NEXUS_FAILURE, align 4
  %77 = call i32 @set_host_byte(%struct.scsi_cmnd* %75, i32 %76)
  br label %89

78:                                               ; preds = %1
  %79 = load i32, i32* @KERN_WARNING, align 4
  %80 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %81 = load %struct.virtio_scsi_cmd_resp*, %struct.virtio_scsi_cmd_resp** %5, align 8
  %82 = getelementptr inbounds %struct.virtio_scsi_cmd_resp, %struct.virtio_scsi_cmd_resp* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @scmd_printk(i32 %79, %struct.scsi_cmnd* %80, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %1, %78
  %86 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %87 = load i32, i32* @DID_ERROR, align 4
  %88 = call i32 @set_host_byte(%struct.scsi_cmnd* %86, i32 %87)
  br label %89

89:                                               ; preds = %85, %74, %70, %66, %62, %58, %54, %50, %46, %42
  %90 = load %struct.virtio_scsi_cmd_resp*, %struct.virtio_scsi_cmd_resp** %5, align 8
  %91 = getelementptr inbounds %struct.virtio_scsi_cmd_resp, %struct.virtio_scsi_cmd_resp* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @VIRTIO_SCSI_SENSE_SIZE, align 8
  %94 = icmp sgt i64 %92, %93
  %95 = zext i1 %94 to i32
  %96 = call i32 @WARN_ON(i32 %95)
  %97 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %98 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %124

101:                                              ; preds = %89
  %102 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %103 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.virtio_scsi_cmd_resp*, %struct.virtio_scsi_cmd_resp** %5, align 8
  %106 = getelementptr inbounds %struct.virtio_scsi_cmd_resp, %struct.virtio_scsi_cmd_resp* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @u32, align 4
  %109 = load %struct.virtio_scsi_cmd_resp*, %struct.virtio_scsi_cmd_resp** %5, align 8
  %110 = getelementptr inbounds %struct.virtio_scsi_cmd_resp, %struct.virtio_scsi_cmd_resp* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @VIRTIO_SCSI_SENSE_SIZE, align 8
  %113 = call i32 @min_t(i32 %108, i64 %111, i64 %112)
  %114 = call i32 @memcpy(i64 %104, i32 %107, i32 %113)
  %115 = load %struct.virtio_scsi_cmd_resp*, %struct.virtio_scsi_cmd_resp** %5, align 8
  %116 = getelementptr inbounds %struct.virtio_scsi_cmd_resp, %struct.virtio_scsi_cmd_resp* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %101
  %120 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %121 = load i32, i32* @DRIVER_SENSE, align 4
  %122 = call i32 @set_driver_byte(%struct.scsi_cmnd* %120, i32 %121)
  br label %123

123:                                              ; preds = %119, %101
  br label %124

124:                                              ; preds = %123, %89
  %125 = load %struct.virtio_scsi_cmd*, %struct.virtio_scsi_cmd** %3, align 8
  %126 = load i32, i32* @virtscsi_cmd_pool, align 4
  %127 = call i32 @mempool_free(%struct.virtio_scsi_cmd* %125, i32 %126)
  %128 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %129 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %128, i32 0, i32 0
  %130 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %129, align 8
  %131 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %132 = call i32 %130(%struct.scsi_cmnd* %131)
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*, %struct.scsi_cmnd*, i32, i32, i64) #1

declare dso_local i32 @virtscsi_compute_resid(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @set_host_byte(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @scmd_printk(i32, %struct.scsi_cmnd*, i8*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @memcpy(i64, i32, i32) #1

declare dso_local i32 @min_t(i32, i64, i64) #1

declare dso_local i32 @set_driver_byte(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @mempool_free(%struct.virtio_scsi_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
