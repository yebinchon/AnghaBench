; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_11d.c_lbs_channel_known_11d.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_11d.c_lbs_channel_known_11d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parsed_region_chan_11d = type { i32, %struct.chan_power_11d* }
%struct.chan_power_11d = type { i32 }

@LBS_DEB_11D = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"parsed_region_chan\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"found chan %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"chan %d not found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.parsed_region_chan_11d*)* @lbs_channel_known_11d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_channel_known_11d(i32 %0, %struct.parsed_region_chan_11d* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.parsed_region_chan_11d*, align 8
  %6 = alloca %struct.chan_power_11d*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.parsed_region_chan_11d* %1, %struct.parsed_region_chan_11d** %5, align 8
  %9 = load %struct.parsed_region_chan_11d*, %struct.parsed_region_chan_11d** %5, align 8
  %10 = getelementptr inbounds %struct.parsed_region_chan_11d, %struct.parsed_region_chan_11d* %9, i32 0, i32 1
  %11 = load %struct.chan_power_11d*, %struct.chan_power_11d** %10, align 8
  store %struct.chan_power_11d* %11, %struct.chan_power_11d** %6, align 8
  %12 = load %struct.parsed_region_chan_11d*, %struct.parsed_region_chan_11d** %5, align 8
  %13 = getelementptr inbounds %struct.parsed_region_chan_11d, %struct.parsed_region_chan_11d* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %15 = load i32, i32* @LBS_DEB_11D, align 4
  %16 = load %struct.chan_power_11d*, %struct.chan_power_11d** %6, align 8
  %17 = bitcast %struct.chan_power_11d* %16 to i8*
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 4, %19
  %21 = trunc i64 %20 to i32
  %22 = call i32 @lbs_deb_hex(i32 %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %17, i32 %21)
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %40, %2
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %23
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.chan_power_11d*, %struct.chan_power_11d** %6, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.chan_power_11d, %struct.chan_power_11d* %29, i64 %31
  %33 = getelementptr inbounds %struct.chan_power_11d, %struct.chan_power_11d* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %28, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @lbs_deb_11d(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  store i32 1, i32* %3, align 4
  br label %46

39:                                               ; preds = %27
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  br label %23

43:                                               ; preds = %23
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @lbs_deb_11d(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %43, %36
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @lbs_deb_hex(i32, i8*, i8*, i32) #1

declare dso_local i32 @lbs_deb_11d(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
