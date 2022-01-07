; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_ucm.c_ib_ucm_add_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_ucm.c_ib_ucm_add_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32, i32, i32 }
%struct.ib_ucm_device = type { i32, %struct.TYPE_9__, %struct.TYPE_8__, %struct.ib_device* }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32* }

@RDMA_TRANSPORT_IB = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@dev_map = common dso_local global i32 0, align 4
@IB_UCM_MAX_DEVICES = common dso_local global i32 0, align 4
@overflow_maj = common dso_local global i64 0, align 8
@overflow_map = common dso_local global i32 0, align 4
@IB_UCM_BASE_DEV = common dso_local global i64 0, align 8
@ucm_fops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"ucm%d\00", align 1
@cm_class = common dso_local global i32 0, align 4
@ib_ucm_release_dev = common dso_local global i32 0, align 4
@dev_attr_ibdev = common dso_local global i32 0, align 4
@ucm_client = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*)* @ib_ucm_add_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ib_ucm_add_one(%struct.ib_device* %0) #0 {
  %2 = alloca %struct.ib_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.ib_ucm_device*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %2, align 8
  %6 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %7 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %12 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @rdma_node_get_transport(i32 %13)
  %15 = load i64, i64* @RDMA_TRANSPORT_IB, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %10, %1
  br label %151

18:                                               ; preds = %10
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.ib_ucm_device* @kzalloc(i32 48, i32 %19)
  store %struct.ib_ucm_device* %20, %struct.ib_ucm_device** %5, align 8
  %21 = load %struct.ib_ucm_device*, %struct.ib_ucm_device** %5, align 8
  %22 = icmp ne %struct.ib_ucm_device* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  br label %151

24:                                               ; preds = %18
  %25 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %26 = load %struct.ib_ucm_device*, %struct.ib_ucm_device** %5, align 8
  %27 = getelementptr inbounds %struct.ib_ucm_device, %struct.ib_ucm_device* %26, i32 0, i32 3
  store %struct.ib_device* %25, %struct.ib_device** %27, align 8
  %28 = load i32, i32* @dev_map, align 4
  %29 = load i32, i32* @IB_UCM_MAX_DEVICES, align 4
  %30 = call i32 @find_first_zero_bit(i32 %28, i32 %29)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @IB_UCM_MAX_DEVICES, align 4
  %33 = icmp sge i32 %31, %32
  br i1 %33, label %34, label %52

34:                                               ; preds = %24
  %35 = call i32 (...) @find_overflow_devnum()
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %148

39:                                               ; preds = %34
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @IB_UCM_MAX_DEVICES, align 4
  %42 = add nsw i32 %40, %41
  %43 = load %struct.ib_ucm_device*, %struct.ib_ucm_device** %5, align 8
  %44 = getelementptr inbounds %struct.ib_ucm_device, %struct.ib_ucm_device* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* @overflow_maj, align 8
  %48 = add nsw i64 %46, %47
  store i64 %48, i64* %4, align 8
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @overflow_map, align 4
  %51 = call i32 @set_bit(i32 %49, i32 %50)
  br label %63

