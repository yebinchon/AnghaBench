; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_change_mtu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.qeth_card* }
%struct.qeth_card = type { i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"chgmtu\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%8x\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IPA_IP_FRAGMENTATION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qeth_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qeth_card*, align 8
  %7 = alloca [15 x i8], align 1
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 1
  %10 = load %struct.qeth_card*, %struct.qeth_card** %9, align 8
  store %struct.qeth_card* %10, %struct.qeth_card** %6, align 8
  %11 = load i32, i32* @TRACE, align 4
  %12 = call i32 @QETH_DBF_TEXT(i32 %11, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %13 = getelementptr inbounds [15 x i8], [15 x i8]* %7, i64 0, i64 0
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @sprintf(i8* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* @TRACE, align 4
  %17 = getelementptr inbounds [15 x i8], [15 x i8]* %7, i64 0, i64 0
  %18 = call i32 @QETH_DBF_TEXT(i32 %16, i32 4, i8* %17)
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 64
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %47

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = icmp sgt i32 %25, 65535
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %47

30:                                               ; preds = %24
  %31 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %32 = load i32, i32* @IPA_IP_FRAGMENTATION, align 4
  %33 = call i32 @qeth_is_supported(%struct.qeth_card* %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %30
  %36 = load %struct.qeth_card*, %struct.qeth_card** %6, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @qeth_mtu_is_valid(%struct.qeth_card* %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %47

43:                                               ; preds = %35, %30
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.net_device*, %struct.net_device** %4, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %43, %40, %27, %21
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @qeth_is_supported(%struct.qeth_card*, i32) #1

declare dso_local i32 @qeth_mtu_is_valid(%struct.qeth_card*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
