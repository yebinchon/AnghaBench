; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_msghandler.c_handle_lan_get_msg_rsp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_msghandler.c_handle_lan_get_msg_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_smi_msg = type { i32, i32* }
%struct.ipmi_lan_addr = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ipmi_recv_msg = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.ipmi_addr = type { i32 }

@invalid_lan_responses = common dso_local global i32 0, align 4
@IPMI_LAN_ADDR_TYPE = common dso_local global i32 0, align 4
@unhandled_lan_responses = common dso_local global i32 0, align 4
@IPMI_RESPONSE_RECV_TYPE = common dso_local global i32 0, align 4
@handled_lan_responses = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.ipmi_smi_msg*)* @handle_lan_get_msg_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_lan_get_msg_rsp(i32 %0, %struct.ipmi_smi_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipmi_smi_msg*, align 8
  %6 = alloca %struct.ipmi_lan_addr, align 4
  %7 = alloca %struct.ipmi_recv_msg*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.ipmi_smi_msg* %1, %struct.ipmi_smi_msg** %5, align 8
  %8 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %9 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %10, 13
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @invalid_lan_responses, align 4
  %15 = call i32 @ipmi_inc_stat(i32 %13, i32 %14)
  store i32 0, i32* %3, align 4
  br label %141

16:                                               ; preds = %2
  %17 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %18 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %141

24:                                               ; preds = %16
  %25 = load i32, i32* @IPMI_LAN_ADDR_TYPE, align 4
  %26 = getelementptr inbounds %struct.ipmi_lan_addr, %struct.ipmi_lan_addr* %6, i32 0, i32 6
  store i32 %25, i32* %26, align 4
  %27 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %28 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 4
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.ipmi_lan_addr, %struct.ipmi_lan_addr* %6, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %34 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 8
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.ipmi_lan_addr, %struct.ipmi_lan_addr* %6, i32 0, i32 1
  store i32 %37, i32* %38, align 4
  %39 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %40 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 5
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.ipmi_lan_addr, %struct.ipmi_lan_addr* %6, i32 0, i32 2
  store i32 %43, i32* %44, align 4
  %45 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %46 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 3
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 15
  %51 = getelementptr inbounds %struct.ipmi_lan_addr, %struct.ipmi_lan_addr* %6, i32 0, i32 3
  store i32 %50, i32* %51, align 4
  %52 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %53 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 3
  %56 = load i32, i32* %55, align 4
  %57 = ashr i32 %56, 4
  %58 = getelementptr inbounds %struct.ipmi_lan_addr, %struct.ipmi_lan_addr* %6, i32 0, i32 4
  store i32 %57, i32* %58, align 4
  %59 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %60 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 9
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, 3
  %65 = getelementptr inbounds %struct.ipmi_lan_addr, %struct.ipmi_lan_addr* %6, i32 0, i32 5
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* %4, align 4
  %67 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %68 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 9
  %71 = load i32, i32* %70, align 4
  %72 = ashr i32 %71, 2
  %73 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %74 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 3
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 15
  %79 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %80 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 10
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %85 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 6
  %88 = load i32, i32* %87, align 4
  %89 = ashr i32 %88, 2
  %90 = and i32 %89, -2
  %91 = bitcast %struct.ipmi_lan_addr* %6 to %struct.ipmi_addr*
  %92 = call i64 @intf_find_seq(i32 %66, i32 %72, i32 %78, i32 %83, i32 %90, %struct.ipmi_addr* %91, %struct.ipmi_recv_msg** %7)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %24
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* @unhandled_lan_responses, align 4
  %97 = call i32 @ipmi_inc_stat(i32 %95, i32 %96)
  store i32 0, i32* %3, align 4
  br label %141

98:                                               ; preds = %24
  %99 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %7, align 8
  %100 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %103 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 11
  %106 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %107 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = sub nsw i32 %108, 11
  %110 = call i32 @memcpy(i32 %101, i32* %105, i32 %109)
  %111 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %112 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 6
  %115 = load i32, i32* %114, align 4
  %116 = ashr i32 %115, 2
  %117 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %7, align 8
  %118 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  store i32 %116, i32* %119, align 4
  %120 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %7, align 8
  %121 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %7, align 8
  %124 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 2
  store i32 %122, i32* %125, align 4
  %126 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %127 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = sub nsw i32 %128, 12
  %130 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %7, align 8
  %131 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 1
  store i32 %129, i32* %132, align 4
  %133 = load i32, i32* @IPMI_RESPONSE_RECV_TYPE, align 4
  %134 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %7, align 8
  %135 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 4
  %136 = load i32, i32* %4, align 4
  %137 = load i32, i32* @handled_lan_responses, align 4
  %138 = call i32 @ipmi_inc_stat(i32 %136, i32 %137)
  %139 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %7, align 8
  %140 = call i32 @deliver_response(%struct.ipmi_recv_msg* %139)
  store i32 0, i32* %3, align 4
  br label %141

141:                                              ; preds = %98, %94, %23, %12
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i32 @ipmi_inc_stat(i32, i32) #1

declare dso_local i64 @intf_find_seq(i32, i32, i32, i32, i32, %struct.ipmi_addr*, %struct.ipmi_recv_msg**) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @deliver_response(%struct.ipmi_recv_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
