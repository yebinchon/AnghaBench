; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_hv_kvp.c_process_ob_ipinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_hv_kvp.c_process_ob_ipinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_kvp_msg = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i64, i64, i64, i64, i64 }
%struct.hv_kvp_ip_msg = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i64, i64, i64, i64, i64 }

@UTF16_HOST_ENDIAN = common dso_local global i32 0, align 4
@MAX_IP_ADDR_SIZE = common dso_local global i32 0, align 4
@MAX_GATEWAY_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @process_ob_ipinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_ob_ipinfo(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hv_kvp_msg*, align 8
  %9 = alloca %struct.hv_kvp_ip_msg*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.hv_kvp_msg*
  store %struct.hv_kvp_msg* %12, %struct.hv_kvp_msg** %8, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.hv_kvp_ip_msg*
  store %struct.hv_kvp_ip_msg* %14, %struct.hv_kvp_ip_msg** %9, align 8
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %163 [
    i32 128, label %16
  ]

16:                                               ; preds = %3
  %17 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %8, align 8
  %18 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 6
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i8*
  %23 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %8, align 8
  %24 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 6
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 @strlen(i8* %28)
  %30 = load i32, i32* @UTF16_HOST_ENDIAN, align 4
  %31 = load %struct.hv_kvp_ip_msg*, %struct.hv_kvp_ip_msg** %9, align 8
  %32 = getelementptr inbounds %struct.hv_kvp_ip_msg, %struct.hv_kvp_ip_msg* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 6
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i32*
  %36 = load i32, i32* @MAX_IP_ADDR_SIZE, align 4
  %37 = call i32 @utf8s_to_utf16s(i8* %22, i32 %29, i32 %30, i32* %35, i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %16
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %4, align 4
  br label %164

42:                                               ; preds = %16
  %43 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %8, align 8
  %44 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 5
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %8, align 8
  %50 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 5
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i8*
  %55 = call i32 @strlen(i8* %54)
  %56 = load i32, i32* @UTF16_HOST_ENDIAN, align 4
  %57 = load %struct.hv_kvp_ip_msg*, %struct.hv_kvp_ip_msg** %9, align 8
  %58 = getelementptr inbounds %struct.hv_kvp_ip_msg, %struct.hv_kvp_ip_msg* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 5
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to i32*
  %62 = load i32, i32* @MAX_IP_ADDR_SIZE, align 4
  %63 = call i32 @utf8s_to_utf16s(i8* %48, i32 %55, i32 %56, i32* %61, i32 %62)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %42
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %4, align 4
  br label %164

68:                                               ; preds = %42
  %69 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %8, align 8
  %70 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to i8*
  %75 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %8, align 8
  %76 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 4
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to i8*
  %81 = call i32 @strlen(i8* %80)
  %82 = load i32, i32* @UTF16_HOST_ENDIAN, align 4
  %83 = load %struct.hv_kvp_ip_msg*, %struct.hv_kvp_ip_msg** %9, align 8
  %84 = getelementptr inbounds %struct.hv_kvp_ip_msg, %struct.hv_kvp_ip_msg* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = inttoptr i64 %86 to i32*
  %88 = load i32, i32* @MAX_GATEWAY_SIZE, align 4
  %89 = call i32 @utf8s_to_utf16s(i8* %74, i32 %81, i32 %82, i32* %87, i32 %88)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %68
  %93 = load i32, i32* %10, align 4
  store i32 %93, i32* %4, align 4
  br label %164

94:                                               ; preds = %68
  %95 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %8, align 8
  %96 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = inttoptr i64 %99 to i8*
  %101 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %8, align 8
  %102 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = inttoptr i64 %105 to i8*
  %107 = call i32 @strlen(i8* %106)
  %108 = load i32, i32* @UTF16_HOST_ENDIAN, align 4
  %109 = load %struct.hv_kvp_ip_msg*, %struct.hv_kvp_ip_msg** %9, align 8
  %110 = getelementptr inbounds %struct.hv_kvp_ip_msg, %struct.hv_kvp_ip_msg* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = inttoptr i64 %112 to i32*
  %114 = load i32, i32* @MAX_IP_ADDR_SIZE, align 4
  %115 = call i32 @utf8s_to_utf16s(i8* %100, i32 %107, i32 %108, i32* %113, i32 %114)
  store i32 %115, i32* %10, align 4
  %116 = load i32, i32* %10, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %94
  %119 = load i32, i32* %10, align 4
  store i32 %119, i32* %4, align 4
  br label %164

120:                                              ; preds = %94
  %121 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %8, align 8
  %122 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = inttoptr i64 %125 to i8*
  %127 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %8, align 8
  %128 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = inttoptr i64 %131 to i8*
  %133 = call i32 @strlen(i8* %132)
  %134 = load i32, i32* @UTF16_HOST_ENDIAN, align 4
  %135 = load %struct.hv_kvp_ip_msg*, %struct.hv_kvp_ip_msg** %9, align 8
  %136 = getelementptr inbounds %struct.hv_kvp_ip_msg, %struct.hv_kvp_ip_msg* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = inttoptr i64 %138 to i32*
  %140 = load i32, i32* @MAX_IP_ADDR_SIZE, align 4
  %141 = call i32 @utf8s_to_utf16s(i8* %126, i32 %133, i32 %134, i32* %139, i32 %140)
  store i32 %141, i32* %10, align 4
  %142 = load i32, i32* %10, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %120
  %145 = load i32, i32* %10, align 4
  store i32 %145, i32* %4, align 4
  br label %164

146:                                              ; preds = %120
  %147 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %8, align 8
  %148 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.hv_kvp_ip_msg*, %struct.hv_kvp_ip_msg** %9, align 8
  %153 = getelementptr inbounds %struct.hv_kvp_ip_msg, %struct.hv_kvp_ip_msg* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 1
  store i32 %151, i32* %154, align 4
  %155 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %8, align 8
  %156 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.hv_kvp_ip_msg*, %struct.hv_kvp_ip_msg** %9, align 8
  %161 = getelementptr inbounds %struct.hv_kvp_ip_msg, %struct.hv_kvp_ip_msg* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  store i32 %159, i32* %162, align 8
  br label %163

163:                                              ; preds = %146, %3
  store i32 0, i32* %4, align 4
  br label %164

164:                                              ; preds = %163, %144, %118, %92, %66, %40
  %165 = load i32, i32* %4, align 4
  ret i32 %165
}

declare dso_local i32 @utf8s_to_utf16s(i8*, i32, i32, i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
