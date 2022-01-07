; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_socket_sysfs.c_pccard_store_card_pm_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_socket_sysfs.c_pccard_store_card_pm_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.pcmcia_socket = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@SOCKET_SUSPEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@ENODEV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @pccard_store_card_pm_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pccard_store_card_pm_state(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.pcmcia_socket*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i64, i64* @EINVAL, align 8
  %13 = sub i64 0, %12
  store i64 %13, i64* %10, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.pcmcia_socket* @to_socket(%struct.device* %14)
  store %struct.pcmcia_socket* %15, %struct.pcmcia_socket** %11, align 8
  %16 = load i64, i64* %9, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i64, i64* @EINVAL, align 8
  %20 = sub i64 0, %19
  store i64 %20, i64* %5, align 8
  br label %60

21:                                               ; preds = %4
  %22 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %11, align 8
  %23 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @SOCKET_SUSPEND, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %21
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @strncmp(i8* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %11, align 8
  %34 = call i64 @pcmcia_suspend_card(%struct.pcmcia_socket* %33)
  store i64 %34, i64* %10, align 8
  br label %50

35:                                               ; preds = %28, %21
  %36 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %11, align 8
  %37 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @SOCKET_SUSPEND, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %35
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 @strncmp(i8* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %11, align 8
  %48 = call i64 @pcmcia_resume_card(%struct.pcmcia_socket* %47)
  store i64 %48, i64* %10, align 8
  br label %49

49:                                               ; preds = %46, %42, %35
  br label %50

50:                                               ; preds = %49, %32
  %51 = load i64, i64* %10, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i64, i64* @ENODEV, align 8
  %55 = sub i64 0, %54
  br label %58

56:                                               ; preds = %50
  %57 = load i64, i64* %9, align 8
  br label %58

58:                                               ; preds = %56, %53
  %59 = phi i64 [ %55, %53 ], [ %57, %56 ]
  store i64 %59, i64* %5, align 8
  br label %60

60:                                               ; preds = %58, %18
  %61 = load i64, i64* %5, align 8
  ret i64 %61
}

declare dso_local %struct.pcmcia_socket* @to_socket(%struct.device*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @pcmcia_suspend_card(%struct.pcmcia_socket*) #1

declare dso_local i64 @pcmcia_resume_card(%struct.pcmcia_socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
