; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd.c_dasd_decrease_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd.c_dasd_decrease_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { i64, i64 }

@DASD_STATE_ONLINE = common dso_local global i64 0, align 8
@DASD_STATE_READY = common dso_local global i64 0, align 8
@DASD_STATE_BASIC = common dso_local global i64 0, align 8
@DASD_STATE_UNFMT = common dso_local global i64 0, align 8
@DASD_STATE_KNOWN = common dso_local global i64 0, align 8
@DASD_STATE_NEW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_device*)* @dasd_decrease_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_decrease_state(%struct.dasd_device* %0) #0 {
  %2 = alloca %struct.dasd_device*, align 8
  %3 = alloca i32, align 4
  store %struct.dasd_device* %0, %struct.dasd_device** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %5 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @DASD_STATE_ONLINE, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %11 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @DASD_STATE_READY, align 8
  %14 = icmp sle i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %17 = call i32 @dasd_state_online_to_ready(%struct.dasd_device* %16)
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %15, %9, %1
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %36, label %21

21:                                               ; preds = %18
  %22 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %23 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @DASD_STATE_READY, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %21
  %28 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %29 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @DASD_STATE_BASIC, align 8
  %32 = icmp sle i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %35 = call i32 @dasd_state_ready_to_basic(%struct.dasd_device* %34)
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %33, %27, %21, %18
  %37 = load i32, i32* %3, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %54, label %39

39:                                               ; preds = %36
  %40 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %41 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @DASD_STATE_UNFMT, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %39
  %46 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %47 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @DASD_STATE_BASIC, align 8
  %50 = icmp sle i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %53 = call i32 @dasd_state_unfmt_to_basic(%struct.dasd_device* %52)
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %51, %45, %39, %36
  %55 = load i32, i32* %3, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %72, label %57

57:                                               ; preds = %54
  %58 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %59 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @DASD_STATE_BASIC, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %57
  %64 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %65 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @DASD_STATE_KNOWN, align 8
  %68 = icmp sle i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %71 = call i32 @dasd_state_basic_to_known(%struct.dasd_device* %70)
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %69, %63, %57, %54
  %73 = load i32, i32* %3, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %90, label %75

75:                                               ; preds = %72
  %76 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %77 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @DASD_STATE_KNOWN, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %75
  %82 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %83 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @DASD_STATE_NEW, align 8
  %86 = icmp sle i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load %struct.dasd_device*, %struct.dasd_device** %2, align 8
  %89 = call i32 @dasd_state_known_to_new(%struct.dasd_device* %88)
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %87, %81, %75, %72
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @dasd_state_online_to_ready(%struct.dasd_device*) #1

declare dso_local i32 @dasd_state_ready_to_basic(%struct.dasd_device*) #1

declare dso_local i32 @dasd_state_unfmt_to_basic(%struct.dasd_device*) #1

declare dso_local i32 @dasd_state_basic_to_known(%struct.dasd_device*) #1

declare dso_local i32 @dasd_state_known_to_new(%struct.dasd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
