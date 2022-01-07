; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s2io.c_do_s2io_prog_unicast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s2io.c_do_s2io_prog_unicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.s2io_nic = type { %struct.TYPE_2__*, %struct.config_param }
%struct.TYPE_2__ = type { i32* }
%struct.config_param = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@S2IO_DISABLE_MAC_ENTRY = common dso_local global i32 0, align 4
@INFO_DBG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"MAC addr:0x%llx already present in CAM\0A\00", align 1
@ERR_DBG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"CAM full no space left for Unicast MAC\0A\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32*)* @do_s2io_prog_unicast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_s2io_prog_unicast(%struct.net_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.s2io_nic*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.config_param*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.s2io_nic* @netdev_priv(%struct.net_device* %12)
  store %struct.s2io_nic* %13, %struct.s2io_nic** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %14 = load %struct.s2io_nic*, %struct.s2io_nic** %6, align 8
  %15 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %14, i32 0, i32 1
  store %struct.config_param* %15, %struct.config_param** %11, align 8
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %44, %2
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @ETH_ALEN, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %47

20:                                               ; preds = %16
  %21 = load i32, i32* %7, align 4
  %22 = shl i32 %21, 8
  store i32 %22, i32* %7, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %7, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = shl i32 %30, 8
  store i32 %31, i32* %8, align 4
  %32 = load %struct.s2io_nic*, %struct.s2io_nic** %6, align 8
  %33 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %20
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  br label %16

47:                                               ; preds = %16
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* @SUCCESS, align 4
  store i32 %52, i32* %3, align 4
  br label %101

53:                                               ; preds = %47
  store i32 1, i32* %9, align 4
  br label %54

54:                                               ; preds = %79, %53
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.config_param*, %struct.config_param** %11, align 8
  %57 = getelementptr inbounds %struct.config_param, %struct.config_param* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %82

60:                                               ; preds = %54
  %61 = load %struct.s2io_nic*, %struct.s2io_nic** %6, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @do_s2io_read_unicast_mc(%struct.s2io_nic* %61, i32 %62)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @S2IO_DISABLE_MAC_ENTRY, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %82

68:                                               ; preds = %60
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  %73 = load i32, i32* @INFO_DBG, align 4
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = call i32 (i32, i8*, ...) @DBG_PRINT(i32 %73, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %75)
  %77 = load i32, i32* @SUCCESS, align 4
  store i32 %77, i32* %3, align 4
  br label %101

78:                                               ; preds = %68
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %9, align 4
  br label %54

82:                                               ; preds = %67, %54
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.config_param*, %struct.config_param** %11, align 8
  %85 = getelementptr inbounds %struct.config_param, %struct.config_param* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp eq i32 %83, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %82
  %89 = load i32, i32* @ERR_DBG, align 4
  %90 = call i32 (i32, i8*, ...) @DBG_PRINT(i32 %89, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %91 = load i32, i32* @FAILURE, align 4
  store i32 %91, i32* %3, align 4
  br label %101

92:                                               ; preds = %82
  %93 = load %struct.s2io_nic*, %struct.s2io_nic** %6, align 8
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @do_s2io_copy_mac_addr(%struct.s2io_nic* %93, i32 %94, i32 %95)
  %97 = load %struct.s2io_nic*, %struct.s2io_nic** %6, align 8
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @do_s2io_add_mac(%struct.s2io_nic* %97, i32 %98, i32 %99)
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %92, %88, %72, %51
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local %struct.s2io_nic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @do_s2io_read_unicast_mc(%struct.s2io_nic*, i32) #1

declare dso_local i32 @DBG_PRINT(i32, i8*, ...) #1

declare dso_local i32 @do_s2io_copy_mac_addr(%struct.s2io_nic*, i32, i32) #1

declare dso_local i32 @do_s2io_add_mac(%struct.s2io_nic*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
