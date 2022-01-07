; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ll_temac_main.c_temac_setoptions.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ll_temac_main.c_temac_setoptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.temac_option = type { i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.temac_local = type { i32, i32 }

@temac_options = common dso_local global %struct.temac_option* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @temac_setoptions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @temac_setoptions(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.temac_local*, align 8
  %6 = alloca %struct.temac_option*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.temac_local* @netdev_priv(%struct.net_device* %8)
  store %struct.temac_local* %9, %struct.temac_local** %5, align 8
  %10 = load %struct.temac_option*, %struct.temac_option** @temac_options, align 8
  %11 = getelementptr inbounds %struct.temac_option, %struct.temac_option* %10, i64 0
  store %struct.temac_option* %11, %struct.temac_option** %6, align 8
  %12 = load %struct.temac_local*, %struct.temac_local** %5, align 8
  %13 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %12, i32 0, i32 1
  %14 = call i32 @mutex_lock(i32* %13)
  br label %15

15:                                               ; preds = %43, %2
  %16 = load %struct.temac_option*, %struct.temac_option** %6, align 8
  %17 = getelementptr inbounds %struct.temac_option, %struct.temac_option* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %52

20:                                               ; preds = %15
  %21 = load %struct.temac_local*, %struct.temac_local** %5, align 8
  %22 = load %struct.temac_option*, %struct.temac_option** %6, align 8
  %23 = getelementptr inbounds %struct.temac_option, %struct.temac_option* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @temac_indirect_in32(%struct.temac_local* %21, i32 %24)
  %26 = load %struct.temac_option*, %struct.temac_option** %6, align 8
  %27 = getelementptr inbounds %struct.temac_option, %struct.temac_option* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %25, %29
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.temac_option*, %struct.temac_option** %6, align 8
  %33 = getelementptr inbounds %struct.temac_option, %struct.temac_option* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %31, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %20
  %38 = load %struct.temac_option*, %struct.temac_option** %6, align 8
  %39 = getelementptr inbounds %struct.temac_option, %struct.temac_option* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %37, %20
  %44 = load %struct.temac_local*, %struct.temac_local** %5, align 8
  %45 = load %struct.temac_option*, %struct.temac_option** %6, align 8
  %46 = getelementptr inbounds %struct.temac_option, %struct.temac_option* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @temac_indirect_out32(%struct.temac_local* %44, i32 %47, i32 %48)
  %50 = load %struct.temac_option*, %struct.temac_option** %6, align 8
  %51 = getelementptr inbounds %struct.temac_option, %struct.temac_option* %50, i32 1
  store %struct.temac_option* %51, %struct.temac_option** %6, align 8
  br label %15

52:                                               ; preds = %15
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.temac_local*, %struct.temac_local** %5, align 8
  %55 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load %struct.temac_local*, %struct.temac_local** %5, align 8
  %59 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %58, i32 0, i32 1
  %60 = call i32 @mutex_unlock(i32* %59)
  ret i32 0
}

declare dso_local %struct.temac_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @temac_indirect_in32(%struct.temac_local*, i32) #1

declare dso_local i32 @temac_indirect_out32(%struct.temac_local*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
