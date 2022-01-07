; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_audit.c_tty_audit_push.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_audit.c_tty_audit_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.tty_audit_buf*, i32 }
%struct.tty_audit_buf = type { i32, i32, i32, i32 }
%struct.tty_struct = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }

@current = common dso_local global %struct.TYPE_8__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_audit_push(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.tty_audit_buf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = call i32 @spin_lock_irq(i32* %9)
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @likely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = call i32 @spin_unlock_irq(i32* %25)
  br label %85

27:                                               ; preds = %1
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %31, align 8
  store %struct.tty_audit_buf* %32, %struct.tty_audit_buf** %3, align 8
  %33 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %3, align 8
  %34 = icmp ne %struct.tty_audit_buf* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %3, align 8
  %37 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %36, i32 0, i32 3
  %38 = call i32 @atomic_inc(i32* %37)
  br label %39

39:                                               ; preds = %35, %27
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = call i32 @spin_unlock_irq(i32* %43)
  %45 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %3, align 8
  %46 = icmp ne %struct.tty_audit_buf* %45, null
  br i1 %46, label %47, label %85

47:                                               ; preds = %39
  %48 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %49 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %48, i32 0, i32 1
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %4, align 4
  %53 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %54 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %53, i32 0, i32 1
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %59 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %57, %60
  store i32 %61, i32* %5, align 4
  %62 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %3, align 8
  %63 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %62, i32 0, i32 2
  %64 = call i32 @mutex_lock(i32* %63)
  %65 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %3, align 8
  %66 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %47
  %71 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %3, align 8
  %72 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %5, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %3, align 8
  %78 = call i32 @tty_audit_buf_push_current(%struct.tty_audit_buf* %77)
  br label %79

79:                                               ; preds = %76, %70, %47
  %80 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %3, align 8
  %81 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %80, i32 0, i32 2
  %82 = call i32 @mutex_unlock(i32* %81)
  %83 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %3, align 8
  %84 = call i32 @tty_audit_buf_put(%struct.tty_audit_buf* %83)
  br label %85

85:                                               ; preds = %21, %79, %39
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @tty_audit_buf_push_current(%struct.tty_audit_buf*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @tty_audit_buf_put(%struct.tty_audit_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
