; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_sata_nv.c_nv_host_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_sata_nv.c_nv_host_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ata_queued_cmd = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@NV_INT_ADDED = common dso_local global i32 0, align 4
@NV_INT_REMOVED = common dso_local global i32 0, align 4
@NV_INT_DEV = common dso_local global i32 0, align 4
@ATA_TFLAG_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_port*, i32)* @nv_host_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv_host_intr(%struct.ata_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ata_queued_cmd*, align 8
  store %struct.ata_port* %0, %struct.ata_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %8 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %9 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.ata_queued_cmd* @ata_qc_from_tag(%struct.ata_port* %7, i32 %11)
  store %struct.ata_queued_cmd* %12, %struct.ata_queued_cmd** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @NV_INT_ADDED, align 4
  %15 = load i32, i32* @NV_INT_REMOVED, align 4
  %16 = or i32 %14, %15
  %17 = and i32 %13, %16
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %22 = call i32 @ata_port_freeze(%struct.ata_port* %21)
  store i32 1, i32* %3, align 4
  br label %52

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @NV_INT_DEV, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %52

29:                                               ; preds = %23
  %30 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %31 = icmp ne %struct.ata_queued_cmd* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %34 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @ATA_TFLAG_POLLING, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br label %40

40:                                               ; preds = %32, %29
  %41 = phi i1 [ true, %29 ], [ %39, %32 ]
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %47 = call i32 @ata_sff_check_status(%struct.ata_port* %46)
  store i32 1, i32* %3, align 4
  br label %52

48:                                               ; preds = %40
  %49 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %50 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %51 = call i32 @ata_sff_host_intr(%struct.ata_port* %49, %struct.ata_queued_cmd* %50)
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %48, %45, %28, %20
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.ata_queued_cmd* @ata_qc_from_tag(%struct.ata_port*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ata_port_freeze(%struct.ata_port*) #1

declare dso_local i32 @ata_sff_check_status(%struct.ata_port*) #1

declare dso_local i32 @ata_sff_host_intr(%struct.ata_port*, %struct.ata_queued_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
