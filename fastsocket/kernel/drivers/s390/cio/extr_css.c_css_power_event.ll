; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_css.c_css_power_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_css.c_css_power_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel_subsystem = type { i32, i32 }
%struct.notifier_block = type { i32 }

@NOTIFY_DONE = common dso_local global i32 0, align 4
@__MAX_CSSID = common dso_local global i32 0, align 4
@channel_subsystems = common dso_local global %struct.channel_subsystem** null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@NOTIFY_BAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @css_power_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @css_power_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.channel_subsystem*, align 8
  %11 = alloca %struct.channel_subsystem*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i64, i64* %5, align 8
  switch i64 %12, label %118 [
    i64 131, label %13
    i64 128, label %13
    i64 130, label %65
    i64 129, label %65
  ]

13:                                               ; preds = %3, %3
  %14 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %14, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %61, %13
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @__MAX_CSSID, align 4
  %18 = icmp sle i32 %16, %17
  br i1 %18, label %19, label %64

19:                                               ; preds = %15
  %20 = load %struct.channel_subsystem**, %struct.channel_subsystem*** @channel_subsystems, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.channel_subsystem*, %struct.channel_subsystem** %20, i64 %22
  %24 = load %struct.channel_subsystem*, %struct.channel_subsystem** %23, align 8
  store %struct.channel_subsystem* %24, %struct.channel_subsystem** %10, align 8
  %25 = load %struct.channel_subsystem*, %struct.channel_subsystem** %10, align 8
  %26 = getelementptr inbounds %struct.channel_subsystem, %struct.channel_subsystem* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.channel_subsystem*, %struct.channel_subsystem** %10, align 8
  %29 = getelementptr inbounds %struct.channel_subsystem, %struct.channel_subsystem* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %19
  %33 = load %struct.channel_subsystem*, %struct.channel_subsystem** %10, align 8
  %34 = getelementptr inbounds %struct.channel_subsystem, %struct.channel_subsystem* %33, i32 0, i32 0
  %35 = call i32 @mutex_unlock(i32* %34)
  br label %61

36:                                               ; preds = %19
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = load i32, i32* @GFP_DMA, align 4
  %39 = or i32 %37, %38
  %40 = call i64 @get_zeroed_page(i32 %39)
  %41 = inttoptr i64 %40 to i8*
  store i8* %41, i8** %7, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %55

44:                                               ; preds = %36
  %45 = load %struct.channel_subsystem*, %struct.channel_subsystem** %10, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @__chsc_do_secm(%struct.channel_subsystem* %45, i32 0, i8* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* @NOTIFY_BAD, align 4
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %49, %44
  %52 = load i8*, i8** %7, align 8
  %53 = ptrtoint i8* %52 to i64
  %54 = call i32 @free_page(i64 %53)
  br label %57

55:                                               ; preds = %36
  %56 = load i32, i32* @NOTIFY_BAD, align 4
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %55, %51
  %58 = load %struct.channel_subsystem*, %struct.channel_subsystem** %10, align 8
  %59 = getelementptr inbounds %struct.channel_subsystem, %struct.channel_subsystem* %58, i32 0, i32 0
  %60 = call i32 @mutex_unlock(i32* %59)
  br label %61

61:                                               ; preds = %57, %32
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  br label %15

64:                                               ; preds = %15
  br label %120

65:                                               ; preds = %3, %3
  %66 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %66, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %67

67:                                               ; preds = %113, %65
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @__MAX_CSSID, align 4
  %70 = icmp sle i32 %68, %69
  br i1 %70, label %71, label %116

71:                                               ; preds = %67
  %72 = load %struct.channel_subsystem**, %struct.channel_subsystem*** @channel_subsystems, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.channel_subsystem*, %struct.channel_subsystem** %72, i64 %74
  %76 = load %struct.channel_subsystem*, %struct.channel_subsystem** %75, align 8
  store %struct.channel_subsystem* %76, %struct.channel_subsystem** %11, align 8
  %77 = load %struct.channel_subsystem*, %struct.channel_subsystem** %11, align 8
  %78 = getelementptr inbounds %struct.channel_subsystem, %struct.channel_subsystem* %77, i32 0, i32 0
  %79 = call i32 @mutex_lock(i32* %78)
  %80 = load %struct.channel_subsystem*, %struct.channel_subsystem** %11, align 8
  %81 = getelementptr inbounds %struct.channel_subsystem, %struct.channel_subsystem* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %71
  %85 = load %struct.channel_subsystem*, %struct.channel_subsystem** %11, align 8
  %86 = getelementptr inbounds %struct.channel_subsystem, %struct.channel_subsystem* %85, i32 0, i32 0
  %87 = call i32 @mutex_unlock(i32* %86)
  br label %113

88:                                               ; preds = %71
  %89 = load i32, i32* @GFP_KERNEL, align 4
  %90 = load i32, i32* @GFP_DMA, align 4
  %91 = or i32 %89, %90
  %92 = call i64 @get_zeroed_page(i32 %91)
  %93 = inttoptr i64 %92 to i8*
  store i8* %93, i8** %7, align 8
  %94 = load i8*, i8** %7, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %107

96:                                               ; preds = %88
  %97 = load %struct.channel_subsystem*, %struct.channel_subsystem** %11, align 8
  %98 = load i8*, i8** %7, align 8
  %99 = call i32 @__chsc_do_secm(%struct.channel_subsystem* %97, i32 1, i8* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %96
  %102 = load i32, i32* @NOTIFY_BAD, align 4
  store i32 %102, i32* %8, align 4
  br label %103

103:                                              ; preds = %101, %96
  %104 = load i8*, i8** %7, align 8
  %105 = ptrtoint i8* %104 to i64
  %106 = call i32 @free_page(i64 %105)
  br label %109

107:                                              ; preds = %88
  %108 = load i32, i32* @NOTIFY_BAD, align 4
  store i32 %108, i32* %8, align 4
  br label %109

109:                                              ; preds = %107, %103
  %110 = load %struct.channel_subsystem*, %struct.channel_subsystem** %11, align 8
  %111 = getelementptr inbounds %struct.channel_subsystem, %struct.channel_subsystem* %110, i32 0, i32 0
  %112 = call i32 @mutex_unlock(i32* %111)
  br label %113

113:                                              ; preds = %109, %84
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %9, align 4
  br label %67

116:                                              ; preds = %67
  %117 = call i32 (...) @css_schedule_reprobe()
  br label %120

118:                                              ; preds = %3
  %119 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %119, i32* %8, align 4
  br label %120

120:                                              ; preds = %118, %116, %64
  %121 = load i32, i32* %8, align 4
  ret i32 %121
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @__chsc_do_secm(%struct.channel_subsystem*, i32, i8*) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @css_schedule_reprobe(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
