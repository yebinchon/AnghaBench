; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_msghandler.c_ipmi_smi_msg_received.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_msghandler.c_ipmi_smi_msg_received.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.ipmi_smi_msg = type { i32, i32*, i32, i32*, i32, i32, i32* }

@IPMI_NETFN_APP_REQUEST = common dso_local global i32 0, align 4
@IPMI_SEND_MSG_CMD = common dso_local global i32 0, align 4
@IPMI_NODE_BUSY_ERR = common dso_local global i32 0, align 4
@IPMI_LOST_ARBITRATION_ERR = common dso_local global i32 0, align 4
@IPMI_BUS_ERR = common dso_local global i32 0, align 4
@IPMI_NAK_ON_WRITE_ERR = common dso_local global i32 0, align 4
@IPMI_MAX_CHANNELS = common dso_local global i32 0, align 4
@IPMI_CHANNEL_MEDIUM_8023LAN = common dso_local global i64 0, align 8
@IPMI_CHANNEL_MEDIUM_ASYNC = common dso_local global i64 0, align 8
@sent_lan_command_errs = common dso_local global i32 0, align 4
@sent_ipmb_command_errs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipmi_smi_msg_received(%struct.TYPE_8__* %0, %struct.ipmi_smi_msg* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.ipmi_smi_msg*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store %struct.ipmi_smi_msg* %1, %struct.ipmi_smi_msg** %4, align 8
  store i64 0, i64* %5, align 8
  %8 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %9 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp sge i32 %10, 2
  br i1 %11, label %12, label %140

12:                                               ; preds = %2
  %13 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %14 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IPMI_NETFN_APP_REQUEST, align 4
  %19 = shl i32 %18, 2
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %140

21:                                               ; preds = %12
  %22 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %23 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @IPMI_SEND_MSG_CMD, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %140

29:                                               ; preds = %21
  %30 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %31 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %30, i32 0, i32 6
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %140

34:                                               ; preds = %29
  %35 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %36 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = icmp sge i32 %37, 3
  br i1 %38, label %39, label %131

39:                                               ; preds = %34
  %40 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %41 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %131

46:                                               ; preds = %39
  %47 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %48 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @IPMI_NODE_BUSY_ERR, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %131

54:                                               ; preds = %46
  %55 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %56 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @IPMI_LOST_ARBITRATION_ERR, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %131

62:                                               ; preds = %54
  %63 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %64 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 2
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @IPMI_BUS_ERR, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %131

70:                                               ; preds = %62
  %71 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %72 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 2
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @IPMI_NAK_ON_WRITE_ERR, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %131

78:                                               ; preds = %70
  %79 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %80 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 3
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, 15
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @IPMI_MAX_CHANNELS, align 4
  %87 = icmp sge i32 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %78
  br label %120

89:                                               ; preds = %78
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 4
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @IPMI_CHANNEL_MEDIUM_8023LAN, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %111, label %100

100:                                              ; preds = %89
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 4
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @IPMI_CHANNEL_MEDIUM_ASYNC, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %100, %89
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %113 = load i32, i32* @sent_lan_command_errs, align 4
  %114 = call i32 @ipmi_inc_stat(%struct.TYPE_8__* %112, i32 %113)
  br label %119

115:                                              ; preds = %100
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %117 = load i32, i32* @sent_ipmb_command_errs, align 4
  %118 = call i32 @ipmi_inc_stat(%struct.TYPE_8__* %116, i32 %117)
  br label %119

119:                                              ; preds = %115, %111
  br label %120

120:                                              ; preds = %119, %88
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %122 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %123 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %126 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %125, i32 0, i32 3
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 2
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @intf_err_seq(%struct.TYPE_8__* %121, i32 %124, i32 %129)
  br label %137

131:                                              ; preds = %70, %62, %54, %46, %39, %34
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %133 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %134 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @intf_start_seq_timer(%struct.TYPE_8__* %132, i32 %135)
  br label %137

137:                                              ; preds = %131, %120
  %138 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %139 = call i32 @ipmi_free_smi_msg(%struct.ipmi_smi_msg* %138)
  br label %168

140:                                              ; preds = %29, %21, %12, %2
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  store i32 %143, i32* %6, align 4
  %144 = load i32, i32* %6, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %151, label %146

146:                                              ; preds = %140
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 2
  %149 = load i64, i64* %5, align 8
  %150 = call i32 @spin_lock_irqsave(i32* %148, i64 %149)
  br label %151

151:                                              ; preds = %146, %140
  %152 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %4, align 8
  %153 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %152, i32 0, i32 4
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 3
  %156 = call i32 @list_add_tail(i32* %153, i32* %155)
  %157 = load i32, i32* %6, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %164, label %159

159:                                              ; preds = %151
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 2
  %162 = load i64, i64* %5, align 8
  %163 = call i32 @spin_unlock_irqrestore(i32* %161, i64 %162)
  br label %164

164:                                              ; preds = %159, %151
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 1
  %167 = call i32 @tasklet_schedule(i32* %166)
  br label %168

168:                                              ; preds = %164, %137
  ret void
}

declare dso_local i32 @ipmi_inc_stat(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @intf_err_seq(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @intf_start_seq_timer(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @ipmi_free_smi_msg(%struct.ipmi_smi_msg*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
