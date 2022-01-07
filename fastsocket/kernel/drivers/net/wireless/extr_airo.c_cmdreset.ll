; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c_cmdreset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c_cmdreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.airo_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Waitbusy hang before RESET\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@COMMAND = common dso_local global i32 0, align 4
@CMD_SOFTRESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Waitbusy hang AFTER RESET\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.airo_info*)* @cmdreset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmdreset(%struct.airo_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.airo_info*, align 8
  store %struct.airo_info* %0, %struct.airo_info** %3, align 8
  %4 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %5 = call i32 @disable_MAC(%struct.airo_info* %4, i32 1)
  %6 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %7 = call i32 @waitbusy(%struct.airo_info* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %1
  %10 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %11 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @airo_print_info(i32 %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EBUSY, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %37

18:                                               ; preds = %1
  %19 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %20 = load i32, i32* @COMMAND, align 4
  %21 = load i32, i32* @CMD_SOFTRESET, align 4
  %22 = call i32 @OUT4500(%struct.airo_info* %19, i32 %20, i32 %21)
  %23 = call i32 @ssleep(i32 1)
  %24 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %25 = call i32 @waitbusy(%struct.airo_info* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %18
  %28 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %29 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @airo_print_info(i32 %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @EBUSY, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %37

36:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %27, %9
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @disable_MAC(%struct.airo_info*, i32) #1

declare dso_local i32 @waitbusy(%struct.airo_info*) #1

declare dso_local i32 @airo_print_info(i32, i8*) #1

declare dso_local i32 @OUT4500(%struct.airo_info*, i32, i32) #1

declare dso_local i32 @ssleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
