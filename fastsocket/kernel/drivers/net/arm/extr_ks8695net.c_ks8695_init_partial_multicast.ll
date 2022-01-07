; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_ks8695net.c_ks8695_init_partial_multicast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_ks8695net.c_ks8695_init_partial_multicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks8695_priv = type { i32 }
%struct.dev_mc_list = type { i32*, %struct.dev_mc_list* }

@KS8695_NR_ADDRESSES = common dso_local global i32 0, align 4
@AAH_E = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ks8695_priv*, %struct.dev_mc_list*, i32)* @ks8695_init_partial_multicast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ks8695_init_partial_multicast(%struct.ks8695_priv* %0, %struct.dev_mc_list* %1, i32 %2) #0 {
  %4 = alloca %struct.ks8695_priv*, align 8
  %5 = alloca %struct.dev_mc_list*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ks8695_priv* %0, %struct.ks8695_priv** %4, align 8
  store %struct.dev_mc_list* %1, %struct.dev_mc_list** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %74, %3
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %80

14:                                               ; preds = %10
  %15 = load %struct.dev_mc_list*, %struct.dev_mc_list** %5, align 8
  %16 = icmp ne %struct.dev_mc_list* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  br label %80

18:                                               ; preds = %14
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @KS8695_NR_ADDRESSES, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load %struct.dev_mc_list*, %struct.dev_mc_list** %5, align 8
  %25 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 24
  %30 = load %struct.dev_mc_list*, %struct.dev_mc_list** %5, align 8
  %31 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 3
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %34, 16
  %36 = or i32 %29, %35
  %37 = load %struct.dev_mc_list*, %struct.dev_mc_list** %5, align 8
  %38 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 4
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %41, 8
  %43 = or i32 %36, %42
  %44 = load %struct.dev_mc_list*, %struct.dev_mc_list** %5, align 8
  %45 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 5
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %43, %48
  store i32 %49, i32* %7, align 4
  %50 = load %struct.dev_mc_list*, %struct.dev_mc_list** %5, align 8
  %51 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 %54, 8
  %56 = load %struct.dev_mc_list*, %struct.dev_mc_list** %5, align 8
  %57 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %55, %60
  store i32 %61, i32* %8, align 4
  %62 = load %struct.ks8695_priv*, %struct.ks8695_priv** %4, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @KS8695_AAL_(i32 %63)
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @ks8695_writereg(%struct.ks8695_priv* %62, i32 %64, i32 %65)
  %67 = load %struct.ks8695_priv*, %struct.ks8695_priv** %4, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @KS8695_AAH_(i32 %68)
  %70 = load i32, i32* @AAH_E, align 4
  %71 = load i32, i32* %8, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @ks8695_writereg(%struct.ks8695_priv* %67, i32 %69, i32 %72)
  br label %74

74:                                               ; preds = %18
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  %77 = load %struct.dev_mc_list*, %struct.dev_mc_list** %5, align 8
  %78 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %77, i32 0, i32 1
  %79 = load %struct.dev_mc_list*, %struct.dev_mc_list** %78, align 8
  store %struct.dev_mc_list* %79, %struct.dev_mc_list** %5, align 8
  br label %10

80:                                               ; preds = %17, %10
  br label %81

81:                                               ; preds = %94, %80
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @KS8695_NR_ADDRESSES, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %97

85:                                               ; preds = %81
  %86 = load %struct.ks8695_priv*, %struct.ks8695_priv** %4, align 8
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @KS8695_AAL_(i32 %87)
  %89 = call i32 @ks8695_writereg(%struct.ks8695_priv* %86, i32 %88, i32 0)
  %90 = load %struct.ks8695_priv*, %struct.ks8695_priv** %4, align 8
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @KS8695_AAH_(i32 %91)
  %93 = call i32 @ks8695_writereg(%struct.ks8695_priv* %90, i32 %92, i32 0)
  br label %94

94:                                               ; preds = %85
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4
  br label %81

97:                                               ; preds = %81
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ks8695_writereg(%struct.ks8695_priv*, i32, i32) #1

declare dso_local i32 @KS8695_AAL_(i32) #1

declare dso_local i32 @KS8695_AAH_(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
