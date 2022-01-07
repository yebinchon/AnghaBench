; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_get_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_get_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.be_adapter*)* @be_get_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_get_config(%struct.be_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.be_adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %3, align 8
  %5 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %6 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %6, i32 0, i32 5
  %8 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %8, i32 0, i32 4
  %10 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %10, i32 0, i32 3
  %12 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %12, i32 0, i32 2
  %14 = call i32 @be_cmd_query_fw_cfg(%struct.be_adapter* %5, i32* %7, i32* %9, i32* %11, i32* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %50

19:                                               ; preds = %1
  %20 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %21 = call i32 @be_get_resources(%struct.be_adapter* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %50

26:                                               ; preds = %19
  %27 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %28 = call i64 @be_max_uc(%struct.be_adapter* %27)
  %29 = add nsw i64 %28, 1
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i32 @kcalloc(i64 %29, i32 4, i32 %30)
  %32 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %33 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %35 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %26
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %50

41:                                               ; preds = %26
  %42 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %43 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %46 = call i32 @be_max_qs(%struct.be_adapter* %45)
  %47 = call i32 @min(i32 %44, i32 %46)
  %48 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %49 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %41, %38, %24, %17
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @be_cmd_query_fw_cfg(%struct.be_adapter*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @be_get_resources(%struct.be_adapter*) #1

declare dso_local i32 @kcalloc(i64, i32, i32) #1

declare dso_local i64 @be_max_uc(%struct.be_adapter*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @be_max_qs(%struct.be_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
