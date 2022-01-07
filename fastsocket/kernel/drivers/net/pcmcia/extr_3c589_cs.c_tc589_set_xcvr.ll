; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_3c589_cs.c_tc589_set_xcvr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_3c589_cs.c_tc589_set_xcvr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i64 }
%struct.el3_private = type { i32 }

@StartCoax = common dso_local global i32 0, align 4
@StopCoax = common dso_local global i32 0, align 4
@EL3_CMD = common dso_local global i32 0, align 4
@MEDIA_LED = common dso_local global i32 0, align 4
@MEDIA_TP = common dso_local global i32 0, align 4
@WN4_MEDIA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @tc589_set_xcvr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tc589_set_xcvr(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.el3_private*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.el3_private* @netdev_priv(%struct.net_device* %7)
  store %struct.el3_private* %8, %struct.el3_private** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %6, align 4
  %12 = call i32 @EL3WINDOW(i32 0)
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %26 [
    i32 0, label %14
    i32 1, label %14
    i32 2, label %18
    i32 3, label %22
  ]

14:                                               ; preds = %2, %2
  %15 = load i32, i32* %6, align 4
  %16 = add i32 %15, 6
  %17 = call i32 @outw(i32 0, i32 %16)
  br label %26

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = add i32 %19, 6
  %21 = call i32 @outw(i32 49152, i32 %20)
  br label %26

22:                                               ; preds = %2
  %23 = load i32, i32* %6, align 4
  %24 = add i32 %23, 6
  %25 = call i32 @outw(i32 16384, i32 %24)
  br label %26

26:                                               ; preds = %2, %22, %18, %14
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* @StartCoax, align 4
  br label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @StopCoax, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @EL3_CMD, align 4
  %37 = add i32 %35, %36
  %38 = call i32 @outw(i32 %34, i32 %37)
  %39 = call i32 @EL3WINDOW(i32 4)
  %40 = load i32, i32* @MEDIA_LED, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp slt i32 %41, 2
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = load i32, i32* @MEDIA_TP, align 4
  br label %46

45:                                               ; preds = %33
  br label %46

46:                                               ; preds = %45, %43
  %47 = phi i32 [ %44, %43 ], [ 0, %45 ]
  %48 = or i32 %40, %47
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @WN4_MEDIA, align 4
  %51 = add i32 %49, %50
  %52 = call i32 @outw(i32 %48, i32 %51)
  %53 = call i32 @EL3WINDOW(i32 1)
  %54 = load i32, i32* %4, align 4
  %55 = icmp eq i32 %54, 2
  br i1 %55, label %56, label %65

56:                                               ; preds = %46
  %57 = load %struct.net_device*, %struct.net_device** %3, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 32768, i32 16384
  %63 = load %struct.el3_private*, %struct.el3_private** %5, align 8
  %64 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  br label %74

65:                                               ; preds = %46
  %66 = load %struct.net_device*, %struct.net_device** %3, align 8
  %67 = getelementptr inbounds %struct.net_device, %struct.net_device* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 16400, i32 34816
  %72 = load %struct.el3_private*, %struct.el3_private** %5, align 8
  %73 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  br label %74

74:                                               ; preds = %65, %56
  ret void
}

declare dso_local %struct.el3_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @EL3WINDOW(i32) #1

declare dso_local i32 @outw(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
