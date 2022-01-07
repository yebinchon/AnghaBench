; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/firewire/extr_firedtv-ci.c_fdtv_ca_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/firewire/extr_firedtv-ci.c_fdtv_ca_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.dvb_device* }
%struct.dvb_device = type { %struct.firedtv* }
%struct.firedtv = type { i32 }
%struct.firedtv_tuner_status = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"unhandled CA ioctl %u\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*, i32, i8*)* @fdtv_ca_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdtv_ca_ioctl(%struct.inode* %0, %struct.file* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.dvb_device*, align 8
  %10 = alloca %struct.firedtv*, align 8
  %11 = alloca %struct.firedtv_tuner_status, align 4
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.file* %1, %struct.file** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %13 = load %struct.file*, %struct.file** %6, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  %15 = load %struct.dvb_device*, %struct.dvb_device** %14, align 8
  store %struct.dvb_device* %15, %struct.dvb_device** %9, align 8
  %16 = load %struct.dvb_device*, %struct.dvb_device** %9, align 8
  %17 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %16, i32 0, i32 0
  %18 = load %struct.firedtv*, %struct.firedtv** %17, align 8
  store %struct.firedtv* %18, %struct.firedtv** %10, align 8
  %19 = load i32, i32* %7, align 4
  switch i32 %19, label %38 [
    i32 129, label %20
    i32 132, label %23
    i32 130, label %26
    i32 131, label %30
    i32 128, label %34
  ]

20:                                               ; preds = %4
  %21 = load %struct.firedtv*, %struct.firedtv** %10, align 8
  %22 = call i32 @fdtv_ca_reset(%struct.firedtv* %21)
  store i32 %22, i32* %12, align 4
  br label %46

23:                                               ; preds = %4
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @fdtv_ca_get_caps(i8* %24)
  store i32 %25, i32* %12, align 4
  br label %46

26:                                               ; preds = %4
  %27 = load %struct.firedtv*, %struct.firedtv** %10, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @fdtv_ca_get_slot_info(%struct.firedtv* %27, i8* %28)
  store i32 %29, i32* %12, align 4
  br label %46

30:                                               ; preds = %4
  %31 = load %struct.firedtv*, %struct.firedtv** %10, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @fdtv_ca_get_msg(%struct.firedtv* %31, i8* %32)
  store i32 %33, i32* %12, align 4
  br label %46

34:                                               ; preds = %4
  %35 = load %struct.firedtv*, %struct.firedtv** %10, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @fdtv_ca_send_msg(%struct.firedtv* %35, i8* %36)
  store i32 %37, i32* %12, align 4
  br label %46

38:                                               ; preds = %4
  %39 = load %struct.firedtv*, %struct.firedtv** %10, align 8
  %40 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @dev_info(i32 %41, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @EOPNOTSUPP, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %12, align 4
  br label %46

46:                                               ; preds = %38, %34, %30, %26, %23, %20
  %47 = load %struct.firedtv*, %struct.firedtv** %10, align 8
  %48 = call i32 @avc_tuner_status(%struct.firedtv* %47, %struct.firedtv_tuner_status* %11)
  %49 = load i32, i32* %12, align 4
  ret i32 %49
}

declare dso_local i32 @fdtv_ca_reset(%struct.firedtv*) #1

declare dso_local i32 @fdtv_ca_get_caps(i8*) #1

declare dso_local i32 @fdtv_ca_get_slot_info(%struct.firedtv*, i8*) #1

declare dso_local i32 @fdtv_ca_get_msg(%struct.firedtv*, i8*) #1

declare dso_local i32 @fdtv_ca_send_msg(%struct.firedtv*, i8*) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @avc_tuner_status(%struct.firedtv*, %struct.firedtv_tuner_status*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
