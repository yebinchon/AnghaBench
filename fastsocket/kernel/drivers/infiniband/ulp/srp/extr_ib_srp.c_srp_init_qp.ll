; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_init_qp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_init_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srp_target_port = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ib_qp = type { i32 }
%struct.ib_qp_attr = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IB_QPS_INIT = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_READ = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_WRITE = common dso_local global i32 0, align 4
@IB_QP_STATE = common dso_local global i32 0, align 4
@IB_QP_PKEY_INDEX = common dso_local global i32 0, align 4
@IB_QP_ACCESS_FLAGS = common dso_local global i32 0, align 4
@IB_QP_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.srp_target_port*, %struct.ib_qp*)* @srp_init_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srp_init_qp(%struct.srp_target_port* %0, %struct.ib_qp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.srp_target_port*, align 8
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca %struct.ib_qp_attr*, align 8
  %7 = alloca i32, align 4
  store %struct.srp_target_port* %0, %struct.srp_target_port** %4, align 8
  store %struct.ib_qp* %1, %struct.ib_qp** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.ib_qp_attr* @kmalloc(i32 16, i32 %8)
  store %struct.ib_qp_attr* %9, %struct.ib_qp_attr** %6, align 8
  %10 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %11 = icmp ne %struct.ib_qp_attr* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %69

15:                                               ; preds = %2
  %16 = load %struct.srp_target_port*, %struct.srp_target_port** %4, align 8
  %17 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.srp_target_port*, %struct.srp_target_port** %4, align 8
  %24 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.srp_target_port*, %struct.srp_target_port** %4, align 8
  %29 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @be16_to_cpu(i32 %31)
  %33 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %34 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %33, i32 0, i32 3
  %35 = call i32 @ib_find_pkey(i32 %22, i32 %27, i32 %32, i32* %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %15
  br label %65

39:                                               ; preds = %15
  %40 = load i32, i32* @IB_QPS_INIT, align 4
  %41 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %42 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @IB_ACCESS_REMOTE_READ, align 4
  %44 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %45 = or i32 %43, %44
  %46 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %47 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.srp_target_port*, %struct.srp_target_port** %4, align 8
  %49 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %54 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %56 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %57 = load i32, i32* @IB_QP_STATE, align 4
  %58 = load i32, i32* @IB_QP_PKEY_INDEX, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @IB_QP_ACCESS_FLAGS, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @IB_QP_PORT, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @ib_modify_qp(%struct.ib_qp* %55, %struct.ib_qp_attr* %56, i32 %63)
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %39, %38
  %66 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %67 = call i32 @kfree(%struct.ib_qp_attr* %66)
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %65, %12
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.ib_qp_attr* @kmalloc(i32, i32) #1

declare dso_local i32 @ib_find_pkey(i32, i32, i32, i32*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @ib_modify_qp(%struct.ib_qp*, %struct.ib_qp_attr*, i32) #1

declare dso_local i32 @kfree(%struct.ib_qp_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
