; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2fc/extr_bnx2fc_io.c_bnx2fc_build_bd_list_from_sg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2fc/extr_bnx2fc_io.c_bnx2fc_build_bd_list_from_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2fc_cmd = type { %struct.TYPE_2__*, %struct.scsi_cmnd* }
%struct.TYPE_2__ = type { i32, %struct.fcoe_bd_ctx* }
%struct.fcoe_bd_ctx = type { i64, i64, i64, i64 }
%struct.scsi_cmnd = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2fc_cmd*)* @bnx2fc_build_bd_list_from_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2fc_build_bd_list_from_sg(%struct.bnx2fc_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2fc_cmd*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.fcoe_bd_ctx*, align 8
  %6 = alloca i32, align 4
  store %struct.bnx2fc_cmd* %0, %struct.bnx2fc_cmd** %3, align 8
  %7 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %3, align 8
  %8 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %7, i32 0, i32 1
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  store %struct.scsi_cmnd* %9, %struct.scsi_cmnd** %4, align 8
  %10 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %3, align 8
  %11 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load %struct.fcoe_bd_ctx*, %struct.fcoe_bd_ctx** %13, align 8
  store %struct.fcoe_bd_ctx* %14, %struct.fcoe_bd_ctx** %5, align 8
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %16 = call i64 @scsi_sg_count(%struct.scsi_cmnd* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %1
  %19 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %3, align 8
  %20 = call i32 @bnx2fc_map_sg(%struct.bnx2fc_cmd* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %46

26:                                               ; preds = %18
  br label %40

27:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  %28 = load %struct.fcoe_bd_ctx*, %struct.fcoe_bd_ctx** %5, align 8
  %29 = getelementptr inbounds %struct.fcoe_bd_ctx, %struct.fcoe_bd_ctx* %28, i64 0
  %30 = getelementptr inbounds %struct.fcoe_bd_ctx, %struct.fcoe_bd_ctx* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load %struct.fcoe_bd_ctx*, %struct.fcoe_bd_ctx** %5, align 8
  %32 = getelementptr inbounds %struct.fcoe_bd_ctx, %struct.fcoe_bd_ctx* %31, i64 0
  %33 = getelementptr inbounds %struct.fcoe_bd_ctx, %struct.fcoe_bd_ctx* %32, i32 0, i32 3
  store i64 0, i64* %33, align 8
  %34 = load %struct.fcoe_bd_ctx*, %struct.fcoe_bd_ctx** %5, align 8
  %35 = getelementptr inbounds %struct.fcoe_bd_ctx, %struct.fcoe_bd_ctx* %34, i64 0
  %36 = getelementptr inbounds %struct.fcoe_bd_ctx, %struct.fcoe_bd_ctx* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  %37 = load %struct.fcoe_bd_ctx*, %struct.fcoe_bd_ctx** %5, align 8
  %38 = getelementptr inbounds %struct.fcoe_bd_ctx, %struct.fcoe_bd_ctx* %37, i64 0
  %39 = getelementptr inbounds %struct.fcoe_bd_ctx, %struct.fcoe_bd_ctx* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  br label %40

40:                                               ; preds = %27, %26
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %3, align 8
  %43 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 %41, i32* %45, align 8
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %40, %23
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i64 @scsi_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i32 @bnx2fc_map_sg(%struct.bnx2fc_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
