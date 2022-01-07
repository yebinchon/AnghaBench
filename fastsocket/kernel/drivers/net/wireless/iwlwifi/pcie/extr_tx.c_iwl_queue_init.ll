; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_tx.c_iwl_queue_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_tx.c_iwl_queue_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_queue = type { i32, i32, i32, i32, i64, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_queue*, i32, i32, i32)* @iwl_queue_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_queue_init(%struct.iwl_queue* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.iwl_queue* %0, %struct.iwl_queue** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.iwl_queue*, %struct.iwl_queue** %6, align 8
  %12 = getelementptr inbounds %struct.iwl_queue, %struct.iwl_queue* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.iwl_queue*, %struct.iwl_queue** %6, align 8
  %15 = getelementptr inbounds %struct.iwl_queue, %struct.iwl_queue* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.iwl_queue*, %struct.iwl_queue** %6, align 8
  %18 = getelementptr inbounds %struct.iwl_queue, %struct.iwl_queue* %17, i32 0, i32 6
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @is_power_of_2(i32 %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @WARN_ON(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %73

29:                                               ; preds = %4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @is_power_of_2(i32 %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i64 @WARN_ON(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %73

40:                                               ; preds = %29
  %41 = load %struct.iwl_queue*, %struct.iwl_queue** %6, align 8
  %42 = getelementptr inbounds %struct.iwl_queue, %struct.iwl_queue* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sdiv i32 %43, 4
  %45 = load %struct.iwl_queue*, %struct.iwl_queue** %6, align 8
  %46 = getelementptr inbounds %struct.iwl_queue, %struct.iwl_queue* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.iwl_queue*, %struct.iwl_queue** %6, align 8
  %48 = getelementptr inbounds %struct.iwl_queue, %struct.iwl_queue* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %49, 4
  br i1 %50, label %51, label %54

51:                                               ; preds = %40
  %52 = load %struct.iwl_queue*, %struct.iwl_queue** %6, align 8
  %53 = getelementptr inbounds %struct.iwl_queue, %struct.iwl_queue* %52, i32 0, i32 2
  store i32 4, i32* %53, align 8
  br label %54

54:                                               ; preds = %51, %40
  %55 = load %struct.iwl_queue*, %struct.iwl_queue** %6, align 8
  %56 = getelementptr inbounds %struct.iwl_queue, %struct.iwl_queue* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sdiv i32 %57, 8
  %59 = load %struct.iwl_queue*, %struct.iwl_queue** %6, align 8
  %60 = getelementptr inbounds %struct.iwl_queue, %struct.iwl_queue* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load %struct.iwl_queue*, %struct.iwl_queue** %6, align 8
  %62 = getelementptr inbounds %struct.iwl_queue, %struct.iwl_queue* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %63, 2
  br i1 %64, label %65, label %68

65:                                               ; preds = %54
  %66 = load %struct.iwl_queue*, %struct.iwl_queue** %6, align 8
  %67 = getelementptr inbounds %struct.iwl_queue, %struct.iwl_queue* %66, i32 0, i32 3
  store i32 2, i32* %67, align 4
  br label %68

68:                                               ; preds = %65, %54
  %69 = load %struct.iwl_queue*, %struct.iwl_queue** %6, align 8
  %70 = getelementptr inbounds %struct.iwl_queue, %struct.iwl_queue* %69, i32 0, i32 5
  store i64 0, i64* %70, align 8
  %71 = load %struct.iwl_queue*, %struct.iwl_queue** %6, align 8
  %72 = getelementptr inbounds %struct.iwl_queue, %struct.iwl_queue* %71, i32 0, i32 4
  store i64 0, i64* %72, align 8
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %68, %37, %26
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @is_power_of_2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
