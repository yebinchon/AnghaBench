; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_sbshc.c_smb_check_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_sbshc.c_smb_check_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_smb_hc = type { i32 }
%union.acpi_smb_status = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@__const.smb_check_done.status = private unnamed_addr constant { i32, [12 x i8] } { i32 0, [12 x i8] undef }, align 8
@ACPI_SMB_STATUS = common dso_local global i32 0, align 4
@SMBUS_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_smb_hc*)* @smb_check_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_check_done(%struct.acpi_smb_hc* %0) #0 {
  %2 = alloca %struct.acpi_smb_hc*, align 8
  %3 = alloca %union.acpi_smb_status, align 8
  store %struct.acpi_smb_hc* %0, %struct.acpi_smb_hc** %2, align 8
  %4 = bitcast %union.acpi_smb_status* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 bitcast ({ i32, [12 x i8] }* @__const.smb_check_done.status to i8*), i64 16, i1 false)
  %5 = load %struct.acpi_smb_hc*, %struct.acpi_smb_hc** %2, align 8
  %6 = load i32, i32* @ACPI_SMB_STATUS, align 4
  %7 = bitcast %union.acpi_smb_status* %3 to i32*
  %8 = call i32 @smb_hc_read(%struct.acpi_smb_hc* %5, i32 %6, i32* %7)
  %9 = bitcast %union.acpi_smb_status* %3 to %struct.TYPE_2__*
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = bitcast %union.acpi_smb_status* %3 to %struct.TYPE_2__*
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SMBUS_OK, align 8
  %18 = icmp eq i64 %16, %17
  br label %19

19:                                               ; preds = %13, %1
  %20 = phi i1 [ false, %1 ], [ %18, %13 ]
  %21 = zext i1 %20 to i32
  ret i32 %21
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @smb_hc_read(%struct.acpi_smb_hc*, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
