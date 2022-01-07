; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_new_cm_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_new_cm_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srp_target_port = type { %struct.ib_cm_id*, %struct.TYPE_4__* }
%struct.ib_cm_id = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@srp_cm_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.srp_target_port*)* @srp_new_cm_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srp_new_cm_id(%struct.srp_target_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.srp_target_port*, align 8
  %4 = alloca %struct.ib_cm_id*, align 8
  store %struct.srp_target_port* %0, %struct.srp_target_port** %3, align 8
  %5 = load %struct.srp_target_port*, %struct.srp_target_port** %3, align 8
  %6 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %5, i32 0, i32 1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @srp_cm_handler, align 4
  %13 = load %struct.srp_target_port*, %struct.srp_target_port** %3, align 8
  %14 = call %struct.ib_cm_id* @ib_create_cm_id(i32 %11, i32 %12, %struct.srp_target_port* %13)
  store %struct.ib_cm_id* %14, %struct.ib_cm_id** %4, align 8
  %15 = load %struct.ib_cm_id*, %struct.ib_cm_id** %4, align 8
  %16 = call i64 @IS_ERR(%struct.ib_cm_id* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.ib_cm_id*, %struct.ib_cm_id** %4, align 8
  %20 = call i32 @PTR_ERR(%struct.ib_cm_id* %19)
  store i32 %20, i32* %2, align 4
  br label %35

21:                                               ; preds = %1
  %22 = load %struct.srp_target_port*, %struct.srp_target_port** %3, align 8
  %23 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %22, i32 0, i32 0
  %24 = load %struct.ib_cm_id*, %struct.ib_cm_id** %23, align 8
  %25 = icmp ne %struct.ib_cm_id* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.srp_target_port*, %struct.srp_target_port** %3, align 8
  %28 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %27, i32 0, i32 0
  %29 = load %struct.ib_cm_id*, %struct.ib_cm_id** %28, align 8
  %30 = call i32 @ib_destroy_cm_id(%struct.ib_cm_id* %29)
  br label %31

31:                                               ; preds = %26, %21
  %32 = load %struct.ib_cm_id*, %struct.ib_cm_id** %4, align 8
  %33 = load %struct.srp_target_port*, %struct.srp_target_port** %3, align 8
  %34 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %33, i32 0, i32 0
  store %struct.ib_cm_id* %32, %struct.ib_cm_id** %34, align 8
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %31, %18
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.ib_cm_id* @ib_create_cm_id(i32, i32, %struct.srp_target_port*) #1

declare dso_local i64 @IS_ERR(%struct.ib_cm_id*) #1

declare dso_local i32 @PTR_ERR(%struct.ib_cm_id*) #1

declare dso_local i32 @ib_destroy_cm_id(%struct.ib_cm_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
