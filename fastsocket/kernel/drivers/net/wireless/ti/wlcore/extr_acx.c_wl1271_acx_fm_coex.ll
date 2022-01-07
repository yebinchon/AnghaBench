; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_fm_coex.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_fm_coex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wl1271_acx_fm_coex = type { i32, i32, i8*, i32, i8*, i8*, i32, i32, i32, i32 }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"acx fm coex setting\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACX_FM_COEX_CFG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"acx fm coex setting failed: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1271_acx_fm_coex(%struct.wl1271* %0) #0 {
  %2 = alloca %struct.wl1271*, align 8
  %3 = alloca %struct.wl1271_acx_fm_coex*, align 8
  %4 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %2, align 8
  %5 = load i32, i32* @DEBUG_ACX, align 4
  %6 = call i32 @wl1271_debug(i32 %5, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.wl1271_acx_fm_coex* @kzalloc(i32 56, i32 %7)
  store %struct.wl1271_acx_fm_coex* %8, %struct.wl1271_acx_fm_coex** %3, align 8
  %9 = load %struct.wl1271_acx_fm_coex*, %struct.wl1271_acx_fm_coex** %3, align 8
  %10 = icmp ne %struct.wl1271_acx_fm_coex* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  br label %99

14:                                               ; preds = %1
  %15 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %16 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 9
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.wl1271_acx_fm_coex*, %struct.wl1271_acx_fm_coex** %3, align 8
  %21 = getelementptr inbounds %struct.wl1271_acx_fm_coex, %struct.wl1271_acx_fm_coex* %20, i32 0, i32 9
  store i32 %19, i32* %21, align 4
  %22 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %23 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 8
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.wl1271_acx_fm_coex*, %struct.wl1271_acx_fm_coex** %3, align 8
  %28 = getelementptr inbounds %struct.wl1271_acx_fm_coex, %struct.wl1271_acx_fm_coex* %27, i32 0, i32 8
  store i32 %26, i32* %28, align 8
  %29 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %30 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 7
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.wl1271_acx_fm_coex*, %struct.wl1271_acx_fm_coex** %3, align 8
  %35 = getelementptr inbounds %struct.wl1271_acx_fm_coex, %struct.wl1271_acx_fm_coex* %34, i32 0, i32 7
  store i32 %33, i32* %35, align 4
  %36 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %37 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.wl1271_acx_fm_coex*, %struct.wl1271_acx_fm_coex** %3, align 8
  %42 = getelementptr inbounds %struct.wl1271_acx_fm_coex, %struct.wl1271_acx_fm_coex* %41, i32 0, i32 6
  store i32 %40, i32* %42, align 8
  %43 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %44 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @cpu_to_le16(i32 %47)
  %49 = load %struct.wl1271_acx_fm_coex*, %struct.wl1271_acx_fm_coex** %3, align 8
  %50 = getelementptr inbounds %struct.wl1271_acx_fm_coex, %struct.wl1271_acx_fm_coex* %49, i32 0, i32 5
  store i8* %48, i8** %50, align 8
  %51 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %52 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @cpu_to_le16(i32 %55)
  %57 = load %struct.wl1271_acx_fm_coex*, %struct.wl1271_acx_fm_coex** %3, align 8
  %58 = getelementptr inbounds %struct.wl1271_acx_fm_coex, %struct.wl1271_acx_fm_coex* %57, i32 0, i32 4
  store i8* %56, i8** %58, align 8
  %59 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %60 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @cpu_to_le32(i32 %63)
  %65 = load %struct.wl1271_acx_fm_coex*, %struct.wl1271_acx_fm_coex** %3, align 8
  %66 = getelementptr inbounds %struct.wl1271_acx_fm_coex, %struct.wl1271_acx_fm_coex* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 8
  %67 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %68 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @cpu_to_le16(i32 %71)
  %73 = load %struct.wl1271_acx_fm_coex*, %struct.wl1271_acx_fm_coex** %3, align 8
  %74 = getelementptr inbounds %struct.wl1271_acx_fm_coex, %struct.wl1271_acx_fm_coex* %73, i32 0, i32 2
  store i8* %72, i8** %74, align 8
  %75 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %76 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.wl1271_acx_fm_coex*, %struct.wl1271_acx_fm_coex** %3, align 8
  %81 = getelementptr inbounds %struct.wl1271_acx_fm_coex, %struct.wl1271_acx_fm_coex* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %83 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.wl1271_acx_fm_coex*, %struct.wl1271_acx_fm_coex** %3, align 8
  %88 = getelementptr inbounds %struct.wl1271_acx_fm_coex, %struct.wl1271_acx_fm_coex* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %90 = load i32, i32* @ACX_FM_COEX_CFG, align 4
  %91 = load %struct.wl1271_acx_fm_coex*, %struct.wl1271_acx_fm_coex** %3, align 8
  %92 = call i32 @wl1271_cmd_configure(%struct.wl1271* %89, i32 %90, %struct.wl1271_acx_fm_coex* %91, i32 56)
  store i32 %92, i32* %4, align 4
  %93 = load i32, i32* %4, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %14
  %96 = load i32, i32* %4, align 4
  %97 = call i32 @wl1271_warning(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %96)
  br label %99

98:                                               ; preds = %14
  br label %99

99:                                               ; preds = %98, %95, %11
  %100 = load %struct.wl1271_acx_fm_coex*, %struct.wl1271_acx_fm_coex** %3, align 8
  %101 = call i32 @kfree(%struct.wl1271_acx_fm_coex* %100)
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local %struct.wl1271_acx_fm_coex* @kzalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @wl1271_cmd_configure(%struct.wl1271*, i32, %struct.wl1271_acx_fm_coex*, i32) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.wl1271_acx_fm_coex*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
