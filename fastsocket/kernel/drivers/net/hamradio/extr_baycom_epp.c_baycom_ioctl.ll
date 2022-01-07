; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_baycom_epp.c_baycom_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_baycom_epp.c_baycom_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_16__, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }
%struct.ifreq = type { i32 }
%struct.baycom_state = type { i32, i32, %struct.TYPE_10__, %struct.TYPE_13__, i32, %struct.TYPE_11__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32 }
%struct.hdlcdrv_ioctl = type { i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i8*, i8*, %struct.TYPE_17__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_12__ }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32 }

@SIOCDEVPRIVATE = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@CAP_SYS_RAWIO = common dso_local global i32 0, align 4
@EPP_PTTBIT = common dso_local global i32 0, align 4
@EPP_DCDBIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"baycom_epp\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"%sclk,%smodem,fclk=%d,bps=%d%s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ext\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c",loopback\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"intclk,extclk,intmodem,extmodem,divider=x\00", align 1
@HDLCDRV_PARMASK_IOBASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @baycom_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @baycom_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.baycom_state*, align 8
  %9 = alloca %struct.hdlcdrv_ioctl, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.baycom_state* @netdev_priv(%struct.net_device* %10)
  store %struct.baycom_state* %11, %struct.baycom_state** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @SIOCDEVPRIVATE, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOIOCTLCMD, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %352

18:                                               ; preds = %3
  %19 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %20 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @copy_from_user(%struct.hdlcdrv_ioctl* %9, i32 %21, i32 120)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @EFAULT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %352

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %30 [
    i32 137, label %33
    i32 130, label %69
    i32 135, label %115
    i32 128, label %146
    i32 134, label %168
    i32 131, label %226
    i32 139, label %256
    i32 138, label %275
    i32 136, label %280
    i32 129, label %314
    i32 133, label %335
    i32 132, label %340
  ]

30:                                               ; preds = %27
  %31 = load i32, i32* @ENOIOCTLCMD, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %352

33:                                               ; preds = %27
  %34 = load %struct.baycom_state*, %struct.baycom_state** %8, align 8
  %35 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 6
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 4
  store i32 %37, i32* %40, align 4
  %41 = load %struct.baycom_state*, %struct.baycom_state** %8, align 8
  %42 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %41, i32 0, i32 5
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 6
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 3
  store i32 %44, i32* %47, align 4
  %48 = load %struct.baycom_state*, %struct.baycom_state** %8, align 8
  %49 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 6
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 2
  store i32 %51, i32* %54, align 4
  %55 = load %struct.baycom_state*, %struct.baycom_state** %8, align 8
  %56 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %55, i32 0, i32 5
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 6
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 4
  %62 = load %struct.baycom_state*, %struct.baycom_state** %8, align 8
  %63 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %62, i32 0, i32 5
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 6
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 4
  br label %342

