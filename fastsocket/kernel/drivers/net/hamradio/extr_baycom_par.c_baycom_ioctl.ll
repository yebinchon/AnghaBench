; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_baycom_par.c_baycom_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_baycom_par.c_baycom_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.hdlcdrv_ioctl = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.baycom_state = type { %struct.TYPE_8__, %struct.TYPE_5__, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.baycom_ioctl = type { i32, %struct.TYPE_7__ }

@EINVAL = common dso_local global i32 0, align 4
@HDLCDRV_MAGIC = common dso_local global i64 0, align 8
@SIOCDEVPRIVATE = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"par96\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"picpar\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"par96,picpar\00", align 1
@HDLCDRV_PARMASK_IOBASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, %struct.hdlcdrv_ioctl*, i32)* @baycom_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @baycom_ioctl(%struct.net_device* %0, %struct.ifreq* %1, %struct.hdlcdrv_ioctl* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.ifreq*, align 8
  %8 = alloca %struct.hdlcdrv_ioctl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.baycom_state*, align 8
  %11 = alloca %struct.baycom_ioctl, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.ifreq* %1, %struct.ifreq** %7, align 8
  store %struct.hdlcdrv_ioctl* %2, %struct.hdlcdrv_ioctl** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = icmp ne %struct.net_device* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  br label %118

17:                                               ; preds = %4
  %18 = load %struct.net_device*, %struct.net_device** %6, align 8
  %19 = call %struct.baycom_state* @netdev_priv(%struct.net_device* %18)
  store %struct.baycom_state* %19, %struct.baycom_state** %10, align 8
  %20 = load %struct.baycom_state*, %struct.baycom_state** %10, align 8
  %21 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @HDLCDRV_MAGIC, align 8
  %25 = icmp ne i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @SIOCDEVPRIVATE, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %17
  %32 = load i32, i32* @ENOIOCTLCMD, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %118

34:                                               ; preds = %17
  %35 = load %struct.hdlcdrv_ioctl*, %struct.hdlcdrv_ioctl** %8, align 8
  %36 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %38 [
    i32 131, label %39
    i32 128, label %61
    i32 130, label %84
    i32 129, label %100
  ]

38:                                               ; preds = %34
  br label %102

39:                                               ; preds = %34
  %40 = load %struct.hdlcdrv_ioctl*, %struct.hdlcdrv_ioctl** %8, align 8
  %41 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.baycom_state*, %struct.baycom_state** %10, align 8
  %45 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)
  %50 = call i32 @strcpy(i8* %43, i8* %49)
  %51 = load %struct.ifreq*, %struct.ifreq** %7, align 8
  %52 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.hdlcdrv_ioctl*, %struct.hdlcdrv_ioctl** %8, align 8
  %55 = call i64 @copy_to_user(i32 %53, %struct.hdlcdrv_ioctl* %54, i32 32)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %39
  %58 = load i32, i32* @EFAULT, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %118

60:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  br label %118

61:                                               ; preds = %34
  %62 = load %struct.net_device*, %struct.net_device** %6, align 8
  %63 = call i32 @netif_running(%struct.net_device* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* @CAP_NET_ADMIN, align 4
  %67 = call i32 @capable(i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %65, %61
  %70 = load i32, i32* @EACCES, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %5, align 4
  br label %118

72:                                               ; preds = %65
  %73 = load %struct.hdlcdrv_ioctl*, %struct.hdlcdrv_ioctl** %8, align 8
  %74 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 7
  store i8 0, i8* %77, align 1
  %78 = load %struct.baycom_state*, %struct.baycom_state** %10, align 8
  %79 = load %struct.hdlcdrv_ioctl*, %struct.hdlcdrv_ioctl** %8, align 8
  %80 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @baycom_setmode(%struct.baycom_state* %78, i8* %82)
  store i32 %83, i32* %5, align 4
  br label %118

84:                                               ; preds = %34
  %85 = load %struct.hdlcdrv_ioctl*, %struct.hdlcdrv_ioctl** %8, align 8
  %86 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @strcpy(i8* %88, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %90 = load %struct.ifreq*, %struct.ifreq** %7, align 8
  %91 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.hdlcdrv_ioctl*, %struct.hdlcdrv_ioctl** %8, align 8
  %94 = call i64 @copy_to_user(i32 %92, %struct.hdlcdrv_ioctl* %93, i32 32)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %84
  %97 = load i32, i32* @EFAULT, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %5, align 4
  br label %118

99:                                               ; preds = %84
  store i32 0, i32* %5, align 4
  br label %118

100:                                              ; preds = %34
  %101 = load i32, i32* @HDLCDRV_PARMASK_IOBASE, align 4
  store i32 %101, i32* %5, align 4
  br label %118

102:                                              ; preds = %38
  %103 = bitcast %struct.baycom_ioctl* %11 to %struct.hdlcdrv_ioctl*
  %104 = load %struct.ifreq*, %struct.ifreq** %7, align 8
  %105 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @copy_from_user(%struct.hdlcdrv_ioctl* %103, i32 %106, i32 32)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %102
  %110 = load i32, i32* @EFAULT, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %5, align 4
  br label %118

112:                                              ; preds = %102
  %113 = getelementptr inbounds %struct.baycom_ioctl, %struct.baycom_ioctl* %11, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  switch i32 %114, label %115 [
  ]

115:                                              ; preds = %112
  %116 = load i32, i32* @ENOIOCTLCMD, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %5, align 4
  br label %118

118:                                              ; preds = %115, %109, %100, %99, %96, %72, %69, %60, %57, %31, %14
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local %struct.baycom_state* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @copy_to_user(i32, %struct.hdlcdrv_ioctl*, i32) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @baycom_setmode(%struct.baycom_state*, i8*) #1

declare dso_local i64 @copy_from_user(%struct.hdlcdrv_ioctl*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
