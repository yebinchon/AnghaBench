; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_gianfar_sysfs.c_gfar_set_bd_stash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_gianfar_sysfs.c_gfar_set_bd_stash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.gfar_private = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@FSL_GIANFAR_DEV_HAS_BD_STASHING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@ATTR_BDSTASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @gfar_set_bd_stash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gfar_set_bd_stash(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
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
  store i32 0, i32* %11, align 4
  %17 = load %struct.gfar_private*, %struct.gfar_private** %10, align 8
  %18 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @FSL_GIANFAR_DEV_HAS_BD_STASHING, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %4
  %24 = load i64, i64* %9, align 8
  store i64 %24, i64* %5, align 8
  br label %90

25:                                               ; preds = %4
  %26 = load i8*, i8** %8, align 8
  %27 = load i64, i64* %9, align 8
  %28 = sub i64 %27, 1
  %29 = call i32 @strncmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %26, i64 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load i8*, i8** %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = sub i64 %33, 1
  %35 = call i32 @strncmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %32, i64 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %31, %25
  store i32 1, i32* %11, align 4
  br label %54

38:                                               ; preds = %31
  %39 = load i8*, i8** %8, align 8
  %40 = load i64, i64* %9, align 8
  %41 = sub i64 %40, 1
  %42 = call i32 @strncmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %39, i64 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load i8*, i8** %8, align 8
  %46 = load i64, i64* %9, align 8
  %47 = sub i64 %46, 1
  %48 = call i32 @strncmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* %45, i64 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %44, %38
  store i32 0, i32* %11, align 4
  br label %53

51:                                               ; preds = %44
  %52 = load i64, i64* %9, align 8
  store i64 %52, i64* %5, align 8
  br label %90

53:                                               ; preds = %50
  br label %54

54:                                               ; preds = %53, %37
  %55 = load %struct.gfar_private*, %struct.gfar_private** %10, align 8
  %56 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %55, i32 0, i32 2
  %57 = load i64, i64* %13, align 8
  %58 = call i32 @spin_lock_irqsave(i32* %56, i64 %57)
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.gfar_private*, %struct.gfar_private** %10, align 8
  %61 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.gfar_private*, %struct.gfar_private** %10, align 8
  %63 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %62, i32 0, i32 3
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = call i32 @gfar_read(i32* %65)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %54
  %70 = load i32, i32* @ATTR_BDSTASH, align 4
  %71 = load i32, i32* %12, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %12, align 4
  br label %78

73:                                               ; preds = %54
  %74 = load i32, i32* @ATTR_BDSTASH, align 4
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %12, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %12, align 4
  br label %78

78:                                               ; preds = %73, %69
  %79 = load %struct.gfar_private*, %struct.gfar_private** %10, align 8
  %80 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %79, i32 0, i32 3
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %12, align 4
  %84 = call i32 @gfar_write(i32* %82, i32 %83)
  %85 = load %struct.gfar_private*, %struct.gfar_private** %10, align 8
  %86 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %85, i32 0, i32 2
  %87 = load i64, i64* %13, align 8
  %88 = call i32 @spin_unlock_irqrestore(i32* %86, i64 %87)
  %89 = load i64, i64* %9, align 8
  store i64 %89, i64* %5, align 8
  br label %90

90:                                               ; preds = %78, %51, %23
  %91 = load i64, i64* %5, align 8
  ret i64 %91
}

declare dso_local %struct.gfar_private* @netdev_priv(i32) #1

declare dso_local i32 @to_net_dev(%struct.device*) #1

declare dso_local i32 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @gfar_read(i32*) #1

declare dso_local i32 @gfar_write(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
