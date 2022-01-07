; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_msghandler.c_ipmi_unregister_for_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_msghandler.c_ipmi_unregister_for_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.cmd_rcvr = type { i32, %struct.cmd_rcvr*, i32, %struct.TYPE_5__* }

@ENOENT = common dso_local global i32 0, align 4
@IPMI_NUM_CHANNELS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipmi_unregister_for_cmd(%struct.TYPE_5__* %0, i8 zeroext %1, i8 zeroext %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.cmd_rcvr*, align 8
  %11 = alloca %struct.cmd_rcvr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  store i32 %3, i32* %8, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %9, align 8
  store %struct.cmd_rcvr* null, %struct.cmd_rcvr** %11, align 8
  %17 = load i32, i32* @ENOENT, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %13, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  store i32 0, i32* %12, align 4
  br label %22

22:                                               ; preds = %69, %4
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* @IPMI_NUM_CHANNELS, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %72

26:                                               ; preds = %22
  %27 = load i32, i32* %12, align 4
  %28 = shl i32 1, %27
  %29 = load i32, i32* %8, align 4
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %69

33:                                               ; preds = %26
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %35 = load i8, i8* %6, align 1
  %36 = load i8, i8* %7, align 1
  %37 = load i32, i32* %12, align 4
  %38 = call %struct.cmd_rcvr* @find_cmd_rcvr(%struct.TYPE_6__* %34, i8 zeroext %35, i8 zeroext %36, i32 %37)
  store %struct.cmd_rcvr* %38, %struct.cmd_rcvr** %10, align 8
  %39 = load %struct.cmd_rcvr*, %struct.cmd_rcvr** %10, align 8
  %40 = icmp eq %struct.cmd_rcvr* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %69

42:                                               ; preds = %33
  %43 = load %struct.cmd_rcvr*, %struct.cmd_rcvr** %10, align 8
  %44 = getelementptr inbounds %struct.cmd_rcvr, %struct.cmd_rcvr* %43, i32 0, i32 3
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %47 = icmp eq %struct.TYPE_5__* %45, %46
  br i1 %47, label %48, label %68

48:                                               ; preds = %42
  store i32 0, i32* %13, align 4
  %49 = load i32, i32* %8, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.cmd_rcvr*, %struct.cmd_rcvr** %10, align 8
  %52 = getelementptr inbounds %struct.cmd_rcvr, %struct.cmd_rcvr* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 8
  %55 = load %struct.cmd_rcvr*, %struct.cmd_rcvr** %10, align 8
  %56 = getelementptr inbounds %struct.cmd_rcvr, %struct.cmd_rcvr* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %48
  %60 = load %struct.cmd_rcvr*, %struct.cmd_rcvr** %10, align 8
  %61 = getelementptr inbounds %struct.cmd_rcvr, %struct.cmd_rcvr* %60, i32 0, i32 2
  %62 = call i32 @list_del_rcu(i32* %61)
  %63 = load %struct.cmd_rcvr*, %struct.cmd_rcvr** %11, align 8
  %64 = load %struct.cmd_rcvr*, %struct.cmd_rcvr** %10, align 8
  %65 = getelementptr inbounds %struct.cmd_rcvr, %struct.cmd_rcvr* %64, i32 0, i32 1
  store %struct.cmd_rcvr* %63, %struct.cmd_rcvr** %65, align 8
  %66 = load %struct.cmd_rcvr*, %struct.cmd_rcvr** %10, align 8
  store %struct.cmd_rcvr* %66, %struct.cmd_rcvr** %11, align 8
  br label %67

67:                                               ; preds = %59, %48
  br label %68

68:                                               ; preds = %67, %42
  br label %69

69:                                               ; preds = %68, %41, %32
  %70 = load i32, i32* %12, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %12, align 4
  br label %22

72:                                               ; preds = %22
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = call i32 @mutex_unlock(i32* %74)
  %76 = call i32 (...) @synchronize_rcu()
  br label %77

77:                                               ; preds = %80, %72
  %78 = load %struct.cmd_rcvr*, %struct.cmd_rcvr** %11, align 8
  %79 = icmp ne %struct.cmd_rcvr* %78, null
  br i1 %79, label %80, label %87

80:                                               ; preds = %77
  %81 = load %struct.cmd_rcvr*, %struct.cmd_rcvr** %11, align 8
  store %struct.cmd_rcvr* %81, %struct.cmd_rcvr** %10, align 8
  %82 = load %struct.cmd_rcvr*, %struct.cmd_rcvr** %10, align 8
  %83 = getelementptr inbounds %struct.cmd_rcvr, %struct.cmd_rcvr* %82, i32 0, i32 1
  %84 = load %struct.cmd_rcvr*, %struct.cmd_rcvr** %83, align 8
  store %struct.cmd_rcvr* %84, %struct.cmd_rcvr** %11, align 8
  %85 = load %struct.cmd_rcvr*, %struct.cmd_rcvr** %10, align 8
  %86 = call i32 @kfree(%struct.cmd_rcvr* %85)
  br label %77

87:                                               ; preds = %77
  %88 = load i32, i32* %13, align 4
  ret i32 %88
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.cmd_rcvr* @find_cmd_rcvr(%struct.TYPE_6__*, i8 zeroext, i8 zeroext, i32) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @kfree(%struct.cmd_rcvr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
