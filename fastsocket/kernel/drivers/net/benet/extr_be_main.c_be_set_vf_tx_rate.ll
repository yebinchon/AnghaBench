; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_set_vf_tx_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_set_vf_tx_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.be_adapter = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"tx rate must be between 100 and 10000 Mbps\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"tx rate %d on VF %d failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @be_set_vf_tx_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_set_vf_tx_rate(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.be_adapter*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.be_adapter* @netdev_priv(%struct.net_device* %10)
  store %struct.be_adapter* %11, %struct.be_adapter** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %13 = call i32 @sriov_enabled(%struct.be_adapter* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @EPERM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %81

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %21 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sge i32 %19, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %81

27:                                               ; preds = %18
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 100
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %7, align 4
  %32 = icmp sgt i32 %31, 10000
  br i1 %32, label %33, label %41

33:                                               ; preds = %30, %27
  %34 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %35 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %34, i32 0, i32 2
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = call i32 (i32*, i8*, ...) @dev_err(i32* %37, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %81

41:                                               ; preds = %30
  %42 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %43 = call i64 @lancer_chip(%struct.be_adapter* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sdiv i32 %47, 10
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  %51 = call i32 @be_cmd_set_profile_config(%struct.be_adapter* %46, i32 %48, i32 %50)
  store i32 %51, i32* %9, align 4
  br label %59

52:                                               ; preds = %41
  %53 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sdiv i32 %54, 10
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  %58 = call i32 @be_cmd_set_qos(%struct.be_adapter* %53, i32 %55, i32 %57)
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %52, %45
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %59
  %63 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %64 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %63, i32 0, i32 2
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 (i32*, i8*, ...) @dev_err(i32* %66, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %68)
  br label %79

70:                                               ; preds = %59
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %73 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %72, i32 0, i32 1
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store i32 %71, i32* %78, align 4
  br label %79

79:                                               ; preds = %70, %62
  %80 = load i32, i32* %9, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %79, %33, %24, %15
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local %struct.be_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @sriov_enabled(%struct.be_adapter*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i64 @lancer_chip(%struct.be_adapter*) #1

declare dso_local i32 @be_cmd_set_profile_config(%struct.be_adapter*, i32, i32) #1

declare dso_local i32 @be_cmd_set_qos(%struct.be_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
