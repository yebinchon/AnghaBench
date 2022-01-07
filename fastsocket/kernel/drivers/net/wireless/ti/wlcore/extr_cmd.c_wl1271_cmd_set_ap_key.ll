; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl1271_cmd_set_ap_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl1271_cmd_set_ap_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl12xx_vif = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.wl1271_cmd_set_keys = type { i64, i32*, i8**, i64, i64, i64, i8*, i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KEY_WEP = common dso_local global i64 0, align 8
@WEP_DEFAULT_LID_TYPE = common dso_local global i64 0, align 8
@BROADCAST_LID_TYPE = common dso_local global i64 0, align 8
@UNICAST_LID_TYPE = common dso_local global i64 0, align 8
@DEBUG_CRYPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"ap key action: %d id: %d lid: %d type: %d hlid: %d\00", align 1
@KEY_TKIP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"TARGET AP KEY: \00", align 1
@CMD_SET_KEYS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"could not set ap keys\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1271_cmd_set_ap_key(%struct.wl1271* %0, %struct.wl12xx_vif* %1, i64 %2, i64 %3, i64 %4, i64 %5, i64* %6, i64 %7, i32 %8, i64 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.wl1271*, align 8
  %13 = alloca %struct.wl12xx_vif*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca %struct.wl1271_cmd_set_keys*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  store %struct.wl1271* %0, %struct.wl1271** %12, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %13, align 8
  store i64 %2, i64* %14, align 8
  store i64 %3, i64* %15, align 8
  store i64 %4, i64* %16, align 8
  store i64 %5, i64* %17, align 8
  store i64* %6, i64** %18, align 8
  store i64 %7, i64* %19, align 8
  store i32 %8, i32* %20, align 4
  store i64 %9, i64* %21, align 8
  store i32 0, i32* %23, align 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.wl1271_cmd_set_keys* @kzalloc(i32 72, i32 %25)
  store %struct.wl1271_cmd_set_keys* %26, %struct.wl1271_cmd_set_keys** %22, align 8
  %27 = load %struct.wl1271_cmd_set_keys*, %struct.wl1271_cmd_set_keys** %22, align 8
  %28 = icmp ne %struct.wl1271_cmd_set_keys* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %10
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %11, align 4
  br label %141

32:                                               ; preds = %10
  %33 = load i64, i64* %19, align 8
  %34 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %13, align 8
  %35 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %33, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %32
  %40 = load i64, i64* %16, align 8
  %41 = load i64, i64* @KEY_WEP, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i64, i64* @WEP_DEFAULT_LID_TYPE, align 8
  store i64 %44, i64* %24, align 8
  br label %47

45:                                               ; preds = %39
  %46 = load i64, i64* @BROADCAST_LID_TYPE, align 8
  store i64 %46, i64* %24, align 8
  br label %47

47:                                               ; preds = %45, %43
  br label %50

48:                                               ; preds = %32
  %49 = load i64, i64* @UNICAST_LID_TYPE, align 8
  store i64 %49, i64* %24, align 8
  br label %50

50:                                               ; preds = %48, %47
  %51 = load i32, i32* @DEBUG_CRYPT, align 4
  %52 = load i64, i64* %14, align 8
  %53 = trunc i64 %52 to i32
  %54 = load i64, i64* %15, align 8
  %55 = trunc i64 %54 to i32
  %56 = load i64, i64* %24, align 8
  %57 = trunc i64 %56 to i32
  %58 = load i64, i64* %16, align 8
  %59 = trunc i64 %58 to i32
  %60 = load i64, i64* %19, align 8
  %61 = trunc i64 %60 to i32
  %62 = call i32 @wl1271_debug(i32 %51, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %55, i32 %57, i32 %59, i32 %61)
  %63 = load i64, i64* %24, align 8
  %64 = load %struct.wl1271_cmd_set_keys*, %struct.wl1271_cmd_set_keys** %22, align 8
  %65 = getelementptr inbounds %struct.wl1271_cmd_set_keys, %struct.wl1271_cmd_set_keys* %64, i32 0, i32 8
  store i64 %63, i64* %65, align 8
  %66 = load i64, i64* %19, align 8
  %67 = load %struct.wl1271_cmd_set_keys*, %struct.wl1271_cmd_set_keys** %22, align 8
  %68 = getelementptr inbounds %struct.wl1271_cmd_set_keys, %struct.wl1271_cmd_set_keys* %67, i32 0, i32 7
  store i64 %66, i64* %68, align 8
  %69 = load i64, i64* %14, align 8
  %70 = call i8* @cpu_to_le16(i64 %69)
  %71 = load %struct.wl1271_cmd_set_keys*, %struct.wl1271_cmd_set_keys** %22, align 8
  %72 = getelementptr inbounds %struct.wl1271_cmd_set_keys, %struct.wl1271_cmd_set_keys* %71, i32 0, i32 6
  store i8* %70, i8** %72, align 8
  %73 = load i64, i64* %17, align 8
  %74 = load %struct.wl1271_cmd_set_keys*, %struct.wl1271_cmd_set_keys** %22, align 8
  %75 = getelementptr inbounds %struct.wl1271_cmd_set_keys, %struct.wl1271_cmd_set_keys* %74, i32 0, i32 5
  store i64 %73, i64* %75, align 8
  %76 = load i64, i64* %16, align 8
  %77 = load %struct.wl1271_cmd_set_keys*, %struct.wl1271_cmd_set_keys** %22, align 8
  %78 = getelementptr inbounds %struct.wl1271_cmd_set_keys, %struct.wl1271_cmd_set_keys* %77, i32 0, i32 4
  store i64 %76, i64* %78, align 8
  %79 = load i64, i64* %15, align 8
  %80 = load %struct.wl1271_cmd_set_keys*, %struct.wl1271_cmd_set_keys** %22, align 8
  %81 = getelementptr inbounds %struct.wl1271_cmd_set_keys, %struct.wl1271_cmd_set_keys* %80, i32 0, i32 3
  store i64 %79, i64* %81, align 8
  %82 = load i64, i64* %21, align 8
  %83 = call i8* @cpu_to_le16(i64 %82)
  %84 = load %struct.wl1271_cmd_set_keys*, %struct.wl1271_cmd_set_keys** %22, align 8
  %85 = getelementptr inbounds %struct.wl1271_cmd_set_keys, %struct.wl1271_cmd_set_keys* %84, i32 0, i32 2
  %86 = load i8**, i8*** %85, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i64 0
  store i8* %83, i8** %87, align 8
  %88 = load i32, i32* %20, align 4
  %89 = call i32 @cpu_to_le32(i32 %88)
  %90 = load %struct.wl1271_cmd_set_keys*, %struct.wl1271_cmd_set_keys** %22, align 8
  %91 = getelementptr inbounds %struct.wl1271_cmd_set_keys, %struct.wl1271_cmd_set_keys* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  store i32 %89, i32* %93, align 4
  %94 = load i64, i64* %16, align 8
  %95 = load i64, i64* @KEY_TKIP, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %117

97:                                               ; preds = %50
  %98 = load %struct.wl1271_cmd_set_keys*, %struct.wl1271_cmd_set_keys** %22, align 8
  %99 = getelementptr inbounds %struct.wl1271_cmd_set_keys, %struct.wl1271_cmd_set_keys* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64*, i64** %18, align 8
  %102 = call i32 @memcpy(i64 %100, i64* %101, i64 16)
  %103 = load %struct.wl1271_cmd_set_keys*, %struct.wl1271_cmd_set_keys** %22, align 8
  %104 = getelementptr inbounds %struct.wl1271_cmd_set_keys, %struct.wl1271_cmd_set_keys* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %105, 16
  %107 = load i64*, i64** %18, align 8
  %108 = getelementptr inbounds i64, i64* %107, i64 24
  %109 = call i32 @memcpy(i64 %106, i64* %108, i64 8)
  %110 = load %struct.wl1271_cmd_set_keys*, %struct.wl1271_cmd_set_keys** %22, align 8
  %111 = getelementptr inbounds %struct.wl1271_cmd_set_keys, %struct.wl1271_cmd_set_keys* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %112, 24
  %114 = load i64*, i64** %18, align 8
  %115 = getelementptr inbounds i64, i64* %114, i64 16
  %116 = call i32 @memcpy(i64 %113, i64* %115, i64 8)
  br label %124

117:                                              ; preds = %50
  %118 = load %struct.wl1271_cmd_set_keys*, %struct.wl1271_cmd_set_keys** %22, align 8
  %119 = getelementptr inbounds %struct.wl1271_cmd_set_keys, %struct.wl1271_cmd_set_keys* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64*, i64** %18, align 8
  %122 = load i64, i64* %17, align 8
  %123 = call i32 @memcpy(i64 %120, i64* %121, i64 %122)
  br label %124

124:                                              ; preds = %117, %97
  %125 = load i32, i32* @DEBUG_CRYPT, align 4
  %126 = load %struct.wl1271_cmd_set_keys*, %struct.wl1271_cmd_set_keys** %22, align 8
  %127 = call i32 @wl1271_dump(i32 %125, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), %struct.wl1271_cmd_set_keys* %126, i32 72)
  %128 = load %struct.wl1271*, %struct.wl1271** %12, align 8
  %129 = load i32, i32* @CMD_SET_KEYS, align 4
  %130 = load %struct.wl1271_cmd_set_keys*, %struct.wl1271_cmd_set_keys** %22, align 8
  %131 = call i32 @wl1271_cmd_send(%struct.wl1271* %128, i32 %129, %struct.wl1271_cmd_set_keys* %130, i32 72, i32 0)
  store i32 %131, i32* %23, align 4
  %132 = load i32, i32* %23, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %124
  %135 = call i32 @wl1271_warning(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %137

136:                                              ; preds = %124
  br label %137

137:                                              ; preds = %136, %134
  %138 = load %struct.wl1271_cmd_set_keys*, %struct.wl1271_cmd_set_keys** %22, align 8
  %139 = call i32 @kfree(%struct.wl1271_cmd_set_keys* %138)
  %140 = load i32, i32* %23, align 4
  store i32 %140, i32* %11, align 4
  br label %141

141:                                              ; preds = %137, %29
  %142 = load i32, i32* %11, align 4
  ret i32 %142
}

declare dso_local %struct.wl1271_cmd_set_keys* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1271_debug(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i64, i64*, i64) #1

declare dso_local i32 @wl1271_dump(i32, i8*, %struct.wl1271_cmd_set_keys*, i32) #1

declare dso_local i32 @wl1271_cmd_send(%struct.wl1271*, i32, %struct.wl1271_cmd_set_keys*, i32, i32) #1

declare dso_local i32 @wl1271_warning(i8*) #1

declare dso_local i32 @kfree(%struct.wl1271_cmd_set_keys*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
