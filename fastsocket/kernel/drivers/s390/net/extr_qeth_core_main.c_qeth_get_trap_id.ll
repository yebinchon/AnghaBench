; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_get_trap_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_get_trap_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.qeth_trap_id = type { i32, i32, i32, i32, i32 }
%struct.sysinfo_2_2_2 = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sysinfo_3_2_2 = type { %struct.TYPE_4__*, i32 }
%struct.ccw_dev_id = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qeth_card*, %struct.qeth_trap_id*)* @qeth_get_trap_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_get_trap_id(%struct.qeth_card* %0, %struct.qeth_trap_id* %1) #0 {
  %3 = alloca %struct.qeth_card*, align 8
  %4 = alloca %struct.qeth_trap_id*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sysinfo_2_2_2*, align 8
  %7 = alloca %struct.sysinfo_3_2_2*, align 8
  %8 = alloca %struct.ccw_dev_id, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %3, align 8
  store %struct.qeth_trap_id* %1, %struct.qeth_trap_id** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i64 @get_zeroed_page(i32 %11)
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = inttoptr i64 %13 to %struct.sysinfo_2_2_2*
  store %struct.sysinfo_2_2_2* %14, %struct.sysinfo_2_2_2** %6, align 8
  %15 = load i64, i64* %5, align 8
  %16 = inttoptr i64 %15 to %struct.sysinfo_3_2_2*
  store %struct.sysinfo_3_2_2* %16, %struct.sysinfo_3_2_2** %7, align 8
  %17 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %18 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.qeth_trap_id*, %struct.qeth_trap_id** %4, align 8
  %22 = getelementptr inbounds %struct.qeth_trap_id, %struct.qeth_trap_id* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 4
  %23 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %24 = call i32 @CARD_RDEV(%struct.qeth_card* %23)
  %25 = call i32 @ccw_device_get_id(i32 %24, %struct.ccw_dev_id* %8)
  %26 = getelementptr inbounds %struct.ccw_dev_id, %struct.ccw_dev_id* %8, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.qeth_trap_id*, %struct.qeth_trap_id** %4, align 8
  %29 = getelementptr inbounds %struct.qeth_trap_id, %struct.qeth_trap_id* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = getelementptr inbounds %struct.ccw_dev_id, %struct.ccw_dev_id* %8, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.qeth_trap_id*, %struct.qeth_trap_id** %4, align 8
  %33 = getelementptr inbounds %struct.qeth_trap_id, %struct.qeth_trap_id* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load i64, i64* %5, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %2
  br label %94

37:                                               ; preds = %2
  %38 = call i32 @stsi(%struct.sysinfo_3_2_2* null, i32 0, i32 0, i32 0)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @ENOSYS, align 4
  %41 = sub nsw i32 0, %40
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %9, align 4
  br label %48

45:                                               ; preds = %37
  %46 = load i32, i32* %10, align 4
  %47 = lshr i32 %46, 28
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %45, %43
  %49 = load i32, i32* %9, align 4
  %50 = icmp sge i32 %49, 2
  br i1 %50, label %51, label %64

51:                                               ; preds = %48
  %52 = load %struct.sysinfo_2_2_2*, %struct.sysinfo_2_2_2** %6, align 8
  %53 = bitcast %struct.sysinfo_2_2_2* %52 to %struct.sysinfo_3_2_2*
  %54 = call i32 @stsi(%struct.sysinfo_3_2_2* %53, i32 2, i32 2, i32 2)
  %55 = load i32, i32* @ENOSYS, align 4
  %56 = sub nsw i32 0, %55
  %57 = icmp ne i32 %54, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %51
  %59 = load %struct.sysinfo_2_2_2*, %struct.sysinfo_2_2_2** %6, align 8
  %60 = getelementptr inbounds %struct.sysinfo_2_2_2, %struct.sysinfo_2_2_2* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.qeth_trap_id*, %struct.qeth_trap_id** %4, align 8
  %63 = getelementptr inbounds %struct.qeth_trap_id, %struct.qeth_trap_id* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %58, %51, %48
  %65 = load i32, i32* %9, align 4
  %66 = icmp sge i32 %65, 3
  br i1 %66, label %67, label %91

67:                                               ; preds = %64
  %68 = load %struct.sysinfo_3_2_2*, %struct.sysinfo_3_2_2** %7, align 8
  %69 = call i32 @stsi(%struct.sysinfo_3_2_2* %68, i32 3, i32 2, i32 2)
  %70 = load i32, i32* @ENOSYS, align 4
  %71 = sub nsw i32 0, %70
  %72 = icmp ne i32 %69, %71
  br i1 %72, label %73, label %91

73:                                               ; preds = %67
  %74 = load %struct.sysinfo_3_2_2*, %struct.sysinfo_3_2_2** %7, align 8
  %75 = getelementptr inbounds %struct.sysinfo_3_2_2, %struct.sysinfo_3_2_2* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @EBCASC(i32 %79, i32 4)
  %81 = load %struct.qeth_trap_id*, %struct.qeth_trap_id** %4, align 8
  %82 = getelementptr inbounds %struct.qeth_trap_id, %struct.qeth_trap_id* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.sysinfo_3_2_2*, %struct.sysinfo_3_2_2** %7, align 8
  %85 = getelementptr inbounds %struct.sysinfo_3_2_2, %struct.sysinfo_3_2_2* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i64 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @memcpy(i32 %83, i32 %89, i32 4)
  br label %91

91:                                               ; preds = %73, %67, %64
  %92 = load i64, i64* %5, align 8
  %93 = call i32 @free_page(i64 %92)
  br label %94

94:                                               ; preds = %91, %36
  ret void
}

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @ccw_device_get_id(i32, %struct.ccw_dev_id*) #1

declare dso_local i32 @CARD_RDEV(%struct.qeth_card*) #1

declare dso_local i32 @stsi(%struct.sysinfo_3_2_2*, i32, i32, i32) #1

declare dso_local i32 @EBCASC(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
