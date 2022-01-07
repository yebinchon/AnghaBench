; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_msghandler.c_format_lan_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_msghandler.c_format_lan_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_smi_msg = type { i32*, i64, i64 }
%struct.kernel_ipmi_msg = type { i32, i8, i64, i32 }
%struct.ipmi_lan_addr = type { i32, i32, i32, i32, i32 }

@IPMI_NETFN_APP_REQUEST = common dso_local global i32 0, align 4
@IPMI_SEND_MSG_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipmi_smi_msg*, %struct.kernel_ipmi_msg*, %struct.ipmi_lan_addr*, i64, i8, i8)* @format_lan_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @format_lan_msg(%struct.ipmi_smi_msg* %0, %struct.kernel_ipmi_msg* %1, %struct.ipmi_lan_addr* %2, i64 %3, i8 zeroext %4, i8 zeroext %5) #0 {
  %7 = alloca %struct.ipmi_smi_msg*, align 8
  %8 = alloca %struct.kernel_ipmi_msg*, align 8
  %9 = alloca %struct.ipmi_lan_addr*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  store %struct.ipmi_smi_msg* %0, %struct.ipmi_smi_msg** %7, align 8
  store %struct.kernel_ipmi_msg* %1, %struct.kernel_ipmi_msg** %8, align 8
  store %struct.ipmi_lan_addr* %2, %struct.ipmi_lan_addr** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8 %4, i8* %11, align 1
  store i8 %5, i8* %12, align 1
  %13 = load i32, i32* @IPMI_NETFN_APP_REQUEST, align 4
  %14 = shl i32 %13, 2
  %15 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %7, align 8
  %16 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 %14, i32* %18, align 4
  %19 = load i32, i32* @IPMI_SEND_MSG_CMD, align 4
  %20 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %7, align 8
  %21 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  store i32 %19, i32* %23, align 4
  %24 = load %struct.ipmi_lan_addr*, %struct.ipmi_lan_addr** %9, align 8
  %25 = getelementptr inbounds %struct.ipmi_lan_addr, %struct.ipmi_lan_addr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %7, align 8
  %28 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  store i32 %26, i32* %30, align 4
  %31 = load %struct.ipmi_lan_addr*, %struct.ipmi_lan_addr** %9, align 8
  %32 = getelementptr inbounds %struct.ipmi_lan_addr, %struct.ipmi_lan_addr* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %7, align 8
  %35 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 3
  store i32 %33, i32* %37, align 4
  %38 = load %struct.ipmi_lan_addr*, %struct.ipmi_lan_addr** %9, align 8
  %39 = getelementptr inbounds %struct.ipmi_lan_addr, %struct.ipmi_lan_addr* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %7, align 8
  %42 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 4
  store i32 %40, i32* %44, align 4
  %45 = load %struct.kernel_ipmi_msg*, %struct.kernel_ipmi_msg** %8, align 8
  %46 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = shl i32 %47, 2
  %49 = load %struct.ipmi_lan_addr*, %struct.ipmi_lan_addr** %9, align 8
  %50 = getelementptr inbounds %struct.ipmi_lan_addr, %struct.ipmi_lan_addr* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 3
  %53 = or i32 %48, %52
  %54 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %7, align 8
  %55 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 5
  store i32 %53, i32* %57, align 4
  %58 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %7, align 8
  %59 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 4
  %62 = call i8* @ipmb_checksum(i32* %61, i32 2)
  %63 = ptrtoint i8* %62 to i32
  %64 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %7, align 8
  %65 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 6
  store i32 %63, i32* %67, align 4
  %68 = load %struct.ipmi_lan_addr*, %struct.ipmi_lan_addr** %9, align 8
  %69 = getelementptr inbounds %struct.ipmi_lan_addr, %struct.ipmi_lan_addr* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %7, align 8
  %72 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 7
  store i32 %70, i32* %74, align 4
  %75 = load i8, i8* %11, align 1
  %76 = zext i8 %75 to i32
  %77 = shl i32 %76, 2
  %78 = load i8, i8* %12, align 1
  %79 = zext i8 %78 to i32
  %80 = or i32 %77, %79
  %81 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %7, align 8
  %82 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 8
  store i32 %80, i32* %84, align 4
  %85 = load %struct.kernel_ipmi_msg*, %struct.kernel_ipmi_msg** %8, align 8
  %86 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %85, i32 0, i32 1
  %87 = load i8, i8* %86, align 4
  %88 = zext i8 %87 to i32
  %89 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %7, align 8
  %90 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 9
  store i32 %88, i32* %92, align 4
  %93 = load %struct.kernel_ipmi_msg*, %struct.kernel_ipmi_msg** %8, align 8
  %94 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp sgt i64 %95, 0
  br i1 %96, label %97, label %110

97:                                               ; preds = %6
  %98 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %7, align 8
  %99 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 10
  %102 = bitcast i32* %101 to i8*
  %103 = load %struct.kernel_ipmi_msg*, %struct.kernel_ipmi_msg** %8, align 8
  %104 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.kernel_ipmi_msg*, %struct.kernel_ipmi_msg** %8, align 8
  %107 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @memcpy(i8* %102, i32 %105, i64 %108)
  br label %110

110:                                              ; preds = %97, %6
  %111 = load %struct.kernel_ipmi_msg*, %struct.kernel_ipmi_msg** %8, align 8
  %112 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %113, 10
  %115 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %7, align 8
  %116 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %115, i32 0, i32 1
  store i64 %114, i64* %116, align 8
  %117 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %7, align 8
  %118 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 7
  %121 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %7, align 8
  %122 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = sub nsw i64 %123, 7
  %125 = trunc i64 %124 to i32
  %126 = call i8* @ipmb_checksum(i32* %120, i32 %125)
  %127 = ptrtoint i8* %126 to i32
  %128 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %7, align 8
  %129 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %7, align 8
  %132 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = getelementptr inbounds i32, i32* %130, i64 %133
  store i32 %127, i32* %134, align 4
  %135 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %7, align 8
  %136 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = add nsw i64 %137, 1
  store i64 %138, i64* %136, align 8
  %139 = load i64, i64* %10, align 8
  %140 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %7, align 8
  %141 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %140, i32 0, i32 2
  store i64 %139, i64* %141, align 8
  ret void
}

declare dso_local i8* @ipmb_checksum(i32*, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
