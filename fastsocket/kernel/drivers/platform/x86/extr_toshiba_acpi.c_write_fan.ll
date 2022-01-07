; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_toshiba_acpi.c_write_fan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_toshiba_acpi.c_write_fan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c" force_on : %i\00", align 1
@HCI_FAN = common dso_local global i32 0, align 4
@HCI_SUCCESS = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i64 0, align 8
@force_fan = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64)* @write_fan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @write_fan(i8* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @sscanf(i8* %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %6)
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %30

11:                                               ; preds = %2
  %12 = load i32, i32* %6, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %11
  %15 = load i32, i32* %6, align 4
  %16 = icmp sle i32 %15, 1
  br i1 %16, label %17, label %30

17:                                               ; preds = %14
  %18 = load i32, i32* @HCI_FAN, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @hci_write1(i32 %18, i32 %19, i64* %7)
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @HCI_SUCCESS, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load i64, i64* @EFAULT, align 8
  %26 = sub i64 0, %25
  store i64 %26, i64* %3, align 8
  br label %35

27:                                               ; preds = %17
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* @force_fan, align 4
  br label %29

29:                                               ; preds = %27
  br label %33

30:                                               ; preds = %14, %11, %2
  %31 = load i64, i64* @EINVAL, align 8
  %32 = sub i64 0, %31
  store i64 %32, i64* %3, align 8
  br label %35

33:                                               ; preds = %29
  %34 = load i64, i64* %5, align 8
  store i64 %34, i64* %3, align 8
  br label %35

35:                                               ; preds = %33, %30, %24
  %36 = load i64, i64* %3, align 8
  ret i64 %36
}

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @hci_write1(i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
