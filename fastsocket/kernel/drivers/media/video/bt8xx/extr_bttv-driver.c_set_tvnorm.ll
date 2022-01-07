; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-driver.c_set_tvnorm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-driver.c_set_tvnorm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv_tvnorm = type { i32, i32, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.bttv = type { i32, i32, %struct.TYPE_6__, i64, i32* }
%struct.TYPE_6__ = type { i32 }

@BTTV_TVNORMS = common dso_local global i32 0, align 4
@bttv_tvnorms = common dso_local global %struct.bttv_tvnorm* null, align 8
@VIDEO_RESOURCES = common dso_local global i32 0, align 4
@BT848_ADELAY = common dso_local global i32 0, align 4
@BT848_BDELAY = common dso_local global i32 0, align 4
@BT848_IFORM_NORM = common dso_local global i32 0, align 4
@BT848_IFORM_XTBOTH = common dso_local global i32 0, align 4
@BT848_IFORM = common dso_local global i32 0, align 4
@BT848_VBI_PACK_SIZE = common dso_local global i32 0, align 4
@BT848_VBI_PACK_DEL = common dso_local global i32 0, align 4
@core = common dso_local global i32 0, align 4
@s_std = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bttv*, i32)* @set_tvnorm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_tvnorm(%struct.bttv* %0, i32 %1) #0 {
  %3 = alloca %struct.bttv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bttv_tvnorm*, align 8
  %6 = alloca i32, align 4
  store %struct.bttv* %0, %struct.bttv** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @BTTV_TVNORMS, align 4
  %9 = icmp uge i32 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load %struct.bttv*, %struct.bttv** %3, align 8
  %13 = getelementptr inbounds %struct.bttv, %struct.bttv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @BTTV_TVNORMS, align 4
  %16 = icmp uge i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** @bttv_tvnorms, align 8
  %20 = load i32, i32* %4, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.bttv_tvnorm, %struct.bttv_tvnorm* %19, i64 %21
  store %struct.bttv_tvnorm* %22, %struct.bttv_tvnorm** %5, align 8
  %23 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** @bttv_tvnorms, align 8
  %24 = load %struct.bttv*, %struct.bttv** %3, align 8
  %25 = getelementptr inbounds %struct.bttv, %struct.bttv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.bttv_tvnorm, %struct.bttv_tvnorm* %23, i64 %27
  %29 = getelementptr inbounds %struct.bttv_tvnorm, %struct.bttv_tvnorm* %28, i32 0, i32 5
  %30 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** %5, align 8
  %31 = getelementptr inbounds %struct.bttv_tvnorm, %struct.bttv_tvnorm* %30, i32 0, i32 5
  %32 = call i64 @memcmp(%struct.TYPE_7__* %29, %struct.TYPE_7__* %31, i32 16)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %71

34:                                               ; preds = %2
  %35 = load %struct.bttv*, %struct.bttv** %3, align 8
  %36 = getelementptr inbounds %struct.bttv, %struct.bttv* %35, i32 0, i32 4
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @bttv_crop_reset(i32* %38, i32 %39)
  %41 = load %struct.bttv*, %struct.bttv** %3, align 8
  %42 = getelementptr inbounds %struct.bttv, %struct.bttv* %41, i32 0, i32 4
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.bttv*, %struct.bttv** %3, align 8
  %47 = getelementptr inbounds %struct.bttv, %struct.bttv* %46, i32 0, i32 4
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  store i32 %45, i32* %49, align 4
  %50 = load %struct.bttv*, %struct.bttv** %3, align 8
  %51 = getelementptr inbounds %struct.bttv, %struct.bttv* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @VIDEO_RESOURCES, align 4
  %54 = and i32 %52, %53
  %55 = icmp eq i32 0, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %34
  %57 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** %5, align 8
  %58 = getelementptr inbounds %struct.bttv_tvnorm, %struct.bttv_tvnorm* %57, i32 0, i32 5
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** %5, align 8
  %63 = getelementptr inbounds %struct.bttv_tvnorm, %struct.bttv_tvnorm* %62, i32 0, i32 5
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %61, %66
  %68 = load %struct.bttv*, %struct.bttv** %3, align 8
  %69 = getelementptr inbounds %struct.bttv, %struct.bttv* %68, i32 0, i32 3
  store i64 %67, i64* %69, align 8
  br label %70

