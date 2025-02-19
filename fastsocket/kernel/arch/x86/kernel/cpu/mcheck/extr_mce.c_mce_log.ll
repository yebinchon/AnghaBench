; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/mcheck/extr_mce.c_mce_log.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/mcheck/extr_mce.c_mce_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.mce = type { i32 }

@x86_mce_decoder_chain = common dso_local global i32 0, align 4
@NOTIFY_STOP = common dso_local global i32 0, align 4
@mcelog = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@MCE_LOG_LEN = common dso_local global i32 0, align 4
@MCE_OVERFLOW = common dso_local global i32 0, align 4
@mce_need_notify = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mce_log(%struct.mce* %0) #0 {
  %2 = alloca %struct.mce*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mce* %0, %struct.mce** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.mce*, %struct.mce** %2, align 8
  %7 = call i32 @trace_mce_record(%struct.mce* %6)
  %8 = load %struct.mce*, %struct.mce** %2, align 8
  %9 = call i32 @atomic_notifier_call_chain(i32* @x86_mce_decoder_chain, i32 0, %struct.mce* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @NOTIFY_STOP, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %68

14:                                               ; preds = %1
  %15 = load %struct.mce*, %struct.mce** %2, align 8
  %16 = getelementptr inbounds %struct.mce, %struct.mce* %15, i32 0, i32 0
  store i32 0, i32* %16, align 4
  %17 = call i32 (...) @wmb()
  br label %18

18:                                               ; preds = %50, %14
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mcelog, i32 0, i32 1), align 8
  %20 = call i32 @rcu_dereference(i32 %19)
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %36, %18
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @MCE_LOG_LEN, align 4
  %24 = icmp uge i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* @MCE_OVERFLOW, align 4
  %27 = call i32 @set_bit(i32 %26, i64* bitcast (i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mcelog, i32 0, i32 2) to i64*))
  br label %68

28:                                               ; preds = %21
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mcelog, i32 0, i32 0), align 8
  %30 = load i32, i32* %4, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load i32, i32* %4, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %21

39:                                               ; preds = %28
  br label %40

40:                                               ; preds = %39
  %41 = call i32 (...) @smp_rmb()
  %42 = load i32, i32* %4, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @cmpxchg(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mcelog, i32 0, i32 1), i32 %44, i32 %45)
  %47 = load i32, i32* %4, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %51

50:                                               ; preds = %40
  br label %18

51:                                               ; preds = %49
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mcelog, i32 0, i32 0), align 8
  %53 = load i32, i32* %4, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 %54
  %56 = load %struct.mce*, %struct.mce** %2, align 8
  %57 = call i32 @memcpy(%struct.TYPE_3__* %55, %struct.mce* %56, i32 4)
  %58 = call i32 (...) @wmb()
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mcelog, i32 0, i32 0), align 8
  %60 = load i32, i32* %4, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i32 1, i32* %63, align 4
  %64 = call i32 (...) @wmb()
  %65 = load %struct.mce*, %struct.mce** %2, align 8
  %66 = getelementptr inbounds %struct.mce, %struct.mce* %65, i32 0, i32 0
  store i32 1, i32* %66, align 4
  %67 = call i32 @set_bit(i32 0, i64* @mce_need_notify)
  br label %68

68:                                               ; preds = %51, %25, %13
  ret void
}

declare dso_local i32 @trace_mce_record(%struct.mce*) #1

declare dso_local i32 @atomic_notifier_call_chain(i32*, i32, %struct.mce*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @rcu_dereference(i32) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_3__*, %struct.mce*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
