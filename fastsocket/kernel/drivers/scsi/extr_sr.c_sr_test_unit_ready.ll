; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sr.c_sr_test_unit_ready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sr.c_sr_test_unit_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.scsi_sense_hdr = type { i64 }

@MAX_RETRIES = common dso_local global i32 0, align 4
@TEST_UNIT_READY = common dso_local global i32 0, align 4
@DMA_NONE = common dso_local global i32 0, align 4
@SR_TIMEOUT = common dso_local global i32 0, align 4
@UNIT_ATTENTION = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sr_test_unit_ready(%struct.scsi_device* %0, %struct.scsi_sense_hdr* %1) #0 {
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.scsi_sense_hdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [6 x i32], align 16
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  store %struct.scsi_sense_hdr* %1, %struct.scsi_sense_hdr** %4, align 8
  %8 = load i32, i32* @MAX_RETRIES, align 4
  store i32 %8, i32* %5, align 4
  %9 = bitcast [6 x i32]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 24, i1 false)
  %10 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %11 = load i32, i32* @TEST_UNIT_READY, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds i32, i32* %10, i64 1
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  br label %17

17:                                               ; preds = %60, %2
  %18 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %19 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %20 = load i32, i32* @DMA_NONE, align 4
  %21 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %4, align 8
  %22 = load i32, i32* @SR_TIMEOUT, align 4
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %5, align 4
  %25 = call i32 @scsi_execute_req(%struct.scsi_device* %18, i32* %19, i32 %20, i32* null, i32 0, %struct.scsi_sense_hdr* %21, i32 %22, i32 %23, i32* null)
  store i32 %25, i32* %6, align 4
  %26 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %4, align 8
  %27 = call i64 @scsi_sense_valid(%struct.scsi_sense_hdr* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %17
  %30 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %4, align 8
  %31 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @UNIT_ATTENTION, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %37 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  br label %38

38:                                               ; preds = %35, %29, %17
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %5, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %39
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @scsi_status_is_good(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %42
  %47 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %4, align 8
  %48 = call i64 @scsi_sense_valid(%struct.scsi_sense_hdr* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %4, align 8
  %52 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @UNIT_ATTENTION, align 8
  %55 = icmp eq i64 %53, %54
  br label %56

56:                                               ; preds = %50, %46
  %57 = phi i1 [ false, %46 ], [ %55, %50 ]
  br label %58

58:                                               ; preds = %56, %42
  %59 = phi i1 [ true, %42 ], [ %57, %56 ]
  br label %60

60:                                               ; preds = %58, %39
  %61 = phi i1 [ false, %39 ], [ %59, %58 ]
  br i1 %61, label %17, label %62

62:                                               ; preds = %60
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @scsi_execute_req(%struct.scsi_device*, i32*, i32, i32*, i32, %struct.scsi_sense_hdr*, i32, i32, i32*) #2

declare dso_local i64 @scsi_sense_valid(%struct.scsi_sense_hdr*) #2

declare dso_local i32 @scsi_status_is_good(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
