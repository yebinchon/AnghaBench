; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_pcd.c_pcd_drive_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_pcd.c_pcd_drive_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { %struct.pcd_unit* }
%struct.pcd_unit = type { i32 }

@__const.pcd_drive_status.rc_cmd = private unnamed_addr constant <{ i8, [11 x i8] }> <{ i8 37, [11 x i8] zeroinitializer }>, align 1
@PCD_READY_TMO = common dso_local global i32 0, align 4
@CDS_DRIVE_NOT_READY = common dso_local global i32 0, align 4
@pcd_scratch = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"check media\00", align 1
@CDS_NO_DISC = common dso_local global i32 0, align 4
@CDS_DISC_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdrom_device_info*, i32)* @pcd_drive_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcd_drive_status(%struct.cdrom_device_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdrom_device_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [12 x i8], align 1
  %7 = alloca %struct.pcd_unit*, align 8
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = bitcast [12 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %8, i8* align 1 getelementptr inbounds (<{ i8, [11 x i8] }>, <{ i8, [11 x i8] }>* @__const.pcd_drive_status.rc_cmd, i32 0, i32 0), i64 12, i1 false)
  %9 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %10 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %9, i32 0, i32 0
  %11 = load %struct.pcd_unit*, %struct.pcd_unit** %10, align 8
  store %struct.pcd_unit* %11, %struct.pcd_unit** %7, align 8
  %12 = load %struct.pcd_unit*, %struct.pcd_unit** %7, align 8
  %13 = load i32, i32* @PCD_READY_TMO, align 4
  %14 = call i64 @pcd_ready_wait(%struct.pcd_unit* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @CDS_DRIVE_NOT_READY, align 4
  store i32 %17, i32* %3, align 4
  br label %29

18:                                               ; preds = %2
  %19 = load %struct.pcd_unit*, %struct.pcd_unit** %7, align 8
  %20 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  %21 = load i32, i32* @pcd_scratch, align 4
  %22 = call i32 @DBMSG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %23 = call i64 @pcd_atapi(%struct.pcd_unit* %19, i8* %20, i32 8, i32 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @CDS_NO_DISC, align 4
  store i32 %26, i32* %3, align 4
  br label %29

27:                                               ; preds = %18
  %28 = load i32, i32* @CDS_DISC_OK, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %27, %25, %16
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @pcd_ready_wait(%struct.pcd_unit*, i32) #2

declare dso_local i64 @pcd_atapi(%struct.pcd_unit*, i8*, i32, i32, i32) #2

declare dso_local i32 @DBMSG(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
