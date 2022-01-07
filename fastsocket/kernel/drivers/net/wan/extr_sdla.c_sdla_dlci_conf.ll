; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_sdla.c_sdla_dlci_conf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_sdla.c_sdla_dlci_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.frad_local = type { i32*, %struct.net_device** }
%struct.dlci_local = type { i32 }

@CONFIG_DLCI_MAX = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@SDLA_RET_OK = common dso_local global i16 0, align 2
@SDLA_READ_DLCI_CONFIGURATION = common dso_local global i32 0, align 4
@SDLA_SET_DLCI_CONFIGURATION = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.net_device*, i32)* @sdla_dlci_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdla_dlci_conf(%struct.net_device* %0, %struct.net_device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.frad_local*, align 8
  %9 = alloca %struct.dlci_local*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call i8* @netdev_priv(%struct.net_device* %13)
  %15 = bitcast i8* %14 to %struct.frad_local*
  store %struct.frad_local* %15, %struct.frad_local** %8, align 8
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %32, %3
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @CONFIG_DLCI_MAX, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %16
  %21 = load %struct.frad_local*, %struct.frad_local** %8, align 8
  %22 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %21, i32 0, i32 1
  %23 = load %struct.net_device**, %struct.net_device*** %22, align 8
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.net_device*, %struct.net_device** %23, i64 %25
  %27 = load %struct.net_device*, %struct.net_device** %26, align 8
  %28 = load %struct.net_device*, %struct.net_device** %6, align 8
  %29 = icmp eq %struct.net_device* %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  br label %35

31:                                               ; preds = %20
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %10, align 4
  br label %16

35:                                               ; preds = %30, %16
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @CONFIG_DLCI_MAX, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %94

42:                                               ; preds = %35
  %43 = load %struct.net_device*, %struct.net_device** %6, align 8
  %44 = call i8* @netdev_priv(%struct.net_device* %43)
  %45 = bitcast i8* %44 to %struct.dlci_local*
  store %struct.dlci_local* %45, %struct.dlci_local** %9, align 8
  %46 = load i16, i16* @SDLA_RET_OK, align 2
  store i16 %46, i16* %12, align 2
  store i16 4, i16* %11, align 2
  %47 = load %struct.net_device*, %struct.net_device** %5, align 8
  %48 = call i64 @netif_running(%struct.net_device* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %82

50:                                               ; preds = %42
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %50
  %54 = load %struct.net_device*, %struct.net_device** %5, align 8
  %55 = load i32, i32* @SDLA_READ_DLCI_CONFIGURATION, align 4
  %56 = load %struct.frad_local*, %struct.frad_local** %8, align 8
  %57 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @abs(i32 %62) #3
  %64 = load %struct.dlci_local*, %struct.dlci_local** %9, align 8
  %65 = getelementptr inbounds %struct.dlci_local, %struct.dlci_local* %64, i32 0, i32 0
  %66 = call signext i16 @sdla_cmd(%struct.net_device* %54, i32 %55, i32 %63, i32 0, i32* null, i32 0, i32* %65, i16* %11)
  store i16 %66, i16* %12, align 2
  br label %81

67:                                               ; preds = %50
  %68 = load %struct.net_device*, %struct.net_device** %5, align 8
  %69 = load i32, i32* @SDLA_SET_DLCI_CONFIGURATION, align 4
  %70 = load %struct.frad_local*, %struct.frad_local** %8, align 8
  %71 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @abs(i32 %76) #3
  %78 = load %struct.dlci_local*, %struct.dlci_local** %9, align 8
  %79 = getelementptr inbounds %struct.dlci_local, %struct.dlci_local* %78, i32 0, i32 0
  %80 = call signext i16 @sdla_cmd(%struct.net_device* %68, i32 %69, i32 %77, i32 0, i32* %79, i32 -4, i32* null, i16* null)
  store i16 %80, i16* %12, align 2
  br label %81

81:                                               ; preds = %67, %53
  br label %82

82:                                               ; preds = %81, %42
  %83 = load i16, i16* %12, align 2
  %84 = sext i16 %83 to i32
  %85 = load i16, i16* @SDLA_RET_OK, align 2
  %86 = sext i16 %85 to i32
  %87 = icmp eq i32 %84, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  br label %92

89:                                               ; preds = %82
  %90 = load i32, i32* @EIO, align 4
  %91 = sub nsw i32 0, %90
  br label %92

92:                                               ; preds = %89, %88
  %93 = phi i32 [ 0, %88 ], [ %91, %89 ]
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %92, %39
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i8* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local signext i16 @sdla_cmd(%struct.net_device*, i32, i32, i32, i32*, i32, i32*, i16*) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
