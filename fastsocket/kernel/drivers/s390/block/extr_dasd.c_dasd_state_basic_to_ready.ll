; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd.c_dasd_state_basic_to_ready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd.c_dasd_state_basic_to_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { i8*, %struct.dasd_block* }
%struct.dasd_block = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.dasd_block*)* }

@EAGAIN = common dso_local global i32 0, align 4
@DASD_STATE_UNFMT = common dso_local global i8* null, align 8
@DASD_STATE_READY = common dso_local global i8* null, align 8
@DASD_STATE_BASIC = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_device*)* @dasd_state_basic_to_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_state_basic_to_ready(%struct.dasd_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dasd_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dasd_block*, align 8
  store %struct.dasd_device* %0, %struct.dasd_device** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %7 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %6, i32 0, i32 1
  %8 = load %struct.dasd_block*, %struct.dasd_block** %7, align 8
  store %struct.dasd_block* %8, %struct.dasd_block** %5, align 8
  %9 = load %struct.dasd_block*, %struct.dasd_block** %5, align 8
  %10 = icmp ne %struct.dasd_block* %9, null
  br i1 %10, label %11, label %70

11:                                               ; preds = %1
  %12 = load %struct.dasd_block*, %struct.dasd_block** %5, align 8
  %13 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %12, i32 0, i32 3
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32 (%struct.dasd_block*)*, i32 (%struct.dasd_block*)** %17, align 8
  %19 = icmp ne i32 (%struct.dasd_block*)* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %11
  %21 = load %struct.dasd_block*, %struct.dasd_block** %5, align 8
  %22 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %21, i32 0, i32 3
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32 (%struct.dasd_block*)*, i32 (%struct.dasd_block*)** %26, align 8
  %28 = load %struct.dasd_block*, %struct.dasd_block** %5, align 8
  %29 = call i32 %27(%struct.dasd_block* %28)
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %20, %11
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %30
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @EAGAIN, align 4
  %36 = sub nsw i32 0, %35
  %37 = icmp ne i32 %34, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i8*, i8** @DASD_STATE_UNFMT, align 8
  %40 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %41 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  br label %42

42:                                               ; preds = %38, %33
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %76

44:                                               ; preds = %30
  %45 = load %struct.dasd_block*, %struct.dasd_block** %5, align 8
  %46 = call i32 @dasd_setup_queue(%struct.dasd_block* %45)
  %47 = load %struct.dasd_block*, %struct.dasd_block** %5, align 8
  %48 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.dasd_block*, %struct.dasd_block** %5, align 8
  %51 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.dasd_block*, %struct.dasd_block** %5, align 8
  %54 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %52, %55
  %57 = call i32 @set_capacity(i32 %49, i32 %56)
  %58 = load i8*, i8** @DASD_STATE_READY, align 8
  %59 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %60 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  %61 = load %struct.dasd_block*, %struct.dasd_block** %5, align 8
  %62 = call i32 @dasd_scan_partitions(%struct.dasd_block* %61)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %44
  %66 = load i8*, i8** @DASD_STATE_BASIC, align 8
  %67 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %68 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %67, i32 0, i32 0
  store i8* %66, i8** %68, align 8
  br label %69

69:                                               ; preds = %65, %44
  br label %74

70:                                               ; preds = %1
  %71 = load i8*, i8** @DASD_STATE_READY, align 8
  %72 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %73 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  br label %74

74:                                               ; preds = %70, %69
  %75 = load i32, i32* %4, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %74, %42
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @dasd_setup_queue(%struct.dasd_block*) #1

declare dso_local i32 @set_capacity(i32, i32) #1

declare dso_local i32 @dasd_scan_partitions(%struct.dasd_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
