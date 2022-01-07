; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_user_mad.c_ib_umad_add_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_user_mad.c_ib_umad_add_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i64, i32 }
%struct.ib_umad_device = type { i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ib_umad_device* }

@RDMA_TRANSPORT_IB = common dso_local global i64 0, align 8
@RDMA_NODE_IB_SWITCH = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@umad_client = common dso_local global i32 0, align 4
@ib_umad_release_dev = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*)* @ib_umad_add_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ib_umad_add_one(%struct.ib_device* %0) #0 {
  %2 = alloca %struct.ib_device*, align 8
  %3 = alloca %struct.ib_umad_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %2, align 8
  %7 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %8 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = call i64 @rdma_node_get_transport(i64 %9)
  %11 = load i64, i64* @RDMA_TRANSPORT_IB, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %107

14:                                               ; preds = %1
  %15 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %16 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @RDMA_NODE_IB_SWITCH, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %25

21:                                               ; preds = %14
  store i32 1, i32* %4, align 4
  %22 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %23 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %21, %20
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %4, align 4
  %28 = sub nsw i32 %26, %27
  %29 = add nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 4
  %32 = add i64 24, %31
  %33 = trunc i64 %32 to i32
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.ib_umad_device* @kzalloc(i32 %33, i32 %34)
  store %struct.ib_umad_device* %35, %struct.ib_umad_device** %3, align 8
  %36 = load %struct.ib_umad_device*, %struct.ib_umad_device** %3, align 8
  %37 = icmp ne %struct.ib_umad_device* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %25
  br label %107

39:                                               ; preds = %25
  %40 = load %struct.ib_umad_device*, %struct.ib_umad_device** %3, align 8
  %41 = getelementptr inbounds %struct.ib_umad_device, %struct.ib_umad_device* %40, i32 0, i32 2
  %42 = call i32 @kref_init(i32* %41)
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.ib_umad_device*, %struct.ib_umad_device** %3, align 8
  %45 = getelementptr inbounds %struct.ib_umad_device, %struct.ib_umad_device* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.ib_umad_device*, %struct.ib_umad_device** %3, align 8
  %48 = getelementptr inbounds %struct.ib_umad_device, %struct.ib_umad_device* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %79, %39
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp sle i32 %51, %52
  br i1 %53, label %54, label %82

54:                                               ; preds = %50
  %55 = load %struct.ib_umad_device*, %struct.ib_umad_device** %3, align 8
  %56 = load %struct.ib_umad_device*, %struct.ib_umad_device** %3, align 8
  %57 = getelementptr inbounds %struct.ib_umad_device, %struct.ib_umad_device* %56, i32 0, i32 3
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %4, align 4
  %61 = sub nsw i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  store %struct.ib_umad_device* %55, %struct.ib_umad_device** %64, align 8
  %65 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.ib_umad_device*, %struct.ib_umad_device** %3, align 8
  %68 = getelementptr inbounds %struct.ib_umad_device, %struct.ib_umad_device* %67, i32 0, i32 3
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %4, align 4
  %72 = sub nsw i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 %73
  %75 = call i64 @ib_umad_init_port(%struct.ib_device* %65, i32 %66, %struct.TYPE_3__* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %54
  br label %86

78:                                               ; preds = %54
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %50

82:                                               ; preds = %50
  %83 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %84 = load %struct.ib_umad_device*, %struct.ib_umad_device** %3, align 8
  %85 = call i32 @ib_set_client_data(%struct.ib_device* %83, i32* @umad_client, %struct.ib_umad_device* %84)
  br label %107

86:                                               ; preds = %77
  br label %87

87:                                               ; preds = %92, %86
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %4, align 4
  %91 = icmp sge i32 %89, %90
  br i1 %91, label %92, label %102

92:                                               ; preds = %87
  %93 = load %struct.ib_umad_device*, %struct.ib_umad_device** %3, align 8
  %94 = getelementptr inbounds %struct.ib_umad_device, %struct.ib_umad_device* %93, i32 0, i32 3
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* %4, align 4
  %98 = sub nsw i32 %96, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i64 %99
  %101 = call i32 @ib_umad_kill_port(%struct.TYPE_3__* %100)
  br label %87

102:                                              ; preds = %87
  %103 = load %struct.ib_umad_device*, %struct.ib_umad_device** %3, align 8
  %104 = getelementptr inbounds %struct.ib_umad_device, %struct.ib_umad_device* %103, i32 0, i32 2
  %105 = load i32, i32* @ib_umad_release_dev, align 4
  %106 = call i32 @kref_put(i32* %104, i32 %105)
  br label %107

107:                                              ; preds = %102, %82, %38, %13
  ret void
}

declare dso_local i64 @rdma_node_get_transport(i64) #1

declare dso_local %struct.ib_umad_device* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i64 @ib_umad_init_port(%struct.ib_device*, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @ib_set_client_data(%struct.ib_device*, i32*, %struct.ib_umad_device*) #1

declare dso_local i32 @ib_umad_kill_port(%struct.TYPE_3__*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
