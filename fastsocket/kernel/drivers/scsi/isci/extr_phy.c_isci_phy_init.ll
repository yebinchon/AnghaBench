; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_phy.c_isci_phy_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_phy.c_isci_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_phy = type { i32, %struct.TYPE_6__, i32* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, %struct.isci_phy*, i32*, i32*, i32* }
%struct.isci_host = type { i32, %struct.sci_oem_params }
%struct.sci_oem_params = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@SAS = common dso_local global i32 0, align 4
@SAS_PROTOCOL_ALL = common dso_local global i32 0, align 4
@PHY_TYPE_PHYSICAL = common dso_local global i32 0, align 4
@PHY_ROLE_INITIATOR = common dso_local global i32 0, align 4
@OOB_NOT_CONNECTED = common dso_local global i32 0, align 4
@SAS_LINK_RATE_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isci_phy_init(%struct.isci_phy* %0, %struct.isci_host* %1, i32 %2) #0 {
  %4 = alloca %struct.isci_phy*, align 8
  %5 = alloca %struct.isci_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sci_oem_params*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.isci_phy* %0, %struct.isci_phy** %4, align 8
  store %struct.isci_host* %1, %struct.isci_host** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.isci_host*, %struct.isci_host** %5, align 8
  %11 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %10, i32 0, i32 1
  store %struct.sci_oem_params* %11, %struct.sci_oem_params** %7, align 8
  %12 = load %struct.sci_oem_params*, %struct.sci_oem_params** %7, align 8
  %13 = getelementptr inbounds %struct.sci_oem_params, %struct.sci_oem_params* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = shl i32 %21, 32
  store i32 %22, i32* %8, align 4
  %23 = load %struct.sci_oem_params*, %struct.sci_oem_params** %7, align 8
  %24 = getelementptr inbounds %struct.sci_oem_params, %struct.sci_oem_params* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %8, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @cpu_to_be64(i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load %struct.isci_phy*, %struct.isci_phy** %4, align 8
  %37 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @memcpy(i32* %38, i32* %9, i32 4)
  %40 = load %struct.isci_phy*, %struct.isci_phy** %4, align 8
  %41 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.isci_phy*, %struct.isci_phy** %4, align 8
  %45 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 4
  %47 = load %struct.isci_phy*, %struct.isci_phy** %4, align 8
  %48 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load %struct.isci_phy*, %struct.isci_phy** %4, align 8
  %52 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 12
  store i32* %50, i32** %53, align 8
  %54 = load %struct.isci_phy*, %struct.isci_phy** %4, align 8
  %55 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %54, i32 0, i32 0
  %56 = load %struct.isci_phy*, %struct.isci_phy** %4, align 8
  %57 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 11
  store i32* %55, i32** %58, align 8
  %59 = load %struct.isci_host*, %struct.isci_host** %5, align 8
  %60 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %59, i32 0, i32 0
  %61 = load %struct.isci_phy*, %struct.isci_phy** %4, align 8
  %62 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 10
  store i32* %60, i32** %63, align 8
  %64 = load %struct.isci_phy*, %struct.isci_phy** %4, align 8
  %65 = load %struct.isci_phy*, %struct.isci_phy** %4, align 8
  %66 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 9
  store %struct.isci_phy* %64, %struct.isci_phy** %67, align 8
  %68 = load %struct.isci_phy*, %struct.isci_phy** %4, align 8
  %69 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  store i32 1, i32* %70, align 8
  %71 = load i32, i32* @SAS, align 4
  %72 = load %struct.isci_phy*, %struct.isci_phy** %4, align 8
  %73 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 8
  store i32 %71, i32* %74, align 4
  %75 = load i32, i32* @SAS_PROTOCOL_ALL, align 4
  %76 = load %struct.isci_phy*, %struct.isci_phy** %4, align 8
  %77 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 7
  store i32 %75, i32* %78, align 8
  %79 = load %struct.isci_phy*, %struct.isci_phy** %4, align 8
  %80 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 6
  store i64 0, i64* %81, align 8
  %82 = load i32, i32* @PHY_TYPE_PHYSICAL, align 4
  %83 = load %struct.isci_phy*, %struct.isci_phy** %4, align 8
  %84 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 5
  store i32 %82, i32* %85, align 4
  %86 = load i32, i32* @PHY_ROLE_INITIATOR, align 4
  %87 = load %struct.isci_phy*, %struct.isci_phy** %4, align 8
  %88 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 4
  store i32 %86, i32* %89, align 8
  %90 = load i32, i32* @OOB_NOT_CONNECTED, align 4
  %91 = load %struct.isci_phy*, %struct.isci_phy** %4, align 8
  %92 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 3
  store i32 %90, i32* %93, align 4
  %94 = load i32, i32* @SAS_LINK_RATE_UNKNOWN, align 4
  %95 = load %struct.isci_phy*, %struct.isci_phy** %4, align 8
  %96 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 2
  store i32 %94, i32* %97, align 8
  %98 = load %struct.isci_phy*, %struct.isci_phy** %4, align 8
  %99 = getelementptr inbounds %struct.isci_phy, %struct.isci_phy* %98, i32 0, i32 0
  %100 = call i32 @memset(i32* %99, i32 0, i32 4)
  ret void
}

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
