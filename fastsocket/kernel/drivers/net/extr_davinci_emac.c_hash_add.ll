; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_davinci_emac.c_hash_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_davinci_emac.c_hash_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_priv = type { i64*, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@EMAC_NUM_MULTICAST_BITS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [77 x i8] c"DaVinci EMAC: hash_add(): Invalid Hash %08x, should not be greater than %08x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.emac_priv*, i32*)* @hash_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hash_add(%struct.emac_priv* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.emac_priv*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.emac_priv* %0, %struct.emac_priv** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.emac_priv*, %struct.emac_priv** %4, align 8
  %11 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %10, i32 0, i32 3
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %6, align 8
  store i64 0, i64* %7, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i64 @hash_get(i32* %14)
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* @EMAC_NUM_MULTICAST_BITS, align 8
  %18 = icmp uge i64 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %2
  %20 = load %struct.emac_priv*, %struct.emac_priv** %4, align 8
  %21 = call i64 @netif_msg_drv(%struct.emac_priv* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load %struct.device*, %struct.device** %6, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* @EMAC_NUM_MULTICAST_BITS, align 8
  %27 = sub i64 %26, 1
  %28 = call i32 @dev_err(%struct.device* %24, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i64 %25, i64 %27)
  br label %29

29:                                               ; preds = %23, %19
  store i32 -1, i32* %3, align 4
  br label %69

30:                                               ; preds = %2
  %31 = load %struct.emac_priv*, %struct.emac_priv** %4, align 8
  %32 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = load i64, i64* %9, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %59

38:                                               ; preds = %30
  store i64 1, i64* %7, align 8
  %39 = load i64, i64* %9, align 8
  %40 = icmp ult i64 %39, 32
  br i1 %40, label %41, label %49

41:                                               ; preds = %38
  %42 = load i64, i64* %9, align 8
  %43 = call i64 @BIT(i64 %42)
  store i64 %43, i64* %8, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load %struct.emac_priv*, %struct.emac_priv** %4, align 8
  %46 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = or i64 %47, %44
  store i64 %48, i64* %46, align 8
  br label %58

49:                                               ; preds = %38
  %50 = load i64, i64* %9, align 8
  %51 = sub i64 %50, 32
  %52 = call i64 @BIT(i64 %51)
  store i64 %52, i64* %8, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load %struct.emac_priv*, %struct.emac_priv** %4, align 8
  %55 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = or i64 %56, %53
  store i64 %57, i64* %55, align 8
  br label %58

58:                                               ; preds = %49, %41
  br label %59

59:                                               ; preds = %58, %30
  %60 = load %struct.emac_priv*, %struct.emac_priv** %4, align 8
  %61 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = load i64, i64* %9, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %64, align 8
  %67 = load i64, i64* %7, align 8
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %59, %29
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i64 @hash_get(i32*) #1

declare dso_local i64 @netif_msg_drv(%struct.emac_priv*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64, i64) #1

declare dso_local i64 @BIT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
