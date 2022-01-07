; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_korina.c_korina_free_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_korina.c_korina_free_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.korina_private = type { i32**, %struct.TYPE_4__*, i32**, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@KORINA_NUM_RDS = common dso_local global i32 0, align 4
@KORINA_NUM_TDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @korina_free_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @korina_free_ring(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.korina_private*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.korina_private* @netdev_priv(%struct.net_device* %5)
  store %struct.korina_private* %6, %struct.korina_private** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %43, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @KORINA_NUM_RDS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %46

11:                                               ; preds = %7
  %12 = load %struct.korina_private*, %struct.korina_private** %3, align 8
  %13 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %12, i32 0, i32 3
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = load %struct.korina_private*, %struct.korina_private** %3, align 8
  %20 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %19, i32 0, i32 2
  %21 = load i32**, i32*** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32*, i32** %21, i64 %23
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %11
  %28 = load %struct.korina_private*, %struct.korina_private** %3, align 8
  %29 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %28, i32 0, i32 2
  %30 = load i32**, i32*** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32*, i32** %30, i64 %32
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @dev_kfree_skb_any(i32* %34)
  br label %36

36:                                               ; preds = %27, %11
  %37 = load %struct.korina_private*, %struct.korina_private** %3, align 8
  %38 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %37, i32 0, i32 2
  %39 = load i32**, i32*** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32*, i32** %39, i64 %41
  store i32* null, i32** %42, align 8
  br label %43

43:                                               ; preds = %36
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %7

46:                                               ; preds = %7
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %83, %46
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @KORINA_NUM_TDS, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %86

51:                                               ; preds = %47
  %52 = load %struct.korina_private*, %struct.korina_private** %3, align 8
  %53 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i64 0, i64* %58, align 8
  %59 = load %struct.korina_private*, %struct.korina_private** %3, align 8
  %60 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %59, i32 0, i32 0
  %61 = load i32**, i32*** %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32*, i32** %61, i64 %63
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %76

67:                                               ; preds = %51
  %68 = load %struct.korina_private*, %struct.korina_private** %3, align 8
  %69 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %68, i32 0, i32 0
  %70 = load i32**, i32*** %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32*, i32** %70, i64 %72
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @dev_kfree_skb_any(i32* %74)
  br label %76

76:                                               ; preds = %67, %51
  %77 = load %struct.korina_private*, %struct.korina_private** %3, align 8
  %78 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %77, i32 0, i32 0
  %79 = load i32**, i32*** %78, align 8
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32*, i32** %79, i64 %81
  store i32* null, i32** %82, align 8
  br label %83

83:                                               ; preds = %76
  %84 = load i32, i32* %4, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %4, align 4
  br label %47

86:                                               ; preds = %47
  ret void
}

declare dso_local %struct.korina_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
