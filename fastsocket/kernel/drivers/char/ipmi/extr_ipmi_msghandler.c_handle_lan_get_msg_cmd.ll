; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_msghandler.c_handle_lan_get_msg_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_msghandler.c_handle_lan_get_msg_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_smi_msg = type { i32, i32* }
%struct.cmd_rcvr = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ipmi_lan_addr = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ipmi_recv_msg = type { i32, i32, %struct.TYPE_3__, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@invalid_commands = common dso_local global i32 0, align 4
@unhandled_commands = common dso_local global i32 0, align 4
@handled_commands = common dso_local global i32 0, align 4
@free_user = common dso_local global i32 0, align 4
@IPMI_LAN_ADDR_TYPE = common dso_local global i32 0, align 4
@IPMI_CMD_RECV_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.ipmi_smi_msg*)* @handle_lan_get_msg_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_lan_get_msg_cmd(i32 %0, %struct.ipmi_smi_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipmi_smi_msg*, align 8
  %6 = alloca %struct.cmd_rcvr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca %struct.ipmi_lan_addr*, align 8
  %13 = alloca %struct.ipmi_recv_msg*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.ipmi_smi_msg* %1, %struct.ipmi_smi_msg** %5, align 8
  store i32 0, i32* %7, align 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %11, align 8
  %14 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %15 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %16, 12
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @invalid_commands, align 4
  %21 = call i32 @ipmi_inc_stat(i32 %19, i32 %20)
  store i32 0, i32* %3, align 4
  br label %200

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
  br label %200

30:                                               ; preds = %22
  %31 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %32 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 6
  %35 = load i32, i32* %34, align 4
  %36 = ashr i32 %35, 2
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* %8, align 1
  %38 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %39 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 10
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
  br label %198

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
  br label %197

87:                                               ; preds = %75
  %88 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %89 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %88, i32 0, i32 5
  %90 = bitcast i32* %89 to %struct.ipmi_lan_addr*
  store %struct.ipmi_lan_addr* %90, %struct.ipmi_lan_addr** %12, align 8
  %91 = load i32, i32* @IPMI_LAN_ADDR_TYPE, align 4
  %92 = load %struct.ipmi_lan_addr*, %struct.ipmi_lan_addr** %12, align 8
  %93 = getelementptr inbounds %struct.ipmi_lan_addr, %struct.ipmi_lan_addr* %92, i32 0, i32 6
  store i32 %91, i32* %93, align 4
  %94 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %95 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 4
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.ipmi_lan_addr*, %struct.ipmi_lan_addr** %12, align 8
  %100 = getelementptr inbounds %struct.ipmi_lan_addr, %struct.ipmi_lan_addr* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 4
  %101 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %102 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 8
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.ipmi_lan_addr*, %struct.ipmi_lan_addr** %12, align 8
  %107 = getelementptr inbounds %struct.ipmi_lan_addr, %struct.ipmi_lan_addr* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  %108 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %109 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 5
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.ipmi_lan_addr*, %struct.ipmi_lan_addr** %12, align 8
  %114 = getelementptr inbounds %struct.ipmi_lan_addr, %struct.ipmi_lan_addr* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 4
  %115 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %116 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 9
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %119, 3
  %121 = load %struct.ipmi_lan_addr*, %struct.ipmi_lan_addr** %12, align 8
  %122 = getelementptr inbounds %struct.ipmi_lan_addr, %struct.ipmi_lan_addr* %121, i32 0, i32 3
  store i32 %120, i32* %122, align 4
  %123 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %124 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 3
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %127, 15
  %129 = load %struct.ipmi_lan_addr*, %struct.ipmi_lan_addr** %12, align 8
  %130 = getelementptr inbounds %struct.ipmi_lan_addr, %struct.ipmi_lan_addr* %129, i32 0, i32 4
  store i32 %128, i32* %130, align 4
  %131 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %132 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 3
  %135 = load i32, i32* %134, align 4
  %136 = ashr i32 %135, 4
  %137 = load %struct.ipmi_lan_addr*, %struct.ipmi_lan_addr** %12, align 8
  %138 = getelementptr inbounds %struct.ipmi_lan_addr, %struct.ipmi_lan_addr* %137, i32 0, i32 5
  store i32 %136, i32* %138, align 4
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %140 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %141 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %140, i32 0, i32 4
  store %struct.TYPE_4__* %139, %struct.TYPE_4__** %141, align 8
  %142 = load i32, i32* @IPMI_CMD_RECV_TYPE, align 4
  %143 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %144 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %143, i32 0, i32 3
  store i32 %142, i32* %144, align 8
  %145 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %146 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 9
  %149 = load i32, i32* %148, align 4
  %150 = ashr i32 %149, 2
  %151 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %152 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 8
  %153 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %154 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 6
  %157 = load i32, i32* %156, align 4
  %158 = ashr i32 %157, 2
  %159 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %160 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 0
  store i32 %158, i32* %161, align 8
  %162 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %163 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 10
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %168 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 1
  store i32 %166, i32* %169, align 4
  %170 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %171 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %174 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 3
  store i32 %172, i32* %175, align 4
  %176 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %177 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = sub nsw i32 %178, 12
  %180 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %181 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 2
  store i32 %179, i32* %182, align 8
  %183 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %184 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %187 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %186, i32 0, i32 1
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 11
  %190 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %191 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = sub nsw i32 %192, 12
  %194 = call i32 @memcpy(i32 %185, i32* %189, i32 %193)
  %195 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %13, align 8
  %196 = call i32 @deliver_response(%struct.ipmi_recv_msg* %195)
  br label %197

197:                                              ; preds = %87, %82
  br label %198

198:                                              ; preds = %197, %71
  %199 = load i32, i32* %7, align 4
  store i32 %199, i32* %3, align 4
  br label %200

200:                                              ; preds = %198, %29, %18
  %201 = load i32, i32* %3, align 4
  ret i32 %201
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
