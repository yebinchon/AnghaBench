; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_audit.c_tty_audit_buf_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_audit.c_tty_audit_buf_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.tty_audit_buf*, i32 }
%struct.tty_audit_buf = type { i32 }
%struct.tty_struct = type { i32, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32 }

@current = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"out of memory in TTY auditing\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tty_audit_buf* (%struct.tty_struct*)* @tty_audit_buf_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tty_audit_buf* @tty_audit_buf_get(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_audit_buf*, align 8
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.tty_audit_buf*, align 8
  %5 = alloca %struct.tty_audit_buf*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.tty_audit_buf* null, %struct.tty_audit_buf** %4, align 8
  store %struct.tty_audit_buf* null, %struct.tty_audit_buf** %5, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = call i32 @spin_lock_irq(i32* %9)
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @likely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %94

22:                                               ; preds = %1
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %26, align 8
  store %struct.tty_audit_buf* %27, %struct.tty_audit_buf** %4, align 8
  %28 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %4, align 8
  %29 = icmp ne %struct.tty_audit_buf* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %4, align 8
  %32 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %31, i32 0, i32 0
  %33 = call i32 @atomic_inc(i32* %32)
  br label %94

34:                                               ; preds = %22
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = call i32 @spin_unlock_irq(i32* %38)
  %40 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %41 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %40, i32 0, i32 2
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %46 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %45, i32 0, i32 2
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %51 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %49, %52
  %54 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %55 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call %struct.tty_audit_buf* @tty_audit_buf_alloc(i32 %44, i64 %53, i32 %56)
  store %struct.tty_audit_buf* %57, %struct.tty_audit_buf** %5, align 8
  %58 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %5, align 8
  %59 = icmp eq %struct.tty_audit_buf* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %34
  %61 = call i32 @audit_log_lost(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store %struct.tty_audit_buf* null, %struct.tty_audit_buf** %2, align 8
  br label %107

62:                                               ; preds = %34
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = call i32 @spin_lock_irq(i32* %66)
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %62
  br label %94

75:                                               ; preds = %62
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %79, align 8
  store %struct.tty_audit_buf* %80, %struct.tty_audit_buf** %4, align 8
  %81 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %4, align 8
  %82 = icmp ne %struct.tty_audit_buf* %81, null
  br i1 %82, label %90, label %83

83:                                               ; preds = %75
  %84 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %5, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  store %struct.tty_audit_buf* %84, %struct.tty_audit_buf** %88, align 8
  %89 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %5, align 8
  store %struct.tty_audit_buf* %89, %struct.tty_audit_buf** %4, align 8
  store %struct.tty_audit_buf* null, %struct.tty_audit_buf** %5, align 8
  br label %90

90:                                               ; preds = %83, %75
  %91 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %4, align 8
  %92 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %91, i32 0, i32 0
  %93 = call i32 @atomic_inc(i32* %92)
  br label %94

94:                                               ; preds = %90, %74, %30, %21
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = call i32 @spin_unlock_irq(i32* %98)
  %100 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %5, align 8
  %101 = icmp ne %struct.tty_audit_buf* %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %94
  %103 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %5, align 8
  %104 = call i32 @tty_audit_buf_free(%struct.tty_audit_buf* %103)
  br label %105

105:                                              ; preds = %102, %94
  %106 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %4, align 8
  store %struct.tty_audit_buf* %106, %struct.tty_audit_buf** %2, align 8
  br label %107

107:                                              ; preds = %105, %60
  %108 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %2, align 8
  ret %struct.tty_audit_buf* %108
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local %struct.tty_audit_buf* @tty_audit_buf_alloc(i32, i64, i32) #1

declare dso_local i32 @audit_log_lost(i8*) #1

declare dso_local i32 @tty_audit_buf_free(%struct.tty_audit_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
