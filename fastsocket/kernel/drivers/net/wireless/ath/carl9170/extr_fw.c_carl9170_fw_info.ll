; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_fw.c_carl9170_fw_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_fw.c_carl9170_fw_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.carl9170fw_motd_desc = type { i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"driver   API: %s 2%03d-%02d-%02d [%d-%d]\0A\00", align 1
@CARL9170FW_VERSION_GIT = common dso_local global i32 0, align 4
@CARL9170FW_VERSION_YEAR = common dso_local global i32 0, align 4
@CARL9170FW_VERSION_MONTH = common dso_local global i32 0, align 4
@CARL9170FW_VERSION_DAY = common dso_local global i32 0, align 4
@CARL9170FW_API_MIN_VER = common dso_local global i32 0, align 4
@CARL9170FW_API_MAX_VER = common dso_local global i32 0, align 4
@MOTD_MAGIC = common dso_local global i32 0, align 4
@CARL9170FW_MOTD_DESC_CUR_VER = common dso_local global i32 0, align 4
@CARL9170FW_MOTD_RELEASE_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"firmware API: %.*s 2%03d-%02d-%02d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar9170*)* @carl9170_fw_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carl9170_fw_info(%struct.ar9170* %0) #0 {
  %2 = alloca %struct.ar9170*, align 8
  %3 = alloca %struct.carl9170fw_motd_desc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ar9170* %0, %struct.ar9170** %2, align 8
  %6 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %7 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %6, i32 0, i32 1
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* @CARL9170FW_VERSION_GIT, align 4
  %11 = load i32, i32* @CARL9170FW_VERSION_YEAR, align 4
  %12 = load i32, i32* @CARL9170FW_VERSION_MONTH, align 4
  %13 = load i32, i32* @CARL9170FW_VERSION_DAY, align 4
  %14 = load i32, i32* @CARL9170FW_API_MIN_VER, align 4
  %15 = load i32, i32* @CARL9170FW_API_MAX_VER, align 4
  %16 = call i32 (i32*, i8*, i32, i32, i32, i32, i32, ...) @dev_info(i32* %9, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %11, i32 %12, i32 %13, i32 %14, i32 %15)
  %17 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %18 = load i32, i32* @MOTD_MAGIC, align 4
  %19 = load i32, i32* @CARL9170FW_MOTD_DESC_CUR_VER, align 4
  %20 = call %struct.carl9170fw_motd_desc* @carl9170_fw_find_desc(%struct.ar9170* %17, i32 %18, i32 8, i32 %19)
  store %struct.carl9170fw_motd_desc* %20, %struct.carl9170fw_motd_desc** %3, align 8
  %21 = load %struct.carl9170fw_motd_desc*, %struct.carl9170fw_motd_desc** %3, align 8
  %22 = icmp ne %struct.carl9170fw_motd_desc* %21, null
  br i1 %22, label %23, label %59

23:                                               ; preds = %1
  %24 = load %struct.carl9170fw_motd_desc*, %struct.carl9170fw_motd_desc** %3, align 8
  %25 = getelementptr inbounds %struct.carl9170fw_motd_desc, %struct.carl9170fw_motd_desc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @CARL9170FW_MOTD_RELEASE_LEN, align 4
  %28 = call i32 @strnlen(i32 %26, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load %struct.carl9170fw_motd_desc*, %struct.carl9170fw_motd_desc** %3, align 8
  %30 = getelementptr inbounds %struct.carl9170fw_motd_desc, %struct.carl9170fw_motd_desc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le32_to_cpu(i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %34 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.carl9170fw_motd_desc*, %struct.carl9170fw_motd_desc** %3, align 8
  %39 = getelementptr inbounds %struct.carl9170fw_motd_desc, %struct.carl9170fw_motd_desc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @CARL9170FW_GET_YEAR(i32 %41)
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @CARL9170FW_GET_MONTH(i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @CARL9170FW_GET_DAY(i32 %45)
  %47 = call i32 (i32*, i8*, i32, i32, i32, i32, i32, ...) @dev_info(i32* %36, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %40, i32 %42, i32 %44, i32 %46)
  %48 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %49 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.carl9170fw_motd_desc*, %struct.carl9170fw_motd_desc** %3, align 8
  %56 = getelementptr inbounds %struct.carl9170fw_motd_desc, %struct.carl9170fw_motd_desc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @strlcpy(i32 %54, i32 %57, i32 4)
  br label %59

59:                                               ; preds = %23, %1
  ret void
}

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32, i32, i32, ...) #1

declare dso_local %struct.carl9170fw_motd_desc* @carl9170_fw_find_desc(%struct.ar9170*, i32, i32, i32) #1

declare dso_local i32 @strnlen(i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @CARL9170FW_GET_YEAR(i32) #1

declare dso_local i32 @CARL9170FW_GET_MONTH(i32) #1

declare dso_local i32 @CARL9170FW_GET_DAY(i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
