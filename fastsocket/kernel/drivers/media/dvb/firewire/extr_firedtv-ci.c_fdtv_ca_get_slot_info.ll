; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/firewire/extr_firedtv-ci.c_fdtv_ca_get_slot_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/firewire/extr_firedtv-ci.c_fdtv_ca_get_slot_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firedtv = type { i32 }
%struct.firedtv_tuner_status = type { i32 }
%struct.ca_slot_info = type { i64, i32, i32 }

@EFAULT = common dso_local global i32 0, align 4
@CA_CI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.firedtv*, i8*)* @fdtv_ca_get_slot_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdtv_ca_get_slot_info(%struct.firedtv* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.firedtv*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.firedtv_tuner_status, align 4
  %7 = alloca %struct.ca_slot_info*, align 8
  store %struct.firedtv* %0, %struct.firedtv** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.ca_slot_info*
  store %struct.ca_slot_info* %9, %struct.ca_slot_info** %7, align 8
  %10 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %11 = call i64 @avc_tuner_status(%struct.firedtv* %10, %struct.firedtv_tuner_status* %6)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EFAULT, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %31

16:                                               ; preds = %2
  %17 = load %struct.ca_slot_info*, %struct.ca_slot_info** %7, align 8
  %18 = getelementptr inbounds %struct.ca_slot_info, %struct.ca_slot_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* @EFAULT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %31

24:                                               ; preds = %16
  %25 = load i32, i32* @CA_CI, align 4
  %26 = load %struct.ca_slot_info*, %struct.ca_slot_info** %7, align 8
  %27 = getelementptr inbounds %struct.ca_slot_info, %struct.ca_slot_info* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = call i32 @fdtv_get_ca_flags(%struct.firedtv_tuner_status* %6)
  %29 = load %struct.ca_slot_info*, %struct.ca_slot_info** %7, align 8
  %30 = getelementptr inbounds %struct.ca_slot_info, %struct.ca_slot_info* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %24, %21, %13
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i64 @avc_tuner_status(%struct.firedtv*, %struct.firedtv_tuner_status*) #1

declare dso_local i32 @fdtv_get_ca_flags(%struct.firedtv_tuner_status*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
