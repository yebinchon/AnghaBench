; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/of/extr_of_mdio.c_of_phy_connect_fixed_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/of/extr_of_mdio.c_of_phy_connect_fixed_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }
%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.device_node = type { i32 }

@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"fixed-link\00", align 1
@PHY_ID_FMT = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.phy_device* @of_phy_connect_fixed_link(%struct.net_device* %0, void (%struct.net_device*)* %1, i32 %2) #0 {
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca void (%struct.net_device*)*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.phy_device*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store void (%struct.net_device*)* %1, void (%struct.net_device*)** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %16 = add nsw i32 %15, 3
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %9, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %10, align 8
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = icmp ne %struct.TYPE_3__* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %3
  store %struct.phy_device* null, %struct.phy_device** %4, align 8
  store i32 1, i32* %14, align 4
  br label %64

26:                                               ; preds = %3
  %27 = load %struct.net_device*, %struct.net_device** %5, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = call %struct.device_node* @dev_archdata_get_node(i32* %31)
  store %struct.device_node* %32, %struct.device_node** %8, align 8
  %33 = load %struct.device_node*, %struct.device_node** %8, align 8
  %34 = icmp ne %struct.device_node* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %26
  store %struct.phy_device* null, %struct.phy_device** %4, align 8
  store i32 1, i32* %14, align 4
  br label %64

36:                                               ; preds = %26
  %37 = load %struct.device_node*, %struct.device_node** %8, align 8
  %38 = call i32* @of_get_property(%struct.device_node* %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %13)
  store i32* %38, i32** %12, align 8
  %39 = load i32*, i32** %12, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i32, i32* %13, align 4
  %43 = sext i32 %42 to i64
  %44 = icmp ult i64 %43, 4
  br i1 %44, label %45, label %46

45:                                               ; preds = %41, %36
  store %struct.phy_device* null, %struct.phy_device** %4, align 8
  store i32 1, i32* %14, align 4
  br label %64

46:                                               ; preds = %41
  %47 = load i8*, i8** @PHY_ID_FMT, align 8
  %48 = load i32*, i32** %12, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @sprintf(i8* %19, i8* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load %struct.net_device*, %struct.net_device** %5, align 8
  %53 = load void (%struct.net_device*)*, void (%struct.net_device*)** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call %struct.phy_device* @phy_connect(%struct.net_device* %52, i8* %19, void (%struct.net_device*)* %53, i32 0, i32 %54)
  store %struct.phy_device* %55, %struct.phy_device** %11, align 8
  %56 = load %struct.phy_device*, %struct.phy_device** %11, align 8
  %57 = call i64 @IS_ERR(%struct.phy_device* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %46
  br label %62

60:                                               ; preds = %46
  %61 = load %struct.phy_device*, %struct.phy_device** %11, align 8
  br label %62

62:                                               ; preds = %60, %59
  %63 = phi %struct.phy_device* [ null, %59 ], [ %61, %60 ]
  store %struct.phy_device* %63, %struct.phy_device** %4, align 8
  store i32 1, i32* %14, align 4
  br label %64

64:                                               ; preds = %62, %45, %35, %25
  %65 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %65)
  %66 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  ret %struct.phy_device* %66
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.device_node* @dev_archdata_get_node(i32*) #2

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #2

declare dso_local %struct.phy_device* @phy_connect(%struct.net_device*, i8*, void (%struct.net_device*)*, i32, i32) #2

declare dso_local i64 @IS_ERR(%struct.phy_device*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
