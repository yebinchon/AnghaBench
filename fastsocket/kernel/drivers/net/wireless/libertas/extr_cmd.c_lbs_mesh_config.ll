; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_cmd.c_lbs_mesh_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_cmd.c_lbs_mesh_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32, i64, i32 }
%struct.cmd_ds_mesh_config = type { i8*, i64, i8* }
%struct.mrvl_meshie = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32*, i32, i64, i32, i32, i32, i32, i32, i32 }

@ssid = common dso_local global i32 0, align 4
@WLAN_EID_GENERIC = common dso_local global i32 0, align 4
@MARVELL_MESH_IE_TYPE = common dso_local global i32 0, align 4
@MARVELL_MESH_IE_SUBTYPE = common dso_local global i32 0, align 4
@MARVELL_MESH_IE_VERSION = common dso_local global i32 0, align 4
@MARVELL_MESH_PROTO_ID_HWMP = common dso_local global i32 0, align 4
@MARVELL_MESH_METRIC_ID = common dso_local global i32 0, align 4
@MARVELL_MESH_CAPABILITY = common dso_local global i32 0, align 4
@IW_ESSID_MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"mesh config action %d type %x channel %d SSID %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lbs_mesh_config(%struct.lbs_private* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lbs_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cmd_ds_mesh_config, align 8
  %9 = alloca %struct.mrvl_meshie*, align 8
  store %struct.lbs_private* %0, %struct.lbs_private** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @ssid, align 4
  %11 = call i32 @DECLARE_SSID_BUF(i32 %10)
  %12 = call i32 @memset(%struct.cmd_ds_mesh_config* %8, i32 0, i32 24)
  %13 = load i32, i32* %7, align 4
  %14 = call i8* @cpu_to_le16(i32 %13)
  %15 = getelementptr inbounds %struct.cmd_ds_mesh_config, %struct.cmd_ds_mesh_config* %8, i32 0, i32 2
  store i8* %14, i8** %15, align 8
  %16 = getelementptr inbounds %struct.cmd_ds_mesh_config, %struct.cmd_ds_mesh_config* %8, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.mrvl_meshie*
  store %struct.mrvl_meshie* %18, %struct.mrvl_meshie** %9, align 8
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %92 [
    i32 129, label %20
    i32 128, label %91
  ]

20:                                               ; preds = %3
  %21 = load i32, i32* @WLAN_EID_GENERIC, align 4
  %22 = load %struct.mrvl_meshie*, %struct.mrvl_meshie** %9, align 8
  %23 = getelementptr inbounds %struct.mrvl_meshie, %struct.mrvl_meshie* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.mrvl_meshie*, %struct.mrvl_meshie** %9, align 8
  %25 = getelementptr inbounds %struct.mrvl_meshie, %struct.mrvl_meshie* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 0, i32* %28, align 4
  %29 = load %struct.mrvl_meshie*, %struct.mrvl_meshie** %9, align 8
  %30 = getelementptr inbounds %struct.mrvl_meshie, %struct.mrvl_meshie* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  store i32 80, i32* %33, align 4
  %34 = load %struct.mrvl_meshie*, %struct.mrvl_meshie** %9, align 8
  %35 = getelementptr inbounds %struct.mrvl_meshie, %struct.mrvl_meshie* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  store i32 67, i32* %38, align 4
  %39 = load i32, i32* @MARVELL_MESH_IE_TYPE, align 4
  %40 = load %struct.mrvl_meshie*, %struct.mrvl_meshie** %9, align 8
  %41 = getelementptr inbounds %struct.mrvl_meshie, %struct.mrvl_meshie* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 8
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* @MARVELL_MESH_IE_SUBTYPE, align 4
  %44 = load %struct.mrvl_meshie*, %struct.mrvl_meshie** %9, align 8
  %45 = getelementptr inbounds %struct.mrvl_meshie, %struct.mrvl_meshie* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 7
  store i32 %43, i32* %46, align 8
  %47 = load i32, i32* @MARVELL_MESH_IE_VERSION, align 4
  %48 = load %struct.mrvl_meshie*, %struct.mrvl_meshie** %9, align 8
  %49 = getelementptr inbounds %struct.mrvl_meshie, %struct.mrvl_meshie* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 6
  store i32 %47, i32* %50, align 4
  %51 = load i32, i32* @MARVELL_MESH_PROTO_ID_HWMP, align 4
  %52 = load %struct.mrvl_meshie*, %struct.mrvl_meshie** %9, align 8
  %53 = getelementptr inbounds %struct.mrvl_meshie, %struct.mrvl_meshie* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 5
  store i32 %51, i32* %54, align 8
  %55 = load i32, i32* @MARVELL_MESH_METRIC_ID, align 4
  %56 = load %struct.mrvl_meshie*, %struct.mrvl_meshie** %9, align 8
  %57 = getelementptr inbounds %struct.mrvl_meshie, %struct.mrvl_meshie* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 4
  store i32 %55, i32* %58, align 4
  %59 = load i32, i32* @MARVELL_MESH_CAPABILITY, align 4
  %60 = load %struct.mrvl_meshie*, %struct.mrvl_meshie** %9, align 8
  %61 = getelementptr inbounds %struct.mrvl_meshie, %struct.mrvl_meshie* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 3
  store i32 %59, i32* %62, align 8
  %63 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %64 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.mrvl_meshie*, %struct.mrvl_meshie** %9, align 8
  %67 = getelementptr inbounds %struct.mrvl_meshie, %struct.mrvl_meshie* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  store i64 %65, i64* %68, align 8
  %69 = load %struct.mrvl_meshie*, %struct.mrvl_meshie** %9, align 8
  %70 = getelementptr inbounds %struct.mrvl_meshie, %struct.mrvl_meshie* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %74 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %77 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @memcpy(i32 %72, i32 %75, i64 %78)
  %80 = load i32, i32* @IW_ESSID_MAX_SIZE, align 4
  %81 = sext i32 %80 to i64
  %82 = sub i64 4, %81
  %83 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %84 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = add i64 %82, %85
  %87 = load %struct.mrvl_meshie*, %struct.mrvl_meshie** %9, align 8
  %88 = getelementptr inbounds %struct.mrvl_meshie, %struct.mrvl_meshie* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  %89 = call i8* @cpu_to_le16(i32 4)
  %90 = getelementptr inbounds %struct.cmd_ds_mesh_config, %struct.cmd_ds_mesh_config* %8, i32 0, i32 0
  store i8* %89, i8** %90, align 8
  br label %93

91:                                               ; preds = %3
  br label %93

92:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %114

93:                                               ; preds = %91, %20
  %94 = load i32, i32* %6, align 4
  %95 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %96 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @ssid, align 4
  %100 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %101 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %104 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @print_ssid(i32 %99, i32 %102, i64 %105)
  %107 = call i32 @lbs_deb_cmd(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %94, i32 %97, i32 %98, i32 %106)
  %108 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %109 = load i32, i32* %6, align 4
  %110 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %111 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @__lbs_mesh_config_send(%struct.lbs_private* %108, %struct.cmd_ds_mesh_config* %8, i32 %109, i32 %112)
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %93, %92
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i32 @DECLARE_SSID_BUF(i32) #1

declare dso_local i32 @memset(%struct.cmd_ds_mesh_config*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @lbs_deb_cmd(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @print_ssid(i32, i32, i64) #1

declare dso_local i32 @__lbs_mesh_config_send(%struct.lbs_private*, %struct.cmd_ds_mesh_config*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
