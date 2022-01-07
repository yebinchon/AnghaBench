; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_slip.c_sl_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_slip.c_sl_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.slip = type { %struct.TYPE_2__, %struct.TYPE_2__, i32, i32, %struct.net_device*, i32, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@slip_devs = common dso_local global %struct.net_device** null, align 8
@slip_maxdev = common dso_local global i32 0, align 4
@SLF_INUSE = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"sl%d\00", align 1
@sl_setup = common dso_local global i32 0, align 4
@SLIP_MAGIC = common dso_local global i32 0, align 4
@SL_MODE_DEFAULT = common dso_local global i32 0, align 4
@sl_keepalive = common dso_local global i32 0, align 4
@sl_outfill = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.slip* (i32)* @sl_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.slip* @sl_alloc(i32 %0) #0 {
  %2 = alloca %struct.slip*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.slip*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.net_device* null, %struct.net_device** %5, align 8
  %10 = load %struct.net_device**, %struct.net_device*** @slip_devs, align 8
  %11 = icmp eq %struct.net_device** %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store %struct.slip* null, %struct.slip** %2, align 8
  br label %99

13:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %28, %13
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @slip_maxdev, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %14
  %19 = load %struct.net_device**, %struct.net_device*** @slip_devs, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.net_device*, %struct.net_device** %19, i64 %21
  %23 = load %struct.net_device*, %struct.net_device** %22, align 8
  store %struct.net_device* %23, %struct.net_device** %5, align 8
  %24 = load %struct.net_device*, %struct.net_device** %5, align 8
  %25 = icmp eq %struct.net_device* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %31

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %14

31:                                               ; preds = %26, %14
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @slip_maxdev, align 4
  %34 = icmp sge i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store %struct.slip* null, %struct.slip** %2, align 8
  br label %99

36:                                               ; preds = %31
  %37 = load %struct.net_device*, %struct.net_device** %5, align 8
  %38 = icmp ne %struct.net_device* %37, null
  br i1 %38, label %39, label %55

39:                                               ; preds = %36
  %40 = load %struct.net_device*, %struct.net_device** %5, align 8
  %41 = call %struct.slip* @netdev_priv(%struct.net_device* %40)
  store %struct.slip* %41, %struct.slip** %6, align 8
  %42 = load i32, i32* @SLF_INUSE, align 4
  %43 = load %struct.slip*, %struct.slip** %6, align 8
  %44 = getelementptr inbounds %struct.slip, %struct.slip* %43, i32 0, i32 6
  %45 = call i64 @test_bit(i32 %42, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %39
  %48 = load %struct.net_device*, %struct.net_device** %5, align 8
  %49 = call i32 @unregister_netdevice(%struct.net_device* %48)
  store %struct.net_device* null, %struct.net_device** %5, align 8
  %50 = load %struct.net_device**, %struct.net_device*** @slip_devs, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.net_device*, %struct.net_device** %50, i64 %52
  store %struct.net_device* null, %struct.net_device** %53, align 8
  br label %54

54:                                               ; preds = %47, %39
  br label %55

55:                                               ; preds = %54, %36
  %56 = load %struct.net_device*, %struct.net_device** %5, align 8
  %57 = icmp ne %struct.net_device* %56, null
  br i1 %57, label %78, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* @IFNAMSIZ, align 4
  %60 = zext i32 %59 to i64
  %61 = call i8* @llvm.stacksave()
  store i8* %61, i8** %7, align 8
  %62 = alloca i8, i64 %60, align 16
  store i64 %60, i64* %8, align 8
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @sprintf(i8* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @sl_setup, align 4
  %66 = call %struct.net_device* @alloc_netdev(i32 56, i8* %62, i32 %65)
  store %struct.net_device* %66, %struct.net_device** %5, align 8
  %67 = load %struct.net_device*, %struct.net_device** %5, align 8
  %68 = icmp ne %struct.net_device* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %58
  store %struct.slip* null, %struct.slip** %2, align 8
  store i32 1, i32* %9, align 4
  br label %74

70:                                               ; preds = %58
  %71 = load i32, i32* %4, align 4
  %72 = load %struct.net_device*, %struct.net_device** %5, align 8
  %73 = getelementptr inbounds %struct.net_device, %struct.net_device* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  store i32 0, i32* %9, align 4
  br label %74

74:                                               ; preds = %70, %69
  %75 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %75)
  %76 = load i32, i32* %9, align 4
  switch i32 %76, label %101 [
    i32 0, label %77
    i32 1, label %99
  ]

77:                                               ; preds = %74
  br label %78

78:                                               ; preds = %77, %55
  %79 = load %struct.net_device*, %struct.net_device** %5, align 8
  %80 = call %struct.slip* @netdev_priv(%struct.net_device* %79)
  store %struct.slip* %80, %struct.slip** %6, align 8
  %81 = load i32, i32* @SLIP_MAGIC, align 4
  %82 = load %struct.slip*, %struct.slip** %6, align 8
  %83 = getelementptr inbounds %struct.slip, %struct.slip* %82, i32 0, i32 5
  store i32 %81, i32* %83, align 8
  %84 = load %struct.net_device*, %struct.net_device** %5, align 8
  %85 = load %struct.slip*, %struct.slip** %6, align 8
  %86 = getelementptr inbounds %struct.slip, %struct.slip* %85, i32 0, i32 4
  store %struct.net_device* %84, %struct.net_device** %86, align 8
  %87 = load %struct.slip*, %struct.slip** %6, align 8
  %88 = getelementptr inbounds %struct.slip, %struct.slip* %87, i32 0, i32 3
  %89 = call i32 @spin_lock_init(i32* %88)
  %90 = load i32, i32* @SL_MODE_DEFAULT, align 4
  %91 = load %struct.slip*, %struct.slip** %6, align 8
  %92 = getelementptr inbounds %struct.slip, %struct.slip* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  %93 = load %struct.net_device*, %struct.net_device** %5, align 8
  %94 = load %struct.net_device**, %struct.net_device*** @slip_devs, align 8
  %95 = load i32, i32* %4, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.net_device*, %struct.net_device** %94, i64 %96
  store %struct.net_device* %93, %struct.net_device** %97, align 8
  %98 = load %struct.slip*, %struct.slip** %6, align 8
  store %struct.slip* %98, %struct.slip** %2, align 8
  br label %99

99:                                               ; preds = %78, %74, %35, %12
  %100 = load %struct.slip*, %struct.slip** %2, align 8
  ret %struct.slip* %100

101:                                              ; preds = %74
  unreachable
}

declare dso_local %struct.slip* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @unregister_netdevice(%struct.net_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local %struct.net_device* @alloc_netdev(i32, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
