; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/firewire/extr_firedtv-ci.c_fdtv_ca_get_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/firewire/extr_firedtv-ci.c_fdtv_ca_get_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firedtv = type { i32, i32 }
%struct.firedtv_tuner_status = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"unhandled CA message 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.firedtv*, i8*)* @fdtv_ca_get_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdtv_ca_get_msg(%struct.firedtv* %0, i8* %1) #0 {
  %3 = alloca %struct.firedtv*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.firedtv_tuner_status, align 4
  %6 = alloca i32, align 4
  store %struct.firedtv* %0, %struct.firedtv** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %8 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %18 [
    i32 129, label %10
    i32 128, label %14
  ]

10:                                               ; preds = %2
  %11 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @fdtv_ca_app_info(%struct.firedtv* %11, i8* %12)
  store i32 %13, i32* %6, align 4
  br label %45

14:                                               ; preds = %2
  %15 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @fdtv_ca_info(%struct.firedtv* %15, i8* %16)
  store i32 %17, i32* %6, align 4
  br label %45

18:                                               ; preds = %2
  %19 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %20 = call i32 @avc_tuner_status(%struct.firedtv* %19, %struct.firedtv_tuner_status* %5)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* @EFAULT, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %44

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.firedtv_tuner_status, %struct.firedtv_tuner_status* %5, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @fdtv_ca_get_mmi(%struct.firedtv* %30, i8* %31)
  store i32 %32, i32* %6, align 4
  br label %43

33:                                               ; preds = %25
  %34 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %35 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %38 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dev_info(i32 %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @EFAULT, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %33, %29
  br label %44

44:                                               ; preds = %43, %22
  br label %45

45:                                               ; preds = %44, %14, %10
  %46 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %47 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %46, i32 0, i32 0
  store i32 0, i32* %47, align 4
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local i32 @fdtv_ca_app_info(%struct.firedtv*, i8*) #1

declare dso_local i32 @fdtv_ca_info(%struct.firedtv*, i8*) #1

declare dso_local i32 @avc_tuner_status(%struct.firedtv*, %struct.firedtv_tuner_status*) #1

declare dso_local i32 @fdtv_ca_get_mmi(%struct.firedtv*, i8*) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
