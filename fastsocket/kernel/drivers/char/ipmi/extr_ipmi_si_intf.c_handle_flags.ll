; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_si_intf.c_handle_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_si_intf.c_handle_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smi_info = type { i32, i8*, i64 (%struct.smi_info*)*, %struct.TYPE_4__*, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32*, i32 }
%struct.TYPE_3__ = type { i32 (i32, i32*, i32)* }

@WDT_PRE_TIMEOUT_INT = common dso_local global i32 0, align 4
@watchdog_pretimeouts = common dso_local global i32 0, align 4
@RECEIVE_MSG_AVAIL = common dso_local global i32 0, align 4
@SI_NORMAL = common dso_local global i8* null, align 8
@IPMI_NETFN_APP_REQUEST = common dso_local global i32 0, align 4
@IPMI_GET_MSG_CMD = common dso_local global i32 0, align 4
@SI_GETTING_MESSAGES = common dso_local global i8* null, align 8
@EVENT_MSG_BUFFER_FULL = common dso_local global i32 0, align 4
@IPMI_READ_EVENT_MSG_BUFFER_CMD = common dso_local global i32 0, align 4
@SI_GETTING_EVENTS = common dso_local global i8* null, align 8
@OEM_DATA_AVAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smi_info*)* @handle_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_flags(%struct.smi_info* %0) #0 {
  %2 = alloca %struct.smi_info*, align 8
  store %struct.smi_info* %0, %struct.smi_info** %2, align 8
  br label %3

3:                                                ; preds = %177, %1
  %4 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %5 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @WDT_PRE_TIMEOUT_INT, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %3
  %11 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %12 = load i32, i32* @watchdog_pretimeouts, align 4
  %13 = call i32 @smi_inc_stat(%struct.smi_info* %11, i32 %12)
  %14 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %15 = call i32 @start_clear_flags(%struct.smi_info* %14)
  %16 = load i32, i32* @WDT_PRE_TIMEOUT_INT, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %19 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 8
  %22 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %23 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @ipmi_smi_watchdog_pretimeout(i32 %24)
  br label %186

26:                                               ; preds = %3
  %27 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %28 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @RECEIVE_MSG_AVAIL, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %92

33:                                               ; preds = %26
  %34 = call i8* (...) @ipmi_alloc_smi_msg()
  %35 = bitcast i8* %34 to %struct.TYPE_4__*
  %36 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %37 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %36, i32 0, i32 3
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %37, align 8
  %38 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %39 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %38, i32 0, i32 3
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = icmp ne %struct.TYPE_4__* %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %33
  %43 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %44 = call i32 @disable_si_irq(%struct.smi_info* %43)
  %45 = load i8*, i8** @SI_NORMAL, align 8
  %46 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %47 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  br label %186

48:                                               ; preds = %33
  %49 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %50 = call i32 @enable_si_irq(%struct.smi_info* %49)
  %51 = load i32, i32* @IPMI_NETFN_APP_REQUEST, align 4
  %52 = shl i32 %51, 2
  %53 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %54 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %53, i32 0, i32 3
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  store i32 %52, i32* %58, align 4
  %59 = load i32, i32* @IPMI_GET_MSG_CMD, align 4
  %60 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %61 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %60, i32 0, i32 3
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  store i32 %59, i32* %65, align 4
  %66 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %67 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %66, i32 0, i32 3
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  store i32 2, i32* %69, align 8
  %70 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %71 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %70, i32 0, i32 5
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %73, align 8
  %75 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %76 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %79 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %78, i32 0, i32 3
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %84 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %83, i32 0, i32 3
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 %74(i32 %77, i32* %82, i32 %87)
  %89 = load i8*, i8** @SI_GETTING_MESSAGES, align 8
  %90 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %91 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %90, i32 0, i32 1
  store i8* %89, i8** %91, align 8
  br label %185

92:                                               ; preds = %26
  %93 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %94 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @EVENT_MSG_BUFFER_FULL, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %158

99:                                               ; preds = %92
  %100 = call i8* (...) @ipmi_alloc_smi_msg()
  %101 = bitcast i8* %100 to %struct.TYPE_4__*
  %102 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %103 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %102, i32 0, i32 3
  store %struct.TYPE_4__* %101, %struct.TYPE_4__** %103, align 8
  %104 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %105 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %104, i32 0, i32 3
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = icmp ne %struct.TYPE_4__* %106, null
  br i1 %107, label %114, label %108

108:                                              ; preds = %99
  %109 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %110 = call i32 @disable_si_irq(%struct.smi_info* %109)
  %111 = load i8*, i8** @SI_NORMAL, align 8
  %112 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %113 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %112, i32 0, i32 1
  store i8* %111, i8** %113, align 8
  br label %186

114:                                              ; preds = %99
  %115 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %116 = call i32 @enable_si_irq(%struct.smi_info* %115)
  %117 = load i32, i32* @IPMI_NETFN_APP_REQUEST, align 4
  %118 = shl i32 %117, 2
  %119 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %120 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %119, i32 0, i32 3
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  store i32 %118, i32* %124, align 4
  %125 = load i32, i32* @IPMI_READ_EVENT_MSG_BUFFER_CMD, align 4
  %126 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %127 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %126, i32 0, i32 3
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 1
  store i32 %125, i32* %131, align 4
  %132 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %133 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %132, i32 0, i32 3
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  store i32 2, i32* %135, align 8
  %136 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %137 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %136, i32 0, i32 5
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 0
  %140 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %139, align 8
  %141 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %142 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %145 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %144, i32 0, i32 3
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %150 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %149, i32 0, i32 3
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = call i32 %140(i32 %143, i32* %148, i32 %153)
  %155 = load i8*, i8** @SI_GETTING_EVENTS, align 8
  %156 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %157 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %156, i32 0, i32 1
  store i8* %155, i8** %157, align 8
  br label %184

158:                                              ; preds = %92
  %159 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %160 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @OEM_DATA_AVAIL, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %179

165:                                              ; preds = %158
  %166 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %167 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %166, i32 0, i32 2
  %168 = load i64 (%struct.smi_info*)*, i64 (%struct.smi_info*)** %167, align 8
  %169 = icmp ne i64 (%struct.smi_info*)* %168, null
  br i1 %169, label %170, label %179

170:                                              ; preds = %165
  %171 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %172 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %171, i32 0, i32 2
  %173 = load i64 (%struct.smi_info*)*, i64 (%struct.smi_info*)** %172, align 8
  %174 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %175 = call i64 %173(%struct.smi_info* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %170
  br label %3

178:                                              ; preds = %170
  br label %183

179:                                              ; preds = %165, %158
  %180 = load i8*, i8** @SI_NORMAL, align 8
  %181 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %182 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %181, i32 0, i32 1
  store i8* %180, i8** %182, align 8
  br label %183

183:                                              ; preds = %179, %178
  br label %184

184:                                              ; preds = %183, %114
  br label %185

185:                                              ; preds = %184, %48
  br label %186

186:                                              ; preds = %42, %108, %185, %10
  ret void
}

declare dso_local i32 @smi_inc_stat(%struct.smi_info*, i32) #1

declare dso_local i32 @start_clear_flags(%struct.smi_info*) #1

declare dso_local i32 @ipmi_smi_watchdog_pretimeout(i32) #1

declare dso_local i8* @ipmi_alloc_smi_msg(...) #1

declare dso_local i32 @disable_si_irq(%struct.smi_info*) #1

declare dso_local i32 @enable_si_irq(%struct.smi_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
