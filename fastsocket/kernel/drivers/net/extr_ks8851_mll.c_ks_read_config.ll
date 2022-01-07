; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ks8851_mll.c_ks_read_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ks8851_mll.c_ks_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks_net = type { i32, i32, i32 }

@KS_CCR = common dso_local global i64 0, align 8
@CCR_SHARED = common dso_local global i32 0, align 4
@CCR_8BIT = common dso_local global i32 0, align 4
@ENUM_BUS_8BIT = common dso_local global i32 0, align 4
@CCR_16BIT = common dso_local global i32 0, align 4
@ENUM_BUS_16BIT = common dso_local global i32 0, align 4
@ENUM_BUS_32BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ks_net*)* @ks_read_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ks_read_config(%struct.ks_net* %0) #0 {
  %2 = alloca %struct.ks_net*, align 8
  %3 = alloca i32, align 4
  store %struct.ks_net* %0, %struct.ks_net** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.ks_net*, %struct.ks_net** %2, align 8
  %5 = load i64, i64* @KS_CCR, align 8
  %6 = call i32 @ks_rdreg8(%struct.ks_net* %4, i64 %5)
  %7 = and i32 %6, 255
  store i32 %7, i32* %3, align 4
  %8 = load %struct.ks_net*, %struct.ks_net** %2, align 8
  %9 = load i64, i64* @KS_CCR, align 8
  %10 = add nsw i64 %9, 1
  %11 = call i32 @ks_rdreg8(%struct.ks_net* %8, i64 %10)
  %12 = shl i32 %11, 8
  %13 = load i32, i32* %3, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @CCR_SHARED, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @CCR_SHARED, align 4
  %19 = icmp eq i32 %17, %18
  %20 = zext i1 %19 to i32
  %21 = load %struct.ks_net*, %struct.ks_net** %2, align 8
  %22 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @CCR_8BIT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %1
  %28 = load i32, i32* @ENUM_BUS_8BIT, align 4
  %29 = load %struct.ks_net*, %struct.ks_net** %2, align 8
  %30 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.ks_net*, %struct.ks_net** %2, align 8
  %32 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %31, i32 0, i32 1
  store i32 1, i32* %32, align 4
  br label %51

33:                                               ; preds = %1
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @CCR_16BIT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load i32, i32* @ENUM_BUS_16BIT, align 4
  %40 = load %struct.ks_net*, %struct.ks_net** %2, align 8
  %41 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load %struct.ks_net*, %struct.ks_net** %2, align 8
  %43 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %42, i32 0, i32 1
  store i32 2, i32* %43, align 4
  br label %50

44:                                               ; preds = %33
  %45 = load i32, i32* @ENUM_BUS_32BIT, align 4
  %46 = load %struct.ks_net*, %struct.ks_net** %2, align 8
  %47 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load %struct.ks_net*, %struct.ks_net** %2, align 8
  %49 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %48, i32 0, i32 1
  store i32 4, i32* %49, align 4
  br label %50

50:                                               ; preds = %44, %38
  br label %51

51:                                               ; preds = %50, %27
  ret void
}

declare dso_local i32 @ks_rdreg8(%struct.ks_net*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
