; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/lpddr/extr_qinfo_probe.c_lpddr_info_query.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/lpddr/extr_qinfo_probe.c_lpddr_info_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_info = type { i64 }

@LPDDR_INFO_QUERY = common dso_local global i64 0, align 8
@PFOW_COMMAND_CODE = common dso_local global i64 0, align 8
@PFOW_COMMAND_ADDRESS_L = common dso_local global i64 0, align 8
@PFOW_COMMAND_ADDRESS_H = common dso_local global i64 0, align 8
@LPDDR_START_EXECUTION = common dso_local global i64 0, align 8
@PFOW_COMMAND_EXECUTE = common dso_local global i64 0, align 8
@PFOW_DSR = common dso_local global i64 0, align 8
@DSR_READY_STATUS = common dso_local global i32 0, align 4
@PFOW_COMMAND_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.map_info*, i8*)* @lpddr_info_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpddr_info_query(%struct.map_info* %0, i8* %1) #0 {
  %3 = alloca %struct.map_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.map_info* %0, %struct.map_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.map_info*, %struct.map_info** %3, align 8
  %11 = call i32 @map_bankwidth(%struct.map_info* %10)
  %12 = mul nsw i32 %11, 8
  store i32 %12, i32* %7, align 4
  %13 = load %struct.map_info*, %struct.map_info** %3, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i64 @lpddr_get_qinforec_pos(%struct.map_info* %13, i8* %14)
  store i64 %15, i64* %8, align 8
  store i32 20, i32* %9, align 4
  %16 = load %struct.map_info*, %struct.map_info** %3, align 8
  %17 = load i64, i64* @LPDDR_INFO_QUERY, align 8
  %18 = call i32 @CMD(i64 %17)
  %19 = load %struct.map_info*, %struct.map_info** %3, align 8
  %20 = getelementptr inbounds %struct.map_info, %struct.map_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PFOW_COMMAND_CODE, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @map_write(%struct.map_info* %16, i32 %18, i64 %23)
  %25 = load %struct.map_info*, %struct.map_info** %3, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load i32, i32* %7, align 4
  %28 = shl i32 1, %27
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = and i64 %26, %30
  %32 = call i32 @CMD(i64 %31)
  %33 = load %struct.map_info*, %struct.map_info** %3, align 8
  %34 = getelementptr inbounds %struct.map_info, %struct.map_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @PFOW_COMMAND_ADDRESS_L, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @map_write(%struct.map_info* %25, i32 %32, i64 %37)
  %39 = load %struct.map_info*, %struct.map_info** %3, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load i32, i32* %7, align 4
  %42 = zext i32 %41 to i64
  %43 = lshr i64 %40, %42
  %44 = call i32 @CMD(i64 %43)
  %45 = load %struct.map_info*, %struct.map_info** %3, align 8
  %46 = getelementptr inbounds %struct.map_info, %struct.map_info* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @PFOW_COMMAND_ADDRESS_H, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @map_write(%struct.map_info* %39, i32 %44, i64 %49)
  %51 = load %struct.map_info*, %struct.map_info** %3, align 8
  %52 = load i64, i64* @LPDDR_START_EXECUTION, align 8
  %53 = call i32 @CMD(i64 %52)
  %54 = load %struct.map_info*, %struct.map_info** %3, align 8
  %55 = getelementptr inbounds %struct.map_info, %struct.map_info* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @PFOW_COMMAND_EXECUTE, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @map_write(%struct.map_info* %51, i32 %53, i64 %58)
  br label %60

60:                                               ; preds = %78, %2
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %9, align 4
  %63 = icmp sgt i32 %61, 0
  br i1 %63, label %64, label %80

64:                                               ; preds = %60
  %65 = load %struct.map_info*, %struct.map_info** %3, align 8
  %66 = load %struct.map_info*, %struct.map_info** %3, align 8
  %67 = getelementptr inbounds %struct.map_info, %struct.map_info* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @PFOW_DSR, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @map_read(%struct.map_info* %65, i64 %70)
  %72 = call i32 @CMDVAL(i32 %71)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @DSR_READY_STATUS, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %64
  br label %80

78:                                               ; preds = %64
  %79 = call i32 @udelay(i32 10)
  br label %60

80:                                               ; preds = %77, %60
  %81 = load %struct.map_info*, %struct.map_info** %3, align 8
  %82 = load %struct.map_info*, %struct.map_info** %3, align 8
  %83 = getelementptr inbounds %struct.map_info, %struct.map_info* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @PFOW_COMMAND_DATA, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @map_read(%struct.map_info* %81, i64 %86)
  %88 = call i32 @CMDVAL(i32 %87)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  ret i32 %89
}

declare dso_local i32 @map_bankwidth(%struct.map_info*) #1

declare dso_local i64 @lpddr_get_qinforec_pos(%struct.map_info*, i8*) #1

declare dso_local i32 @map_write(%struct.map_info*, i32, i64) #1

declare dso_local i32 @CMD(i64) #1

declare dso_local i32 @CMDVAL(i32) #1

declare dso_local i32 @map_read(%struct.map_info*, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
