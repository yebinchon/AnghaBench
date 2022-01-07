; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_si_intf.c_smi_event_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_si_intf.c_smi_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smi_info = type { i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_4__ = type { i32*, i32 }
%struct.TYPE_3__ = type { i32 (i32, i32)*, i32 (i32, i8*, i32)* }

@SI_SM_CALL_WITHOUT_DELAY = common dso_local global i32 0, align 4
@SI_SM_TRANSACTION_COMPLETE = common dso_local global i32 0, align 4
@complete_transactions = common dso_local global i32 0, align 4
@SI_SM_HOSED = common dso_local global i32 0, align 4
@hosed_count = common dso_local global i32 0, align 4
@SI_NORMAL = common dso_local global i32 0, align 4
@IPMI_ERR_UNSPECIFIED = common dso_local global i32 0, align 4
@SI_SM_ATTN = common dso_local global i32 0, align 4
@attentions = common dso_local global i32 0, align 4
@IPMI_NETFN_APP_REQUEST = common dso_local global i32 0, align 4
@IPMI_GET_MSG_FLAGS_CMD = common dso_local global i8 0, align 1
@SI_GETTING_FLAGS = common dso_local global i32 0, align 4
@SI_SM_IDLE = common dso_local global i32 0, align 4
@idles = common dso_local global i32 0, align 4
@IPMI_READ_EVENT_MSG_BUFFER_CMD = common dso_local global i32 0, align 4
@SI_GETTING_EVENTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smi_info*, i32)* @smi_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smi_event_handler(%struct.smi_info* %0, i32 %1) #0 {
  %3 = alloca %struct.smi_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [2 x i8], align 1
  store %struct.smi_info* %0, %struct.smi_info** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %7

7:                                                ; preds = %150, %127, %91, %2
  %8 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %9 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %8, i32 0, i32 3
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32 (i32, i32)*, i32 (i32, i32)** %11, align 8
  %13 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %14 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 %12(i32 %15, i32 %16)
  store i32 %17, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %22, %7
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @SI_SM_CALL_WITHOUT_DELAY, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %18
  %23 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %24 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %23, i32 0, i32 3
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32 (i32, i32)*, i32 (i32, i32)** %26, align 8
  %28 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %29 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 %27(i32 %30, i32 0)
  store i32 %31, i32* %5, align 4
  br label %18

32:                                               ; preds = %18
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @SI_SM_TRANSACTION_COMPLETE, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %51

36:                                               ; preds = %32
  %37 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %38 = load i32, i32* @complete_transactions, align 4
  %39 = call i32 @smi_inc_stat(%struct.smi_info* %37, i32 %38)
  %40 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %41 = call i32 @handle_transaction_done(%struct.smi_info* %40)
  %42 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %43 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %42, i32 0, i32 3
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32 (i32, i32)*, i32 (i32, i32)** %45, align 8
  %47 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %48 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 %46(i32 %49, i32 0)
  store i32 %50, i32* %5, align 4
  br label %81

51:                                               ; preds = %32
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @SI_SM_HOSED, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %80

55:                                               ; preds = %51
  %56 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %57 = load i32, i32* @hosed_count, align 4
  %58 = call i32 @smi_inc_stat(%struct.smi_info* %56, i32 %57)
  %59 = load i32, i32* @SI_NORMAL, align 4
  %60 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %61 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %63 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %62, i32 0, i32 1
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = icmp ne %struct.TYPE_4__* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %55
  %67 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %68 = load i32, i32* @IPMI_ERR_UNSPECIFIED, align 4
  %69 = call i32 @return_hosed_msg(%struct.smi_info* %67, i32 %68)
  br label %70

70:                                               ; preds = %66, %55
  %71 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %72 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %71, i32 0, i32 3
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32 (i32, i32)*, i32 (i32, i32)** %74, align 8
  %76 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %77 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 %75(i32 %78, i32 0)
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %70, %51
  br label %81

