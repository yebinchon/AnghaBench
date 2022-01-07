; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_verbs.c_nes_query_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_verbs.c_nes_query_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_device_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.nes_vnic = type { %struct.TYPE_3__*, %struct.nes_ib_device*, %struct.nes_device* }
%struct.TYPE_3__ = type { i32 }
%struct.nes_ib_device = type { i32, i32, i32, i32 }
%struct.nes_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i64, i32, i32, i32, i32, i32 }

@IB_ATOMIC_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, %struct.ib_device_attr*)* @nes_query_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nes_query_device(%struct.ib_device* %0, %struct.ib_device_attr* %1) #0 {
  %3 = alloca %struct.ib_device*, align 8
  %4 = alloca %struct.ib_device_attr*, align 8
  %5 = alloca %struct.nes_vnic*, align 8
  %6 = alloca %struct.nes_device*, align 8
  %7 = alloca %struct.nes_ib_device*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %3, align 8
  store %struct.ib_device_attr* %1, %struct.ib_device_attr** %4, align 8
  %8 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %9 = call %struct.nes_vnic* @to_nesvnic(%struct.ib_device* %8)
  store %struct.nes_vnic* %9, %struct.nes_vnic** %5, align 8
  %10 = load %struct.nes_vnic*, %struct.nes_vnic** %5, align 8
  %11 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %10, i32 0, i32 2
  %12 = load %struct.nes_device*, %struct.nes_device** %11, align 8
  store %struct.nes_device* %12, %struct.nes_device** %6, align 8
  %13 = load %struct.nes_vnic*, %struct.nes_vnic** %5, align 8
  %14 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %13, i32 0, i32 1
  %15 = load %struct.nes_ib_device*, %struct.nes_ib_device** %14, align 8
  store %struct.nes_ib_device* %15, %struct.nes_ib_device** %7, align 8
  %16 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %17 = call i32 @memset(%struct.ib_device_attr* %16, i32 0, i32 88)
  %18 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %19 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %18, i32 0, i32 19
  %20 = load %struct.nes_vnic*, %struct.nes_vnic** %5, align 8
  %21 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @memcpy(i32* %19, i32 %24, i32 6)
  %26 = load %struct.nes_device*, %struct.nes_device** %6, align 8
  %27 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 8
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %32 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %31, i32 0, i32 18
  store i32 %30, i32* %32, align 4
  %33 = load %struct.nes_device*, %struct.nes_device** %6, align 8
  %34 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %39 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %38, i32 0, i32 17
  store i32 %37, i32* %39, align 8
  %40 = load %struct.nes_device*, %struct.nes_device** %6, align 8
  %41 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %46 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %45, i32 0, i32 16
  store i32 %44, i32* %46, align 4
  %47 = load %struct.nes_device*, %struct.nes_device** %6, align 8
  %48 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %53 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %52, i32 0, i32 15
  store i32 %51, i32* %53, align 8
  %54 = load %struct.nes_device*, %struct.nes_device** %6, align 8
  %55 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %60 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %59, i32 0, i32 14
  store i32 %58, i32* %60, align 4
  %61 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %62 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %61, i32 0, i32 0
  store i32 -2147483648, i32* %62, align 8
  %63 = load %struct.nes_ib_device*, %struct.nes_ib_device** %7, align 8
  %64 = getelementptr inbounds %struct.nes_ib_device, %struct.nes_ib_device* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %67 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %66, i32 0, i32 13
  store i32 %65, i32* %67, align 8
  %68 = load %struct.nes_device*, %struct.nes_device** %6, align 8
  %69 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = sub nsw i64 %72, 2
  %74 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %75 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %74, i32 0, i32 12
  store i64 %73, i64* %75, align 8
  %76 = load %struct.nes_device*, %struct.nes_device** %6, align 8
  %77 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %82 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %81, i32 0, i32 11
  store i32 %80, i32* %82, align 4
  %83 = load %struct.nes_ib_device*, %struct.nes_ib_device** %7, align 8
  %84 = getelementptr inbounds %struct.nes_ib_device, %struct.nes_ib_device* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %87 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %86, i32 0, i32 10
  store i32 %85, i32* %87, align 8
  %88 = load %struct.nes_device*, %struct.nes_device** %6, align 8
  %89 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %88, i32 0, i32 0
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %94 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %93, i32 0, i32 9
  store i32 %92, i32* %94, align 4
  %95 = load %struct.nes_ib_device*, %struct.nes_ib_device** %7, align 8
  %96 = getelementptr inbounds %struct.nes_ib_device, %struct.nes_ib_device* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %99 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %98, i32 0, i32 8
  store i32 %97, i32* %99, align 8
  %100 = load %struct.nes_ib_device*, %struct.nes_ib_device** %7, align 8
  %101 = getelementptr inbounds %struct.nes_ib_device, %struct.nes_ib_device* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %104 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %103, i32 0, i32 7
  store i32 %102, i32* %104, align 4
  %105 = load %struct.nes_ib_device*, %struct.nes_ib_device** %7, align 8
  %106 = getelementptr inbounds %struct.nes_ib_device, %struct.nes_ib_device* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %109 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %108, i32 0, i32 6
  store i32 %107, i32* %109, align 8
  %110 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %111 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %110, i32 0, i32 1
  store i32 1, i32* %111, align 4
  %112 = load %struct.nes_device*, %struct.nes_device** %6, align 8
  %113 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %112, i32 0, i32 0
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  switch i32 %116, label %129 [
    i32 0, label %117
    i32 1, label %120
    i32 2, label %123
    i32 3, label %126
  ]

117:                                              ; preds = %2
  %118 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %119 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %118, i32 0, i32 2
  store i32 2, i32* %119, align 8
  br label %132

120:                                              ; preds = %2
  %121 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %122 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %121, i32 0, i32 2
  store i32 8, i32* %122, align 8
  br label %132

123:                                              ; preds = %2
  %124 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %125 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %124, i32 0, i32 2
  store i32 32, i32* %125, align 8
  br label %132

126:                                              ; preds = %2
  %127 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %128 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %127, i32 0, i32 2
  store i32 64, i32* %128, align 8
  br label %132

129:                                              ; preds = %2
  %130 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %131 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %130, i32 0, i32 2
  store i32 0, i32* %131, align 8
  br label %132

132:                                              ; preds = %129, %126, %123, %120, %117
  %133 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %134 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %137 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %136, i32 0, i32 3
  store i32 %135, i32* %137, align 4
  %138 = load i32, i32* @IB_ATOMIC_NONE, align 4
  %139 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %140 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %139, i32 0, i32 5
  store i32 %138, i32* %140, align 4
  %141 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %142 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %141, i32 0, i32 4
  store i32 1, i32* %142, align 8
  ret i32 0
}

declare dso_local %struct.nes_vnic* @to_nesvnic(%struct.ib_device*) #1

declare dso_local i32 @memset(%struct.ib_device_attr*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
