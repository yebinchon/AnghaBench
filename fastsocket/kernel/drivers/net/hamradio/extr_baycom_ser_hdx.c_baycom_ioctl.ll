; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_baycom_ser_hdx.c_baycom_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_baycom_ser_hdx.c_baycom_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.hdlcdrv_ioctl = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.baycom_state = type { i32, %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.baycom_ioctl = type { i32, %struct.TYPE_7__ }

@EINVAL = common dso_local global i32 0, align 4
@HDLCDRV_MAGIC = common dso_local global i64 0, align 8
@SIOCDEVPRIVATE = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"ser12\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@HDLCDRV_PARMASK_IOBASE = common dso_local global i32 0, align 4
@HDLCDRV_PARMASK_IRQ = common dso_local global i32 0, align 4
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
  br label %139

17:                                               ; preds = %4
  %18 = load %struct.net_device*, %struct.net_device** %6, align 8
  %19 = call %struct.baycom_state* @netdev_priv(%struct.net_device* %18)
  store %struct.baycom_state* %19, %struct.baycom_state** %10, align 8
  %20 = load %struct.baycom_state*, %struct.baycom_state** %10, align 8
  %21 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %20, i32 0, i32 2
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
  br label %139

34:                                               ; preds = %17
  %35 = load %struct.hdlcdrv_ioctl*, %struct.hdlcdrv_ioctl** %8, align 8
  %36 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %38 [
    i32 131, label %39
    i32 128, label %80
    i32 130, label %103
    i32 129, label %119
  ]

38:                                               ; preds = %34
  br label %123

39:                                               ; preds = %34
  %40 = load %struct.hdlcdrv_ioctl*, %struct.hdlcdrv_ioctl** %8, align 8
  %41 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @strcpy(i8* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.baycom_state*, %struct.baycom_state** %10, align 8
  %46 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp sle i32 %47, 0
  br i1 %48, label %49, label %69

49:                                               ; preds = %39
  %50 = load %struct.hdlcdrv_ioctl*, %struct.hdlcdrv_ioctl** %8, align 8
  %51 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.baycom_state*, %struct.baycom_state** %10, align 8
  %55 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %49
  br label %66

59:                                               ; preds = %49
  %60 = load %struct.baycom_state*, %struct.baycom_state** %10, align 8
  %61 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp eq i32 %62, -2
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  br label %66

66:                                               ; preds = %59, %58
  %67 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %58 ], [ %65, %59 ]
  %68 = call i32 @strcat(i8* %53, i8* %67)
  br label %69

69:                                               ; preds = %66, %39
  %70 = load %struct.ifreq*, %struct.ifreq** %7, align 8
  %71 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.hdlcdrv_ioctl*, %struct.hdlcdrv_ioctl** %8, align 8
  %74 = call i64 @copy_to_user(i32 %72, %struct.hdlcdrv_ioctl* %73, i32 32)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load i32, i32* @EFAULT, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %5, align 4
  br label %139

79:                                               ; preds = %69
  store i32 0, i32* %5, align 4
  br label %139

80:                                               ; preds = %34
  %81 = load %struct.net_device*, %struct.net_device** %6, align 8
  %82 = call i32 @netif_running(%struct.net_device* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %80
  %85 = load i32, i32* @CAP_NET_ADMIN, align 4
  %86 = call i32 @capable(i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %84, %80
  %89 = load i32, i32* @EACCES, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %5, align 4
  br label %139

91:                                               ; preds = %84
  %92 = load %struct.hdlcdrv_ioctl*, %struct.hdlcdrv_ioctl** %8, align 8
  %93 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 7
  store i8 0, i8* %96, align 1
  %97 = load %struct.baycom_state*, %struct.baycom_state** %10, align 8
  %98 = load %struct.hdlcdrv_ioctl*, %struct.hdlcdrv_ioctl** %8, align 8
  %99 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @baycom_setmode(%struct.baycom_state* %97, i8* %101)
  store i32 %102, i32* %5, align 4
  br label %139

103:                                              ; preds = %34
  %104 = load %struct.hdlcdrv_ioctl*, %struct.hdlcdrv_ioctl** %8, align 8
  %105 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @strcpy(i8* %107, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %109 = load %struct.ifreq*, %struct.ifreq** %7, align 8
  %110 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.hdlcdrv_ioctl*, %struct.hdlcdrv_ioctl** %8, align 8
  %113 = call i64 @copy_to_user(i32 %111, %struct.hdlcdrv_ioctl* %112, i32 32)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %103
  %116 = load i32, i32* @EFAULT, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %5, align 4
  br label %139

118:                                              ; preds = %103
  store i32 0, i32* %5, align 4
  br label %139

119:                                              ; preds = %34
  %120 = load i32, i32* @HDLCDRV_PARMASK_IOBASE, align 4
  %121 = load i32, i32* @HDLCDRV_PARMASK_IRQ, align 4
  %122 = or i32 %120, %121
  store i32 %122, i32* %5, align 4
  br label %139

123:                                              ; preds = %38
  %124 = bitcast %struct.baycom_ioctl* %11 to %struct.hdlcdrv_ioctl*
  %125 = load %struct.ifreq*, %struct.ifreq** %7, align 8
  %126 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i64 @copy_from_user(%struct.hdlcdrv_ioctl* %124, i32 %127, i32 32)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %123
  %131 = load i32, i32* @EFAULT, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %5, align 4
  br label %139

133:                                              ; preds = %123
  %134 = getelementptr inbounds %struct.baycom_ioctl, %struct.baycom_ioctl* %11, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  switch i32 %135, label %136 [
  ]

136:                                              ; preds = %133
  %137 = load i32, i32* @ENOIOCTLCMD, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %5, align 4
  br label %139

139:                                              ; preds = %136, %130, %119, %118, %115, %91, %88, %79, %76, %31, %14
  %140 = load i32, i32* %5, align 4
  ret i32 %140
}

declare dso_local %struct.baycom_state* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

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
