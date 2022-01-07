; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/extr_dev.c_can_fixup_bittiming.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/extr_dev.c_can_fixup_bittiming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.can_bittiming = type { i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.can_priv = type { %struct.TYPE_2__, %struct.can_bittiming_const* }
%struct.TYPE_2__ = type { i32 }
%struct.can_bittiming_const = type { i64, i32, i32, i32, i32, i32, i32, i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.can_bittiming*)* @can_fixup_bittiming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @can_fixup_bittiming(%struct.net_device* %0, %struct.can_bittiming* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.can_bittiming*, align 8
  %6 = alloca %struct.can_priv*, align 8
  %7 = alloca %struct.can_bittiming_const*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.can_bittiming* %1, %struct.can_bittiming** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.can_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.can_priv* %12, %struct.can_priv** %6, align 8
  %13 = load %struct.can_priv*, %struct.can_priv** %6, align 8
  %14 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %13, i32 0, i32 1
  %15 = load %struct.can_bittiming_const*, %struct.can_bittiming_const** %14, align 8
  store %struct.can_bittiming_const* %15, %struct.can_bittiming_const** %7, align 8
  %16 = load %struct.can_priv*, %struct.can_priv** %6, align 8
  %17 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %16, i32 0, i32 1
  %18 = load %struct.can_bittiming_const*, %struct.can_bittiming_const** %17, align 8
  %19 = icmp ne %struct.can_bittiming_const* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOTSUPP, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %170

23:                                               ; preds = %2
  %24 = load %struct.can_bittiming*, %struct.can_bittiming** %5, align 8
  %25 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.can_bittiming*, %struct.can_bittiming** %5, align 8
  %28 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %26, %29
  store i32 %30, i32* %8, align 4
  %31 = load %struct.can_bittiming*, %struct.can_bittiming** %5, align 8
  %32 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %23
  %36 = load %struct.can_bittiming*, %struct.can_bittiming** %5, align 8
  %37 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %36, i32 0, i32 2
  store i32 1, i32* %37, align 8
  br label %38

38:                                               ; preds = %35, %23
  %39 = load %struct.can_bittiming*, %struct.can_bittiming** %5, align 8
  %40 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = load %struct.can_bittiming_const*, %struct.can_bittiming_const** %7, align 8
  %44 = getelementptr inbounds %struct.can_bittiming_const, %struct.can_bittiming_const* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %42, %45
  br i1 %46, label %75, label %47

47:                                               ; preds = %38
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.can_bittiming_const*, %struct.can_bittiming_const** %7, align 8
  %50 = getelementptr inbounds %struct.can_bittiming_const, %struct.can_bittiming_const* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %75, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.can_bittiming_const*, %struct.can_bittiming_const** %7, align 8
  %56 = getelementptr inbounds %struct.can_bittiming_const, %struct.can_bittiming_const* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = icmp sgt i32 %54, %57
  br i1 %58, label %75, label %59

59:                                               ; preds = %53
  %60 = load %struct.can_bittiming*, %struct.can_bittiming** %5, align 8
  %61 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.can_bittiming_const*, %struct.can_bittiming_const** %7, align 8
  %64 = getelementptr inbounds %struct.can_bittiming_const, %struct.can_bittiming_const* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %75, label %67

67:                                               ; preds = %59
  %68 = load %struct.can_bittiming*, %struct.can_bittiming** %5, align 8
  %69 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.can_bittiming_const*, %struct.can_bittiming_const** %7, align 8
  %72 = getelementptr inbounds %struct.can_bittiming_const, %struct.can_bittiming_const* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = icmp sgt i32 %70, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %67, %59, %53, %47, %38
  %76 = load i32, i32* @ERANGE, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %170

78:                                               ; preds = %67
  %79 = load %struct.can_priv*, %struct.can_priv** %6, align 8
  %80 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = load %struct.can_bittiming*, %struct.can_bittiming** %5, align 8
  %85 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %84, i32 0, i32 7
  %86 = load i64, i64* %85, align 8
  %87 = mul i64 %83, %86
  store i64 %87, i64* %10, align 8
  %88 = load %struct.can_bittiming_const*, %struct.can_bittiming_const** %7, align 8
  %89 = getelementptr inbounds %struct.can_bittiming_const, %struct.can_bittiming_const* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 8
  %91 = icmp sgt i32 %90, 1
  br i1 %91, label %92, label %99

92:                                               ; preds = %78
  %93 = load i64, i64* %10, align 8
  %94 = load %struct.can_bittiming_const*, %struct.can_bittiming_const** %7, align 8
  %95 = getelementptr inbounds %struct.can_bittiming_const, %struct.can_bittiming_const* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = call i32 @do_div(i64 %93, i64 %97)
  br label %99

99:                                               ; preds = %92, %78
  %100 = load i64, i64* %10, align 8
  %101 = add i64 %100, 499999999
  store i64 %101, i64* %10, align 8
  %102 = load i64, i64* %10, align 8
  %103 = call i32 @do_div(i64 %102, i64 1000000000)
  %104 = load %struct.can_bittiming_const*, %struct.can_bittiming_const** %7, align 8
  %105 = getelementptr inbounds %struct.can_bittiming_const, %struct.can_bittiming_const* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 8
  %107 = icmp sgt i32 %106, 1
  br i1 %107, label %108, label %115

108:                                              ; preds = %99
  %109 = load %struct.can_bittiming_const*, %struct.can_bittiming_const** %7, align 8
  %110 = getelementptr inbounds %struct.can_bittiming_const, %struct.can_bittiming_const* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 8
  %112 = sext i32 %111 to i64
  %113 = load i64, i64* %10, align 8
  %114 = mul i64 %113, %112
  store i64 %114, i64* %10, align 8
  br label %115

115:                                              ; preds = %108, %99
  %116 = load i64, i64* %10, align 8
  %117 = trunc i64 %116 to i32
  %118 = load %struct.can_bittiming*, %struct.can_bittiming** %5, align 8
  %119 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %118, i32 0, i32 4
  store i32 %117, i32* %119, align 8
  %120 = load %struct.can_bittiming*, %struct.can_bittiming** %5, align 8
  %121 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.can_bittiming_const*, %struct.can_bittiming_const** %7, align 8
  %124 = getelementptr inbounds %struct.can_bittiming_const, %struct.can_bittiming_const* %123, i32 0, i32 6
  %125 = load i32, i32* %124, align 4
  %126 = icmp slt i32 %122, %125
  br i1 %126, label %135, label %127

127:                                              ; preds = %115
  %128 = load %struct.can_bittiming*, %struct.can_bittiming** %5, align 8
  %129 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.can_bittiming_const*, %struct.can_bittiming_const** %7, align 8
  %132 = getelementptr inbounds %struct.can_bittiming_const, %struct.can_bittiming_const* %131, i32 0, i32 7
  %133 = load i32, i32* %132, align 8
  %134 = icmp sgt i32 %130, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %127, %115
  %136 = load i32, i32* @EINVAL, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %3, align 4
  br label %170

138:                                              ; preds = %127
  %139 = load %struct.can_bittiming*, %struct.can_bittiming** %5, align 8
  %140 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.can_bittiming*, %struct.can_bittiming** %5, align 8
  %143 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %141, %144
  %146 = load %struct.can_bittiming*, %struct.can_bittiming** %5, align 8
  %147 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %145, %148
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %9, align 4
  %151 = load %struct.can_priv*, %struct.can_priv** %6, align 8
  %152 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.can_bittiming*, %struct.can_bittiming** %5, align 8
  %156 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* %9, align 4
  %159 = mul nsw i32 %157, %158
  %160 = sdiv i32 %154, %159
  %161 = load %struct.can_bittiming*, %struct.can_bittiming** %5, align 8
  %162 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %161, i32 0, i32 5
  store i32 %160, i32* %162, align 4
  %163 = load i32, i32* %8, align 4
  %164 = add nsw i32 %163, 1
  %165 = mul nsw i32 %164, 1000
  %166 = load i32, i32* %9, align 4
  %167 = sdiv i32 %165, %166
  %168 = load %struct.can_bittiming*, %struct.can_bittiming** %5, align 8
  %169 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %168, i32 0, i32 6
  store i32 %167, i32* %169, align 8
  store i32 0, i32* %3, align 4
  br label %170

170:                                              ; preds = %138, %135, %75, %20
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local %struct.can_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @do_div(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
