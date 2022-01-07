; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_wmi.c_wmi_install_notify_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_wmi.c_wmi_install_notify_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi_block = type { i8*, i64 }

@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@AE_NOT_EXIST = common dso_local global i32 0, align 4
@AE_ALREADY_ACQUIRED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wmi_install_notify_handler(i8* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.wmi_block*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i64, i64* %6, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12, %3
  %16 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %16, i32* %4, align 4
  br label %41

17:                                               ; preds = %12
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @find_guid(i8* %18, %struct.wmi_block** %8)
  %20 = load %struct.wmi_block*, %struct.wmi_block** %8, align 8
  %21 = icmp ne %struct.wmi_block* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @AE_NOT_EXIST, align 4
  store i32 %23, i32* %4, align 4
  br label %41

24:                                               ; preds = %17
  %25 = load %struct.wmi_block*, %struct.wmi_block** %8, align 8
  %26 = getelementptr inbounds %struct.wmi_block, %struct.wmi_block* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @AE_ALREADY_ACQUIRED, align 4
  store i32 %30, i32* %4, align 4
  br label %41

31:                                               ; preds = %24
  %32 = load i64, i64* %6, align 8
  %33 = load %struct.wmi_block*, %struct.wmi_block** %8, align 8
  %34 = getelementptr inbounds %struct.wmi_block, %struct.wmi_block* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load %struct.wmi_block*, %struct.wmi_block** %8, align 8
  %37 = getelementptr inbounds %struct.wmi_block, %struct.wmi_block* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  %38 = load %struct.wmi_block*, %struct.wmi_block** %8, align 8
  %39 = call i32 @wmi_method_enable(%struct.wmi_block* %38, i32 1)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %31, %29, %22, %15
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @find_guid(i8*, %struct.wmi_block**) #1

declare dso_local i32 @wmi_method_enable(%struct.wmi_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
