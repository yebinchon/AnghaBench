; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_cs.c_if_cs_send_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_cs.c_if_cs_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i64 }
%struct.if_cs_card = type { i32 }

@LBS_DEB_CS = common dso_local global i32 0, align 4
@IF_CS_CARD_STATUS = common dso_local global i32 0, align 4
@IF_CS_BIT_COMMAND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"card not ready for commands\0A\00", align 1
@IF_CS_CMD_LEN = common dso_local global i32 0, align 4
@IF_CS_CMD = common dso_local global i32 0, align 4
@IF_CS_HOST_STATUS = common dso_local global i32 0, align 4
@IF_CS_HOST_INT_CAUSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"ret %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lbs_private*, i32*, i32)* @if_cs_send_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_cs_send_cmd(%struct.lbs_private* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.lbs_private*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.if_cs_card*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %12 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.if_cs_card*
  store %struct.if_cs_card* %14, %struct.if_cs_card** %7, align 8
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* @LBS_DEB_CS, align 4
  %16 = call i32 @lbs_deb_enter(i32 %15)
  %17 = load %struct.if_cs_card*, %struct.if_cs_card** %7, align 8
  %18 = call i32 @if_cs_disable_ints(%struct.if_cs_card* %17)
  br label %19

19:                                               ; preds = %3, %34
  %20 = load %struct.if_cs_card*, %struct.if_cs_card** %7, align 8
  %21 = load i32, i32* @IF_CS_CARD_STATUS, align 4
  %22 = call i32 @if_cs_read16(%struct.if_cs_card* %20, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @IF_CS_BIT_COMMAND, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %36

28:                                               ; preds = %19
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %9, align 4
  %31 = icmp sgt i32 %30, 100
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = call i32 @lbs_pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %69

34:                                               ; preds = %28
  %35 = call i32 @mdelay(i32 1)
  br label %19

36:                                               ; preds = %27
  %37 = load %struct.if_cs_card*, %struct.if_cs_card** %7, align 8
  %38 = load i32, i32* @IF_CS_CMD_LEN, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @if_cs_write16(%struct.if_cs_card* %37, i32 %38, i32 %39)
  %41 = load %struct.if_cs_card*, %struct.if_cs_card** %7, align 8
  %42 = load i32, i32* @IF_CS_CMD, align 4
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sdiv i32 %44, 2
  %46 = call i32 @if_cs_write16_rep(%struct.if_cs_card* %41, i32 %42, i32* %43, i32 %45)
  %47 = load i32, i32* %6, align 4
  %48 = and i32 %47, 1
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %36
  %51 = load %struct.if_cs_card*, %struct.if_cs_card** %7, align 8
  %52 = load i32, i32* @IF_CS_CMD, align 4
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @if_cs_write8(%struct.if_cs_card* %51, i32 %52, i32 %58)
  br label %60

60:                                               ; preds = %50, %36
  %61 = load %struct.if_cs_card*, %struct.if_cs_card** %7, align 8
  %62 = load i32, i32* @IF_CS_HOST_STATUS, align 4
  %63 = load i32, i32* @IF_CS_BIT_COMMAND, align 4
  %64 = call i32 @if_cs_write16(%struct.if_cs_card* %61, i32 %62, i32 %63)
  %65 = load %struct.if_cs_card*, %struct.if_cs_card** %7, align 8
  %66 = load i32, i32* @IF_CS_HOST_INT_CAUSE, align 4
  %67 = load i32, i32* @IF_CS_BIT_COMMAND, align 4
  %68 = call i32 @if_cs_write16(%struct.if_cs_card* %65, i32 %66, i32 %67)
  store i32 0, i32* %8, align 4
  br label %69

69:                                               ; preds = %60, %32
  %70 = load %struct.if_cs_card*, %struct.if_cs_card** %7, align 8
  %71 = call i32 @if_cs_enable_ints(%struct.if_cs_card* %70)
  %72 = load i32, i32* @LBS_DEB_CS, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @lbs_deb_leave_args(i32 %72, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %8, align 4
  ret i32 %75
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @if_cs_disable_ints(%struct.if_cs_card*) #1

declare dso_local i32 @if_cs_read16(%struct.if_cs_card*, i32) #1

declare dso_local i32 @lbs_pr_err(i8*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @if_cs_write16(%struct.if_cs_card*, i32, i32) #1

declare dso_local i32 @if_cs_write16_rep(%struct.if_cs_card*, i32, i32*, i32) #1

declare dso_local i32 @if_cs_write8(%struct.if_cs_card*, i32, i32) #1

declare dso_local i32 @if_cs_enable_ints(%struct.if_cs_card*) #1

declare dso_local i32 @lbs_deb_leave_args(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
