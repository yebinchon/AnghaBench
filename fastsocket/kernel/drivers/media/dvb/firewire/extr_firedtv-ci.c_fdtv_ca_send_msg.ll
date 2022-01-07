; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/firewire/extr_firedtv-ci.c_fdtv_ca_send_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/firewire/extr_firedtv-ci.c_fdtv_ca_send_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firedtv = type { i32, i32 }
%struct.ca_msg = type { i32* }

@.str = private unnamed_addr constant [29 x i8] c"unhandled CA message 0x%08x\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.firedtv*, i8*)* @fdtv_ca_send_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdtv_ca_send_msg(%struct.firedtv* %0, i8* %1) #0 {
  %3 = alloca %struct.firedtv*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ca_msg*, align 8
  %6 = alloca i32, align 4
  store %struct.firedtv* %0, %struct.firedtv** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.ca_msg*
  store %struct.ca_msg* %8, %struct.ca_msg** %5, align 8
  %9 = load %struct.ca_msg*, %struct.ca_msg** %5, align 8
  %10 = getelementptr inbounds %struct.ca_msg, %struct.ca_msg* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = shl i32 %13, 16
  %15 = load %struct.ca_msg*, %struct.ca_msg** %5, align 8
  %16 = getelementptr inbounds %struct.ca_msg, %struct.ca_msg* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 %19, 8
  %21 = add nsw i32 %14, %20
  %22 = load %struct.ca_msg*, %struct.ca_msg** %5, align 8
  %23 = getelementptr inbounds %struct.ca_msg, %struct.ca_msg* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %21, %26
  %28 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %29 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %31 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %42 [
    i32 129, label %33
    i32 131, label %37
    i32 130, label %38
    i32 128, label %39
  ]

33:                                               ; preds = %2
  %34 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @fdtv_ca_pmt(%struct.firedtv* %34, i8* %35)
  store i32 %36, i32* %6, align 4
  br label %52

37:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %52

38:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %52

39:                                               ; preds = %2
  %40 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %41 = call i32 @avc_ca_enter_menu(%struct.firedtv* %40)
  store i32 %41, i32* %6, align 4
  br label %52

42:                                               ; preds = %2
  %43 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %44 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %47 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @EFAULT, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %42, %39, %38, %37, %33
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i32 @fdtv_ca_pmt(%struct.firedtv*, i8*) #1

declare dso_local i32 @avc_ca_enter_menu(%struct.firedtv*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
