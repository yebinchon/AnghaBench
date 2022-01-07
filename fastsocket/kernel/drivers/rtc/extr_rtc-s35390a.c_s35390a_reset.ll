; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-s35390a.c_s35390a_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-s35390a.c_s35390a_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s35390a = type { i32 }

@S35390A_CMD_STATUS1 = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@S35390A_FLAG_POC = common dso_local global i8 0, align 1
@S35390A_FLAG_BLD = common dso_local global i8 0, align 1
@S35390A_FLAG_RESET = common dso_local global i8 0, align 1
@S35390A_FLAG_24H = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s35390a*)* @s35390a_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s35390a_reset(%struct.s35390a* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s35390a*, align 8
  %4 = alloca [1 x i8], align 1
  store %struct.s35390a* %0, %struct.s35390a** %3, align 8
  %5 = load %struct.s35390a*, %struct.s35390a** %3, align 8
  %6 = load i32, i32* @S35390A_CMD_STATUS1, align 4
  %7 = getelementptr inbounds [1 x i8], [1 x i8]* %4, i64 0, i64 0
  %8 = call i64 @s35390a_get_reg(%struct.s35390a* %5, i32 %6, i8* %7, i32 1)
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @EIO, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %45

13:                                               ; preds = %1
  %14 = getelementptr inbounds [1 x i8], [1 x i8]* %4, i64 0, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = load i8, i8* @S35390A_FLAG_POC, align 1
  %18 = sext i8 %17 to i32
  %19 = load i8, i8* @S35390A_FLAG_BLD, align 1
  %20 = sext i8 %19 to i32
  %21 = or i32 %18, %20
  %22 = and i32 %16, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %45

25:                                               ; preds = %13
  %26 = load i8, i8* @S35390A_FLAG_RESET, align 1
  %27 = sext i8 %26 to i32
  %28 = load i8, i8* @S35390A_FLAG_24H, align 1
  %29 = sext i8 %28 to i32
  %30 = or i32 %27, %29
  %31 = getelementptr inbounds [1 x i8], [1 x i8]* %4, i64 0, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = or i32 %33, %30
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %31, align 1
  %36 = getelementptr inbounds [1 x i8], [1 x i8]* %4, i64 0, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = and i32 %38, 240
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %36, align 1
  %41 = load %struct.s35390a*, %struct.s35390a** %3, align 8
  %42 = load i32, i32* @S35390A_CMD_STATUS1, align 4
  %43 = getelementptr inbounds [1 x i8], [1 x i8]* %4, i64 0, i64 0
  %44 = call i32 @s35390a_set_reg(%struct.s35390a* %41, i32 %42, i8* %43, i32 1)
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %25, %24, %10
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i64 @s35390a_get_reg(%struct.s35390a*, i32, i8*, i32) #1

declare dso_local i32 @s35390a_set_reg(%struct.s35390a*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
