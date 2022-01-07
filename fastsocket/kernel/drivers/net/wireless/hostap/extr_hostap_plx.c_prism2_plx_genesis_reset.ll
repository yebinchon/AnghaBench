; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_plx.c_prism2_plx_genesis_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_plx.c_prism2_plx_genesis_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.hostap_plx_priv* }
%struct.hostap_plx_priv = type { i32, i32* }

@COR_SRESET = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32)* @prism2_plx_genesis_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prism2_plx_genesis_reset(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca %struct.hostap_plx_priv*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.hostap_plx_priv*, %struct.hostap_plx_priv** %8, align 8
  store %struct.hostap_plx_priv* %9, %struct.hostap_plx_priv** %6, align 8
  %10 = load %struct.hostap_plx_priv*, %struct.hostap_plx_priv** %6, align 8
  %11 = getelementptr inbounds %struct.hostap_plx_priv, %struct.hostap_plx_priv* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %50

14:                                               ; preds = %2
  %15 = load %struct.hostap_plx_priv*, %struct.hostap_plx_priv** %6, align 8
  %16 = getelementptr inbounds %struct.hostap_plx_priv, %struct.hostap_plx_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call zeroext i8 @inb(i32 %17)
  store i8 %18, i8* %5, align 1
  %19 = load i8, i8* %5, align 1
  %20 = zext i8 %19 to i32
  %21 = load i8, i8* @COR_SRESET, align 1
  %22 = zext i8 %21 to i32
  %23 = or i32 %20, %22
  %24 = trunc i32 %23 to i8
  %25 = load %struct.hostap_plx_priv*, %struct.hostap_plx_priv** %6, align 8
  %26 = getelementptr inbounds %struct.hostap_plx_priv, %struct.hostap_plx_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @outb(i8 zeroext %24, i32 %27)
  %29 = call i32 @mdelay(i32 10)
  %30 = load i32, i32* %4, align 4
  %31 = trunc i32 %30 to i8
  %32 = load %struct.hostap_plx_priv*, %struct.hostap_plx_priv** %6, align 8
  %33 = getelementptr inbounds %struct.hostap_plx_priv, %struct.hostap_plx_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 2
  %36 = call i32 @outb(i8 zeroext %31, i32 %35)
  %37 = call i32 @mdelay(i32 10)
  %38 = load i8, i8* %5, align 1
  %39 = zext i8 %38 to i32
  %40 = load i8, i8* @COR_SRESET, align 1
  %41 = zext i8 %40 to i32
  %42 = xor i32 %41, -1
  %43 = and i32 %39, %42
  %44 = trunc i32 %43 to i8
  %45 = load %struct.hostap_plx_priv*, %struct.hostap_plx_priv** %6, align 8
  %46 = getelementptr inbounds %struct.hostap_plx_priv, %struct.hostap_plx_priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @outb(i8 zeroext %44, i32 %47)
  %49 = call i32 @mdelay(i32 10)
  br label %106

50:                                               ; preds = %2
  %51 = load %struct.hostap_plx_priv*, %struct.hostap_plx_priv** %6, align 8
  %52 = getelementptr inbounds %struct.hostap_plx_priv, %struct.hostap_plx_priv* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.hostap_plx_priv*, %struct.hostap_plx_priv** %6, align 8
  %55 = getelementptr inbounds %struct.hostap_plx_priv, %struct.hostap_plx_priv* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %53, i64 %57
  %59 = call zeroext i8 @readb(i32* %58)
  store i8 %59, i8* %5, align 1
  %60 = load i8, i8* %5, align 1
  %61 = zext i8 %60 to i32
  %62 = load i8, i8* @COR_SRESET, align 1
  %63 = zext i8 %62 to i32
  %64 = or i32 %61, %63
  %65 = trunc i32 %64 to i8
  %66 = load %struct.hostap_plx_priv*, %struct.hostap_plx_priv** %6, align 8
  %67 = getelementptr inbounds %struct.hostap_plx_priv, %struct.hostap_plx_priv* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.hostap_plx_priv*, %struct.hostap_plx_priv** %6, align 8
  %70 = getelementptr inbounds %struct.hostap_plx_priv, %struct.hostap_plx_priv* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %68, i64 %72
  %74 = call i32 @writeb(i8 zeroext %65, i32* %73)
  %75 = call i32 @mdelay(i32 10)
  %76 = load i32, i32* %4, align 4
  %77 = trunc i32 %76 to i8
  %78 = load %struct.hostap_plx_priv*, %struct.hostap_plx_priv** %6, align 8
  %79 = getelementptr inbounds %struct.hostap_plx_priv, %struct.hostap_plx_priv* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.hostap_plx_priv*, %struct.hostap_plx_priv** %6, align 8
  %82 = getelementptr inbounds %struct.hostap_plx_priv, %struct.hostap_plx_priv* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %80, i64 %84
  %86 = getelementptr inbounds i32, i32* %85, i64 2
  %87 = call i32 @writeb(i8 zeroext %77, i32* %86)
  %88 = call i32 @mdelay(i32 10)
  %89 = load i8, i8* %5, align 1
  %90 = zext i8 %89 to i32
  %91 = load i8, i8* @COR_SRESET, align 1
  %92 = zext i8 %91 to i32
  %93 = xor i32 %92, -1
  %94 = and i32 %90, %93
  %95 = trunc i32 %94 to i8
  %96 = load %struct.hostap_plx_priv*, %struct.hostap_plx_priv** %6, align 8
  %97 = getelementptr inbounds %struct.hostap_plx_priv, %struct.hostap_plx_priv* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.hostap_plx_priv*, %struct.hostap_plx_priv** %6, align 8
  %100 = getelementptr inbounds %struct.hostap_plx_priv, %struct.hostap_plx_priv* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %98, i64 %102
  %104 = call i32 @writeb(i8 zeroext %95, i32* %103)
  %105 = call i32 @mdelay(i32 10)
  br label %106

106:                                              ; preds = %50, %14
  ret void
}

declare dso_local zeroext i8 @inb(i32) #1

declare dso_local i32 @outb(i8 zeroext, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local zeroext i8 @readb(i32*) #1

declare dso_local i32 @writeb(i8 zeroext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