69:                                               ; preds = %27
  %70 = load i32, i32* @CAP_NET_ADMIN, align 4
  %71 = call i32 @capable(i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %69
  %74 = load i32, i32* @EACCES, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %352

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 6
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.baycom_state*, %struct.baycom_state** %8, align 8
  %82 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %81, i32 0, i32 5
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 4
  store i32 %80, i32* %83, align 4
  %84 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 6
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.baycom_state*, %struct.baycom_state** %8, align 8
  %89 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %88, i32 0, i32 5
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 3
  store i32 %87, i32* %90, align 4
  %91 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 6
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.baycom_state*, %struct.baycom_state** %8, align 8
  %96 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %95, i32 0, i32 5
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 2
  store i32 %94, i32* %97, align 4
  %98 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 6
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.baycom_state*, %struct.baycom_state** %8, align 8
  %103 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %102, i32 0, i32 5
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 1
  store i32 %101, i32* %104, align 4
  %105 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 6
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.baycom_state*, %struct.baycom_state** %8, align 8
  %110 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %109, i32 0, i32 5
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  store i32 %108, i32* %111, align 4
  %112 = load %struct.baycom_state*, %struct.baycom_state** %8, align 8
  %113 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  store i32 1, i32* %114, align 4
  store i32 0, i32* %4, align 4
  br label %352

115:                                              ; preds = %27
  %116 = load %struct.net_device*, %struct.net_device** %5, align 8
  %117 = getelementptr inbounds %struct.net_device, %struct.net_device* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 5
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 0
  store i32 %118, i32* %121, align 8
  %122 = load %struct.net_device*, %struct.net_device** %5, align 8
  %123 = getelementptr inbounds %struct.net_device, %struct.net_device* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 5
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 6
  store i32 %124, i32* %127, align 8
  %128 = load %struct.net_device*, %struct.net_device** %5, align 8
  %129 = getelementptr inbounds %struct.net_device, %struct.net_device* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 5
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 5
  store i32 %130, i32* %133, align 4
  %134 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 5
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 4
  store i32 0, i32* %136, align 8
  %137 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 5
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 3
  store i32 0, i32* %139, align 4
  %140 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 5
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 2
  store i32 0, i32* %142, align 8
  %143 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 5
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 1
  store i32 0, i32* %145, align 4
  br label %342

146:                                              ; preds = %27
  %147 = load i32, i32* @CAP_SYS_RAWIO, align 4
  %148 = call i32 @capable(i32 %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %146
  %151 = load %struct.net_device*, %struct.net_device** %5, align 8
  %152 = call i32 @netif_running(%struct.net_device* %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %150, %146
  %155 = load i32, i32* @EACCES, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %4, align 4
  br label %352

157:                                              ; preds = %150
  %158 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i32 0, i32 5
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.net_device*, %struct.net_device** %5, align 8
  %163 = getelementptr inbounds %struct.net_device, %struct.net_device* %162, i32 0, i32 3
  store i32 %161, i32* %163, align 4
  %164 = load %struct.net_device*, %struct.net_device** %5, align 8
  %165 = getelementptr inbounds %struct.net_device, %struct.net_device* %164, i32 0, i32 2
  store i32 0, i32* %165, align 4
  %166 = load %struct.net_device*, %struct.net_device** %5, align 8
  %167 = getelementptr inbounds %struct.net_device, %struct.net_device* %166, i32 0, i32 1
  store i32 0, i32* %167, align 4
  store i32 0, i32* %4, align 4
  br label %352

168:                                              ; preds = %27
  %169 = load %struct.baycom_state*, %struct.baycom_state** %8, align 8
  %170 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @EPP_PTTBIT, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  %175 = xor i1 %174, true
  %176 = xor i1 %175, true
  %177 = zext i1 %176 to i32
  %178 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 4
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 0
  store i32 %177, i32* %180, align 4
  %181 = load %struct.baycom_state*, %struct.baycom_state** %8, align 8
  %182 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @EPP_DCDBIT, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  %187 = xor i1 %186, true
  %188 = zext i1 %187 to i32
  %189 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 4
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 1
  store i32 %188, i32* %191, align 4
  %192 = load %struct.baycom_state*, %struct.baycom_state** %8, align 8
  %193 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 4
  %195 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %195, i32 0, i32 4
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %196, i32 0, i32 6
  store i32 %194, i32* %197, align 4
  %198 = load %struct.net_device*, %struct.net_device** %5, align 8
  %199 = getelementptr inbounds %struct.net_device, %struct.net_device* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %202, i32 0, i32 4
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %203, i32 0, i32 5
  store i32 %201, i32* %204, align 4
  %205 = load %struct.net_device*, %struct.net_device** %5, align 8
  %206 = getelementptr inbounds %struct.net_device, %struct.net_device* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %209, i32 0, i32 4
  %211 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %210, i32 0, i32 4
  store i32 %208, i32* %211, align 4
  %212 = load %struct.net_device*, %struct.net_device** %5, align 8
  %213 = getelementptr inbounds %struct.net_device, %struct.net_device* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %216, i32 0, i32 4
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %217, i32 0, i32 3
  store i32 %215, i32* %218, align 4
  %219 = load %struct.net_device*, %struct.net_device** %5, align 8
  %220 = getelementptr inbounds %struct.net_device, %struct.net_device* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %223, i32 0, i32 4
  %225 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %224, i32 0, i32 2
  store i32 %222, i32* %225, align 4
  br label %342

226:                                              ; preds = %27
  %227 = load %struct.baycom_state*, %struct.baycom_state** %8, align 8
  %228 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @EPP_PTTBIT, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  %233 = xor i1 %232, true
  %234 = xor i1 %233, true
  %235 = zext i1 %234 to i32
  %236 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %236, i32 0, i32 3
  %238 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %237, i32 0, i32 0
  store i32 %235, i32* %238, align 8
  %239 = load %struct.baycom_state*, %struct.baycom_state** %8, align 8
  %240 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* @EPP_DCDBIT, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  %245 = xor i1 %244, true
  %246 = zext i1 %245 to i32
  %247 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %247, i32 0, i32 3
  %249 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %248, i32 0, i32 1
  store i32 %246, i32* %249, align 4
  %250 = load %struct.baycom_state*, %struct.baycom_state** %8, align 8
  %251 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %250, i32 0, i32 4
  %252 = load i32, i32* %251, align 4
  %253 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %254 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %253, i32 0, i32 3
  %255 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %254, i32 0, i32 2
  store i32 %252, i32* %255, align 8
  br label %342

256:                                              ; preds = %27
  %257 = load i32, i32* @CAP_SYS_RAWIO, align 4
  %258 = call i32 @capable(i32 %257)
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %263, label %260

260:                                              ; preds = %256
  %261 = load i32, i32* @EACCES, align 4
  %262 = sub nsw i32 0, %261
  store i32 %262, i32* %4, align 4
  br label %352

263:                                              ; preds = %256
  %264 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %265 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = load %struct.baycom_state*, %struct.baycom_state** %8, align 8
  %268 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = mul nsw i32 %266, %269
  %271 = sdiv i32 %270, 8
  %272 = load %struct.baycom_state*, %struct.baycom_state** %8, align 8
  %273 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %272, i32 0, i32 3
  %274 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %273, i32 0, i32 1
  store i32 %271, i32* %274, align 4
  store i32 0, i32* %4, align 4
  br label %352

275:                                              ; preds = %27
  %276 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %277 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %276, i32 0, i32 1
  %278 = load i8*, i8** %277, align 8
  %279 = call i32 @strncpy(i8* %278, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 8)
  br label %342

280:                                              ; preds = %27
  %281 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %282 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %281, i32 0, i32 2
  %283 = load i8*, i8** %282, align 8
  %284 = load %struct.baycom_state*, %struct.baycom_state** %8, align 8
  %285 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %284, i32 0, i32 2
  %286 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %285, i32 0, i32 3
  %287 = load i32, i32* %286, align 4
  %288 = icmp ne i32 %287, 0
  %289 = zext i1 %288 to i64
  %290 = select i1 %288, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %291 = load %struct.baycom_state*, %struct.baycom_state** %8, align 8
  %292 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %291, i32 0, i32 2
  %293 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %292, i32 0, i32 2
  %294 = load i32, i32* %293, align 4
  %295 = icmp ne i32 %294, 0
  %296 = zext i1 %295 to i64
  %297 = select i1 %295, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %298 = load %struct.baycom_state*, %struct.baycom_state** %8, align 8
  %299 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %298, i32 0, i32 2
  %300 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.baycom_state*, %struct.baycom_state** %8, align 8
  %303 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %302, i32 0, i32 2
  %304 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = load %struct.baycom_state*, %struct.baycom_state** %8, align 8
  %307 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %306, i32 0, i32 2
  %308 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %307, i32 0, i32 4
  %309 = load i32, i32* %308, align 4
  %310 = icmp ne i32 %309, 0
  %311 = zext i1 %310 to i64
  %312 = select i1 %310, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %313 = call i32 @sprintf(i8* %283, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %290, i8* %297, i32 %301, i32 %305, i8* %312)
  br label %342

314:                                              ; preds = %27
  %315 = load i32, i32* @CAP_NET_ADMIN, align 4
  %316 = call i32 @capable(i32 %315)
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %322

318:                                              ; preds = %314
  %319 = load %struct.net_device*, %struct.net_device** %5, align 8
  %320 = call i32 @netif_running(%struct.net_device* %319)
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %325

322:                                              ; preds = %318, %314
  %323 = load i32, i32* @EACCES, align 4
  %324 = sub nsw i32 0, %323
  store i32 %324, i32* %4, align 4
  br label %352

325:                                              ; preds = %318
  %326 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %327 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %326, i32 0, i32 2
  %328 = load i8*, i8** %327, align 8
  %329 = getelementptr inbounds i8, i8* %328, i64 7
  store i8 0, i8* %329, align 1
  %330 = load %struct.baycom_state*, %struct.baycom_state** %8, align 8
  %331 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %332 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %331, i32 0, i32 2
  %333 = load i8*, i8** %332, align 8
  %334 = call i32 @baycom_setmode(%struct.baycom_state* %330, i8* %333)
  store i32 %334, i32* %4, align 4
  br label %352

335:                                              ; preds = %27
  %336 = getelementptr inbounds %struct.hdlcdrv_ioctl, %struct.hdlcdrv_ioctl* %9, i32 0, i32 1
  %337 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %336, i32 0, i32 2
  %338 = load i8*, i8** %337, align 8
  %339 = call i32 @strncpy(i8* %338, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 8)
  br label %342

340:                                              ; preds = %27
  %341 = load i32, i32* @HDLCDRV_PARMASK_IOBASE, align 4
  store i32 %341, i32* %4, align 4
  br label %352

342:                                              ; preds = %335, %280, %275, %226, %168, %115, %33
  %343 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %344 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 4
  %346 = call i64 @copy_to_user(i32 %345, %struct.hdlcdrv_ioctl* %9, i32 120)
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %348, label %351

348:                                              ; preds = %342
  %349 = load i32, i32* @EFAULT, align 4
  %350 = sub nsw i32 0, %349
  store i32 %350, i32* %4, align 4
  br label %352

351:                                              ; preds = %342
  store i32 0, i32* %4, align 4
  br label %352

352:                                              ; preds = %351, %348, %340, %325, %322, %263, %260, %157, %154, %76, %73, %30, %24, %15
  %353 = load i32, i32* %4, align 4
  ret i32 %353
}

declare dso_local %struct.baycom_state* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @copy_from_user(%struct.hdlcdrv_ioctl*, i32, i32) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*, i32, i32, i8*) #1

declare dso_local i32 @baycom_setmode(%struct.baycom_state*, i8*) #1

declare dso_local i64 @copy_to_user(i32, %struct.hdlcdrv_ioctl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
