; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_init_chip.c_bringup_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_init_chip.c_bringup_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_devdata = type { i32, i32, i32, i32, {}*, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@INFINIPATH_C_LINKENABLE = common dso_local global i32 0, align 4
@INFINIPATH_IBCC_FLOWCTRLWATERMARK_SHIFT = common dso_local global i32 0, align 4
@INFINIPATH_IBCC_FLOWCTRLPERIOD_SHIFT = common dso_local global i32 0, align 4
@INFINIPATH_IBCC_PHYERRTHRESHOLD_SHIFT = common dso_local global i32 0, align 4
@INFINIPATH_IBCC_CREDITSCALE_SHIFT = common dso_local global i64 0, align 8
@INFINIPATH_IBCC_OVERRUNTHRESHOLD_SHIFT = common dso_local global i32 0, align 4
@INFINIPATH_IBCC_LINKINITCMD_DISABLE = common dso_local global i32 0, align 4
@INFINIPATH_IBCC_LINKINITCMD_SHIFT = common dso_local global i32 0, align 4
@IPATH_IB_LINK_DISABLED = common dso_local global i32 0, align 4
@VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Writing 0x%llx to ibcctrl\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Could not initialize SerDes, not usable\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipath_devdata*)* @bringup_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bringup_link(%struct.ipath_devdata* %0) #0 {
  %2 = alloca %struct.ipath_devdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @INFINIPATH_C_LINKENABLE, align 4
  %7 = xor i32 %6, -1
  %8 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %9 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = and i32 %10, %7
  store i32 %11, i32* %9, align 8
  %12 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %13 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %14 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %13, i32 0, i32 5
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %19 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %12, i32 %17, i32 %20)
  %22 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %23 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %24, 2
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %29 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = shl i32 %27, %30
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* @INFINIPATH_IBCC_FLOWCTRLWATERMARK_SHIFT, align 4
  %33 = zext i32 %32 to i64
  %34 = shl i64 5, %33
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = or i64 %36, %34
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* @INFINIPATH_IBCC_FLOWCTRLPERIOD_SHIFT, align 4
  %40 = zext i32 %39 to i64
  %41 = shl i64 3, %40
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = or i64 %43, %41
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* @INFINIPATH_IBCC_PHYERRTHRESHOLD_SHIFT, align 4
  %47 = zext i32 %46 to i64
  %48 = shl i64 15, %47
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = or i64 %50, %48
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %4, align 4
  %53 = load i64, i64* @INFINIPATH_IBCC_CREDITSCALE_SHIFT, align 8
  %54 = shl i64 4, %53
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = or i64 %56, %54
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* @INFINIPATH_IBCC_OVERRUNTHRESHOLD_SHIFT, align 4
  %60 = zext i32 %59 to i64
  %61 = shl i64 15, %60
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = or i64 %63, %61
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %68 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @INFINIPATH_IBCC_LINKINITCMD_DISABLE, align 4
  %70 = load i32, i32* @INFINIPATH_IBCC_LINKINITCMD_SHIFT, align 4
  %71 = shl i32 %69, %70
  %72 = load i32, i32* %4, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* @IPATH_IB_LINK_DISABLED, align 4
  %75 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %76 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %75, i32 0, i32 7
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  %79 = load i32, i32* @VERBOSE, align 4
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = call i32 @ipath_cdbg(i32 %79, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %81)
  %83 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %84 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %85 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %84, i32 0, i32 5
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %83, i32 %88, i32 %89)
  %91 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %92 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %93 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %92, i32 0, i32 5
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @ipath_read_kreg64(%struct.ipath_devdata* %91, i32 %96)
  store i32 %97, i32* %3, align 4
  %98 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %99 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %98, i32 0, i32 4
  %100 = bitcast {}** %99 to i32 (%struct.ipath_devdata*)**
  %101 = load i32 (%struct.ipath_devdata*)*, i32 (%struct.ipath_devdata*)** %100, align 8
  %102 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %103 = call i32 %101(%struct.ipath_devdata* %102)
  store i32 %103, i32* %5, align 4
  %104 = load i32, i32* %5, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %1
  %107 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %108 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %107, i32 0, i32 6
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = call i32 @dev_info(i32* %110, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %128

112:                                              ; preds = %1
  %113 = load i32, i32* @INFINIPATH_C_LINKENABLE, align 4
  %114 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %115 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 8
  %118 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %119 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %120 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %119, i32 0, i32 5
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %125 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %118, i32 %123, i32 %126)
  br label %128

128:                                              ; preds = %112, %106
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

declare dso_local i32 @ipath_write_kreg(%struct.ipath_devdata*, i32, i32) #1

declare dso_local i32 @ipath_cdbg(i32, i8*, i64) #1

declare dso_local i32 @ipath_read_kreg64(%struct.ipath_devdata*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
