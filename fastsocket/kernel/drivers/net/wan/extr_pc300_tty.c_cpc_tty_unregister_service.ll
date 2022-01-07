; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_pc300_tty.c_cpc_tty_unregister_service.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_pc300_tty.c_cpc_tty_unregister_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__*, %struct.TYPE_8__*, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i64, i32*, %struct.TYPE_11__* }

@.str = private unnamed_addr constant [26 x i8] c"%s: interface is not TTY\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"%s: cpc_tty_unregister_service\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"%s: invalid tty ptr=%s\0A\00", align 1
@cpc_tty_cnt = common dso_local global i64 0, align 8
@serial_drv = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"%s: unregister is not possible, refcount=%d\00", align 1
@cpc_tty_unreg_flag = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"%s: unregister the tty driver\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"%s: ERROR ->unregister the tty driver error=%d\0A\00", align 1
@CPC_TTY_ST_IDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpc_tty_unregister_service(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %9, %struct.TYPE_10__** %3, align 8
  %10 = icmp eq %struct.TYPE_10__* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (i8*, i32, ...) @CPC_TTY_DBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %90

18:                                               ; preds = %1
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 (i8*, i32, ...) @CPC_TTY_DBG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 4
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %27 = icmp ne %struct.TYPE_11__* %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %18
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (i8*, i32, ...) @CPC_TTY_DBG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %33, i32 %36)
  br label %90

38:                                               ; preds = %18
  %39 = load i64, i64* @cpc_tty_cnt, align 8
  %40 = add nsw i64 %39, -1
  store i64 %40, i64* @cpc_tty_cnt, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %68

42:                                               ; preds = %38
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @serial_drv, i32 0, i32 0), align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @serial_drv, i32 0, i32 0), align 4
  %50 = call i32 (i8*, i32, ...) @CPC_TTY_DBG(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %48, i32 %49)
  %51 = load i64, i64* @cpc_tty_cnt, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* @cpc_tty_cnt, align 8
  store i32 1, i32* @cpc_tty_unreg_flag, align 4
  br label %90

53:                                               ; preds = %42
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 (i8*, i32, ...) @CPC_TTY_DBG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %56)
  %58 = call i32 @tty_unregister_driver(%struct.TYPE_12__* @serial_drv)
  store i32 %58, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %53
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i32 (i8*, i32, ...) @CPC_TTY_DBG(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %60, %53
  br label %67

67:                                               ; preds = %66
  br label %68

68:                                               ; preds = %67, %38
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @CPC_TTY_LOCK(i32 %73, i32 %74)
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 3
  store i32* null, i32** %77, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @CPC_TTY_UNLOCK(i32 %82, i32 %83)
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 2
  store i64 0, i64* %86, align 8
  %87 = load i32, i32* @CPC_TTY_ST_IDLE, align 4
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %68, %45, %28, %11
  ret void
}

declare dso_local i32 @CPC_TTY_DBG(i8*, i32, ...) #1

declare dso_local i32 @tty_unregister_driver(%struct.TYPE_12__*) #1

declare dso_local i32 @CPC_TTY_LOCK(i32, i32) #1

declare dso_local i32 @CPC_TTY_UNLOCK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
