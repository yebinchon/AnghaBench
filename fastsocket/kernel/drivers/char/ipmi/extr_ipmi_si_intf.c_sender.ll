; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_si_intf.c_sender.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_si_intf.c_sender.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_smi_msg = type { i32*, i32*, i32, i32 }
%struct.smi_info = type { i64, i32, i64, i32, i64, i32*, i32, i32, i64, i32 }

@IPMI_ERR_UNSPECIFIED = common dso_local global i32 0, align 4
@SI_SM_IDLE = common dso_local global i32 0, align 4
@SI_SHORT_TIMEOUT_USEC = common dso_local global i32 0, align 4
@SI_NORMAL = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@SI_TIMEOUT_JIFFIES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ipmi_smi_msg*, i32)* @sender to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sender(i8* %0, %struct.ipmi_smi_msg* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ipmi_smi_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.smi_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.ipmi_smi_msg* %1, %struct.ipmi_smi_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.smi_info*
  store %struct.smi_info* %11, %struct.smi_info** %7, align 8
  %12 = load %struct.smi_info*, %struct.smi_info** %7, align 8
  %13 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %12, i32 0, i32 9
  %14 = call i64 @atomic_read(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %46

16:                                               ; preds = %3
  %17 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %18 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, 4
  %23 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %24 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  store i32 %22, i32* %26, align 4
  %27 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %28 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %33 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  store i32 %31, i32* %35, align 4
  %36 = load i32, i32* @IPMI_ERR_UNSPECIFIED, align 4
  %37 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %38 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  store i32 %36, i32* %40, align 4
  %41 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %42 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %41, i32 0, i32 2
  store i32 3, i32* %42, align 8
  %43 = load %struct.smi_info*, %struct.smi_info** %7, align 8
  %44 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %45 = call i32 @deliver_recv_msg(%struct.smi_info* %43, %struct.ipmi_smi_msg* %44)
  br label %129

46:                                               ; preds = %3
  %47 = load %struct.smi_info*, %struct.smi_info** %7, align 8
  %48 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %47, i32 0, i32 8
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %70

51:                                               ; preds = %46
  %52 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %53 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %52, i32 0, i32 3
  %54 = load %struct.smi_info*, %struct.smi_info** %7, align 8
  %55 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %54, i32 0, i32 6
  %56 = call i32 @list_add_tail(i32* %53, i32* %55)
  %57 = load %struct.smi_info*, %struct.smi_info** %7, align 8
  %58 = call i32 @smi_event_handler(%struct.smi_info* %57, i32 0)
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %63, %51
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @SI_SM_IDLE, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = load i32, i32* @SI_SHORT_TIMEOUT_USEC, align 4
  %65 = call i32 @udelay(i32 %64)
  %66 = load %struct.smi_info*, %struct.smi_info** %7, align 8
  %67 = load i32, i32* @SI_SHORT_TIMEOUT_USEC, align 4
  %68 = call i32 @smi_event_handler(%struct.smi_info* %66, i32 %67)
  store i32 %68, i32* %8, align 4
  br label %59

69:                                               ; preds = %59
  br label %129

70:                                               ; preds = %46
  %71 = load %struct.smi_info*, %struct.smi_info** %7, align 8
  %72 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %71, i32 0, i32 1
  %73 = load i64, i64* %9, align 8
  %74 = call i32 @spin_lock_irqsave(i32* %72, i64 %73)
  %75 = load i32, i32* %6, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %70
  %78 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %79 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %78, i32 0, i32 3
  %80 = load %struct.smi_info*, %struct.smi_info** %7, align 8
  %81 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %80, i32 0, i32 7
  %82 = call i32 @list_add_tail(i32* %79, i32* %81)
  br label %89

83:                                               ; preds = %70
  %84 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  %85 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %84, i32 0, i32 3
  %86 = load %struct.smi_info*, %struct.smi_info** %7, align 8
  %87 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %86, i32 0, i32 6
  %88 = call i32 @list_add_tail(i32* %85, i32* %87)
  br label %89

89:                                               ; preds = %83, %77
  %90 = load %struct.smi_info*, %struct.smi_info** %7, align 8
  %91 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @SI_NORMAL, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %124

95:                                               ; preds = %89
  %96 = load %struct.smi_info*, %struct.smi_info** %7, align 8
  %97 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %96, i32 0, i32 5
  %98 = load i32*, i32** %97, align 8
  %99 = icmp eq i32* %98, null
  br i1 %99, label %100, label %124

100:                                              ; preds = %95
  %101 = load i64, i64* @jiffies, align 8
  %102 = load %struct.smi_info*, %struct.smi_info** %7, align 8
  %103 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %102, i32 0, i32 4
  store i64 %101, i64* %103, align 8
  %104 = load %struct.smi_info*, %struct.smi_info** %7, align 8
  %105 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %104, i32 0, i32 3
  %106 = load i64, i64* @jiffies, align 8
  %107 = load i64, i64* @SI_TIMEOUT_JIFFIES, align 8
  %108 = add nsw i64 %106, %107
  %109 = call i32 @mod_timer(i32* %105, i64 %108)
  %110 = load %struct.smi_info*, %struct.smi_info** %7, align 8
  %111 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %100
  %115 = load %struct.smi_info*, %struct.smi_info** %7, align 8
  %116 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @wake_up_process(i64 %117)
  br label %119

119:                                              ; preds = %114, %100
  %120 = load %struct.smi_info*, %struct.smi_info** %7, align 8
  %121 = call i32 @start_next_msg(%struct.smi_info* %120)
  %122 = load %struct.smi_info*, %struct.smi_info** %7, align 8
  %123 = call i32 @smi_event_handler(%struct.smi_info* %122, i32 0)
  br label %124

124:                                              ; preds = %119, %95, %89
  %125 = load %struct.smi_info*, %struct.smi_info** %7, align 8
  %126 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %125, i32 0, i32 1
  %127 = load i64, i64* %9, align 8
  %128 = call i32 @spin_unlock_irqrestore(i32* %126, i64 %127)
  br label %129

129:                                              ; preds = %124, %69, %16
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @deliver_recv_msg(%struct.smi_info*, %struct.ipmi_smi_msg*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @smi_event_handler(%struct.smi_info*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @wake_up_process(i64) #1

declare dso_local i32 @start_next_msg(%struct.smi_info*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
