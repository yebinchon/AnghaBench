; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/amba/extr_bus.c_amba_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/amba/extr_bus.c_amba_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amba_id = type { i32, i32 }
%struct.amba_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.amba_id* (%struct.amba_id*, %struct.amba_device*)* @amba_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.amba_id* @amba_lookup(%struct.amba_id* %0, %struct.amba_device* %1) #0 {
  %3 = alloca %struct.amba_id*, align 8
  %4 = alloca %struct.amba_device*, align 8
  %5 = alloca i32, align 4
  store %struct.amba_id* %0, %struct.amba_id** %3, align 8
  store %struct.amba_device* %1, %struct.amba_device** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %27, %2
  %7 = load %struct.amba_id*, %struct.amba_id** %3, align 8
  %8 = getelementptr inbounds %struct.amba_id, %struct.amba_id* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %30

11:                                               ; preds = %6
  %12 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %13 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.amba_id*, %struct.amba_id** %3, align 8
  %16 = getelementptr inbounds %struct.amba_id, %struct.amba_id* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %14, %17
  %19 = load %struct.amba_id*, %struct.amba_id** %3, align 8
  %20 = getelementptr inbounds %struct.amba_id, %struct.amba_id* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %18, %21
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %11
  br label %30

27:                                               ; preds = %11
  %28 = load %struct.amba_id*, %struct.amba_id** %3, align 8
  %29 = getelementptr inbounds %struct.amba_id, %struct.amba_id* %28, i32 1
  store %struct.amba_id* %29, %struct.amba_id** %3, align 8
  br label %6

30:                                               ; preds = %26, %6
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load %struct.amba_id*, %struct.amba_id** %3, align 8
  br label %36

35:                                               ; preds = %30
  br label %36

36:                                               ; preds = %35, %33
  %37 = phi %struct.amba_id* [ %34, %33 ], [ null, %35 ]
  ret %struct.amba_id* %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
