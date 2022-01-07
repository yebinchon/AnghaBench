; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_set_tx_power.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_set_tx_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { i8*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.libipw_geo = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.ipw_tx_power = type { i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i8*, i32 }

@IPW_G_MODE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@IPW_B_MODE = common dso_local global i32 0, align 4
@IPW_A_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw_priv*)* @ipw_set_tx_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_set_tx_power(%struct.ipw_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipw_priv*, align 8
  %4 = alloca %struct.libipw_geo*, align 8
  %5 = alloca %struct.ipw_tx_power, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ipw_priv* %0, %struct.ipw_priv** %3, align 8
  %8 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %9 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %8, i32 0, i32 1
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = call %struct.libipw_geo* @libipw_get_geo(%struct.TYPE_8__* %10)
  store %struct.libipw_geo* %11, %struct.libipw_geo** %4, align 8
  %12 = call i32 @memset(%struct.ipw_tx_power* %5, i32 0, i32 24)
  %13 = load i32, i32* @IPW_G_MODE, align 4
  %14 = getelementptr inbounds %struct.ipw_tx_power, %struct.ipw_tx_power* %5, i32 0, i32 2
  store i32 %13, i32* %14, align 8
  %15 = load %struct.libipw_geo*, %struct.libipw_geo** %4, align 8
  %16 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = getelementptr inbounds %struct.ipw_tx_power, %struct.ipw_tx_power* %5, i32 0, i32 0
  store i32 %17, i32* %18, align 8
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %68, %1
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.libipw_geo*, %struct.libipw_geo** %4, align 8
  %22 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %71

25:                                               ; preds = %19
  %26 = load %struct.libipw_geo*, %struct.libipw_geo** %4, align 8
  %27 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %26, i32 0, i32 3
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %6, align 8
  %34 = load %struct.libipw_geo*, %struct.libipw_geo** %4, align 8
  %35 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %34, i32 0, i32 3
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds %struct.ipw_tx_power, %struct.ipw_tx_power* %5, i32 0, i32 1
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  store i32 %41, i32* %47, align 8
  %48 = load i64, i64* %6, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %25
  %51 = load i64, i64* %6, align 8
  %52 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %53 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i8* @min(i64 %51, i8* %54)
  br label %60

56:                                               ; preds = %25
  %57 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %58 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  br label %60

60:                                               ; preds = %56, %50
  %61 = phi i8* [ %55, %50 ], [ %59, %56 ]
  %62 = getelementptr inbounds %struct.ipw_tx_power, %struct.ipw_tx_power* %5, i32 0, i32 1
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  store i8* %61, i8** %67, align 8
  br label %68

68:                                               ; preds = %60
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %19

71:                                               ; preds = %19
  %72 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %73 = call i64 @ipw_send_tx_power(%struct.ipw_priv* %72, %struct.ipw_tx_power* %5)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i32, i32* @EIO, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %2, align 4
  br label %161

78:                                               ; preds = %71
  %79 = load i32, i32* @IPW_B_MODE, align 4
  %80 = getelementptr inbounds %struct.ipw_tx_power, %struct.ipw_tx_power* %5, i32 0, i32 2
  store i32 %79, i32* %80, align 8
  %81 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %82 = call i64 @ipw_send_tx_power(%struct.ipw_priv* %81, %struct.ipw_tx_power* %5)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load i32, i32* @EIO, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %2, align 4
  br label %161

87:                                               ; preds = %78
  %88 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %89 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %88, i32 0, i32 1
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %160

94:                                               ; preds = %87
  %95 = load i32, i32* @IPW_A_MODE, align 4
  %96 = getelementptr inbounds %struct.ipw_tx_power, %struct.ipw_tx_power* %5, i32 0, i32 2
  store i32 %95, i32* %96, align 8
  %97 = load %struct.libipw_geo*, %struct.libipw_geo** %4, align 8
  %98 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.ipw_tx_power, %struct.ipw_tx_power* %5, i32 0, i32 0
  store i32 %99, i32* %100, align 8
  store i32 0, i32* %7, align 4
  br label %101

101:                                              ; preds = %149, %94
  %102 = load i32, i32* %7, align 4
  %103 = getelementptr inbounds %struct.ipw_tx_power, %struct.ipw_tx_power* %5, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp slt i32 %102, %104
  br i1 %105, label %106, label %152

106:                                              ; preds = %101
  %107 = load %struct.libipw_geo*, %struct.libipw_geo** %4, align 8
  %108 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %107, i32 0, i32 2
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  store i64 %114, i64* %6, align 8
  %115 = load %struct.libipw_geo*, %struct.libipw_geo** %4, align 8
  %116 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %115, i32 0, i32 2
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = getelementptr inbounds %struct.ipw_tx_power, %struct.ipw_tx_power* %5, i32 0, i32 1
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %123, align 8
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 1
  store i32 %122, i32* %128, align 8
  %129 = load i64, i64* %6, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %106
  %132 = load i64, i64* %6, align 8
  %133 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %134 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %133, i32 0, i32 0
  %135 = load i8*, i8** %134, align 8
  %136 = call i8* @min(i64 %132, i8* %135)
  br label %141

137:                                              ; preds = %106
  %138 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %139 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  br label %141

141:                                              ; preds = %137, %131
  %142 = phi i8* [ %136, %131 ], [ %140, %137 ]
  %143 = getelementptr inbounds %struct.ipw_tx_power, %struct.ipw_tx_power* %5, i32 0, i32 1
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %143, align 8
  %145 = load i32, i32* %7, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  store i8* %142, i8** %148, align 8
  br label %149

149:                                              ; preds = %141
  %150 = load i32, i32* %7, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %7, align 4
  br label %101

152:                                              ; preds = %101
  %153 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %154 = call i64 @ipw_send_tx_power(%struct.ipw_priv* %153, %struct.ipw_tx_power* %5)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %152
  %157 = load i32, i32* @EIO, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %2, align 4
  br label %161

159:                                              ; preds = %152
  br label %160

160:                                              ; preds = %159, %87
  store i32 0, i32* %2, align 4
  br label %161

161:                                              ; preds = %160, %156, %84, %75
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local %struct.libipw_geo* @libipw_get_geo(%struct.TYPE_8__*) #1

declare dso_local i32 @memset(%struct.ipw_tx_power*, i32, i32) #1

declare dso_local i8* @min(i64, i8*) #1

declare dso_local i64 @ipw_send_tx_power(%struct.ipw_priv*, %struct.ipw_tx_power*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
