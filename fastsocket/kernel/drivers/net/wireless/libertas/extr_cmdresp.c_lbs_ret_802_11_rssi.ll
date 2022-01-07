; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_cmdresp.c_lbs_ret_802_11_rssi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_cmdresp.c_lbs_ret_802_11_rssi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32**, i32**, i8*** }
%struct.cmd_ds_command = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.cmd_ds_802_11_rssi_rsp }
%struct.cmd_ds_802_11_rssi_rsp = type { i32, i32, i32, i32 }

@LBS_DEB_CMD = common dso_local global i32 0, align 4
@TYPE_BEACON = common dso_local global i64 0, align 8
@TYPE_NOAVG = common dso_local global i64 0, align 8
@TYPE_AVG = common dso_local global i64 0, align 8
@AVG_SCALE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"RSSI: beacon %d, avg %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lbs_private*, %struct.cmd_ds_command*)* @lbs_ret_802_11_rssi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_ret_802_11_rssi(%struct.lbs_private* %0, %struct.cmd_ds_command* %1) #0 {
  %3 = alloca %struct.lbs_private*, align 8
  %4 = alloca %struct.cmd_ds_command*, align 8
  %5 = alloca %struct.cmd_ds_802_11_rssi_rsp*, align 8
  store %struct.lbs_private* %0, %struct.lbs_private** %3, align 8
  store %struct.cmd_ds_command* %1, %struct.cmd_ds_command** %4, align 8
  %6 = load %struct.cmd_ds_command*, %struct.cmd_ds_command** %4, align 8
  %7 = getelementptr inbounds %struct.cmd_ds_command, %struct.cmd_ds_command* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.cmd_ds_802_11_rssi_rsp* %8, %struct.cmd_ds_802_11_rssi_rsp** %5, align 8
  %9 = load i32, i32* @LBS_DEB_CMD, align 4
  %10 = call i32 @lbs_deb_enter(i32 %9)
  %11 = load %struct.cmd_ds_802_11_rssi_rsp*, %struct.cmd_ds_802_11_rssi_rsp** %5, align 8
  %12 = getelementptr inbounds %struct.cmd_ds_802_11_rssi_rsp, %struct.cmd_ds_802_11_rssi_rsp* %11, i32 0, i32 3
  %13 = call i8* @get_unaligned_le16(i32* %12)
  %14 = ptrtoint i8* %13 to i32
  %15 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %16 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %15, i32 0, i32 0
  %17 = load i32**, i32*** %16, align 8
  %18 = load i64, i64* @TYPE_BEACON, align 8
  %19 = getelementptr inbounds i32*, i32** %17, i64 %18
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @TYPE_NOAVG, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  store i32 %14, i32* %22, align 4
  %23 = load %struct.cmd_ds_802_11_rssi_rsp*, %struct.cmd_ds_802_11_rssi_rsp** %5, align 8
  %24 = getelementptr inbounds %struct.cmd_ds_802_11_rssi_rsp, %struct.cmd_ds_802_11_rssi_rsp* %23, i32 0, i32 2
  %25 = call i8* @get_unaligned_le16(i32* %24)
  %26 = ptrtoint i8* %25 to i32
  %27 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %28 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %27, i32 0, i32 1
  %29 = load i32**, i32*** %28, align 8
  %30 = load i64, i64* @TYPE_BEACON, align 8
  %31 = getelementptr inbounds i32*, i32** %29, i64 %30
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @TYPE_NOAVG, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  store i32 %26, i32* %34, align 4
  %35 = load %struct.cmd_ds_802_11_rssi_rsp*, %struct.cmd_ds_802_11_rssi_rsp** %5, align 8
  %36 = getelementptr inbounds %struct.cmd_ds_802_11_rssi_rsp, %struct.cmd_ds_802_11_rssi_rsp* %35, i32 0, i32 1
  %37 = call i8* @get_unaligned_le16(i32* %36)
  %38 = ptrtoint i8* %37 to i32
  %39 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %40 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %39, i32 0, i32 0
  %41 = load i32**, i32*** %40, align 8
  %42 = load i64, i64* @TYPE_BEACON, align 8
  %43 = getelementptr inbounds i32*, i32** %41, i64 %42
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* @TYPE_AVG, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  store i32 %38, i32* %46, align 4
  %47 = load %struct.cmd_ds_802_11_rssi_rsp*, %struct.cmd_ds_802_11_rssi_rsp** %5, align 8
  %48 = getelementptr inbounds %struct.cmd_ds_802_11_rssi_rsp, %struct.cmd_ds_802_11_rssi_rsp* %47, i32 0, i32 0
  %49 = call i8* @get_unaligned_le16(i32* %48)
  %50 = ptrtoint i8* %49 to i32
  %51 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %52 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %51, i32 0, i32 1
  %53 = load i32**, i32*** %52, align 8
  %54 = load i64, i64* @TYPE_BEACON, align 8
  %55 = getelementptr inbounds i32*, i32** %53, i64 %54
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* @TYPE_AVG, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32 %50, i32* %58, align 4
  %59 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %60 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %59, i32 0, i32 0
  %61 = load i32**, i32*** %60, align 8
  %62 = load i64, i64* @TYPE_BEACON, align 8
  %63 = getelementptr inbounds i32*, i32** %61, i64 %62
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* @TYPE_NOAVG, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %69 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %68, i32 0, i32 1
  %70 = load i32**, i32*** %69, align 8
  %71 = load i64, i64* @TYPE_BEACON, align 8
  %72 = getelementptr inbounds i32*, i32** %70, i64 %71
  %73 = load i32*, i32** %72, align 8
  %74 = load i64, i64* @TYPE_NOAVG, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i8* @CAL_RSSI(i32 %67, i32 %76)
  %78 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %79 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %78, i32 0, i32 2
  %80 = load i8***, i8**** %79, align 8
  %81 = load i64, i64* @TYPE_BEACON, align 8
  %82 = getelementptr inbounds i8**, i8*** %80, i64 %81
  %83 = load i8**, i8*** %82, align 8
  %84 = load i64, i64* @TYPE_NOAVG, align 8
  %85 = getelementptr inbounds i8*, i8** %83, i64 %84
  store i8* %77, i8** %85, align 8
  %86 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %87 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %86, i32 0, i32 0
  %88 = load i32**, i32*** %87, align 8
  %89 = load i64, i64* @TYPE_BEACON, align 8
  %90 = getelementptr inbounds i32*, i32** %88, i64 %89
  %91 = load i32*, i32** %90, align 8
  %92 = load i64, i64* @TYPE_AVG, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @AVG_SCALE, align 4
  %96 = sdiv i32 %94, %95
  %97 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %98 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %97, i32 0, i32 1
  %99 = load i32**, i32*** %98, align 8
  %100 = load i64, i64* @TYPE_BEACON, align 8
  %101 = getelementptr inbounds i32*, i32** %99, i64 %100
  %102 = load i32*, i32** %101, align 8
  %103 = load i64, i64* @TYPE_AVG, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @AVG_SCALE, align 4
  %107 = sdiv i32 %105, %106
  %108 = call i8* @CAL_RSSI(i32 %96, i32 %107)
  %109 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %110 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %109, i32 0, i32 2
  %111 = load i8***, i8**** %110, align 8
  %112 = load i64, i64* @TYPE_BEACON, align 8
  %113 = getelementptr inbounds i8**, i8*** %111, i64 %112
  %114 = load i8**, i8*** %113, align 8
  %115 = load i64, i64* @TYPE_AVG, align 8
  %116 = getelementptr inbounds i8*, i8** %114, i64 %115
  store i8* %108, i8** %116, align 8
  %117 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %118 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %117, i32 0, i32 2
  %119 = load i8***, i8**** %118, align 8
  %120 = load i64, i64* @TYPE_BEACON, align 8
  %121 = getelementptr inbounds i8**, i8*** %119, i64 %120
  %122 = load i8**, i8*** %121, align 8
  %123 = load i64, i64* @TYPE_NOAVG, align 8
  %124 = getelementptr inbounds i8*, i8** %122, i64 %123
  %125 = load i8*, i8** %124, align 8
  %126 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %127 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %126, i32 0, i32 2
  %128 = load i8***, i8**** %127, align 8
  %129 = load i64, i64* @TYPE_BEACON, align 8
  %130 = getelementptr inbounds i8**, i8*** %128, i64 %129
  %131 = load i8**, i8*** %130, align 8
  %132 = load i64, i64* @TYPE_AVG, align 8
  %133 = getelementptr inbounds i8*, i8** %131, i64 %132
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 @lbs_deb_cmd(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %125, i8* %134)
  %136 = load i32, i32* @LBS_DEB_CMD, align 4
  %137 = call i32 @lbs_deb_leave(i32 %136)
  ret i32 0
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i8* @get_unaligned_le16(i32*) #1

declare dso_local i8* @CAL_RSSI(i32, i32) #1

declare dso_local i32 @lbs_deb_cmd(i8*, i8*, i8*) #1

declare dso_local i32 @lbs_deb_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
