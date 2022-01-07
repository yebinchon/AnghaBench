; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_verbs.c_qib_modify_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_verbs.c_qib_modify_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_device_modify = type { i32, i32 }
%struct.qib_devdata = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.qib_ibport }
%struct.qib_ibport = type { i32 }

@IB_DEVICE_MODIFY_SYS_IMAGE_GUID = common dso_local global i32 0, align 4
@IB_DEVICE_MODIFY_NODE_DESC = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ib_qib_sys_image_guid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, %struct.ib_device_modify*)* @qib_modify_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_modify_device(%struct.ib_device* %0, i32 %1, %struct.ib_device_modify* %2) #0 {
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_device_modify*, align 8
  %7 = alloca %struct.qib_devdata*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.qib_ibport*, align 8
  %11 = alloca %struct.qib_ibport*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ib_device_modify* %2, %struct.ib_device_modify** %6, align 8
  %12 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %13 = call %struct.qib_devdata* @dd_from_ibdev(%struct.ib_device* %12)
  store %struct.qib_devdata* %13, %struct.qib_devdata** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @IB_DEVICE_MODIFY_SYS_IMAGE_GUID, align 4
  %16 = load i32, i32* @IB_DEVICE_MODIFY_NODE_DESC, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = and i32 %14, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %9, align 4
  br label %88

24:                                               ; preds = %3
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @IB_DEVICE_MODIFY_NODE_DESC, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %57

29:                                               ; preds = %24
  %30 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %31 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ib_device_modify*, %struct.ib_device_modify** %6, align 8
  %34 = getelementptr inbounds %struct.ib_device_modify, %struct.ib_device_modify* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @memcpy(i32 %32, i32 %35, i32 64)
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %53, %29
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %40 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ult i32 %38, %41
  br i1 %42, label %43, label %56

43:                                               ; preds = %37
  %44 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %45 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store %struct.qib_ibport* %50, %struct.qib_ibport** %10, align 8
  %51 = load %struct.qib_ibport*, %struct.qib_ibport** %10, align 8
  %52 = call i32 @qib_node_desc_chg(%struct.qib_ibport* %51)
  br label %53

53:                                               ; preds = %43
  %54 = load i32, i32* %8, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %37

56:                                               ; preds = %37
  br label %57

57:                                               ; preds = %56, %24
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @IB_DEVICE_MODIFY_SYS_IMAGE_GUID, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %87

62:                                               ; preds = %57
  %63 = load %struct.ib_device_modify*, %struct.ib_device_modify** %6, align 8
  %64 = getelementptr inbounds %struct.ib_device_modify, %struct.ib_device_modify* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @cpu_to_be64(i32 %65)
  store i32 %66, i32* @ib_qib_sys_image_guid, align 4
  store i32 0, i32* %8, align 4
  br label %67

67:                                               ; preds = %83, %62
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %70 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp ult i32 %68, %71
  br i1 %72, label %73, label %86

73:                                               ; preds = %67
  %74 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %75 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  store %struct.qib_ibport* %80, %struct.qib_ibport** %11, align 8
  %81 = load %struct.qib_ibport*, %struct.qib_ibport** %11, align 8
  %82 = call i32 @qib_sys_guid_chg(%struct.qib_ibport* %81)
  br label %83

83:                                               ; preds = %73
  %84 = load i32, i32* %8, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %8, align 4
  br label %67

86:                                               ; preds = %67
  br label %87

87:                                               ; preds = %86, %57
  store i32 0, i32* %9, align 4
  br label %88

88:                                               ; preds = %87, %21
  %89 = load i32, i32* %9, align 4
  ret i32 %89
}

declare dso_local %struct.qib_devdata* @dd_from_ibdev(%struct.ib_device*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @qib_node_desc_chg(%struct.qib_ibport*) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @qib_sys_guid_chg(%struct.qib_ibport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
