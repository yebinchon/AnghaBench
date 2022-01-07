; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_check_term_power.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_check_term_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_ioa_cfg = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ipr_mode_pages = type { i32 }
%struct.ipr_dev_bus_entry = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ipr_mode_page28 = type { i32, i32, %struct.ipr_dev_bus_entry* }

@IPR_SCSI_ATTR_NO_TERM_PWR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Term power is absent on scsi bus %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipr_ioa_cfg*, %struct.ipr_mode_pages*)* @ipr_check_term_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipr_check_term_power(%struct.ipr_ioa_cfg* %0, %struct.ipr_mode_pages* %1) #0 {
  %3 = alloca %struct.ipr_ioa_cfg*, align 8
  %4 = alloca %struct.ipr_mode_pages*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ipr_dev_bus_entry*, align 8
  %8 = alloca %struct.ipr_mode_page28*, align 8
  store %struct.ipr_ioa_cfg* %0, %struct.ipr_ioa_cfg** %3, align 8
  store %struct.ipr_mode_pages* %1, %struct.ipr_mode_pages** %4, align 8
  %9 = load %struct.ipr_mode_pages*, %struct.ipr_mode_pages** %4, align 8
  %10 = call %struct.ipr_mode_page28* @ipr_get_mode_page(%struct.ipr_mode_pages* %9, i32 40, i32 16)
  store %struct.ipr_mode_page28* %10, %struct.ipr_mode_page28** %8, align 8
  %11 = load %struct.ipr_mode_page28*, %struct.ipr_mode_page28** %8, align 8
  %12 = getelementptr inbounds %struct.ipr_mode_page28, %struct.ipr_mode_page28* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  %14 = load %struct.ipr_mode_page28*, %struct.ipr_mode_page28** %8, align 8
  %15 = getelementptr inbounds %struct.ipr_mode_page28, %struct.ipr_mode_page28* %14, i32 0, i32 2
  %16 = load %struct.ipr_dev_bus_entry*, %struct.ipr_dev_bus_entry** %15, align 8
  store %struct.ipr_dev_bus_entry* %16, %struct.ipr_dev_bus_entry** %7, align 8
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %47, %2
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.ipr_mode_page28*, %struct.ipr_mode_page28** %8, align 8
  %20 = getelementptr inbounds %struct.ipr_mode_page28, %struct.ipr_mode_page28* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %50

23:                                               ; preds = %17
  %24 = load %struct.ipr_dev_bus_entry*, %struct.ipr_dev_bus_entry** %7, align 8
  %25 = getelementptr inbounds %struct.ipr_dev_bus_entry, %struct.ipr_dev_bus_entry* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @IPR_SCSI_ATTR_NO_TERM_PWR, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %23
  %31 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %32 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load %struct.ipr_dev_bus_entry*, %struct.ipr_dev_bus_entry** %7, align 8
  %36 = getelementptr inbounds %struct.ipr_dev_bus_entry, %struct.ipr_dev_bus_entry* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_err(i32* %34, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %30, %23
  %41 = load %struct.ipr_dev_bus_entry*, %struct.ipr_dev_bus_entry** %7, align 8
  %42 = bitcast %struct.ipr_dev_bus_entry* %41 to i8*
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = bitcast i8* %45 to %struct.ipr_dev_bus_entry*
  store %struct.ipr_dev_bus_entry* %46, %struct.ipr_dev_bus_entry** %7, align 8
  br label %47

47:                                               ; preds = %40
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %17

50:                                               ; preds = %17
  ret void
}

declare dso_local %struct.ipr_mode_page28* @ipr_get_mode_page(%struct.ipr_mode_pages*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
