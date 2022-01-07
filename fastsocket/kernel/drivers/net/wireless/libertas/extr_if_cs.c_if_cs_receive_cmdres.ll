; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_cs.c_if_cs_receive_cmdres.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_cs.c_if_cs_receive_cmdres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32, i32, i32 }

@LBS_DEB_CS = common dso_local global i32 0, align 4
@IF_CS_CARD_STATUS = common dso_local global i32 0, align 4
@IF_CS_BIT_RESP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"no cmd response in card\0A\00", align 1
@IF_CS_RESP_LEN = common dso_local global i32 0, align 4
@LBS_CMD_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"card cmd buffer has invalid # of bytes (%d)\0A\00", align 1
@IF_CS_RESP = common dso_local global i32 0, align 4
@DNLD_RES_RECEIVED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"ret %d, len %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lbs_private*, i32*, i32*)* @if_cs_receive_cmdres to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_cs_receive_cmdres(%struct.lbs_private* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.lbs_private*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 -1, i32* %8, align 4
  %10 = load i32, i32* @LBS_DEB_CS, align 4
  %11 = call i32 @lbs_deb_enter(i32 %10)
  %12 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %13 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @IF_CS_CARD_STATUS, align 4
  %16 = call i8* @if_cs_read16(i32 %14, i32 %15)
  %17 = ptrtoint i8* %16 to i32
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @IF_CS_BIT_RESP, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = call i32 (i8*, ...) @lbs_pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %24 = load i32*, i32** %6, align 8
  store i32 0, i32* %24, align 4
  br label %88

25:                                               ; preds = %3
  %26 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %27 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IF_CS_RESP_LEN, align 4
  %30 = call i8* @if_cs_read16(i32 %28, i32 %29)
  %31 = ptrtoint i8* %30 to i32
  %32 = load i32*, i32** %6, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %25
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @LBS_CMD_BUFFER_SIZE, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %36, %25
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i8*, ...) @lbs_pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %88

45:                                               ; preds = %36
  %46 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %47 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @IF_CS_RESP, align 4
  %50 = load i32*, i32** %5, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = udiv i64 %53, 4
  %55 = trunc i64 %54 to i32
  %56 = call i32 @if_cs_read16_rep(i32 %48, i32 %49, i32* %50, i32 %55)
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 1
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %45
  %62 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %63 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @IF_CS_RESP, align 4
  %66 = call i32 @if_cs_read8(i32 %64, i32 %65)
  %67 = load i32*, i32** %5, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %67, i64 %71
  store i32 %66, i32* %72, align 4
  br label %73

73:                                               ; preds = %61, %45
  %74 = load i32*, i32** %6, align 8
  %75 = load i32, i32* %74, align 4
  %76 = sub nsw i32 %75, 8
  store i32 %76, i32* %74, align 4
  store i32 0, i32* %8, align 4
  %77 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %78 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %77, i32 0, i32 0
  %79 = load i64, i64* %7, align 8
  %80 = call i32 @spin_lock_irqsave(i32* %78, i64 %79)
  %81 = load i32, i32* @DNLD_RES_RECEIVED, align 4
  %82 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %83 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %85 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %84, i32 0, i32 0
  %86 = load i64, i64* %7, align 8
  %87 = call i32 @spin_unlock_irqrestore(i32* %85, i64 %86)
  br label %88

88:                                               ; preds = %73, %41, %22
  %89 = load i32, i32* @LBS_DEB_CS, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load i32*, i32** %6, align 8
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @lbs_deb_leave_args(i32 %89, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %90, i32 %92)
  %94 = load i32, i32* %8, align 4
  ret i32 %94
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i8* @if_cs_read16(i32, i32) #1

declare dso_local i32 @lbs_pr_err(i8*, ...) #1

declare dso_local i32 @if_cs_read16_rep(i32, i32, i32*, i32) #1

declare dso_local i32 @if_cs_read8(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @lbs_deb_leave_args(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
