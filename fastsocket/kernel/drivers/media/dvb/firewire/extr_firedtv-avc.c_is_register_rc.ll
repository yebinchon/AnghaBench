; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/firewire/extr_firedtv-avc.c_is_register_rc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/firewire/extr_firedtv-avc.c_is_register_rc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.avc_response_frame = type { i64, i64* }

@AVC_OPCODE_VENDOR = common dso_local global i64 0, align 8
@SFE_VENDOR_DE_COMPANYID_0 = common dso_local global i64 0, align 8
@SFE_VENDOR_DE_COMPANYID_1 = common dso_local global i64 0, align 8
@SFE_VENDOR_DE_COMPANYID_2 = common dso_local global i64 0, align 8
@SFE_VENDOR_OPCODE_REGISTER_REMOTE_CONTROL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.avc_response_frame*)* @is_register_rc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_register_rc(%struct.avc_response_frame* %0) #0 {
  %2 = alloca %struct.avc_response_frame*, align 8
  store %struct.avc_response_frame* %0, %struct.avc_response_frame** %2, align 8
  %3 = load %struct.avc_response_frame*, %struct.avc_response_frame** %2, align 8
  %4 = getelementptr inbounds %struct.avc_response_frame, %struct.avc_response_frame* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @AVC_OPCODE_VENDOR, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %40

8:                                                ; preds = %1
  %9 = load %struct.avc_response_frame*, %struct.avc_response_frame** %2, align 8
  %10 = getelementptr inbounds %struct.avc_response_frame, %struct.avc_response_frame* %9, i32 0, i32 1
  %11 = load i64*, i64** %10, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SFE_VENDOR_DE_COMPANYID_0, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %40

16:                                               ; preds = %8
  %17 = load %struct.avc_response_frame*, %struct.avc_response_frame** %2, align 8
  %18 = getelementptr inbounds %struct.avc_response_frame, %struct.avc_response_frame* %17, i32 0, i32 1
  %19 = load i64*, i64** %18, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SFE_VENDOR_DE_COMPANYID_1, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %16
  %25 = load %struct.avc_response_frame*, %struct.avc_response_frame** %2, align 8
  %26 = getelementptr inbounds %struct.avc_response_frame, %struct.avc_response_frame* %25, i32 0, i32 1
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 2
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SFE_VENDOR_DE_COMPANYID_2, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %24
  %33 = load %struct.avc_response_frame*, %struct.avc_response_frame** %2, align 8
  %34 = getelementptr inbounds %struct.avc_response_frame, %struct.avc_response_frame* %33, i32 0, i32 1
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 3
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SFE_VENDOR_OPCODE_REGISTER_REMOTE_CONTROL, align 8
  %39 = icmp eq i64 %37, %38
  br label %40

40:                                               ; preds = %32, %24, %16, %8, %1
  %41 = phi i1 [ false, %24 ], [ false, %16 ], [ false, %8 ], [ false, %1 ], [ %39, %32 ]
  %42 = zext i1 %41 to i32
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
