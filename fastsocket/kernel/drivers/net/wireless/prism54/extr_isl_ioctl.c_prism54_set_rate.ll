; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/prism54/extr_isl_ioctl.c_prism54_set_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/prism54/extr_isl_ioctl.c_prism54_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_param = type { i32, i64 }
%union.oid_res_t = type { i8* }

@DOT11_OID_PROFILES = common dso_local global i32 0, align 4
@DOT11_OID_SUPPORTEDRATES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DOT11_OID_EXTENDEDRATES = common dso_local global i32 0, align 4
@DOT11_OID_RATES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_param*, i8*)* @prism54_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism54_set_rate(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_param* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_param*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %union.oid_res_t, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_param* %2, %struct.iw_param** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load %struct.net_device*, %struct.net_device** %6, align 8
  %18 = call i32* @netdev_priv(%struct.net_device* %17)
  store i32* %18, i32** %10, align 8
  %19 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %20 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %27

23:                                               ; preds = %4
  store i8 1, i8* %12, align 1
  %24 = load i32*, i32** %10, align 8
  %25 = load i32, i32* @DOT11_OID_PROFILES, align 4
  %26 = call i32 @mgt_set_request(i32* %24, i32 %25, i32 0, i8* %12)
  store i32 %26, i32* %5, align 4
  br label %147

27:                                               ; preds = %4
  %28 = load i32*, i32** %10, align 8
  %29 = load i32, i32* @DOT11_OID_SUPPORTEDRATES, align 4
  %30 = call i32 @mgt_get_request(i32* %28, i32 %29, i32 0, i32* null, %union.oid_res_t* %16)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = bitcast %union.oid_res_t* %16 to i8**
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @kfree(i8* %35)
  %37 = load i32, i32* %14, align 4
  store i32 %37, i32* %5, align 4
  br label %147

38:                                               ; preds = %27
  %39 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %40 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sdiv i32 %41, 500000
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %11, align 1
  %44 = bitcast %union.oid_res_t* %16 to i8**
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %13, align 8
  store i32 0, i32* %15, align 4
  br label %46

46:                                               ; preds = %75, %38
  %47 = load i8*, i8** %13, align 8
  %48 = load i32, i32* %15, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = icmp ne i8 %51, 0
  br i1 %52, label %53, label %86

53:                                               ; preds = %46
  %54 = load i8, i8* %11, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %53
  %58 = load i8*, i8** %13, align 8
  %59 = load i32, i32* %15, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = load i8, i8* %11, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  br label %86

68:                                               ; preds = %57, %53
  %69 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %70 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %15, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  br label %86

75:                                               ; preds = %68
  %76 = load i8*, i8** %13, align 8
  %77 = load i32, i32* %15, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = or i32 %81, 128
  %83 = trunc i32 %82 to i8
  store i8 %83, i8* %79, align 1
  %84 = load i32, i32* %15, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %15, align 4
  br label %46

86:                                               ; preds = %74, %67, %46
  %87 = load i8*, i8** %13, align 8
  %88 = load i32, i32* %15, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = icmp ne i8 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %86
  %94 = bitcast %union.oid_res_t* %16 to i8**
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @kfree(i8* %95)
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %5, align 4
  br label %147

99:                                               ; preds = %86
  %100 = load i8*, i8** %13, align 8
  %101 = load i32, i32* %15, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = or i32 %105, 128
  %107 = trunc i32 %106 to i8
  store i8 %107, i8* %103, align 1
  %108 = load i8*, i8** %13, align 8
  %109 = load i32, i32* %15, align 4
  %110 = add nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %108, i64 %111
  store i8 0, i8* %112, align 1
  %113 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %114 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %99
  %118 = load i8*, i8** %13, align 8
  %119 = load i32, i32* %15, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %118, i64 %120
  %122 = load i8, i8* %121, align 1
  %123 = load i8*, i8** %13, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 0
  store i8 %122, i8* %124, align 1
  %125 = load i8*, i8** %13, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 1
  store i8 0, i8* %126, align 1
  br label %127

127:                                              ; preds = %117, %99
  store i8 -1, i8* %12, align 1
  %128 = load i32*, i32** %10, align 8
  %129 = load i32, i32* @DOT11_OID_PROFILES, align 4
  %130 = call i32 @mgt_set_request(i32* %128, i32 %129, i32 0, i8* %12)
  store i32 %130, i32* %14, align 4
  %131 = load i32*, i32** %10, align 8
  %132 = load i32, i32* @DOT11_OID_EXTENDEDRATES, align 4
  %133 = load i8*, i8** %13, align 8
  %134 = call i32 @mgt_set_request(i32* %131, i32 %132, i32 0, i8* %133)
  %135 = load i32, i32* %14, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %14, align 4
  %137 = load i32*, i32** %10, align 8
  %138 = load i32, i32* @DOT11_OID_RATES, align 4
  %139 = load i8*, i8** %13, align 8
  %140 = call i32 @mgt_set_request(i32* %137, i32 %138, i32 0, i8* %139)
  %141 = load i32, i32* %14, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %14, align 4
  %143 = bitcast %union.oid_res_t* %16 to i8**
  %144 = load i8*, i8** %143, align 8
  %145 = call i32 @kfree(i8* %144)
  %146 = load i32, i32* %14, align 4
  store i32 %146, i32* %5, align 4
  br label %147

147:                                              ; preds = %127, %93, %33, %23
  %148 = load i32, i32* %5, align 4
  ret i32 %148
}

declare dso_local i32* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mgt_set_request(i32*, i32, i32, i8*) #1

declare dso_local i32 @mgt_get_request(i32*, i32, i32, i32*, %union.oid_res_t*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
