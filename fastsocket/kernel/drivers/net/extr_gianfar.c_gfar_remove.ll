; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_gianfar.c_gfar_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_gianfar.c_gfar_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.of_device = type { i32 }
%struct.gfar_private = type { i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.of_device*)* @gfar_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfar_remove(%struct.of_device* %0) #0 {
  %2 = alloca %struct.of_device*, align 8
  %3 = alloca %struct.gfar_private*, align 8
  store %struct.of_device* %0, %struct.of_device** %2, align 8
  %4 = load %struct.of_device*, %struct.of_device** %2, align 8
  %5 = getelementptr inbounds %struct.of_device, %struct.of_device* %4, i32 0, i32 0
  %6 = call %struct.gfar_private* @dev_get_drvdata(i32* %5)
  store %struct.gfar_private* %6, %struct.gfar_private** %3, align 8
  %7 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %8 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %13 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @of_node_put(i64 %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %18 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %23 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @of_node_put(i64 %24)
  br label %26

26:                                               ; preds = %21, %16
  %27 = load %struct.of_device*, %struct.of_device** %2, align 8
  %28 = getelementptr inbounds %struct.of_device, %struct.of_device* %27, i32 0, i32 0
  %29 = call i32 @dev_set_drvdata(i32* %28, i32* null)
  %30 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %31 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @unregister_netdev(i32 %32)
  %34 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %35 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @iounmap(i32 %36)
  %38 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %39 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @free_netdev(i32 %40)
  ret i32 0
}

declare dso_local %struct.gfar_private* @dev_get_drvdata(i32*) #1

declare dso_local i32 @of_node_put(i64) #1

declare dso_local i32 @dev_set_drvdata(i32*, i32*) #1

declare dso_local i32 @unregister_netdev(i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @free_netdev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
