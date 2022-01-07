; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/maps/extr_pcmciamtd.c_pcmciamtd_set_vpp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/maps/extr_pcmciamtd.c_pcmciamtd_set_vpp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_info = type { i64 }
%struct.pcmciamtd_dev = type { i32, %struct.pcmcia_device* }
%struct.pcmcia_device = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i64 }

@CONF_VPP1_CHANGE_VALID = common dso_local global i32 0, align 4
@CONF_VPP2_CHANGE_VALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"dev = %p on = %d vpp = %d\0A\00", align 1
@ModifyConfiguration = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.map_info*, i32)* @pcmciamtd_set_vpp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcmciamtd_set_vpp(%struct.map_info* %0, i32 %1) #0 {
  %3 = alloca %struct.map_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pcmciamtd_dev*, align 8
  %6 = alloca %struct.pcmcia_device*, align 8
  %7 = alloca %struct.TYPE_3__, align 8
  %8 = alloca i32, align 4
  store %struct.map_info* %0, %struct.map_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.map_info*, %struct.map_info** %3, align 8
  %10 = getelementptr inbounds %struct.map_info, %struct.map_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.pcmciamtd_dev*
  store %struct.pcmciamtd_dev* %12, %struct.pcmciamtd_dev** %5, align 8
  %13 = load %struct.pcmciamtd_dev*, %struct.pcmciamtd_dev** %5, align 8
  %14 = getelementptr inbounds %struct.pcmciamtd_dev, %struct.pcmciamtd_dev* %13, i32 0, i32 1
  %15 = load %struct.pcmcia_device*, %struct.pcmcia_device** %14, align 8
  store %struct.pcmcia_device* %15, %struct.pcmcia_device** %6, align 8
  %16 = load i32, i32* @CONF_VPP1_CHANGE_VALID, align 4
  %17 = load i32, i32* @CONF_VPP2_CHANGE_VALID, align 4
  %18 = or i32 %16, %17
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store i32 %18, i32* %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 3
  store i64 0, i64* %20, align 8
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load %struct.pcmciamtd_dev*, %struct.pcmciamtd_dev** %5, align 8
  %25 = getelementptr inbounds %struct.pcmciamtd_dev, %struct.pcmciamtd_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  br label %28

27:                                               ; preds = %2
  br label %28

28:                                               ; preds = %27, %23
  %29 = phi i32 [ %26, %23 ], [ 0, %27 ]
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load %struct.pcmciamtd_dev*, %struct.pcmciamtd_dev** %5, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.pcmciamtd_dev*, %struct.pcmciamtd_dev** %5, align 8
  %35 = getelementptr inbounds %struct.pcmciamtd_dev, %struct.pcmciamtd_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @DEBUG(i32 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), %struct.pcmciamtd_dev* %32, i32 %33, i32 %36)
  %38 = load %struct.pcmcia_device*, %struct.pcmcia_device** %6, align 8
  %39 = call i32 @pcmcia_modify_configuration(%struct.pcmcia_device* %38, %struct.TYPE_3__* %7)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %28
  %43 = load %struct.pcmcia_device*, %struct.pcmcia_device** %6, align 8
  %44 = load i32, i32* @ModifyConfiguration, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @cs_error(%struct.pcmcia_device* %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %42, %28
  ret void
}

declare dso_local i32 @DEBUG(i32, i8*, %struct.pcmciamtd_dev*, i32, i32) #1

declare dso_local i32 @pcmcia_modify_configuration(%struct.pcmcia_device*, %struct.TYPE_3__*) #1

declare dso_local i32 @cs_error(%struct.pcmcia_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
