; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_gianfar_sysfs.c_gfar_set_rx_stash_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_gianfar_sysfs.c_gfar_set_rx_stash_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.gfar_private = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@FSL_GIANFAR_DEV_HAS_BUF_STASHING = common dso_local global i32 0, align 4
@ATTRELI_EL_MASK = common dso_local global i32 0, align 4
@ATTR_BUFSTASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @gfar_set_rx_stash_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gfar_set_rx_stash_size(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.gfar_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call i32 @to_net_dev(%struct.device* %14)
  %16 = call %struct.gfar_private* @netdev_priv(i32 %15)
  store %struct.gfar_private* %16, %struct.gfar_private** %10, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i32 @simple_strtoul(i8* %17, i32* null, i32 0)
  store i32 %18, i32* %11, align 4
  %19 = load %struct.gfar_private*, %struct.gfar_private** %10, align 8
  %20 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @FSL_GIANFAR_DEV_HAS_BUF_STASHING, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %4
  %26 = load i64, i64* %9, align 8
  store i64 %26, i64* %5, align 8
  br label %97

27:                                               ; preds = %4
  %28 = load %struct.gfar_private*, %struct.gfar_private** %10, align 8
  %29 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %28, i32 0, i32 3
  %30 = load i64, i64* %13, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load i32, i32* %11, align 4
  %33 = load %struct.gfar_private*, %struct.gfar_private** %10, align 8
  %34 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ugt i32 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  br label %91

38:                                               ; preds = %27
  %39 = load i32, i32* %11, align 4
  %40 = load %struct.gfar_private*, %struct.gfar_private** %10, align 8
  %41 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %91

45:                                               ; preds = %38
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.gfar_private*, %struct.gfar_private** %10, align 8
  %48 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load %struct.gfar_private*, %struct.gfar_private** %10, align 8
  %50 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %49, i32 0, i32 4
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = call i32 @gfar_read(i32* %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* @ATTRELI_EL_MASK, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %12, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @ATTRELI_EL(i32 %58)
  %60 = load i32, i32* %12, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %12, align 4
  %62 = load %struct.gfar_private*, %struct.gfar_private** %10, align 8
  %63 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %62, i32 0, i32 4
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @gfar_write(i32* %65, i32 %66)
  %68 = load %struct.gfar_private*, %struct.gfar_private** %10, align 8
  %69 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %68, i32 0, i32 4
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = call i32 @gfar_read(i32* %71)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %45
  %76 = load i32, i32* @ATTR_BUFSTASH, align 4
  %77 = load i32, i32* %12, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %12, align 4
  br label %84

79:                                               ; preds = %45
  %80 = load i32, i32* @ATTR_BUFSTASH, align 4
  %81 = xor i32 %80, -1
  %82 = load i32, i32* %12, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %12, align 4
  br label %84

84:                                               ; preds = %79, %75
  %85 = load %struct.gfar_private*, %struct.gfar_private** %10, align 8
  %86 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %85, i32 0, i32 4
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %12, align 4
  %90 = call i32 @gfar_write(i32* %88, i32 %89)
  br label %91

91:                                               ; preds = %84, %44, %37
  %92 = load %struct.gfar_private*, %struct.gfar_private** %10, align 8
  %93 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %92, i32 0, i32 3
  %94 = load i64, i64* %13, align 8
  %95 = call i32 @spin_unlock_irqrestore(i32* %93, i64 %94)
  %96 = load i64, i64* %9, align 8
  store i64 %96, i64* %5, align 8
  br label %97

97:                                               ; preds = %91, %25
  %98 = load i64, i64* %5, align 8
  ret i64 %98
}

declare dso_local %struct.gfar_private* @netdev_priv(i32) #1

declare dso_local i32 @to_net_dev(%struct.device*) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @gfar_read(i32*) #1

declare dso_local i32 @ATTRELI_EL(i32) #1

declare dso_local i32 @gfar_write(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
