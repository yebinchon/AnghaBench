; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_vmlogrdr.c_vmlogrdr_pm_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_vmlogrdr.c_vmlogrdr_pm_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.vmlogrdr_priv_t = type { i32, i64 }

@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"vmlogrdr: device %s is busy. Refuse to suspend.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @vmlogrdr_pm_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmlogrdr_pm_prepare(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.vmlogrdr_priv_t*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.vmlogrdr_priv_t* @dev_get_drvdata(%struct.device* %5)
  store %struct.vmlogrdr_priv_t* %6, %struct.vmlogrdr_priv_t** %4, align 8
  store i32 0, i32* %3, align 4
  %7 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %4, align 8
  %8 = icmp ne %struct.vmlogrdr_priv_t* %7, null
  br i1 %8, label %9, label %24

9:                                                ; preds = %1
  %10 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %4, align 8
  %11 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %10, i32 0, i32 0
  %12 = call i32 @spin_lock_bh(i32* %11)
  %13 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %4, align 8
  %14 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %9
  %18 = load i32, i32* @EBUSY, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %17, %9
  %21 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %4, align 8
  %22 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %21, i32 0, i32 0
  %23 = call i32 @spin_unlock_bh(i32* %22)
  br label %24

24:                                               ; preds = %20, %1
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load %struct.device*, %struct.device** %2, align 8
  %29 = call i32 @dev_name(%struct.device* %28)
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %27, %24
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local %struct.vmlogrdr_priv_t* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