70:                                               ; preds = %56, %34
  br label %71

71:                                               ; preds = %70, %2
  %72 = load i32, i32* %4, align 4
  %73 = load %struct.bttv*, %struct.bttv** %3, align 8
  %74 = getelementptr inbounds %struct.bttv, %struct.bttv* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** %5, align 8
  %76 = getelementptr inbounds %struct.bttv_tvnorm, %struct.bttv_tvnorm* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @BT848_ADELAY, align 4
  %79 = call i32 @btwrite(i32 %77, i32 %78)
  %80 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** %5, align 8
  %81 = getelementptr inbounds %struct.bttv_tvnorm, %struct.bttv_tvnorm* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @BT848_BDELAY, align 4
  %84 = call i32 @btwrite(i32 %82, i32 %83)
  %85 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** %5, align 8
  %86 = getelementptr inbounds %struct.bttv_tvnorm, %struct.bttv_tvnorm* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @BT848_IFORM_NORM, align 4
  %89 = load i32, i32* @BT848_IFORM_XTBOTH, align 4
  %90 = or i32 %88, %89
  %91 = xor i32 %90, -1
  %92 = load i32, i32* @BT848_IFORM, align 4
  %93 = call i32 @btaor(i32 %87, i32 %91, i32 %92)
  %94 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** %5, align 8
  %95 = getelementptr inbounds %struct.bttv_tvnorm, %struct.bttv_tvnorm* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @BT848_VBI_PACK_SIZE, align 4
  %98 = call i32 @btwrite(i32 %96, i32 %97)
  %99 = load i32, i32* @BT848_VBI_PACK_DEL, align 4
  %100 = call i32 @btwrite(i32 1, i32 %99)
  %101 = load %struct.bttv*, %struct.bttv** %3, align 8
  %102 = call i32 @bt848A_set_timing(%struct.bttv* %101)
  %103 = load %struct.bttv*, %struct.bttv** %3, align 8
  %104 = getelementptr inbounds %struct.bttv, %struct.bttv* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  switch i32 %106, label %111 [
    i32 128, label %107
    i32 129, label %107
  ]

107:                                              ; preds = %71, %71
  %108 = load %struct.bttv*, %struct.bttv** %3, align 8
  %109 = call i32 (...) @gpio_read()
  %110 = call i32 @bttv_tda9880_setnorm(%struct.bttv* %108, i32 %109)
  br label %111

111:                                              ; preds = %71, %107
  %112 = load %struct.bttv_tvnorm*, %struct.bttv_tvnorm** %5, align 8
  %113 = getelementptr inbounds %struct.bttv_tvnorm, %struct.bttv_tvnorm* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %6, align 4
  %115 = load %struct.bttv*, %struct.bttv** %3, align 8
  %116 = load i32, i32* @core, align 4
  %117 = load i32, i32* @s_std, align 4
  %118 = load i32, i32* %6, align 4
  %119 = call i32 @bttv_call_all(%struct.bttv* %115, i32 %116, i32 %117, i32 %118)
  ret i32 0
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @memcmp(%struct.TYPE_7__*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @bttv_crop_reset(i32*, i32) #1

declare dso_local i32 @btwrite(i32, i32) #1

declare dso_local i32 @btaor(i32, i32, i32) #1

declare dso_local i32 @bt848A_set_timing(%struct.bttv*) #1

declare dso_local i32 @bttv_tda9880_setnorm(%struct.bttv*, i32) #1

declare dso_local i32 @gpio_read(...) #1

declare dso_local i32 @bttv_call_all(%struct.bttv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
