; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_cmd.c_lbs_cmd_802_11_rssi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_cmd.c_lbs_cmd_802_11_rssi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i64**, i64**, i64** }
%struct.cmd_ds_command = type { %struct.TYPE_4__, i8*, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }

@LBS_DEB_CMD = common dso_local global i32 0, align 4
@CMD_802_11_RSSI = common dso_local global i64 0, align 8
@S_DS_GEN = common dso_local global i64 0, align 8
@DEFAULT_BCN_AVG_FACTOR = common dso_local global i64 0, align 8
@TYPE_BEACON = common dso_local global i64 0, align 8
@TYPE_NOAVG = common dso_local global i64 0, align 8
@TYPE_AVG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lbs_private*, %struct.cmd_ds_command*)* @lbs_cmd_802_11_rssi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_cmd_802_11_rssi(%struct.lbs_private* %0, %struct.cmd_ds_command* %1) #0 {
  %3 = alloca %struct.lbs_private*, align 8
  %4 = alloca %struct.cmd_ds_command*, align 8
  store %struct.lbs_private* %0, %struct.lbs_private** %3, align 8
  store %struct.cmd_ds_command* %1, %struct.cmd_ds_command** %4, align 8
  %5 = load i32, i32* @LBS_DEB_CMD, align 4
  %6 = call i32 @lbs_deb_enter(i32 %5)
  %7 = load i64, i64* @CMD_802_11_RSSI, align 8
  %8 = call i8* @cpu_to_le16(i64 %7)
  %9 = load %struct.cmd_ds_command*, %struct.cmd_ds_command** %4, align 8
  %10 = getelementptr inbounds %struct.cmd_ds_command, %struct.cmd_ds_command* %9, i32 0, i32 2
  store i8* %8, i8** %10, align 8
  %11 = load i64, i64* @S_DS_GEN, align 8
  %12 = add i64 4, %11
  %13 = call i8* @cpu_to_le16(i64 %12)
  %14 = load %struct.cmd_ds_command*, %struct.cmd_ds_command** %4, align 8
  %15 = getelementptr inbounds %struct.cmd_ds_command, %struct.cmd_ds_command* %14, i32 0, i32 1
  store i8* %13, i8** %15, align 8
  %16 = load i64, i64* @DEFAULT_BCN_AVG_FACTOR, align 8
  %17 = call i8* @cpu_to_le16(i64 %16)
  %18 = load %struct.cmd_ds_command*, %struct.cmd_ds_command** %4, align 8
  %19 = getelementptr inbounds %struct.cmd_ds_command, %struct.cmd_ds_command* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i8* %17, i8** %21, align 8
  %22 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %23 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %22, i32 0, i32 2
  %24 = load i64**, i64*** %23, align 8
  %25 = load i64, i64* @TYPE_BEACON, align 8
  %26 = getelementptr inbounds i64*, i64** %24, i64 %25
  %27 = load i64*, i64** %26, align 8
  %28 = load i64, i64* @TYPE_NOAVG, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  store i64 0, i64* %29, align 8
  %30 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %31 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %30, i32 0, i32 2
  %32 = load i64**, i64*** %31, align 8
  %33 = load i64, i64* @TYPE_BEACON, align 8
  %34 = getelementptr inbounds i64*, i64** %32, i64 %33
  %35 = load i64*, i64** %34, align 8
  %36 = load i64, i64* @TYPE_AVG, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  store i64 0, i64* %37, align 8
  %38 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %39 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %38, i32 0, i32 1
  %40 = load i64**, i64*** %39, align 8
  %41 = load i64, i64* @TYPE_BEACON, align 8
  %42 = getelementptr inbounds i64*, i64** %40, i64 %41
  %43 = load i64*, i64** %42, align 8
  %44 = load i64, i64* @TYPE_NOAVG, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  store i64 0, i64* %45, align 8
  %46 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %47 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %46, i32 0, i32 1
  %48 = load i64**, i64*** %47, align 8
  %49 = load i64, i64* @TYPE_BEACON, align 8
  %50 = getelementptr inbounds i64*, i64** %48, i64 %49
  %51 = load i64*, i64** %50, align 8
  %52 = load i64, i64* @TYPE_AVG, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  store i64 0, i64* %53, align 8
  %54 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %55 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %54, i32 0, i32 0
  %56 = load i64**, i64*** %55, align 8
  %57 = load i64, i64* @TYPE_BEACON, align 8
  %58 = getelementptr inbounds i64*, i64** %56, i64 %57
  %59 = load i64*, i64** %58, align 8
  %60 = load i64, i64* @TYPE_NOAVG, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  store i64 0, i64* %61, align 8
  %62 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %63 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %62, i32 0, i32 0
  %64 = load i64**, i64*** %63, align 8
  %65 = load i64, i64* @TYPE_BEACON, align 8
  %66 = getelementptr inbounds i64*, i64** %64, i64 %65
  %67 = load i64*, i64** %66, align 8
  %68 = load i64, i64* @TYPE_AVG, align 8
  %69 = getelementptr inbounds i64, i64* %67, i64 %68
  store i64 0, i64* %69, align 8
  %70 = load i32, i32* @LBS_DEB_CMD, align 4
  %71 = call i32 @lbs_deb_leave(i32 %70)
  ret i32 0
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i32 @lbs_deb_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
