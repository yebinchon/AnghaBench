; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_proc.c_set_cidmode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_proc.c_set_cidmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.cardstate = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i64 0, align 8
@ERESTARTSYS = common dso_local global i64 0, align 8
@EV_PROC_CIDMODE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@DEBUG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"scheduling PROC_CIDMODE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_cidmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_cidmode(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.cardstate*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.cardstate* @dev_get_drvdata(%struct.device* %13)
  store %struct.cardstate* %14, %struct.cardstate** %10, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i64 @simple_strtol(i8* %15, i8** %12, i32 0)
  store i64 %16, i64* %11, align 8
  br label %17

17:                                               ; preds = %31, %4
  %18 = load i8*, i8** %12, align 8
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %17
  %22 = load i8*, i8** %12, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %12, align 8
  %24 = load i8, i8* %22, align 1
  %25 = sext i8 %24 to i32
  %26 = call i32 @isspace(i32 %25) #3
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load i64, i64* @EINVAL, align 8
  %30 = sub i64 0, %29
  store i64 %30, i64* %5, align 8
  br label %86

31:                                               ; preds = %21
  br label %17

32:                                               ; preds = %17
  %33 = load i64, i64* %11, align 8
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i64, i64* %11, align 8
  %37 = icmp sgt i64 %36, 1
  br i1 %37, label %38, label %41

38:                                               ; preds = %35, %32
  %39 = load i64, i64* @EINVAL, align 8
  %40 = sub i64 0, %39
  store i64 %40, i64* %5, align 8
  br label %86

41:                                               ; preds = %35
  %42 = load %struct.cardstate*, %struct.cardstate** %10, align 8
  %43 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %42, i32 0, i32 1
  %44 = call i64 @mutex_lock_interruptible(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i64, i64* @ERESTARTSYS, align 8
  %48 = sub i64 0, %47
  store i64 %48, i64* %5, align 8
  br label %86

49:                                               ; preds = %41
  %50 = load %struct.cardstate*, %struct.cardstate** %10, align 8
  %51 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %50, i32 0, i32 0
  store i32 1, i32* %51, align 4
  %52 = load %struct.cardstate*, %struct.cardstate** %10, align 8
  %53 = load %struct.cardstate*, %struct.cardstate** %10, align 8
  %54 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %53, i32 0, i32 3
  %55 = load i32, i32* @EV_PROC_CIDMODE, align 4
  %56 = load i64, i64* %11, align 8
  %57 = call i32 @gigaset_add_event(%struct.cardstate* %52, i32* %54, i32 %55, i32* null, i64 %56, i32* null)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %49
  %60 = load %struct.cardstate*, %struct.cardstate** %10, align 8
  %61 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %60, i32 0, i32 0
  store i32 0, i32* %61, align 4
  %62 = load %struct.cardstate*, %struct.cardstate** %10, align 8
  %63 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %62, i32 0, i32 1
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load i64, i64* @ENOMEM, align 8
  %66 = sub i64 0, %65
  store i64 %66, i64* %5, align 8
  br label %86

67:                                               ; preds = %49
  %68 = load i32, i32* @DEBUG_CMD, align 4
  %69 = call i32 @gig_dbg(i32 %68, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %70 = load %struct.cardstate*, %struct.cardstate** %10, align 8
  %71 = call i32 @gigaset_schedule_event(%struct.cardstate* %70)
  %72 = load %struct.cardstate*, %struct.cardstate** %10, align 8
  %73 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.cardstate*, %struct.cardstate** %10, align 8
  %76 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i32 @wait_event(i32 %74, i32 %80)
  %82 = load %struct.cardstate*, %struct.cardstate** %10, align 8
  %83 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %82, i32 0, i32 1
  %84 = call i32 @mutex_unlock(i32* %83)
  %85 = load i64, i64* %9, align 8
  store i64 %85, i64* %5, align 8
  br label %86

86:                                               ; preds = %67, %59, %46, %38, %28
  %87 = load i64, i64* %5, align 8
  ret i64 %87
}

declare dso_local %struct.cardstate* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @simple_strtol(i8*, i8**, i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isspace(i32) #2

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @gigaset_add_event(%struct.cardstate*, i32*, i32, i32*, i64, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @gig_dbg(i32, i8*) #1

declare dso_local i32 @gigaset_schedule_event(%struct.cardstate*) #1

declare dso_local i32 @wait_event(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
