; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_query_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_query_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_device_attr = type { i64, i32, i32, i32, i32, i32, i64, i32, i32, i64, i8*, i64, i64, i64, i32, i64, i32, i32, i32, i64, i8*, i32, i64, i64, i64, i32, i32, i32, i32 }
%struct.ocrdma_dev = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@IB_DEVICE_CURR_QP_STATE_MOD = common dso_local global i32 0, align 4
@IB_DEVICE_RC_RNR_NAK_GEN = common dso_local global i32 0, align 4
@IB_DEVICE_SHUTDOWN_PORT = common dso_local global i32 0, align 4
@IB_DEVICE_SYS_IMAGE_GUID = common dso_local global i32 0, align 4
@IB_DEVICE_LOCAL_DMA_LKEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocrdma_query_device(%struct.ib_device* %0, %struct.ib_device_attr* %1) #0 {
  %3 = alloca %struct.ib_device*, align 8
  %4 = alloca %struct.ib_device_attr*, align 8
  %5 = alloca %struct.ocrdma_dev*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %3, align 8
  store %struct.ib_device_attr* %1, %struct.ib_device_attr** %4, align 8
  %6 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %7 = call %struct.ocrdma_dev* @get_ocrdma_dev(%struct.ib_device* %6)
  store %struct.ocrdma_dev* %7, %struct.ocrdma_dev** %5, align 8
  %8 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %9 = call i32 @memset(%struct.ib_device_attr* %8, i32 0, i32 184)
  %10 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %11 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %10, i32 0, i32 28
  %12 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %5, align 8
  %13 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 12
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = call i8* @min(i32 8, i32 4)
  %18 = call i32 @memcpy(i32* %11, i32* %16, i8* %17)
  %19 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %5, align 8
  %20 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %21 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %20, i32 0, i32 27
  %22 = call i32 @ocrdma_get_guid(%struct.ocrdma_dev* %19, i32* %21)
  %23 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %24 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %23, i32 0, i32 0
  store i64 -1, i64* %24, align 8
  %25 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %26 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %25, i32 0, i32 1
  store i32 268431360, i32* %26, align 8
  %27 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %5, align 8
  %28 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %34 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %33, i32 0, i32 26
  store i32 %32, i32* %34, align 4
  %35 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %5, align 8
  %36 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %42 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %41, i32 0, i32 25
  store i32 %40, i32* %42, align 8
  %43 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %44 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %43, i32 0, i32 24
  store i64 0, i64* %44, align 8
  %45 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %5, align 8
  %46 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 6
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %50 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %49, i32 0, i32 23
  store i64 %48, i64* %50, align 8
  %51 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %5, align 8
  %52 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 6
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %56 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %55, i32 0, i32 22
  store i64 %54, i64* %56, align 8
  %57 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %5, align 8
  %58 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 11
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %62 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %61, i32 0, i32 21
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* @IB_DEVICE_CURR_QP_STATE_MOD, align 4
  %64 = load i32, i32* @IB_DEVICE_RC_RNR_NAK_GEN, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @IB_DEVICE_SHUTDOWN_PORT, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @IB_DEVICE_SYS_IMAGE_GUID, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @IB_DEVICE_LOCAL_DMA_LKEY, align 4
  %71 = or i32 %69, %70
  %72 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %73 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 4
  %74 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %5, align 8
  %75 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %5, align 8
  %79 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @min(i32 %77, i32 %81)
  %83 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %84 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %83, i32 0, i32 20
  store i8* %82, i8** %84, align 8
  %85 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %86 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %85, i32 0, i32 19
  store i64 0, i64* %86, align 8
  %87 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %5, align 8
  %88 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 10
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %92 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %91, i32 0, i32 18
  store i32 %90, i32* %92, align 8
  %93 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %5, align 8
  %94 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 9
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %98 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %97, i32 0, i32 17
  store i32 %96, i32* %98, align 4
  %99 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %5, align 8
  %100 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 8
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %104 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %103, i32 0, i32 16
  store i32 %102, i32* %104, align 8
  %105 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %106 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %105, i32 0, i32 15
  store i64 0, i64* %106, align 8
  %107 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %5, align 8
  %108 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 7
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %112 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %111, i32 0, i32 14
  store i32 %110, i32* %112, align 8
  %113 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %114 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %113, i32 0, i32 13
  store i64 0, i64* %114, align 8
  %115 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %116 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %115, i32 0, i32 12
  store i64 0, i64* %116, align 8
  %117 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %118 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %117, i32 0, i32 11
  store i64 0, i64* %118, align 8
  %119 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %5, align 8
  %120 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %5, align 8
  %124 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = call i8* @min(i32 %122, i32 %126)
  %128 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %129 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %128, i32 0, i32 10
  store i8* %127, i8** %129, align 8
  %130 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %5, align 8
  %131 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %135 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %134, i32 0, i32 3
  store i32 %133, i32* %135, align 8
  %136 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %5, align 8
  %137 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 6
  %139 = load i64, i64* %138, align 8
  %140 = sub nsw i64 %139, 1
  %141 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %142 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %141, i32 0, i32 9
  store i64 %140, i64* %142, align 8
  %143 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %5, align 8
  %144 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %148 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %147, i32 0, i32 4
  store i32 %146, i32* %148, align 4
  %149 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %5, align 8
  %150 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 5
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %154 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %153, i32 0, i32 8
  store i32 %152, i32* %154, align 4
  %155 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %5, align 8
  %156 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %160 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %159, i32 0, i32 7
  store i32 %158, i32* %160, align 8
  %161 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %162 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %161, i32 0, i32 6
  store i64 0, i64* %162, align 8
  %163 = load %struct.ib_device_attr*, %struct.ib_device_attr** %4, align 8
  %164 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %163, i32 0, i32 5
  store i32 1, i32* %164, align 8
  ret i32 0
}

declare dso_local %struct.ocrdma_dev* @get_ocrdma_dev(%struct.ib_device*) #1

declare dso_local i32 @memset(%struct.ib_device_attr*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i8*) #1

declare dso_local i8* @min(i32, i32) #1

declare dso_local i32 @ocrdma_get_guid(%struct.ocrdma_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
