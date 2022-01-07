; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_pm3393.c_pm3393_macaddress_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_pm3393.c_pm3393_macaddress_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmac = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@MAC_DIRECTION_RX = common dso_local global i32 0, align 4
@MAC_DIRECTION_TX = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_RXXG_SA_15_0 = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_RXXG_SA_31_16 = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_RXXG_SA_47_32 = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_TXXG_SA_15_0 = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_TXXG_SA_31_16 = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_TXXG_SA_47_32 = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_RXXG_ADDRESS_FILTER_CONTROL_0 = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_RXXG_EXACT_MATCH_ADDR_1_LOW = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_RXXG_EXACT_MATCH_ADDR_1_MID = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_RXXG_EXACT_MATCH_ADDR_1_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmac*, i64*)* @pm3393_macaddress_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm3393_macaddress_set(%struct.cmac* %0, i64* %1) #0 {
  %3 = alloca %struct.cmac*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cmac* %0, %struct.cmac** %3, align 8
  store i64* %1, i64** %4, align 8
  %10 = load %struct.cmac*, %struct.cmac** %3, align 8
  %11 = getelementptr inbounds %struct.cmac, %struct.cmac* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %9, align 4
  %15 = load %struct.cmac*, %struct.cmac** %3, align 8
  %16 = getelementptr inbounds %struct.cmac, %struct.cmac* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i64*, i64** %4, align 8
  %21 = call i32 @memcpy(i32 %19, i64* %20, i32 6)
  %22 = load i64*, i64** %4, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 1
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = shl i32 %25, 8
  %27 = load i64*, i64** %4, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = or i32 %26, %30
  store i32 %31, i32* %6, align 4
  %32 = load i64*, i64** %4, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 3
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = shl i32 %35, 8
  %37 = load i64*, i64** %4, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 2
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = or i32 %36, %40
  store i32 %41, i32* %7, align 4
  %42 = load i64*, i64** %4, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 5
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = shl i32 %45, 8
  %47 = load i64*, i64** %4, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 4
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = or i32 %46, %50
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %2
  %55 = load %struct.cmac*, %struct.cmac** %3, align 8
  %56 = load i32, i32* @MAC_DIRECTION_RX, align 4
  %57 = load i32, i32* @MAC_DIRECTION_TX, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @pm3393_disable(%struct.cmac* %55, i32 %58)
  br label %60

60:                                               ; preds = %54, %2
  %61 = load %struct.cmac*, %struct.cmac** %3, align 8
  %62 = load i32, i32* @SUNI1x10GEXP_REG_RXXG_SA_15_0, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @pmwrite(%struct.cmac* %61, i32 %62, i32 %63)
  %65 = load %struct.cmac*, %struct.cmac** %3, align 8
  %66 = load i32, i32* @SUNI1x10GEXP_REG_RXXG_SA_31_16, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @pmwrite(%struct.cmac* %65, i32 %66, i32 %67)
  %69 = load %struct.cmac*, %struct.cmac** %3, align 8
  %70 = load i32, i32* @SUNI1x10GEXP_REG_RXXG_SA_47_32, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @pmwrite(%struct.cmac* %69, i32 %70, i32 %71)
  %73 = load %struct.cmac*, %struct.cmac** %3, align 8
  %74 = load i32, i32* @SUNI1x10GEXP_REG_TXXG_SA_15_0, align 4
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @pmwrite(%struct.cmac* %73, i32 %74, i32 %75)
  %77 = load %struct.cmac*, %struct.cmac** %3, align 8
  %78 = load i32, i32* @SUNI1x10GEXP_REG_TXXG_SA_31_16, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @pmwrite(%struct.cmac* %77, i32 %78, i32 %79)
  %81 = load %struct.cmac*, %struct.cmac** %3, align 8
  %82 = load i32, i32* @SUNI1x10GEXP_REG_TXXG_SA_47_32, align 4
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @pmwrite(%struct.cmac* %81, i32 %82, i32 %83)
  %85 = load %struct.cmac*, %struct.cmac** %3, align 8
  %86 = load i32, i32* @SUNI1x10GEXP_REG_RXXG_ADDRESS_FILTER_CONTROL_0, align 4
  %87 = call i32 @pmread(%struct.cmac* %85, i32 %86, i32* %5)
  %88 = load i32, i32* %5, align 4
  %89 = and i32 %88, 65295
  store i32 %89, i32* %5, align 4
  %90 = load %struct.cmac*, %struct.cmac** %3, align 8
  %91 = load i32, i32* @SUNI1x10GEXP_REG_RXXG_ADDRESS_FILTER_CONTROL_0, align 4
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @pmwrite(%struct.cmac* %90, i32 %91, i32 %92)
  %94 = load %struct.cmac*, %struct.cmac** %3, align 8
  %95 = load i32, i32* @SUNI1x10GEXP_REG_RXXG_EXACT_MATCH_ADDR_1_LOW, align 4
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @pmwrite(%struct.cmac* %94, i32 %95, i32 %96)
  %98 = load %struct.cmac*, %struct.cmac** %3, align 8
  %99 = load i32, i32* @SUNI1x10GEXP_REG_RXXG_EXACT_MATCH_ADDR_1_MID, align 4
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @pmwrite(%struct.cmac* %98, i32 %99, i32 %100)
  %102 = load %struct.cmac*, %struct.cmac** %3, align 8
  %103 = load i32, i32* @SUNI1x10GEXP_REG_RXXG_EXACT_MATCH_ADDR_1_HIGH, align 4
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @pmwrite(%struct.cmac* %102, i32 %103, i32 %104)
  %106 = load i32, i32* %5, align 4
  %107 = or i32 %106, 144
  store i32 %107, i32* %5, align 4
  %108 = load %struct.cmac*, %struct.cmac** %3, align 8
  %109 = load i32, i32* @SUNI1x10GEXP_REG_RXXG_ADDRESS_FILTER_CONTROL_0, align 4
  %110 = load i32, i32* %5, align 4
  %111 = call i32 @pmwrite(%struct.cmac* %108, i32 %109, i32 %110)
  %112 = load i32, i32* %9, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %60
  %115 = load %struct.cmac*, %struct.cmac** %3, align 8
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @pm3393_enable(%struct.cmac* %115, i32 %116)
  br label %118

118:                                              ; preds = %114, %60
  ret i32 0
}

declare dso_local i32 @memcpy(i32, i64*, i32) #1

declare dso_local i32 @pm3393_disable(%struct.cmac*, i32) #1

declare dso_local i32 @pmwrite(%struct.cmac*, i32, i32) #1

declare dso_local i32 @pmread(%struct.cmac*, i32, i32*) #1

declare dso_local i32 @pm3393_enable(%struct.cmac*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
