; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_audit.c_tty_audit_tiocsti.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_audit.c_tty_audit_tiocsti.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.tty_audit_buf* }
%struct.tty_audit_buf = type { i32, i32, i32, i32 }
%struct.tty_struct = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }

@current = common dso_local global %struct.TYPE_11__* null, align 8
@audit_enabled = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"ioctl=TIOCSTI\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_audit_tiocsti(%struct.tty_struct* %0, i8 signext %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.tty_audit_buf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store i8 %1, i8* %4, align 1
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = call i32 @spin_lock_irq(i32* %14)
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %8, align 4
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %24, align 8
  store %struct.tty_audit_buf* %25, %struct.tty_audit_buf** %5, align 8
  %26 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %5, align 8
  %27 = icmp ne %struct.tty_audit_buf* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %5, align 8
  %30 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %29, i32 0, i32 3
  %31 = call i32 @atomic_inc(i32* %30)
  br label %32

32:                                               ; preds = %28, %2
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = call i32 @spin_unlock_irq(i32* %36)
  %38 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %39 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %38, i32 0, i32 1
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %6, align 4
  %43 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %44 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %43, i32 0, i32 1
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %49 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %47, %50
  store i32 %51, i32* %7, align 4
  %52 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %5, align 8
  %53 = icmp ne %struct.tty_audit_buf* %52, null
  br i1 %53, label %54, label %78

54:                                               ; preds = %32
  %55 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %5, align 8
  %56 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %55, i32 0, i32 2
  %57 = call i32 @mutex_lock(i32* %56)
  %58 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %5, align 8
  %59 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %54
  %64 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %5, align 8
  %65 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %5, align 8
  %71 = call i32 @tty_audit_buf_push_current(%struct.tty_audit_buf* %70)
  br label %72

72:                                               ; preds = %69, %63, %54
  %73 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %5, align 8
  %74 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %73, i32 0, i32 2
  %75 = call i32 @mutex_unlock(i32* %74)
  %76 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %5, align 8
  %77 = call i32 @tty_audit_buf_put(%struct.tty_audit_buf* %76)
  br label %78

78:                                               ; preds = %72, %32
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %95

81:                                               ; preds = %78
  %82 = load i64, i64* @audit_enabled, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %95

84:                                               ; preds = %81
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current, align 8
  %86 = call i32 @audit_get_loginuid(%struct.TYPE_11__* %85)
  store i32 %86, i32* %9, align 4
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current, align 8
  %88 = call i32 @audit_get_sessionid(%struct.TYPE_11__* %87)
  store i32 %88, i32* %10, align 4
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current, align 8
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @tty_audit_log(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.TYPE_11__* %89, i32 %90, i32 %91, i32 %92, i32 %93, i8* %4, i32 1)
  br label %95

95:                                               ; preds = %84, %81, %78
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @tty_audit_buf_push_current(%struct.tty_audit_buf*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @tty_audit_buf_put(%struct.tty_audit_buf*) #1

declare dso_local i32 @audit_get_loginuid(%struct.TYPE_11__*) #1

declare dso_local i32 @audit_get_sessionid(%struct.TYPE_11__*) #1

declare dso_local i32 @tty_audit_log(i8*, %struct.TYPE_11__*, i32, i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
