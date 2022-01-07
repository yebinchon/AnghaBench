; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_dscc4.c_dscc4_encoding_setting.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_dscc4.c_dscc4_encoding_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dscc4_dev_priv = type { i32 }
%struct.net_device = type { i32 }
%struct.thingie = type { i32, i32, i32 }

@ENCODING_NRZ = common dso_local global i32 0, align 4
@ENCODING_NRZI = common dso_local global i32 0, align 4
@ENCODING_FM_MARK = common dso_local global i32 0, align 4
@ENCODING_FM_SPACE = common dso_local global i32 0, align 4
@ENCODING_MANCHESTER = common dso_local global i32 0, align 4
@EncodingMask = common dso_local global i32 0, align 4
@CCR0 = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dscc4_dev_priv*, %struct.net_device*)* @dscc4_encoding_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dscc4_encoding_setting(%struct.dscc4_dev_priv* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.dscc4_dev_priv*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca [6 x %struct.thingie], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dscc4_dev_priv* %0, %struct.dscc4_dev_priv** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %8 = getelementptr inbounds [6 x %struct.thingie], [6 x %struct.thingie]* %5, i64 0, i64 0
  %9 = getelementptr inbounds %struct.thingie, %struct.thingie* %8, i32 0, i32 0
  %10 = load i32, i32* @ENCODING_NRZ, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds %struct.thingie, %struct.thingie* %8, i32 0, i32 1
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds %struct.thingie, %struct.thingie* %8, i32 0, i32 2
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds %struct.thingie, %struct.thingie* %8, i64 1
  %14 = getelementptr inbounds %struct.thingie, %struct.thingie* %13, i32 0, i32 0
  %15 = load i32, i32* @ENCODING_NRZI, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %struct.thingie, %struct.thingie* %13, i32 0, i32 1
  store i32 2097152, i32* %16, align 4
  %17 = getelementptr inbounds %struct.thingie, %struct.thingie* %13, i32 0, i32 2
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds %struct.thingie, %struct.thingie* %13, i64 1
  %19 = getelementptr inbounds %struct.thingie, %struct.thingie* %18, i32 0, i32 0
  %20 = load i32, i32* @ENCODING_FM_MARK, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds %struct.thingie, %struct.thingie* %18, i32 0, i32 1
  store i32 4194304, i32* %21, align 4
  %22 = getelementptr inbounds %struct.thingie, %struct.thingie* %18, i32 0, i32 2
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds %struct.thingie, %struct.thingie* %18, i64 1
  %24 = getelementptr inbounds %struct.thingie, %struct.thingie* %23, i32 0, i32 0
  %25 = load i32, i32* @ENCODING_FM_SPACE, align 4
  store i32 %25, i32* %24, align 4
  %26 = getelementptr inbounds %struct.thingie, %struct.thingie* %23, i32 0, i32 1
  store i32 5242880, i32* %26, align 4
  %27 = getelementptr inbounds %struct.thingie, %struct.thingie* %23, i32 0, i32 2
  store i32 0, i32* %27, align 4
  %28 = getelementptr inbounds %struct.thingie, %struct.thingie* %23, i64 1
  %29 = getelementptr inbounds %struct.thingie, %struct.thingie* %28, i32 0, i32 0
  %30 = load i32, i32* @ENCODING_MANCHESTER, align 4
  store i32 %30, i32* %29, align 4
  %31 = getelementptr inbounds %struct.thingie, %struct.thingie* %28, i32 0, i32 1
  store i32 6291456, i32* %31, align 4
  %32 = getelementptr inbounds %struct.thingie, %struct.thingie* %28, i32 0, i32 2
  store i32 0, i32* %32, align 4
  %33 = getelementptr inbounds %struct.thingie, %struct.thingie* %28, i64 1
  %34 = getelementptr inbounds %struct.thingie, %struct.thingie* %33, i32 0, i32 0
  store i32 -1, i32* %34, align 4
  %35 = getelementptr inbounds %struct.thingie, %struct.thingie* %33, i32 0, i32 1
  store i32 0, i32* %35, align 4
  %36 = getelementptr inbounds %struct.thingie, %struct.thingie* %33, i32 0, i32 2
  store i32 0, i32* %36, align 4
  store i32 0, i32* %7, align 4
  %37 = getelementptr inbounds [6 x %struct.thingie], [6 x %struct.thingie]* %5, i64 0, i64 0
  %38 = load %struct.dscc4_dev_priv*, %struct.dscc4_dev_priv** %3, align 8
  %39 = getelementptr inbounds %struct.dscc4_dev_priv, %struct.dscc4_dev_priv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dscc4_match(%struct.thingie* %37, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %2
  %45 = load i32, i32* @EncodingMask, align 4
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [6 x %struct.thingie], [6 x %struct.thingie]* %5, i64 0, i64 %47
  %49 = getelementptr inbounds %struct.thingie, %struct.thingie* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.dscc4_dev_priv*, %struct.dscc4_dev_priv** %3, align 8
  %52 = load %struct.net_device*, %struct.net_device** %4, align 8
  %53 = load i32, i32* @CCR0, align 4
  %54 = call i32 @scc_patchl(i32 %45, i32 %50, %struct.dscc4_dev_priv* %51, %struct.net_device* %52, i32 %53)
  br label %58

55:                                               ; preds = %2
  %56 = load i32, i32* @EOPNOTSUPP, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %55, %44
  %59 = load i32, i32* %7, align 4
  ret i32 %59
}

declare dso_local i32 @dscc4_match(%struct.thingie*, i32) #1

declare dso_local i32 @scc_patchl(i32, i32, %struct.dscc4_dev_priv*, %struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
