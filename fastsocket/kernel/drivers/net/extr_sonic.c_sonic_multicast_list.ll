; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sonic.c_sonic_multicast_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sonic.c_sonic_multicast_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, %struct.dev_mc_list* }
%struct.dev_mc_list = type { i8*, %struct.dev_mc_list* }
%struct.sonic_local = type { i32 }

@SONIC_RCR = common dso_local global i32 0, align 4
@SONIC_RCR_PRO = common dso_local global i32 0, align 4
@SONIC_RCR_AMC = common dso_local global i32 0, align 4
@SONIC_RCR_BRD = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@sonic_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"sonic_multicast_list: mc_count %d\0A\00", align 1
@SONIC_CD_CAP0 = common dso_local global i32 0, align 4
@SONIC_CD_CAP1 = common dso_local global i32 0, align 4
@SONIC_CD_CAP2 = common dso_local global i32 0, align 4
@SONIC_CDC = common dso_local global i32 0, align 4
@SONIC_CDP = common dso_local global i32 0, align 4
@SONIC_CMD = common dso_local global i32 0, align 4
@SONIC_CR_LCAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"sonic_multicast_list: setting RCR=%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @sonic_multicast_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sonic_multicast_list(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.sonic_local*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dev_mc_list*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.sonic_local* @netdev_priv(%struct.net_device* %8)
  store %struct.sonic_local* %9, %struct.sonic_local** %3, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 2
  %12 = load %struct.dev_mc_list*, %struct.dev_mc_list** %11, align 8
  store %struct.dev_mc_list* %12, %struct.dev_mc_list** %5, align 8
  %13 = load i32, i32* @SONIC_RCR, align 4
  %14 = call i32 @SONIC_READ(i32 %13)
  %15 = load i32, i32* @SONIC_RCR_PRO, align 4
  %16 = load i32, i32* @SONIC_RCR_AMC, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = and i32 %14, %18
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* @SONIC_RCR_BRD, align 4
  %21 = load i32, i32* %4, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %4, align 4
  %23 = load %struct.net_device*, %struct.net_device** %2, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @IFF_PROMISC, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %1
  %30 = load i32, i32* @SONIC_RCR_PRO, align 4
  %31 = load i32, i32* %4, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %4, align 4
  br label %141

33:                                               ; preds = %1
  %34 = load %struct.net_device*, %struct.net_device** %2, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @IFF_ALLMULTI, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %33
  %41 = load %struct.net_device*, %struct.net_device** %2, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp sgt i32 %43, 15
  br i1 %44, label %45, label %49

45:                                               ; preds = %40, %33
  %46 = load i32, i32* @SONIC_RCR_AMC, align 4
  %47 = load i32, i32* %4, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %4, align 4
  br label %140

49:                                               ; preds = %40
  %50 = load i32, i32* @sonic_debug, align 4
  %51 = icmp sgt i32 %50, 2
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load %struct.net_device*, %struct.net_device** %2, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %52, %49
  %58 = load %struct.net_device*, %struct.net_device** %2, align 8
  %59 = call i32 @sonic_set_cam_enable(%struct.net_device* %58, i32 1)
  store i32 1, i32* %7, align 4
  br label %60

60:                                               ; preds = %125, %57
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.net_device*, %struct.net_device** %2, align 8
  %63 = getelementptr inbounds %struct.net_device, %struct.net_device* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp sle i32 %61, %64
  br i1 %65, label %66, label %128

66:                                               ; preds = %60
  %67 = load %struct.dev_mc_list*, %struct.dev_mc_list** %5, align 8
  %68 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  store i8* %69, i8** %6, align 8
  %70 = load %struct.dev_mc_list*, %struct.dev_mc_list** %5, align 8
  %71 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %70, i32 0, i32 1
  %72 = load %struct.dev_mc_list*, %struct.dev_mc_list** %71, align 8
  store %struct.dev_mc_list* %72, %struct.dev_mc_list** %5, align 8
  %73 = load %struct.net_device*, %struct.net_device** %2, align 8
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @SONIC_CD_CAP0, align 4
  %76 = load i8*, i8** %6, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = shl i32 %79, 8
  %81 = load i8*, i8** %6, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 0
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = or i32 %80, %84
  %86 = trunc i32 %85 to i8
  %87 = call i32 @sonic_cda_put(%struct.net_device* %73, i32 %74, i32 %75, i8 zeroext %86)
  %88 = load %struct.net_device*, %struct.net_device** %2, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @SONIC_CD_CAP1, align 4
  %91 = load i8*, i8** %6, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 3
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = shl i32 %94, 8
  %96 = load i8*, i8** %6, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 2
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = or i32 %95, %99
  %101 = trunc i32 %100 to i8
  %102 = call i32 @sonic_cda_put(%struct.net_device* %88, i32 %89, i32 %90, i8 zeroext %101)
  %103 = load %struct.net_device*, %struct.net_device** %2, align 8
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @SONIC_CD_CAP2, align 4
  %106 = load i8*, i8** %6, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 5
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = shl i32 %109, 8
  %111 = load i8*, i8** %6, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 4
  %113 = load i8, i8* %112, align 1
  %114 = zext i8 %113 to i32
  %115 = or i32 %110, %114
  %116 = trunc i32 %115 to i8
  %117 = call i32 @sonic_cda_put(%struct.net_device* %103, i32 %104, i32 %105, i8 zeroext %116)
  %118 = load %struct.net_device*, %struct.net_device** %2, align 8
  %119 = load %struct.net_device*, %struct.net_device** %2, align 8
  %120 = call i32 @sonic_get_cam_enable(%struct.net_device* %119)
  %121 = load i32, i32* %7, align 4
  %122 = shl i32 1, %121
  %123 = or i32 %120, %122
  %124 = call i32 @sonic_set_cam_enable(%struct.net_device* %118, i32 %123)
  br label %125

125:                                              ; preds = %66
  %126 = load i32, i32* %7, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %7, align 4
  br label %60

128:                                              ; preds = %60
  %129 = load i32, i32* @SONIC_CDC, align 4
  %130 = call i32 @SONIC_WRITE(i32 %129, i32 16)
  %131 = load i32, i32* @SONIC_CDP, align 4
  %132 = load %struct.sonic_local*, %struct.sonic_local** %3, align 8
  %133 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = and i32 %134, 65535
  %136 = call i32 @SONIC_WRITE(i32 %131, i32 %135)
  %137 = load i32, i32* @SONIC_CMD, align 4
  %138 = load i32, i32* @SONIC_CR_LCAM, align 4
  %139 = call i32 @SONIC_WRITE(i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %128, %45
  br label %141

141:                                              ; preds = %140, %29
  %142 = load i32, i32* @sonic_debug, align 4
  %143 = icmp sgt i32 %142, 2
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = load i32, i32* %4, align 4
  %146 = call i32 @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %145)
  br label %147

147:                                              ; preds = %144, %141
  %148 = load i32, i32* @SONIC_RCR, align 4
  %149 = load i32, i32* %4, align 4
  %150 = call i32 @SONIC_WRITE(i32 %148, i32 %149)
  ret void
}

declare dso_local %struct.sonic_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @SONIC_READ(i32) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @sonic_set_cam_enable(%struct.net_device*, i32) #1

declare dso_local i32 @sonic_cda_put(%struct.net_device*, i32, i32, i8 zeroext) #1

declare dso_local i32 @sonic_get_cam_enable(%struct.net_device*) #1

declare dso_local i32 @SONIC_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
