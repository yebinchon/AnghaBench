; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_vsc7326.c_mac_set_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_vsc7326.c_mac_set_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmac = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@REG_ING_FFILT_UM_EN = common dso_local global i32 0, align 4
@REG_ING_FFILT_MASK0 = common dso_local global i32 0, align 4
@REG_ING_FFILT_MASK1 = common dso_local global i32 0, align 4
@REG_ING_FFILT_MASK2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmac*, i32*)* @mac_set_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mac_set_address(%struct.cmac* %0, i32* %1) #0 {
  %3 = alloca %struct.cmac*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cmac* %0, %struct.cmac** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.cmac*, %struct.cmac** %3, align 8
  %8 = getelementptr inbounds %struct.cmac, %struct.cmac* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  %12 = load %struct.cmac*, %struct.cmac** %3, align 8
  %13 = getelementptr inbounds %struct.cmac, %struct.cmac* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @REG_MAC_LOW_ADDR(i32 %15)
  %17 = load i32*, i32** %4, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 3
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 %19, 16
  %21 = load i32*, i32** %4, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 4
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 %23, 8
  %25 = or i32 %20, %24
  %26 = load i32*, i32** %4, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 5
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %25, %28
  %30 = call i32 @vsc_write(i32 %14, i32 %16, i32 %29)
  %31 = load %struct.cmac*, %struct.cmac** %3, align 8
  %32 = getelementptr inbounds %struct.cmac, %struct.cmac* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @REG_MAC_HIGH_ADDR(i32 %34)
  %36 = load i32*, i32** %4, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %38, 16
  %40 = load i32*, i32** %4, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 %42, 8
  %44 = or i32 %39, %43
  %45 = load i32*, i32** %4, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %44, %47
  %49 = call i32 @vsc_write(i32 %33, i32 %35, i32 %48)
  %50 = load %struct.cmac*, %struct.cmac** %3, align 8
  %51 = getelementptr inbounds %struct.cmac, %struct.cmac* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @REG_ING_FFILT_UM_EN, align 4
  %54 = call i32 @vsc_read(i32 %52, i32 %53, i32* %5)
  %55 = load i32, i32* %5, align 4
  %56 = and i32 %55, 268435455
  store i32 %56, i32* %5, align 4
  %57 = load %struct.cmac*, %struct.cmac** %3, align 8
  %58 = getelementptr inbounds %struct.cmac, %struct.cmac* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @REG_ING_FFILT_UM_EN, align 4
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %6, align 4
  %63 = shl i32 %62, 28
  %64 = or i32 %61, %63
  %65 = call i32 @vsc_write(i32 %59, i32 %60, i32 %64)
  %66 = load %struct.cmac*, %struct.cmac** %3, align 8
  %67 = getelementptr inbounds %struct.cmac, %struct.cmac* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @REG_ING_FFILT_MASK0, align 4
  %70 = load i32*, i32** %4, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 4
  %72 = load i32, i32* %71, align 4
  %73 = shl i32 %72, 8
  %74 = or i32 -65536, %73
  %75 = load i32*, i32** %4, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 5
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %74, %77
  %79 = call i32 @vsc_write(i32 %68, i32 %69, i32 %78)
  %80 = load %struct.cmac*, %struct.cmac** %3, align 8
  %81 = getelementptr inbounds %struct.cmac, %struct.cmac* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @REG_ING_FFILT_MASK1, align 4
  %84 = load i32*, i32** %4, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 2
  %86 = load i32, i32* %85, align 4
  %87 = shl i32 %86, 8
  %88 = or i32 -65536, %87
  %89 = load i32*, i32** %4, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 3
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %88, %91
  %93 = call i32 @vsc_write(i32 %82, i32 %83, i32 %92)
  %94 = load %struct.cmac*, %struct.cmac** %3, align 8
  %95 = getelementptr inbounds %struct.cmac, %struct.cmac* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @REG_ING_FFILT_MASK2, align 4
  %98 = load i32*, i32** %4, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = shl i32 %100, 8
  %102 = or i32 -65536, %101
  %103 = load i32*, i32** %4, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %102, %105
  %107 = call i32 @vsc_write(i32 %96, i32 %97, i32 %106)
  ret i32 0
}

declare dso_local i32 @vsc_write(i32, i32, i32) #1

declare dso_local i32 @REG_MAC_LOW_ADDR(i32) #1

declare dso_local i32 @REG_MAC_HIGH_ADDR(i32) #1

declare dso_local i32 @vsc_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