81:                                               ; preds = %80, %36
  %82 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %83 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @likely(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %114

87:                                               ; preds = %81
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* @SI_SM_ATTN, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %114

91:                                               ; preds = %87
  %92 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %93 = load i32, i32* @attentions, align 4
  %94 = call i32 @smi_inc_stat(%struct.smi_info* %92, i32 %93)
  %95 = load i32, i32* @IPMI_NETFN_APP_REQUEST, align 4
  %96 = shl i32 %95, 2
  %97 = trunc i32 %96 to i8
  %98 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  store i8 %97, i8* %98, align 1
  %99 = load i8, i8* @IPMI_GET_MSG_FLAGS_CMD, align 1
  %100 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 1
  store i8 %99, i8* %100, align 1
  %101 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %102 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %101, i32 0, i32 3
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %104, align 8
  %106 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %107 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %110 = call i32 %105(i32 %108, i8* %109, i32 2)
  %111 = load i32, i32* @SI_GETTING_FLAGS, align 4
  %112 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %113 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  br label %7

114:                                              ; preds = %87, %81
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* @SI_SM_IDLE, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %129

118:                                              ; preds = %114
  %119 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %120 = load i32, i32* @idles, align 4
  %121 = call i32 @smi_inc_stat(%struct.smi_info* %119, i32 %120)
  %122 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %123 = call i32 @start_next_msg(%struct.smi_info* %122)
  store i32 %123, i32* %5, align 4
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* @SI_SM_IDLE, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %118
  br label %7

128:                                              ; preds = %118
  br label %129

129:                                              ; preds = %128, %114
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* @SI_SM_IDLE, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %193

133:                                              ; preds = %129
  %134 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %135 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %134, i32 0, i32 4
  %136 = call i64 @atomic_read(i32* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %193

138:                                              ; preds = %133
  %139 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %140 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %139, i32 0, i32 4
  %141 = call i32 @atomic_set(i32* %140, i32 0)
  %142 = call %struct.TYPE_4__* (...) @ipmi_alloc_smi_msg()
  %143 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %144 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %143, i32 0, i32 1
  store %struct.TYPE_4__* %142, %struct.TYPE_4__** %144, align 8
  %145 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %146 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %145, i32 0, i32 1
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  %148 = icmp ne %struct.TYPE_4__* %147, null
  br i1 %148, label %150, label %149

149:                                              ; preds = %138
  br label %194

150:                                              ; preds = %138
  %151 = load i32, i32* @IPMI_NETFN_APP_REQUEST, align 4
  %152 = shl i32 %151, 2
  %153 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %154 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %153, i32 0, i32 1
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 0
  store i32 %152, i32* %158, align 4
  %159 = load i32, i32* @IPMI_READ_EVENT_MSG_BUFFER_CMD, align 4
  %160 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %161 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %160, i32 0, i32 1
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 1
  store i32 %159, i32* %165, align 4
  %166 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %167 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %166, i32 0, i32 1
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 1
  store i32 2, i32* %169, align 8
  %170 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %171 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %170, i32 0, i32 3
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 1
  %174 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %173, align 8
  %175 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %176 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %179 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %178, i32 0, i32 1
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = bitcast i32* %182 to i8*
  %184 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %185 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %184, i32 0, i32 1
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = call i32 %174(i32 %177, i8* %183, i32 %188)
  %190 = load i32, i32* @SI_GETTING_EVENTS, align 4
  %191 = load %struct.smi_info*, %struct.smi_info** %3, align 8
  %192 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %191, i32 0, i32 0
  store i32 %190, i32* %192, align 8
  br label %7

193:                                              ; preds = %133, %129
  br label %194

194:                                              ; preds = %193, %149
  %195 = load i32, i32* %5, align 4
  ret i32 %195
}

declare dso_local i32 @smi_inc_stat(%struct.smi_info*, i32) #1

declare dso_local i32 @handle_transaction_done(%struct.smi_info*) #1

declare dso_local i32 @return_hosed_msg(%struct.smi_info*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @start_next_msg(%struct.smi_info*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local %struct.TYPE_4__* @ipmi_alloc_smi_msg(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