52:                                               ; preds = %24
  %53 = load i32, i32* %3, align 4
  %54 = load %struct.ib_ucm_device*, %struct.ib_ucm_device** %5, align 8
  %55 = getelementptr inbounds %struct.ib_ucm_device, %struct.ib_ucm_device* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = load i64, i64* @IB_UCM_BASE_DEV, align 8
  %59 = add nsw i64 %57, %58
  store i64 %59, i64* %4, align 8
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @dev_map, align 4
  %62 = call i32 @set_bit(i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %52, %39
  %64 = load %struct.ib_ucm_device*, %struct.ib_ucm_device** %5, align 8
  %65 = getelementptr inbounds %struct.ib_ucm_device, %struct.ib_ucm_device* %64, i32 0, i32 1
  %66 = call i32 @cdev_init(%struct.TYPE_9__* %65, i32* @ucm_fops)
  %67 = load i32, i32* @THIS_MODULE, align 4
  %68 = load %struct.ib_ucm_device*, %struct.ib_ucm_device** %5, align 8
  %69 = getelementptr inbounds %struct.ib_ucm_device, %struct.ib_ucm_device* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 2
  store i32 %67, i32* %70, align 4
  %71 = load %struct.ib_ucm_device*, %struct.ib_ucm_device** %5, align 8
  %72 = getelementptr inbounds %struct.ib_ucm_device, %struct.ib_ucm_device* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load %struct.ib_ucm_device*, %struct.ib_ucm_device** %5, align 8
  %75 = getelementptr inbounds %struct.ib_ucm_device, %struct.ib_ucm_device* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @kobject_set_name(i32* %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %76)
  %78 = load %struct.ib_ucm_device*, %struct.ib_ucm_device** %5, align 8
  %79 = getelementptr inbounds %struct.ib_ucm_device, %struct.ib_ucm_device* %78, i32 0, i32 1
  %80 = load i64, i64* %4, align 8
  %81 = call i64 @cdev_add(%struct.TYPE_9__* %79, i64 %80, i32 1)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %63
  br label %148

84:                                               ; preds = %63
  %85 = load %struct.ib_ucm_device*, %struct.ib_ucm_device** %5, align 8
  %86 = getelementptr inbounds %struct.ib_ucm_device, %struct.ib_ucm_device* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 3
  store i32* @cm_class, i32** %87, align 8
  %88 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %89 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.ib_ucm_device*, %struct.ib_ucm_device** %5, align 8
  %92 = getelementptr inbounds %struct.ib_ucm_device, %struct.ib_ucm_device* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 2
  store i32 %90, i32* %93, align 8
  %94 = load %struct.ib_ucm_device*, %struct.ib_ucm_device** %5, align 8
  %95 = getelementptr inbounds %struct.ib_ucm_device, %struct.ib_ucm_device* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.ib_ucm_device*, %struct.ib_ucm_device** %5, align 8
  %99 = getelementptr inbounds %struct.ib_ucm_device, %struct.ib_ucm_device* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  store i32 %97, i32* %100, align 4
  %101 = load i32, i32* @ib_ucm_release_dev, align 4
  %102 = load %struct.ib_ucm_device*, %struct.ib_ucm_device** %5, align 8
  %103 = getelementptr inbounds %struct.ib_ucm_device, %struct.ib_ucm_device* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  store i32 %101, i32* %104, align 8
  %105 = load %struct.ib_ucm_device*, %struct.ib_ucm_device** %5, align 8
  %106 = getelementptr inbounds %struct.ib_ucm_device, %struct.ib_ucm_device* %105, i32 0, i32 2
  %107 = load %struct.ib_ucm_device*, %struct.ib_ucm_device** %5, align 8
  %108 = getelementptr inbounds %struct.ib_ucm_device, %struct.ib_ucm_device* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @dev_set_name(%struct.TYPE_8__* %106, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %109)
  %111 = load %struct.ib_ucm_device*, %struct.ib_ucm_device** %5, align 8
  %112 = getelementptr inbounds %struct.ib_ucm_device, %struct.ib_ucm_device* %111, i32 0, i32 2
  %113 = call i64 @device_register(%struct.TYPE_8__* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %84
  br label %130

116:                                              ; preds = %84
  %117 = load %struct.ib_ucm_device*, %struct.ib_ucm_device** %5, align 8
  %118 = getelementptr inbounds %struct.ib_ucm_device, %struct.ib_ucm_device* %117, i32 0, i32 2
  %119 = call i64 @device_create_file(%struct.TYPE_8__* %118, i32* @dev_attr_ibdev)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  br label %126

122:                                              ; preds = %116
  %123 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %124 = load %struct.ib_ucm_device*, %struct.ib_ucm_device** %5, align 8
  %125 = call i32 @ib_set_client_data(%struct.ib_device* %123, i32* @ucm_client, %struct.ib_ucm_device* %124)
  br label %151

126:                                              ; preds = %121
  %127 = load %struct.ib_ucm_device*, %struct.ib_ucm_device** %5, align 8
  %128 = getelementptr inbounds %struct.ib_ucm_device, %struct.ib_ucm_device* %127, i32 0, i32 2
  %129 = call i32 @device_unregister(%struct.TYPE_8__* %128)
  br label %130

130:                                              ; preds = %126, %115
  %131 = load %struct.ib_ucm_device*, %struct.ib_ucm_device** %5, align 8
  %132 = getelementptr inbounds %struct.ib_ucm_device, %struct.ib_ucm_device* %131, i32 0, i32 1
  %133 = call i32 @cdev_del(%struct.TYPE_9__* %132)
  %134 = load %struct.ib_ucm_device*, %struct.ib_ucm_device** %5, align 8
  %135 = getelementptr inbounds %struct.ib_ucm_device, %struct.ib_ucm_device* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @IB_UCM_MAX_DEVICES, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %143

139:                                              ; preds = %130
  %140 = load i32, i32* %3, align 4
  %141 = load i32, i32* @dev_map, align 4
  %142 = call i32 @clear_bit(i32 %140, i32 %141)
  br label %147

143:                                              ; preds = %130
  %144 = load i32, i32* %3, align 4
  %145 = load i32, i32* @overflow_map, align 4
  %146 = call i32 @clear_bit(i32 %144, i32 %145)
  br label %147

147:                                              ; preds = %143, %139
  br label %148

148:                                              ; preds = %147, %83, %38
  %149 = load %struct.ib_ucm_device*, %struct.ib_ucm_device** %5, align 8
  %150 = call i32 @kfree(%struct.ib_ucm_device* %149)
  br label %151

151:                                              ; preds = %148, %122, %23, %17
  ret void
}

declare dso_local i64 @rdma_node_get_transport(i32) #1

declare dso_local %struct.ib_ucm_device* @kzalloc(i32, i32) #1

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

declare dso_local i32 @find_overflow_devnum(...) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @cdev_init(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @kobject_set_name(i32*, i8*, i32) #1

declare dso_local i64 @cdev_add(%struct.TYPE_9__*, i64, i32) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i64 @device_register(%struct.TYPE_8__*) #1

declare dso_local i64 @device_create_file(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @ib_set_client_data(%struct.ib_device*, i32*, %struct.ib_ucm_device*) #1

declare dso_local i32 @device_unregister(%struct.TYPE_8__*) #1

declare dso_local i32 @cdev_del(%struct.TYPE_9__*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @kfree(%struct.ib_ucm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
