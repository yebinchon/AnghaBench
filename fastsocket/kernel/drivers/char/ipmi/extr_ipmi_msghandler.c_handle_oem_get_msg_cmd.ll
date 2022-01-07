; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_msghandler.c_handle_oem_get_msg_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_msghandler.c_handle_oem_get_msg_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_smi_msg = type { i32, i32* }
%struct.cmd_rcvr = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ipmi_system_interface_addr = type { i32, i32, i32 }
%struct.ipmi_recv_msg = type { i32, %struct.TYPE_3__, i32, i32*, %struct.TYPE_4__*, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@invalid_commands = common dso_local global i32 0, align 4
@unhandled_commands = common dso_local global i32 0, align 4
@handled_commands = common dso_local global i32 0, align 4
@free_user = common dso_local global i32 0, align 4
@IPMI_SYSTEM_INTERFACE_ADDR_TYPE = common dso_local global i32 0, align 4
@IPMI_BMC_CHANNEL = common dso_local global i32 0, align 4
@IPMI_OEM_RECV_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.ipmi_smi_msg*)* @handle_oem_get_msg_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_oem_get_msg_cmd(i32 %0, %struct.ipmi_smi_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipmi_smi_msg*, align 8
  %6 = alloca %struct.cmd_rcvr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca %struct.ipmi_system_interface_addr*, align 8
  %13 = alloca %struct.ipmi_recv_msg*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.ipmi_smi_msg* %1, %struct.ipmi_smi_msg** %5, align 8
  store i32 0, i32* %7, align 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %11, align 8
  %14 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %15 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %16, 4
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @invalid_commands, align 4
  %21 = call i32 @ipmi_inc_stat(i32 %19, i32 %20)
  store i32 0, i32* %3, align 4
  br label %160

22:                                               ; preds = %2
  %23 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %24 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %160

30:                                               ; preds = %22
  %31 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %32 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = ashr i32 %35, 2
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* %8, align 1
  %38 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %39 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %9, align 1
  %44 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %45 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 3
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 15
  %50 = trunc i32 %49 to i8
  store i8 %50, i8* %10, align 1
  %51 = call i32 (...) @rcu_read_lock()
  %52 = load i32, i32* %4, align 4
  %53 = load i8, i8* %8, align 1
  %54 = load i8, i8* %9, align 1
  %55 = load i8, i8* %10, align 1
  %56 = call %struct.cmd_rcvr* @find_cmd_rcvr(i32 %52, i8 zeroext %53, i8 zeroext %54, i8 zeroext %55)
  store %struct.cmd_rcvr* %56, %struct.cmd_rcvr** %6, align 8
  %57 = load %struct.cmd_rcvr*, %struct.cmd_rcvr** %6, align 8
  %58 = icmp ne %struct.cmd_rcvr* %57, null
  br i1 %58, label %59, label %66

59:                                               ; preds = %30
  %60 = load %struct.cmd_rcvr*, %struct.cmd_rcvr** %6, align 8
  %61 = getelementptr inbounds %struct.cmd_rcvr, %struct.cmd_rcvr* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  store %struct.TYPE_4__* %62, %struct.TYPE_4__** %11, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = call i32 @kref_get(i32* %64)
  br label %67

66:                                               ; preds = %30
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %11, align 8
  br label %67

67:                                               ; preds = %66, %59
  %68 = call i32 (...) @rcu_read_unlock()
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %70 = icmp eq %struct.TYPE_4__* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @unhandled_commands, align 4
  %74 = call i32 @ipmi_inc_stat(i32 %72, i32 %73)
  store i32 0, i32* %7, align 4
  br label %158

75:                                               ; preds = %67
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @handled_commands, align 4
  %78 = call i32 @ipmi_inc_stat(i32 %76, i32 %77)
  %79 = call %struct.ipmi_recv_msg* (...) @ipmi_alloc_recv_msg()
  store %struct.ipmi_recv_msg* %79, %struct.ipmi_recv_msg** %13, align 8
  %80 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %81 = icmp ne %struct.ipmi_recv_msg* %80, null
  br i1 %81, label %87, label %82

82:                                               ; preds = %75
  store i32 1, i32* %7, align 4
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* @free_user, align 4
  %86 = call i32 @kref_put(i32* %84, i32 %85)
  br label %157

87:                                               ; preds = %75
  %88 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %89 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %88, i32 0, i32 5
  %90 = bitcast i32* %89 to %struct.ipmi_system_interface_addr*
  store %struct.ipmi_system_interface_addr* %90, %struct.ipmi_system_interface_addr** %12, align 8
  %91 = load i32, i32* @IPMI_SYSTEM_INTERFACE_ADDR_TYPE, align 4
  %92 = load %struct.ipmi_system_interface_addr*, %struct.ipmi_system_interface_addr** %12, align 8
  %93 = getelementptr inbounds %struct.ipmi_system_interface_addr, %struct.ipmi_system_interface_addr* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* @IPMI_BMC_CHANNEL, align 4
  %95 = load %struct.ipmi_system_interface_addr*, %struct.ipmi_system_interface_addr** %12, align 8
  %96 = getelementptr inbounds %struct.ipmi_system_interface_addr, %struct.ipmi_system_interface_addr* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %98 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, 3
  %103 = load %struct.ipmi_system_interface_addr*, %struct.ipmi_system_interface_addr** %12, align 8
  %104 = getelementptr inbounds %struct.ipmi_system_interface_addr, %struct.ipmi_system_interface_addr* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 4
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %106 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %107 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %106, i32 0, i32 4
  store %struct.TYPE_4__* %105, %struct.TYPE_4__** %107, align 8
  %108 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %109 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %108, i32 0, i32 3
  store i32* null, i32** %109, align 8
  %110 = load i32, i32* @IPMI_OEM_RECV_TYPE, align 4
  %111 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %112 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 4
  %113 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %114 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = load i32, i32* %116, align 4
  %118 = ashr i32 %117, 2
  %119 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %120 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  store i32 %118, i32* %121, align 4
  %122 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %123 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %128 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 1
  store i32 %126, i32* %129, align 4
  %130 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %131 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %134 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 3
  store i32 %132, i32* %135, align 4
  %136 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %137 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = sub nsw i32 %138, 4
  %140 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %141 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 2
  store i32 %139, i32* %142, align 4
  %143 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %144 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %147 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 4
  %150 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %151 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = sub nsw i32 %152, 4
  %154 = call i32 @memcpy(i32 %145, i32* %149, i32 %153)
  %155 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %156 = call i32 @deliver_response(%struct.ipmi_recv_msg* %155)
  br label %157

157:                                              ; preds = %87, %82
  br label %158

158:                                              ; preds = %157, %71
  %159 = load i32, i32* %7, align 4
  store i32 %159, i32* %3, align 4
  br label %160

160:                                              ; preds = %158, %29, %18
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local i32 @ipmi_inc_stat(i32, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.cmd_rcvr* @find_cmd_rcvr(i32, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local %struct.ipmi_recv_msg* @ipmi_alloc_recv_msg(...) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @deliver_response(%struct.ipmi_recv_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
