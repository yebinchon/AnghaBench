; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_sdio.c_if_sdio_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_sdio.c_if_sdio_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { i32 }
%struct.if_sdio_card = type { i32, i32 }

@LBS_DEB_SDIO = common dso_local global i32 0, align 4
@IF_SDIO_H_INT_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"interrupt: 0x%X\0A\00", align 1
@IF_SDIO_H_INT_DNLD = common dso_local global i32 0, align 4
@IF_SDIO_H_INT_UPLD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"ret %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdio_func*)* @if_sdio_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @if_sdio_interrupt(%struct.sdio_func* %0) #0 {
  %2 = alloca %struct.sdio_func*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.if_sdio_card*, align 8
  %5 = alloca i32, align 4
  store %struct.sdio_func* %0, %struct.sdio_func** %2, align 8
  %6 = load i32, i32* @LBS_DEB_SDIO, align 4
  %7 = call i32 @lbs_deb_enter(i32 %6)
  %8 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %9 = call %struct.if_sdio_card* @sdio_get_drvdata(%struct.sdio_func* %8)
  store %struct.if_sdio_card* %9, %struct.if_sdio_card** %4, align 8
  %10 = load %struct.if_sdio_card*, %struct.if_sdio_card** %4, align 8
  %11 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @IF_SDIO_H_INT_STATUS, align 4
  %14 = call i32 @sdio_readb(i32 %12, i32 %13, i32* %3)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %54

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @lbs_deb_sdio(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.if_sdio_card*, %struct.if_sdio_card** %4, align 8
  %22 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* @IF_SDIO_H_INT_STATUS, align 4
  %27 = call i32 @sdio_writeb(i32 %23, i32 %25, i32 %26, i32* %3)
  %28 = load i32, i32* %3, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  br label %54

31:                                               ; preds = %18
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @IF_SDIO_H_INT_DNLD, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.if_sdio_card*, %struct.if_sdio_card** %4, align 8
  %38 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @lbs_host_to_card_done(i32 %39)
  br label %41

41:                                               ; preds = %36, %31
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @IF_SDIO_H_INT_UPLD, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load %struct.if_sdio_card*, %struct.if_sdio_card** %4, align 8
  %48 = call i32 @if_sdio_card_to_host(%struct.if_sdio_card* %47)
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %54

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %52, %41
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %51, %30, %17
  %55 = load i32, i32* @LBS_DEB_SDIO, align 4
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @lbs_deb_leave_args(i32 %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  ret void
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local %struct.if_sdio_card* @sdio_get_drvdata(%struct.sdio_func*) #1

declare dso_local i32 @sdio_readb(i32, i32, i32*) #1

declare dso_local i32 @lbs_deb_sdio(i8*, i32) #1

declare dso_local i32 @sdio_writeb(i32, i32, i32, i32*) #1

declare dso_local i32 @lbs_host_to_card_done(i32) #1

declare dso_local i32 @if_sdio_card_to_host(%struct.if_sdio_card*) #1

declare dso_local i32 @lbs_deb_leave_args(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
