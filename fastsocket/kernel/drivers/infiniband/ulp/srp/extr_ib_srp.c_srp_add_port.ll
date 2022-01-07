; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_add_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_add_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srp_host = type { %struct.TYPE_7__, i32, %struct.srp_device*, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32* }
%struct.srp_device = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@srp_class = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"srp-%s-%d\00", align 1
@dev_attr_add_target = common dso_local global i32 0, align 4
@dev_attr_ibdev = common dso_local global i32 0, align 4
@dev_attr_port = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.srp_host* (%struct.srp_device*, i32)* @srp_add_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.srp_host* @srp_add_port(%struct.srp_device* %0, i32 %1) #0 {
  %3 = alloca %struct.srp_host*, align 8
  %4 = alloca %struct.srp_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.srp_host*, align 8
  store %struct.srp_device* %0, %struct.srp_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.srp_host* @kzalloc(i32 48, i32 %7)
  store %struct.srp_host* %8, %struct.srp_host** %6, align 8
  %9 = load %struct.srp_host*, %struct.srp_host** %6, align 8
  %10 = icmp ne %struct.srp_host* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.srp_host* null, %struct.srp_host** %3, align 8
  br label %80

12:                                               ; preds = %2
  %13 = load %struct.srp_host*, %struct.srp_host** %6, align 8
  %14 = getelementptr inbounds %struct.srp_host, %struct.srp_host* %13, i32 0, i32 5
  %15 = call i32 @INIT_LIST_HEAD(i32* %14)
  %16 = load %struct.srp_host*, %struct.srp_host** %6, align 8
  %17 = getelementptr inbounds %struct.srp_host, %struct.srp_host* %16, i32 0, i32 4
  %18 = call i32 @spin_lock_init(i32* %17)
  %19 = load %struct.srp_host*, %struct.srp_host** %6, align 8
  %20 = getelementptr inbounds %struct.srp_host, %struct.srp_host* %19, i32 0, i32 3
  %21 = call i32 @init_completion(i32* %20)
  %22 = load %struct.srp_device*, %struct.srp_device** %4, align 8
  %23 = load %struct.srp_host*, %struct.srp_host** %6, align 8
  %24 = getelementptr inbounds %struct.srp_host, %struct.srp_host* %23, i32 0, i32 2
  store %struct.srp_device* %22, %struct.srp_device** %24, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.srp_host*, %struct.srp_host** %6, align 8
  %27 = getelementptr inbounds %struct.srp_host, %struct.srp_host* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = load %struct.srp_host*, %struct.srp_host** %6, align 8
  %29 = getelementptr inbounds %struct.srp_host, %struct.srp_host* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  store i32* @srp_class, i32** %30, align 8
  %31 = load %struct.srp_device*, %struct.srp_device** %4, align 8
  %32 = getelementptr inbounds %struct.srp_device, %struct.srp_device* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.srp_host*, %struct.srp_host** %6, align 8
  %37 = getelementptr inbounds %struct.srp_host, %struct.srp_host* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 8
  %39 = load %struct.srp_host*, %struct.srp_host** %6, align 8
  %40 = getelementptr inbounds %struct.srp_host, %struct.srp_host* %39, i32 0, i32 0
  %41 = load %struct.srp_device*, %struct.srp_device** %4, align 8
  %42 = getelementptr inbounds %struct.srp_device, %struct.srp_device* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @dev_set_name(%struct.TYPE_7__* %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %46)
  %48 = load %struct.srp_host*, %struct.srp_host** %6, align 8
  %49 = getelementptr inbounds %struct.srp_host, %struct.srp_host* %48, i32 0, i32 0
  %50 = call i64 @device_register(%struct.TYPE_7__* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %12
  br label %77

53:                                               ; preds = %12
  %54 = load %struct.srp_host*, %struct.srp_host** %6, align 8
  %55 = getelementptr inbounds %struct.srp_host, %struct.srp_host* %54, i32 0, i32 0
  %56 = call i64 @device_create_file(%struct.TYPE_7__* %55, i32* @dev_attr_add_target)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %73

59:                                               ; preds = %53
  %60 = load %struct.srp_host*, %struct.srp_host** %6, align 8
  %61 = getelementptr inbounds %struct.srp_host, %struct.srp_host* %60, i32 0, i32 0
  %62 = call i64 @device_create_file(%struct.TYPE_7__* %61, i32* @dev_attr_ibdev)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %73

65:                                               ; preds = %59
  %66 = load %struct.srp_host*, %struct.srp_host** %6, align 8
  %67 = getelementptr inbounds %struct.srp_host, %struct.srp_host* %66, i32 0, i32 0
  %68 = call i64 @device_create_file(%struct.TYPE_7__* %67, i32* @dev_attr_port)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %73

71:                                               ; preds = %65
  %72 = load %struct.srp_host*, %struct.srp_host** %6, align 8
  store %struct.srp_host* %72, %struct.srp_host** %3, align 8
  br label %80

73:                                               ; preds = %70, %64, %58
  %74 = load %struct.srp_host*, %struct.srp_host** %6, align 8
  %75 = getelementptr inbounds %struct.srp_host, %struct.srp_host* %74, i32 0, i32 0
  %76 = call i32 @device_unregister(%struct.TYPE_7__* %75)
  br label %77

77:                                               ; preds = %73, %52
  %78 = load %struct.srp_host*, %struct.srp_host** %6, align 8
  %79 = call i32 @kfree(%struct.srp_host* %78)
  store %struct.srp_host* null, %struct.srp_host** %3, align 8
  br label %80

80:                                               ; preds = %77, %71, %11
  %81 = load %struct.srp_host*, %struct.srp_host** %3, align 8
  ret %struct.srp_host* %81
}

declare dso_local %struct.srp_host* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_7__*, i8*, i32, i32) #1

declare dso_local i64 @device_register(%struct.TYPE_7__*) #1

declare dso_local i64 @device_create_file(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @device_unregister(%struct.TYPE_7__*) #1

declare dso_local i32 @kfree(%struct.srp_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
