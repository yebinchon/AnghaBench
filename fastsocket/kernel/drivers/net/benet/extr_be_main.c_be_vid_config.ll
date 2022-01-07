; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_vid_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_vid_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i64, i32, %struct.TYPE_2__*, i64*, i64 }
%struct.TYPE_2__ = type { i32 }

@BE_NUM_VLANS_SUPPORTED = common dso_local global i32 0, align 4
@VLAN_GROUP_ARRAY_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Exhausted VLAN HW filters.\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Disabling HW VLAN filtering.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.be_adapter*)* @be_vid_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_vid_config(%struct.be_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.be_adapter*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %3, align 8
  %10 = load i32, i32* @BE_NUM_VLANS_SUPPORTED, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %4, align 8
  %13 = alloca i64, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %79

19:                                               ; preds = %1
  %20 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %24 = call i64 @be_max_vlans(%struct.be_adapter* %23)
  %25 = icmp sgt i64 %22, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %72

27:                                               ; preds = %19
  store i64 0, i64* %7, align 8
  br label %28

28:                                               ; preds = %47, %27
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @VLAN_GROUP_ARRAY_LEN, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %50

32:                                               ; preds = %28
  %33 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %34 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %33, i32 0, i32 3
  %35 = load i64*, i64** %34, align 8
  %36 = load i64, i64* %7, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %32
  %41 = load i64, i64* %7, align 8
  %42 = call i64 @cpu_to_le16(i64 %41)
  %43 = load i64, i64* %6, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %6, align 8
  %45 = getelementptr inbounds i64, i64* %13, i64 %43
  store i64 %42, i64* %45, align 8
  br label %46

46:                                               ; preds = %40, %32
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* %7, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %7, align 8
  br label %28

50:                                               ; preds = %28
  %51 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %52 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %53 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i64, i64* %6, align 8
  %56 = call i32 @be_cmd_vlan_config(%struct.be_adapter* %51, i32 %54, i64* %13, i64 %55, i32 1, i32 0)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %50
  %60 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %61 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %60, i32 0, i32 2
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = call i32 @dev_info(i32* %63, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %65 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %66 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %65, i32 0, i32 2
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = call i32 @dev_info(i32* %68, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %72

70:                                               ; preds = %50
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %79

72:                                               ; preds = %59, %26
  %73 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %74 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %75 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @be_cmd_vlan_config(%struct.be_adapter* %73, i32 %76, i64* null, i64 0, i32 1, i32 1)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %79

79:                                               ; preds = %72, %70, %18
  %80 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %80)
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @be_max_vlans(%struct.be_adapter*) #2

declare dso_local i64 @cpu_to_le16(i64) #2

declare dso_local i32 @be_cmd_vlan_config(%struct.be_adapter*, i32, i64*, i64, i32, i32) #2

declare dso_local i32 @dev_info(i32*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
