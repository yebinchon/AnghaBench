; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_cmd.c_lbs_cmd_reg_access.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_cmd.c_lbs_cmd_reg_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_ds_command = type { %struct.TYPE_2__, i8*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.lbs_offset_value = type { i32, i32 }
%struct.cmd_ds_mac_reg_access = type { i32, i8*, i8* }
%struct.cmd_ds_bbp_reg_access = type { i8*, i8*, i8* }
%struct.cmd_ds_rf_reg_access = type { i8*, i8*, i8* }

@LBS_DEB_CMD = common dso_local global i32 0, align 4
@S_DS_GEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmd_ds_command*, i8*, i8*)* @lbs_cmd_reg_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_cmd_reg_access(%struct.cmd_ds_command* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.cmd_ds_command*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.lbs_offset_value*, align 8
  %8 = alloca %struct.cmd_ds_mac_reg_access*, align 8
  %9 = alloca %struct.cmd_ds_bbp_reg_access*, align 8
  %10 = alloca %struct.cmd_ds_rf_reg_access*, align 8
  store %struct.cmd_ds_command* %0, %struct.cmd_ds_command** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i32, i32* @LBS_DEB_CMD, align 4
  %12 = call i32 @lbs_deb_enter(i32 %11)
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.lbs_offset_value*
  store %struct.lbs_offset_value* %14, %struct.lbs_offset_value** %7, align 8
  %15 = load %struct.cmd_ds_command*, %struct.cmd_ds_command** %4, align 8
  %16 = getelementptr inbounds %struct.cmd_ds_command, %struct.cmd_ds_command* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @le16_to_cpu(i32 %17)
  switch i32 %18, label %111 [
    i32 129, label %19
    i32 130, label %49
    i32 128, label %80
  ]

19:                                               ; preds = %3
  %20 = load i32, i32* @S_DS_GEN, align 4
  %21 = sext i32 %20 to i64
  %22 = add i64 24, %21
  %23 = inttoptr i64 %22 to i8*
  %24 = call i8* @cpu_to_le16(i8* %23)
  %25 = load %struct.cmd_ds_command*, %struct.cmd_ds_command** %4, align 8
  %26 = getelementptr inbounds %struct.cmd_ds_command, %struct.cmd_ds_command* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load %struct.cmd_ds_command*, %struct.cmd_ds_command** %4, align 8
  %28 = getelementptr inbounds %struct.cmd_ds_command, %struct.cmd_ds_command* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = bitcast i32* %29 to %struct.cmd_ds_mac_reg_access*
  store %struct.cmd_ds_mac_reg_access* %30, %struct.cmd_ds_mac_reg_access** %8, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = call i8* @cpu_to_le16(i8* %31)
  %33 = load %struct.cmd_ds_mac_reg_access*, %struct.cmd_ds_mac_reg_access** %8, align 8
  %34 = getelementptr inbounds %struct.cmd_ds_mac_reg_access, %struct.cmd_ds_mac_reg_access* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  %35 = load %struct.lbs_offset_value*, %struct.lbs_offset_value** %7, align 8
  %36 = getelementptr inbounds %struct.lbs_offset_value, %struct.lbs_offset_value* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i8*
  %40 = call i8* @cpu_to_le16(i8* %39)
  %41 = load %struct.cmd_ds_mac_reg_access*, %struct.cmd_ds_mac_reg_access** %8, align 8
  %42 = getelementptr inbounds %struct.cmd_ds_mac_reg_access, %struct.cmd_ds_mac_reg_access* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = load %struct.lbs_offset_value*, %struct.lbs_offset_value** %7, align 8
  %44 = getelementptr inbounds %struct.lbs_offset_value, %struct.lbs_offset_value* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @cpu_to_le32(i32 %45)
  %47 = load %struct.cmd_ds_mac_reg_access*, %struct.cmd_ds_mac_reg_access** %8, align 8
  %48 = getelementptr inbounds %struct.cmd_ds_mac_reg_access, %struct.cmd_ds_mac_reg_access* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  br label %112

49:                                               ; preds = %3
  %50 = load i32, i32* @S_DS_GEN, align 4
  %51 = sext i32 %50 to i64
  %52 = add i64 24, %51
  %53 = inttoptr i64 %52 to i8*
  %54 = call i8* @cpu_to_le16(i8* %53)
  %55 = load %struct.cmd_ds_command*, %struct.cmd_ds_command** %4, align 8
  %56 = getelementptr inbounds %struct.cmd_ds_command, %struct.cmd_ds_command* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  %57 = load %struct.cmd_ds_command*, %struct.cmd_ds_command** %4, align 8
  %58 = getelementptr inbounds %struct.cmd_ds_command, %struct.cmd_ds_command* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = bitcast i32* %59 to %struct.cmd_ds_bbp_reg_access*
  store %struct.cmd_ds_bbp_reg_access* %60, %struct.cmd_ds_bbp_reg_access** %9, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = call i8* @cpu_to_le16(i8* %61)
  %63 = load %struct.cmd_ds_bbp_reg_access*, %struct.cmd_ds_bbp_reg_access** %9, align 8
  %64 = getelementptr inbounds %struct.cmd_ds_bbp_reg_access, %struct.cmd_ds_bbp_reg_access* %63, i32 0, i32 2
  store i8* %62, i8** %64, align 8
  %65 = load %struct.lbs_offset_value*, %struct.lbs_offset_value** %7, align 8
  %66 = getelementptr inbounds %struct.lbs_offset_value, %struct.lbs_offset_value* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = inttoptr i64 %68 to i8*
  %70 = call i8* @cpu_to_le16(i8* %69)
  %71 = load %struct.cmd_ds_bbp_reg_access*, %struct.cmd_ds_bbp_reg_access** %9, align 8
  %72 = getelementptr inbounds %struct.cmd_ds_bbp_reg_access, %struct.cmd_ds_bbp_reg_access* %71, i32 0, i32 1
  store i8* %70, i8** %72, align 8
  %73 = load %struct.lbs_offset_value*, %struct.lbs_offset_value** %7, align 8
  %74 = getelementptr inbounds %struct.lbs_offset_value, %struct.lbs_offset_value* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = inttoptr i64 %76 to i8*
  %78 = load %struct.cmd_ds_bbp_reg_access*, %struct.cmd_ds_bbp_reg_access** %9, align 8
  %79 = getelementptr inbounds %struct.cmd_ds_bbp_reg_access, %struct.cmd_ds_bbp_reg_access* %78, i32 0, i32 0
  store i8* %77, i8** %79, align 8
  br label %112

80:                                               ; preds = %3
  %81 = load i32, i32* @S_DS_GEN, align 4
  %82 = sext i32 %81 to i64
  %83 = add i64 24, %82
  %84 = inttoptr i64 %83 to i8*
  %85 = call i8* @cpu_to_le16(i8* %84)
  %86 = load %struct.cmd_ds_command*, %struct.cmd_ds_command** %4, align 8
  %87 = getelementptr inbounds %struct.cmd_ds_command, %struct.cmd_ds_command* %86, i32 0, i32 1
  store i8* %85, i8** %87, align 8
  %88 = load %struct.cmd_ds_command*, %struct.cmd_ds_command** %4, align 8
  %89 = getelementptr inbounds %struct.cmd_ds_command, %struct.cmd_ds_command* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = bitcast i32* %90 to %struct.cmd_ds_rf_reg_access*
  store %struct.cmd_ds_rf_reg_access* %91, %struct.cmd_ds_rf_reg_access** %10, align 8
  %92 = load i8*, i8** %5, align 8
  %93 = call i8* @cpu_to_le16(i8* %92)
  %94 = load %struct.cmd_ds_rf_reg_access*, %struct.cmd_ds_rf_reg_access** %10, align 8
  %95 = getelementptr inbounds %struct.cmd_ds_rf_reg_access, %struct.cmd_ds_rf_reg_access* %94, i32 0, i32 2
  store i8* %93, i8** %95, align 8
  %96 = load %struct.lbs_offset_value*, %struct.lbs_offset_value** %7, align 8
  %97 = getelementptr inbounds %struct.lbs_offset_value, %struct.lbs_offset_value* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = inttoptr i64 %99 to i8*
  %101 = call i8* @cpu_to_le16(i8* %100)
  %102 = load %struct.cmd_ds_rf_reg_access*, %struct.cmd_ds_rf_reg_access** %10, align 8
  %103 = getelementptr inbounds %struct.cmd_ds_rf_reg_access, %struct.cmd_ds_rf_reg_access* %102, i32 0, i32 1
  store i8* %101, i8** %103, align 8
  %104 = load %struct.lbs_offset_value*, %struct.lbs_offset_value** %7, align 8
  %105 = getelementptr inbounds %struct.lbs_offset_value, %struct.lbs_offset_value* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = inttoptr i64 %107 to i8*
  %109 = load %struct.cmd_ds_rf_reg_access*, %struct.cmd_ds_rf_reg_access** %10, align 8
  %110 = getelementptr inbounds %struct.cmd_ds_rf_reg_access, %struct.cmd_ds_rf_reg_access* %109, i32 0, i32 0
  store i8* %108, i8** %110, align 8
  br label %112

111:                                              ; preds = %3
  br label %112

112:                                              ; preds = %111, %80, %49, %19
  %113 = load i32, i32* @LBS_DEB_CMD, align 4
  %114 = call i32 @lbs_deb_leave(i32 %113)
  ret i32 0
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i8* @cpu_to_le16(i8*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @lbs_deb_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
