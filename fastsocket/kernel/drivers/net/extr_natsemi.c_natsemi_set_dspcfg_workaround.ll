; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_natsemi.c_natsemi_set_dspcfg_workaround.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_natsemi.c_natsemi_set_dspcfg_workaround.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.netdev_private = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @natsemi_set_dspcfg_workaround to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @natsemi_set_dspcfg_workaround(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.netdev_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call i32 @to_net_dev(%struct.device* %13)
  %15 = call %struct.netdev_private* @netdev_priv(i32 %14)
  store %struct.netdev_private* %15, %struct.netdev_private** %10, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = load i64, i64* %9, align 8
  %18 = sub i64 %17, 1
  %19 = call i32 @strncmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %16, i64 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %4
  %22 = load i8*, i8** %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = sub i64 %23, 1
  %25 = call i32 @strncmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %22, i64 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21, %4
  store i32 1, i32* %11, align 4
  br label %44

28:                                               ; preds = %21
  %29 = load i8*, i8** %8, align 8
  %30 = load i64, i64* %9, align 8
  %31 = sub i64 %30, 1
  %32 = call i32 @strncmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %29, i64 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load i8*, i8** %8, align 8
  %36 = load i64, i64* %9, align 8
  %37 = sub i64 %36, 1
  %38 = call i32 @strncmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* %35, i64 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %34, %28
  store i32 0, i32* %11, align 4
  br label %43

41:                                               ; preds = %34
  %42 = load i64, i64* %9, align 8
  store i64 %42, i64* %5, align 8
  br label %57

43:                                               ; preds = %40
  br label %44

44:                                               ; preds = %43, %27
  %45 = load %struct.netdev_private*, %struct.netdev_private** %10, align 8
  %46 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %45, i32 0, i32 1
  %47 = load i64, i64* %12, align 8
  %48 = call i32 @spin_lock_irqsave(i32* %46, i64 %47)
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.netdev_private*, %struct.netdev_private** %10, align 8
  %51 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.netdev_private*, %struct.netdev_private** %10, align 8
  %53 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %52, i32 0, i32 1
  %54 = load i64, i64* %12, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i64 %54)
  %56 = load i64, i64* %9, align 8
  store i64 %56, i64* %5, align 8
  br label %57

57:                                               ; preds = %44, %41
  %58 = load i64, i64* %5, align 8
  ret i64 %58
}

declare dso_local %struct.netdev_private* @netdev_priv(i32) #1

declare dso_local i32 @to_net_dev(%struct.device*) #1

declare dso_local i32 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
