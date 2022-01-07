; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_iwcm.c_alloc_work_entries.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_iwcm.c_alloc_work_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwcm_id_private = type { i32 }
%struct.iwcm_work = type { i32, %struct.iwcm_id_private* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwcm_id_private*, i32)* @alloc_work_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_work_entries(%struct.iwcm_id_private* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwcm_id_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwcm_work*, align 8
  store %struct.iwcm_id_private* %0, %struct.iwcm_id_private** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %4, align 8
  %8 = getelementptr inbounds %struct.iwcm_id_private, %struct.iwcm_id_private* %7, i32 0, i32 0
  %9 = call i32 @list_empty(i32* %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  br label %14

14:                                               ; preds = %28, %2
  %15 = load i32, i32* %5, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %5, align 4
  %17 = icmp ne i32 %15, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %14
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.iwcm_work* @kmalloc(i32 16, i32 %19)
  store %struct.iwcm_work* %20, %struct.iwcm_work** %6, align 8
  %21 = load %struct.iwcm_work*, %struct.iwcm_work** %6, align 8
  %22 = icmp ne %struct.iwcm_work* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %4, align 8
  %25 = call i32 @dealloc_work_entries(%struct.iwcm_id_private* %24)
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %38

28:                                               ; preds = %18
  %29 = load %struct.iwcm_id_private*, %struct.iwcm_id_private** %4, align 8
  %30 = load %struct.iwcm_work*, %struct.iwcm_work** %6, align 8
  %31 = getelementptr inbounds %struct.iwcm_work, %struct.iwcm_work* %30, i32 0, i32 1
  store %struct.iwcm_id_private* %29, %struct.iwcm_id_private** %31, align 8
  %32 = load %struct.iwcm_work*, %struct.iwcm_work** %6, align 8
  %33 = getelementptr inbounds %struct.iwcm_work, %struct.iwcm_work* %32, i32 0, i32 0
  %34 = call i32 @INIT_LIST_HEAD(i32* %33)
  %35 = load %struct.iwcm_work*, %struct.iwcm_work** %6, align 8
  %36 = call i32 @put_work(%struct.iwcm_work* %35)
  br label %14

37:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %23
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local %struct.iwcm_work* @kmalloc(i32, i32) #1

declare dso_local i32 @dealloc_work_entries(%struct.iwcm_id_private*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @put_work(%struct.iwcm_work*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
