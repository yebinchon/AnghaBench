; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_gianfar_sysfs.c_gfar_set_rx_stash_index.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_gianfar_sysfs.c_gfar_set_rx_stash_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.gfar_private = type { i32, i16, i16, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@FSL_GIANFAR_DEV_HAS_BUF_STASHING = common dso_local global i32 0, align 4
@ATTRELI_EI_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @gfar_set_rx_stash_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gfar_set_rx_stash_index(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.gfar_private*, align 8
  %11 = alloca i16, align 2
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
  %18 = call zeroext i16 @simple_strtoul(i8* %17, i32* null, i32 0)
  store i16 %18, i16* %11, align 2
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
  br label %78

27:                                               ; preds = %4
  %28 = load %struct.gfar_private*, %struct.gfar_private** %10, align 8
  %29 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %28, i32 0, i32 3
  %30 = load i64, i64* %13, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load i16, i16* %11, align 2
  %33 = zext i16 %32 to i32
  %34 = load %struct.gfar_private*, %struct.gfar_private** %10, align 8
  %35 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %34, i32 0, i32 1
  %36 = load i16, i16* %35, align 4
  %37 = zext i16 %36 to i32
  %38 = icmp sgt i32 %33, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  br label %72

40:                                               ; preds = %27
  %41 = load i16, i16* %11, align 2
  %42 = zext i16 %41 to i32
  %43 = load %struct.gfar_private*, %struct.gfar_private** %10, align 8
  %44 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %43, i32 0, i32 2
  %45 = load i16, i16* %44, align 2
  %46 = zext i16 %45 to i32
  %47 = icmp eq i32 %42, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %72

49:                                               ; preds = %40
  %50 = load i16, i16* %11, align 2
  %51 = load %struct.gfar_private*, %struct.gfar_private** %10, align 8
  %52 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %51, i32 0, i32 2
  store i16 %50, i16* %52, align 2
  %53 = load %struct.gfar_private*, %struct.gfar_private** %10, align 8
  %54 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %53, i32 0, i32 4
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = call i32 @gfar_read(i32* %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* @ATTRELI_EI_MASK, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %12, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %12, align 4
  %62 = load i16, i16* %11, align 2
  %63 = call i32 @ATTRELI_EI(i16 zeroext %62)
  %64 = load i32, i32* %12, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %12, align 4
  %66 = load %struct.gfar_private*, %struct.gfar_private** %10, align 8
  %67 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %66, i32 0, i32 4
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %13, align 8
  %71 = call i32 @gfar_write(i32* %69, i64 %70)
  br label %72

72:                                               ; preds = %49, %48, %39
  %73 = load %struct.gfar_private*, %struct.gfar_private** %10, align 8
  %74 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %73, i32 0, i32 3
  %75 = load i64, i64* %13, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* %74, i64 %75)
  %77 = load i64, i64* %9, align 8
  store i64 %77, i64* %5, align 8
  br label %78

78:                                               ; preds = %72, %25
  %79 = load i64, i64* %5, align 8
  ret i64 %79
}

declare dso_local %struct.gfar_private* @netdev_priv(i32) #1

declare dso_local i32 @to_net_dev(%struct.device*) #1

declare dso_local zeroext i16 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @gfar_read(i32*) #1

declare dso_local i32 @ATTRELI_EI(i16 zeroext) #1

declare dso_local i32 @gfar_write(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
