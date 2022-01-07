; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_efx.c_efx_process_channel_now.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_efx.c_efx_process_channel_now.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_channel = type { i64, i32, i64, i64, i32, %struct.efx_nic* }
%struct.efx_nic = type { i64, i32, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efx_process_channel_now(%struct.efx_channel* %0) #0 {
  %2 = alloca %struct.efx_channel*, align 8
  %3 = alloca %struct.efx_nic*, align 8
  store %struct.efx_channel* %0, %struct.efx_channel** %2, align 8
  %4 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %5 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %4, i32 0, i32 5
  %6 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  store %struct.efx_nic* %6, %struct.efx_nic** %3, align 8
  %7 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %8 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %11 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sge i64 %9, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %17 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %24 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %31 = call i32 @efx_nic_disable_interrupts(%struct.efx_nic* %30)
  %32 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %33 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %1
  %37 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %38 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @synchronize_irq(i64 %39)
  %41 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %42 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %41, i32 0, i32 1
  store i32 0, i32* %42, align 8
  br label %43

43:                                               ; preds = %36, %1
  %44 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %45 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %50 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @synchronize_irq(i64 %51)
  br label %53

53:                                               ; preds = %48, %43
  %54 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %55 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %54, i32 0, i32 1
  %56 = call i32 @napi_disable(i32* %55)
  %57 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %58 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %59 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, 1
  %62 = call i32 @efx_process_channel(%struct.efx_channel* %57, i64 %61)
  %63 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %64 = call i32 @efx_channel_processed(%struct.efx_channel* %63)
  %65 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %66 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %65, i32 0, i32 1
  %67 = call i32 @napi_enable(i32* %66)
  %68 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %69 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %53
  %73 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %74 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %73, i32 0, i32 1
  store i32 1, i32* %74, align 8
  br label %75

75:                                               ; preds = %72, %53
  %76 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %77 = call i32 @efx_nic_enable_interrupts(%struct.efx_nic* %76)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @efx_nic_disable_interrupts(%struct.efx_nic*) #1

declare dso_local i32 @synchronize_irq(i64) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @efx_process_channel(%struct.efx_channel*, i64) #1

declare dso_local i32 @efx_channel_processed(%struct.efx_channel*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @efx_nic_enable_interrupts(%struct.efx_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
