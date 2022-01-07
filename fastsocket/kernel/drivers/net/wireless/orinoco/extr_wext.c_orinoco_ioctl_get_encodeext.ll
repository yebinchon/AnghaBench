; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_wext.c_orinoco_ioctl_get_encodeext.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_wext.c_orinoco_ioctl_get_encodeext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.iw_point }
%struct.iw_point = type { i32, i32 }
%struct.orinoco_private = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.iw_encode_ext = type { i8*, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IW_ENCODE_INDEX = common dso_local global i32 0, align 4
@IW_ENCODE_ALG_NONE = common dso_local global i32 0, align 4
@IW_ENCODE_DISABLED = common dso_local global i32 0, align 4
@IW_ENCODE_ALG_WEP = common dso_local global i32 0, align 4
@IW_ENCODE_ENABLED = common dso_local global i32 0, align 4
@IW_ENCODE_ALG_TKIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @orinoco_ioctl_get_encodeext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orinoco_ioctl_get_encodeext(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.orinoco_private*, align 8
  %11 = alloca %struct.iw_point*, align 8
  %12 = alloca %struct.iw_encode_ext*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load %struct.net_device*, %struct.net_device** %6, align 8
  %18 = call %struct.orinoco_private* @ndev_priv(%struct.net_device* %17)
  store %struct.orinoco_private* %18, %struct.orinoco_private** %10, align 8
  %19 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %20 = bitcast %union.iwreq_data* %19 to %struct.iw_point*
  store %struct.iw_point* %20, %struct.iw_point** %11, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = bitcast i8* %21 to %struct.iw_encode_ext*
  store %struct.iw_encode_ext* %22, %struct.iw_encode_ext** %12, align 8
  %23 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %24 = call i64 @orinoco_lock(%struct.orinoco_private* %23, i64* %15)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %161

29:                                               ; preds = %4
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %16, align 4
  %32 = load %struct.iw_point*, %struct.iw_point** %11, align 8
  %33 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = sub i64 %35, 16
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  br label %157

41:                                               ; preds = %29
  %42 = load %struct.iw_point*, %struct.iw_point** %11, align 8
  %43 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @IW_ENCODE_INDEX, align 4
  %46 = and i32 %44, %45
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %41
  %50 = load i32, i32* %13, align 4
  %51 = icmp slt i32 %50, 1
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %13, align 4
  %54 = icmp sgt i32 %53, 4
  br i1 %54, label %55, label %56

55:                                               ; preds = %52, %49
  br label %157

56:                                               ; preds = %52
  %57 = load i32, i32* %13, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %13, align 4
  br label %63

59:                                               ; preds = %41
  %60 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %61 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %13, align 4
  br label %63

63:                                               ; preds = %59, %56
  %64 = load i32, i32* %13, align 4
  %65 = add nsw i32 %64, 1
  %66 = load %struct.iw_point*, %struct.iw_point** %11, align 8
  %67 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %69 = call i32 @memset(%struct.iw_encode_ext* %68, i32 0, i32 16)
  %70 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %71 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  switch i32 %72, label %156 [
    i32 130, label %73
    i32 128, label %84
    i32 129, label %120
  ]

73:                                               ; preds = %63
  %74 = load i32, i32* @IW_ENCODE_ALG_NONE, align 4
  %75 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %76 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  %77 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %78 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %77, i32 0, i32 0
  store i8* null, i8** %78, align 8
  %79 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %80 = load %struct.iw_point*, %struct.iw_point** %11, align 8
  %81 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  br label %156

84:                                               ; preds = %63
  %85 = load i32, i32* @IW_ENCODE_ALG_WEP, align 4
  %86 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %87 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 4
  %88 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %89 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %88, i32 0, i32 2
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %14, align 4
  %97 = call i8* @min(i32 %95, i32 %96)
  %98 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %99 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %98, i32 0, i32 0
  store i8* %97, i8** %99, align 8
  %100 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %101 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %104 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %103, i32 0, i32 2
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = load i32, i32* %13, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %112 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @memcpy(i32 %102, i32 %110, i8* %113)
  %115 = load i32, i32* @IW_ENCODE_ENABLED, align 4
  %116 = load %struct.iw_point*, %struct.iw_point** %11, align 8
  %117 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 4
  br label %156

120:                                              ; preds = %63
  %121 = load i32, i32* @IW_ENCODE_ALG_TKIP, align 4
  %122 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %123 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %122, i32 0, i32 2
  store i32 %121, i32* %123, align 4
  %124 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %125 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %124, i32 0, i32 2
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = load i32, i32* %13, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %14, align 4
  %133 = call i8* @min(i32 %131, i32 %132)
  %134 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %135 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %134, i32 0, i32 0
  store i8* %133, i8** %135, align 8
  %136 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %137 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %140 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %139, i32 0, i32 2
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %140, align 8
  %142 = load i32, i32* %13, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %12, align 8
  %148 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 @memcpy(i32 %138, i32 %146, i8* %149)
  %151 = load i32, i32* @IW_ENCODE_ENABLED, align 4
  %152 = load %struct.iw_point*, %struct.iw_point** %11, align 8
  %153 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = or i32 %154, %151
  store i32 %155, i32* %153, align 4
  br label %156

156:                                              ; preds = %63, %120, %84, %73
  store i32 0, i32* %16, align 4
  br label %157

157:                                              ; preds = %156, %55, %40
  %158 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %159 = call i32 @orinoco_unlock(%struct.orinoco_private* %158, i64* %15)
  %160 = load i32, i32* %16, align 4
  store i32 %160, i32* %5, align 4
  br label %161

161:                                              ; preds = %157, %26
  %162 = load i32, i32* %5, align 4
  ret i32 %162
}

declare dso_local %struct.orinoco_private* @ndev_priv(%struct.net_device*) #1

declare dso_local i64 @orinoco_lock(%struct.orinoco_private*, i64*) #1

declare dso_local i32 @memset(%struct.iw_encode_ext*, i32, i32) #1

declare dso_local i8* @min(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i8*) #1

declare dso_local i32 @orinoco_unlock(%struct.orinoco_private*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
