; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_zd1201.c_zd1201_get_encode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_zd1201.c_zd1201_get_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i32, i32 }
%struct.zd1201 = type { i32*, i32*, i64, i64 }

@IW_ENCODE_ENABLED = common dso_local global i32 0, align 4
@IW_ENCODE_DISABLED = common dso_local global i32 0, align 4
@IW_ENCODE_RESTRICTED = common dso_local global i32 0, align 4
@IW_ENCODE_OPEN = common dso_local global i32 0, align 4
@IW_ENCODE_INDEX = common dso_local global i32 0, align 4
@ZD1201_RID_CNFDEFAULTKEYID = common dso_local global i32 0, align 4
@ZD1201_NUMKEYS = common dso_local global i16 0, align 2
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_point*, i8*)* @zd1201_get_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zd1201_get_encode(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_point*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.zd1201*, align 8
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_point* %2, %struct.iw_point** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = call %struct.zd1201* @netdev_priv(%struct.net_device* %13)
  store %struct.zd1201* %14, %struct.zd1201** %10, align 8
  %15 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %16 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load i32, i32* @IW_ENCODE_ENABLED, align 4
  %21 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %22 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  br label %27

23:                                               ; preds = %4
  %24 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %25 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %26 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %23, %19
  %28 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %29 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load i32, i32* @IW_ENCODE_RESTRICTED, align 4
  %34 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %35 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %44

38:                                               ; preds = %27
  %39 = load i32, i32* @IW_ENCODE_OPEN, align 4
  %40 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %41 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %38, %32
  %45 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %46 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @IW_ENCODE_INDEX, align 4
  %49 = and i32 %47, %48
  %50 = sub nsw i32 %49, 1
  %51 = trunc i32 %50 to i16
  store i16 %51, i16* %11, align 2
  %52 = load i16, i16* %11, align 2
  %53 = sext i16 %52 to i32
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %64

55:                                               ; preds = %44
  %56 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %57 = load i32, i32* @ZD1201_RID_CNFDEFAULTKEYID, align 4
  %58 = call i32 @zd1201_getconfig16(%struct.zd1201* %56, i32 %57, i16* %11)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %5, align 4
  br label %106

63:                                               ; preds = %55
  br label %64

64:                                               ; preds = %63, %44
  %65 = load i16, i16* %11, align 2
  %66 = sext i16 %65 to i32
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %64
  %69 = load i16, i16* %11, align 2
  %70 = sext i16 %69 to i32
  %71 = load i16, i16* @ZD1201_NUMKEYS, align 2
  %72 = sext i16 %71 to i32
  %73 = icmp sge i32 %70, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %68, %64
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %5, align 4
  br label %106

77:                                               ; preds = %68
  %78 = load i16, i16* %11, align 2
  %79 = sext i16 %78 to i32
  %80 = add nsw i32 %79, 1
  %81 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %82 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  %85 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %86 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i16, i16* %11, align 2
  %89 = sext i16 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %93 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load i8*, i8** %9, align 8
  %95 = load %struct.zd1201*, %struct.zd1201** %10, align 8
  %96 = getelementptr inbounds %struct.zd1201, %struct.zd1201* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i16, i16* %11, align 2
  %99 = sext i16 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %103 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @memcpy(i8* %94, i32 %101, i32 %104)
  store i32 0, i32* %5, align 4
  br label %106

106:                                              ; preds = %77, %74, %61
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local %struct.zd1201* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @zd1201_getconfig16(%struct.zd1201*, i32, i16*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
