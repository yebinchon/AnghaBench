; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_clear.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.be_adapter*)* @be_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_clear(%struct.be_adapter* %0) #0 {
  %2 = alloca %struct.be_adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %2, align 8
  %4 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %5 = call i32 @be_cancel_worker(%struct.be_adapter* %4)
  %6 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %7 = call i64 @sriov_enabled(%struct.be_adapter* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %11 = call i32 @be_vf_clear(%struct.be_adapter* %10)
  br label %12

12:                                               ; preds = %9, %1
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %33, %12
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, 1
  %19 = icmp slt i32 %14, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %13
  %21 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %22 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %26 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @be_cmd_pmac_del(%struct.be_adapter* %21, i32 %24, i32 %31, i32 0)
  br label %33

33:                                               ; preds = %20
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %13

36:                                               ; preds = %13
  %37 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %38 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  %39 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %40 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %41 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @be_cmd_if_destroy(%struct.be_adapter* %39, i32 %42, i32 0)
  %44 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %45 = call i32 @be_clear_queues(%struct.be_adapter* %44)
  %46 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %47 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @kfree(i32* %48)
  %50 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %51 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %50, i32 0, i32 1
  store i32* null, i32** %51, align 8
  %52 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %53 = call i32 @be_msix_disable(%struct.be_adapter* %52)
  ret i32 0
}

declare dso_local i32 @be_cancel_worker(%struct.be_adapter*) #1

declare dso_local i64 @sriov_enabled(%struct.be_adapter*) #1

declare dso_local i32 @be_vf_clear(%struct.be_adapter*) #1

declare dso_local i32 @be_cmd_pmac_del(%struct.be_adapter*, i32, i32, i32) #1

declare dso_local i32 @be_cmd_if_destroy(%struct.be_adapter*, i32, i32) #1

declare dso_local i32 @be_clear_queues(%struct.be_adapter*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @be_msix_disable(%struct.be_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
