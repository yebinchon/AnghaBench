; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_debug.c_resp_get_lba_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_debug.c_resp_get_lba_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32* }
%struct.sdebug_dev_info = type { i32 }

@SDEBUG_GET_LBA_STATUS_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.sdebug_dev_info*)* @resp_get_lba_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resp_get_lba_status(%struct.scsi_cmnd* %0, %struct.sdebug_dev_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.sdebug_dev_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store %struct.sdebug_dev_info* %1, %struct.sdebug_dev_info** %5, align 8
  %14 = load i32, i32* @SDEBUG_GET_LBA_STATUS_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %19 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %5, align 8
  %20 = call i32 @check_readiness(%struct.scsi_cmnd* %18, i32 1, %struct.sdebug_dev_info* %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %69

25:                                               ; preds = %2
  %26 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %27 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  %30 = call i64 @get_unaligned_be64(i32* %29)
  store i64 %30, i64* %6, align 8
  %31 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %32 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 10
  %35 = call i32 @get_unaligned_be32(i32* %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ult i32 %36, 24
  br i1 %37, label %38, label %39

38:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %69

39:                                               ; preds = %25
  %40 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %5, align 8
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @check_device_access_params(%struct.sdebug_dev_info* %40, i64 %41, i32 1)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* %12, align 4
  store i32 %46, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %69

47:                                               ; preds = %39
  %48 = load i64, i64* %6, align 8
  %49 = call i32 @map_state(i64 %48, i32* %9)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* @SDEBUG_GET_LBA_STATUS_LEN, align 4
  %51 = call i32 @memset(i8* %17, i32 0, i32 %50)
  %52 = getelementptr inbounds i8, i8* %17, i64 0
  %53 = call i32 @put_unaligned_be32(i32 16, i8* %52)
  %54 = load i64, i64* %6, align 8
  %55 = getelementptr inbounds i8, i8* %17, i64 8
  %56 = call i32 @put_unaligned_be64(i64 %54, i8* %55)
  %57 = load i32, i32* %9, align 4
  %58 = getelementptr inbounds i8, i8* %17, i64 16
  %59 = call i32 @put_unaligned_be32(i32 %57, i8* %58)
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = trunc i32 %63 to i8
  %65 = getelementptr inbounds i8, i8* %17, i64 20
  store i8 %64, i8* %65, align 4
  %66 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %67 = load i32, i32* @SDEBUG_GET_LBA_STATUS_LEN, align 4
  %68 = call i32 @fill_from_dev_buffer(%struct.scsi_cmnd* %66, i8* %17, i32 %67)
  store i32 %68, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %69

69:                                               ; preds = %47, %45, %38, %23
  %70 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %70)
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @check_readiness(%struct.scsi_cmnd*, i32, %struct.sdebug_dev_info*) #2

declare dso_local i64 @get_unaligned_be64(i32*) #2

declare dso_local i32 @get_unaligned_be32(i32*) #2

declare dso_local i32 @check_device_access_params(%struct.sdebug_dev_info*, i64, i32) #2

declare dso_local i32 @map_state(i64, i32*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @put_unaligned_be32(i32, i8*) #2

declare dso_local i32 @put_unaligned_be64(i64, i8*) #2

declare dso_local i32 @fill_from_dev_buffer(%struct.scsi_cmnd*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
