; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_fba.c_dasd_fba_check_characteristics.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_fba.c_dasd_fba_check_characteristics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { %struct.ccw_device*, i32, %struct.TYPE_4__, i32, i32*, %struct.dasd_block* }
%struct.ccw_device = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.dasd_block = type { %struct.dasd_device* }
%struct.dasd_fba_private = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Allocating memory for private DASD data failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@DBF_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"could not allocate dasd block structure\00", align 1
@DASD_FBA_MAGIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"Read device characteristics returned error %d\00", align 1
@DASD_EXPIRES = common dso_local global i32 0, align 4
@LPM_ANYPATH = common dso_local global i32 0, align 4
@DASD_FLAG_DEVICE_RO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [65 x i8] c"New FBA DASD %04X/%02X (CU %04X/%02X) with %d MB and %d B/blk%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c", read-only device\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_device*)* @dasd_fba_check_characteristics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_fba_check_characteristics(%struct.dasd_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dasd_device*, align 8
  %4 = alloca %struct.dasd_block*, align 8
  %5 = alloca %struct.dasd_fba_private*, align 8
  %6 = alloca %struct.ccw_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dasd_device* %0, %struct.dasd_device** %3, align 8
  %9 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %10 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %9, i32 0, i32 0
  %11 = load %struct.ccw_device*, %struct.ccw_device** %10, align 8
  store %struct.ccw_device* %11, %struct.ccw_device** %6, align 8
  %12 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %13 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %12, i32 0, i32 4
  %14 = load i32*, i32** %13, align 8
  %15 = bitcast i32* %14 to %struct.dasd_fba_private*
  store %struct.dasd_fba_private* %15, %struct.dasd_fba_private** %5, align 8
  %16 = load %struct.dasd_fba_private*, %struct.dasd_fba_private** %5, align 8
  %17 = icmp ne %struct.dasd_fba_private* %16, null
  br i1 %17, label %39, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = load i32, i32* @GFP_DMA, align 4
  %21 = or i32 %19, %20
  %22 = call %struct.dasd_fba_private* @kzalloc(i32 8, i32 %21)
  store %struct.dasd_fba_private* %22, %struct.dasd_fba_private** %5, align 8
  %23 = load %struct.dasd_fba_private*, %struct.dasd_fba_private** %5, align 8
  %24 = icmp ne %struct.dasd_fba_private* %23, null
  br i1 %24, label %33, label %25

25:                                               ; preds = %18
  %26 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %27 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %26, i32 0, i32 0
  %28 = load %struct.ccw_device*, %struct.ccw_device** %27, align 8
  %29 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %28, i32 0, i32 1
  %30 = call i32 @dev_warn(i32* %29, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %143

33:                                               ; preds = %18
  %34 = load %struct.dasd_fba_private*, %struct.dasd_fba_private** %5, align 8
  %35 = bitcast %struct.dasd_fba_private* %34 to i8*
  %36 = bitcast i8* %35 to i32*
  %37 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %38 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %37, i32 0, i32 4
  store i32* %36, i32** %38, align 8
  br label %42

39:                                               ; preds = %1
  %40 = load %struct.dasd_fba_private*, %struct.dasd_fba_private** %5, align 8
  %41 = call i32 @memset(%struct.dasd_fba_private* %40, i32 0, i32 8)
  br label %42

42:                                               ; preds = %39, %33
  %43 = call %struct.dasd_block* (...) @dasd_alloc_block()
  store %struct.dasd_block* %43, %struct.dasd_block** %4, align 8
  %44 = load %struct.dasd_block*, %struct.dasd_block** %4, align 8
  %45 = call i64 @IS_ERR(%struct.dasd_block* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %42
  %48 = load i32, i32* @DBF_WARNING, align 4
  %49 = load %struct.ccw_device*, %struct.ccw_device** %6, align 8
  %50 = call i32 (i32, %struct.ccw_device*, i8*, ...) @DBF_EVENT_DEVID(i32 %48, %struct.ccw_device* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %51 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %52 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %51, i32 0, i32 4
  store i32* null, i32** %52, align 8
  %53 = load %struct.dasd_fba_private*, %struct.dasd_fba_private** %5, align 8
  %54 = call i32 @kfree(%struct.dasd_fba_private* %53)
  %55 = load %struct.dasd_block*, %struct.dasd_block** %4, align 8
  %56 = call i32 @PTR_ERR(%struct.dasd_block* %55)
  store i32 %56, i32* %2, align 4
  br label %143

57:                                               ; preds = %42
  %58 = load %struct.dasd_block*, %struct.dasd_block** %4, align 8
  %59 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %60 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %59, i32 0, i32 5
  store %struct.dasd_block* %58, %struct.dasd_block** %60, align 8
  %61 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %62 = load %struct.dasd_block*, %struct.dasd_block** %4, align 8
  %63 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %62, i32 0, i32 0
  store %struct.dasd_device* %61, %struct.dasd_device** %63, align 8
  %64 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %65 = load i32, i32* @DASD_FBA_MAGIC, align 4
  %66 = load %struct.dasd_fba_private*, %struct.dasd_fba_private** %5, align 8
  %67 = getelementptr inbounds %struct.dasd_fba_private, %struct.dasd_fba_private* %66, i32 0, i32 0
  %68 = call i32 @dasd_generic_read_dev_chars(%struct.dasd_device* %64, i32 %65, %struct.TYPE_6__* %67, i32 32)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %85

71:                                               ; preds = %57
  %72 = load i32, i32* @DBF_WARNING, align 4
  %73 = load %struct.ccw_device*, %struct.ccw_device** %6, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i32 (i32, %struct.ccw_device*, i8*, ...) @DBF_EVENT_DEVID(i32 %72, %struct.ccw_device* %73, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  %76 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %77 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %76, i32 0, i32 5
  store %struct.dasd_block* null, %struct.dasd_block** %77, align 8
  %78 = load %struct.dasd_block*, %struct.dasd_block** %4, align 8
  %79 = call i32 @dasd_free_block(%struct.dasd_block* %78)
  %80 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %81 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %80, i32 0, i32 4
  store i32* null, i32** %81, align 8
  %82 = load %struct.dasd_fba_private*, %struct.dasd_fba_private** %5, align 8
  %83 = call i32 @kfree(%struct.dasd_fba_private* %82)
  %84 = load i32, i32* %7, align 4
  store i32 %84, i32* %2, align 4
  br label %143

85:                                               ; preds = %57
  %86 = load i32, i32* @DASD_EXPIRES, align 4
  %87 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %88 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 8
  %89 = load i32, i32* @LPM_ANYPATH, align 4
  %90 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %91 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  store i32 %89, i32* %92, align 4
  %93 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %94 = call i32 @dasd_device_is_ro(%struct.dasd_device* %93)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %85
  %98 = load i32, i32* @DASD_FLAG_DEVICE_RO, align 4
  %99 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %100 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %99, i32 0, i32 1
  %101 = call i32 @set_bit(i32 %98, i32* %100)
  br label %102

102:                                              ; preds = %97, %85
  %103 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %104 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %103, i32 0, i32 0
  %105 = load %struct.ccw_device*, %struct.ccw_device** %104, align 8
  %106 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %105, i32 0, i32 1
  %107 = load %struct.ccw_device*, %struct.ccw_device** %6, align 8
  %108 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.ccw_device*, %struct.ccw_device** %6, align 8
  %112 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.ccw_device*, %struct.ccw_device** %6, align 8
  %116 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.ccw_device*, %struct.ccw_device** %6, align 8
  %120 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.dasd_fba_private*, %struct.dasd_fba_private** %5, align 8
  %124 = getelementptr inbounds %struct.dasd_fba_private, %struct.dasd_fba_private* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.dasd_fba_private*, %struct.dasd_fba_private** %5, align 8
  %128 = getelementptr inbounds %struct.dasd_fba_private, %struct.dasd_fba_private* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = ashr i32 %130, 9
  %132 = mul nsw i32 %126, %131
  %133 = ashr i32 %132, 11
  %134 = load %struct.dasd_fba_private*, %struct.dasd_fba_private** %5, align 8
  %135 = getelementptr inbounds %struct.dasd_fba_private, %struct.dasd_fba_private* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %8, align 4
  %139 = icmp ne i32 %138, 0
  %140 = zext i1 %139 to i64
  %141 = select i1 %139, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %142 = call i32 @dev_info(i32* %106, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0), i32 %110, i32 %114, i32 %118, i32 %122, i32 %133, i32 %137, i8* %141)
  store i32 0, i32* %2, align 4
  br label %143

143:                                              ; preds = %102, %71, %47, %25
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local %struct.dasd_fba_private* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @memset(%struct.dasd_fba_private*, i32, i32) #1

declare dso_local %struct.dasd_block* @dasd_alloc_block(...) #1

declare dso_local i64 @IS_ERR(%struct.dasd_block*) #1

declare dso_local i32 @DBF_EVENT_DEVID(i32, %struct.ccw_device*, i8*, ...) #1

declare dso_local i32 @kfree(%struct.dasd_fba_private*) #1

declare dso_local i32 @PTR_ERR(%struct.dasd_block*) #1

declare dso_local i32 @dasd_generic_read_dev_chars(%struct.dasd_device*, i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @dasd_free_block(%struct.dasd_block*) #1

declare dso_local i32 @dasd_device_is_ro(%struct.dasd_device*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
