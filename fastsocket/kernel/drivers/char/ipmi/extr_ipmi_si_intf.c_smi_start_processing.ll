; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_si_intf.c_smi_start_processing.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_si_intf.c_smi_start_processing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smi_info = type { i64, i64, i32*, i32, i32, i32, i64, i32 (%struct.smi_info*)*, i32 }

@smi_timeout = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@SI_TIMEOUT_JIFFIES = common dso_local global i64 0, align 8
@num_force_kipmid = common dso_local global i64 0, align 8
@force_kipmid = common dso_local global i32* null, align 8
@SI_BT = common dso_local global i64 0, align 8
@ipmi_thread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"kipmi%d\00", align 1
@.str.1 = private unnamed_addr constant [90 x i8] c"Could not start kernel thread due to error %ld, only using timers to drive the interface\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @smi_start_processing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smi_start_processing(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.smi_info*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.smi_info*
  store %struct.smi_info* %8, %struct.smi_info** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.smi_info*, %struct.smi_info** %5, align 8
  %11 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %10, i32 0, i32 8
  store i32 %9, i32* %11, align 8
  %12 = load %struct.smi_info*, %struct.smi_info** %5, align 8
  %13 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %12, i32 0, i32 7
  %14 = load i32 (%struct.smi_info*)*, i32 (%struct.smi_info*)** %13, align 8
  %15 = icmp ne i32 (%struct.smi_info*)* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.smi_info*, %struct.smi_info** %5, align 8
  %18 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %17, i32 0, i32 7
  %19 = load i32 (%struct.smi_info*)*, i32 (%struct.smi_info*)** %18, align 8
  %20 = load %struct.smi_info*, %struct.smi_info** %5, align 8
  %21 = call i32 %19(%struct.smi_info* %20)
  br label %22

22:                                               ; preds = %16, %2
  %23 = load %struct.smi_info*, %struct.smi_info** %5, align 8
  %24 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %23, i32 0, i32 5
  %25 = load i32, i32* @smi_timeout, align 4
  %26 = load %struct.smi_info*, %struct.smi_info** %5, align 8
  %27 = ptrtoint %struct.smi_info* %26 to i64
  %28 = call i32 @setup_timer(i32* %24, i32 %25, i64 %27)
  %29 = load i64, i64* @jiffies, align 8
  %30 = load %struct.smi_info*, %struct.smi_info** %5, align 8
  %31 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %30, i32 0, i32 6
  store i64 %29, i64* %31, align 8
  %32 = load %struct.smi_info*, %struct.smi_info** %5, align 8
  %33 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %32, i32 0, i32 5
  %34 = load i64, i64* @jiffies, align 8
  %35 = load i64, i64* @SI_TIMEOUT_JIFFIES, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @mod_timer(i32* %33, i64 %36)
  %38 = load %struct.smi_info*, %struct.smi_info** %5, align 8
  %39 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @num_force_kipmid, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %22
  %44 = load i32*, i32** @force_kipmid, align 8
  %45 = load %struct.smi_info*, %struct.smi_info** %5, align 8
  %46 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %6, align 4
  br label %63

50:                                               ; preds = %22
  %51 = load %struct.smi_info*, %struct.smi_info** %5, align 8
  %52 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @SI_BT, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load %struct.smi_info*, %struct.smi_info** %5, align 8
  %58 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  store i32 1, i32* %6, align 4
  br label %62

62:                                               ; preds = %61, %56, %50
  br label %63

63:                                               ; preds = %62, %43
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %92

66:                                               ; preds = %63
  %67 = load i32, i32* @ipmi_thread, align 4
  %68 = load %struct.smi_info*, %struct.smi_info** %5, align 8
  %69 = load %struct.smi_info*, %struct.smi_info** %5, align 8
  %70 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32* @kthread_run(i32 %67, %struct.smi_info* %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %71)
  %73 = load %struct.smi_info*, %struct.smi_info** %5, align 8
  %74 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %73, i32 0, i32 2
  store i32* %72, i32** %74, align 8
  %75 = load %struct.smi_info*, %struct.smi_info** %5, align 8
  %76 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = call i64 @IS_ERR(i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %66
  %81 = load %struct.smi_info*, %struct.smi_info** %5, align 8
  %82 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.smi_info*, %struct.smi_info** %5, align 8
  %85 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @PTR_ERR(i32* %86)
  %88 = call i32 @dev_notice(i32 %83, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  %89 = load %struct.smi_info*, %struct.smi_info** %5, align 8
  %90 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %89, i32 0, i32 2
  store i32* null, i32** %90, align 8
  br label %91

91:                                               ; preds = %80, %66
  br label %92

92:                                               ; preds = %91, %63
  ret i32 0
}

declare dso_local i32 @setup_timer(i32*, i32, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32* @kthread_run(i32, %struct.smi_info*, i8*, i64) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @dev_notice(i32, i8*, i32) #1

declare dso_local i32 @PTR_ERR(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
