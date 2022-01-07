; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/kernel/extr_time.c_timer_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/kernel/extr_time.c_timer_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32 }
%struct.pt_regs = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@timer = common dso_local global i32 0, align 4
@timer_regs = common dso_local global i32* null, align 8
@r_masked_intr = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@rw_ack_intr = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@time_status = common dso_local global i32 0, align 4
@STA_UNSYNC = common dso_local global i32 0, align 4
@xtime = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@last_rtc_update = common dso_local global i64 0, align 8
@tick_nsec = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @timer_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timer_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pt_regs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__, align 4
  %9 = alloca %struct.TYPE_6__, align 4
  %10 = alloca %struct.TYPE_7__, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = call %struct.pt_regs* (...) @get_irq_regs()
  store %struct.pt_regs* %11, %struct.pt_regs** %6, align 8
  %12 = call i32 (...) @smp_processor_id()
  store i32 %12, i32* %7, align 4
  %13 = bitcast %struct.TYPE_6__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 8, i1 false)
  %14 = load i32, i32* @timer, align 4
  %15 = load i32*, i32** @timer_regs, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @r_masked_intr, align 4
  %21 = call i32 @REG_RD(i32 %14, i32 %19, i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = bitcast %struct.TYPE_7__* %8 to i8*
  %24 = bitcast %struct.TYPE_7__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 4, i1 false)
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @IRQ_NONE, align 4
  store i32 %29, i32* %3, align 4
  br label %91

30:                                               ; preds = %2
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store i32 1, i32* %31, align 4
  %32 = load i32, i32* @timer, align 4
  %33 = load i32*, i32** @timer_regs, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @rw_ack_intr, align 4
  %39 = bitcast %struct.TYPE_6__* %9 to i64*
  %40 = load i64, i64* %39, align 4
  %41 = call i32 @REG_WR(i32 %32, i32 %37, i32 %38, i64 %40)
  %42 = call i32 (...) @reset_watchdog()
  %43 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %44 = call i32 @user_mode(%struct.pt_regs* %43)
  %45 = call i32 @update_process_times(i32 %44)
  %46 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %47 = call i32 @cris_do_profile(%struct.pt_regs* %46)
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %30
  %51 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %51, i32* %3, align 4
  br label %91

52:                                               ; preds = %30
  %53 = call i32 @do_timer(i32 1)
  %54 = load i32, i32* @time_status, align 4
  %55 = load i32, i32* @STA_UNSYNC, align 4
  %56 = and i32 %54, %55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %89

58:                                               ; preds = %52
  %59 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @xtime, i32 0, i32 0), align 8
  %60 = load i64, i64* @last_rtc_update, align 8
  %61 = add nsw i64 %60, 660
  %62 = icmp sgt i64 %59, %61
  br i1 %62, label %63, label %89

63:                                               ; preds = %58
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @xtime, i32 0, i32 1), align 8
  %65 = sdiv i32 %64, 1000
  %66 = load i32, i32* @tick_nsec, align 4
  %67 = sdiv i32 %66, 1000
  %68 = sdiv i32 %67, 2
  %69 = sub nsw i32 500000, %68
  %70 = icmp sge i32 %65, %69
  br i1 %70, label %71, label %89

71:                                               ; preds = %63
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @xtime, i32 0, i32 1), align 8
  %73 = sdiv i32 %72, 1000
  %74 = load i32, i32* @tick_nsec, align 4
  %75 = sdiv i32 %74, 1000
  %76 = sdiv i32 %75, 2
  %77 = add nsw i32 500000, %76
  %78 = icmp sle i32 %73, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %71
  %80 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @xtime, i32 0, i32 0), align 8
  %81 = call i64 @set_rtc_mmss(i64 %80)
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @xtime, i32 0, i32 0), align 8
  store i64 %84, i64* @last_rtc_update, align 8
  br label %88

85:                                               ; preds = %79
  %86 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @xtime, i32 0, i32 0), align 8
  %87 = sub nsw i64 %86, 600
  store i64 %87, i64* @last_rtc_update, align 8
  br label %88

88:                                               ; preds = %85, %83
  br label %89

89:                                               ; preds = %88, %71, %63, %58, %52
  %90 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %89, %50, %28
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local %struct.pt_regs* @get_irq_regs(...) #1

declare dso_local i32 @smp_processor_id(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @REG_RD(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @REG_WR(i32, i32, i32, i64) #1

declare dso_local i32 @reset_watchdog(...) #1

declare dso_local i32 @update_process_times(i32) #1

declare dso_local i32 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @cris_do_profile(%struct.pt_regs*) #1

declare dso_local i32 @do_timer(i32) #1

declare dso_local i64 @set_rtc_mmss(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
