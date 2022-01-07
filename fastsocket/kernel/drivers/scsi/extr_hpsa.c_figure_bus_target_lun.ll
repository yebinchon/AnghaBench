; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_figure_bus_target_lun.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_figure_bus_target_lun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { i32 }
%struct.hpsa_scsi_dev_t = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctlr_info*, i32*, %struct.hpsa_scsi_dev_t*)* @figure_bus_target_lun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @figure_bus_target_lun(%struct.ctlr_info* %0, i32* %1, %struct.hpsa_scsi_dev_t* %2) #0 {
  %4 = alloca %struct.ctlr_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.hpsa_scsi_dev_t*, align 8
  %7 = alloca i32, align 4
  store %struct.ctlr_info* %0, %struct.ctlr_info** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.hpsa_scsi_dev_t* %2, %struct.hpsa_scsi_dev_t** %6, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @le32_to_cpu(i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @is_logical_dev_addr_mode(i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %27, label %14

14:                                               ; preds = %3
  %15 = load i32*, i32** %5, align 8
  %16 = call i64 @is_hba_lunid(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %20, 16383
  %22 = call i32 @hpsa_set_bus_target_lun(%struct.hpsa_scsi_dev_t* %19, i32 3, i32 0, i32 %21)
  br label %26

23:                                               ; preds = %14
  %24 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %6, align 8
  %25 = call i32 @hpsa_set_bus_target_lun(%struct.hpsa_scsi_dev_t* %24, i32 2, i32 -1, i32 -1)
  br label %26

26:                                               ; preds = %23, %18
  br label %45

27:                                               ; preds = %3
  %28 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %29 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %6, align 8
  %30 = call i64 @is_ext_target(%struct.ctlr_info* %28, %struct.hpsa_scsi_dev_t* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = ashr i32 %34, 16
  %36 = and i32 %35, 16383
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, 255
  %39 = call i32 @hpsa_set_bus_target_lun(%struct.hpsa_scsi_dev_t* %33, i32 1, i32 %36, i32 %38)
  br label %45

40:                                               ; preds = %27
  %41 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = and i32 %42, 16383
  %44 = call i32 @hpsa_set_bus_target_lun(%struct.hpsa_scsi_dev_t* %41, i32 0, i32 0, i32 %43)
  br label %45

45:                                               ; preds = %40, %32, %26
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @is_logical_dev_addr_mode(i32*) #1

declare dso_local i64 @is_hba_lunid(i32*) #1

declare dso_local i32 @hpsa_set_bus_target_lun(%struct.hpsa_scsi_dev_t*, i32, i32, i32) #1

declare dso_local i64 @is_ext_target(%struct.ctlr_info*, %struct.hpsa_scsi_dev_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
