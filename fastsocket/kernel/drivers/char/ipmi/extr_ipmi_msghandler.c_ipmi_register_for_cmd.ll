; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_msghandler.c_ipmi_register_for_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_msghandler.c_ipmi_register_for_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.cmd_rcvr = type { i8, i8, i32, i32, %struct.TYPE_5__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipmi_register_for_cmd(%struct.TYPE_5__* %0, i8 zeroext %1, i8 zeroext %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.cmd_rcvr*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i8 %1, i8* %7, align 1
  store i8 %2, i8* %8, align 1
  store i32 %3, i32* %9, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %10, align 8
  store i32 0, i32* %12, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.cmd_rcvr* @kmalloc(i32 24, i32 %16)
  store %struct.cmd_rcvr* %17, %struct.cmd_rcvr** %11, align 8
  %18 = load %struct.cmd_rcvr*, %struct.cmd_rcvr** %11, align 8
  %19 = icmp ne %struct.cmd_rcvr* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %65

23:                                               ; preds = %4
  %24 = load i8, i8* %8, align 1
  %25 = load %struct.cmd_rcvr*, %struct.cmd_rcvr** %11, align 8
  %26 = getelementptr inbounds %struct.cmd_rcvr, %struct.cmd_rcvr* %25, i32 0, i32 0
  store i8 %24, i8* %26, align 8
  %27 = load i8, i8* %7, align 1
  %28 = load %struct.cmd_rcvr*, %struct.cmd_rcvr** %11, align 8
  %29 = getelementptr inbounds %struct.cmd_rcvr, %struct.cmd_rcvr* %28, i32 0, i32 1
  store i8 %27, i8* %29, align 1
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.cmd_rcvr*, %struct.cmd_rcvr** %11, align 8
  %32 = getelementptr inbounds %struct.cmd_rcvr, %struct.cmd_rcvr* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %34 = load %struct.cmd_rcvr*, %struct.cmd_rcvr** %11, align 8
  %35 = getelementptr inbounds %struct.cmd_rcvr, %struct.cmd_rcvr* %34, i32 0, i32 4
  store %struct.TYPE_5__* %33, %struct.TYPE_5__** %35, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %40 = load i8, i8* %7, align 1
  %41 = load i8, i8* %8, align 1
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @is_cmd_rcvr_exclusive(%struct.TYPE_6__* %39, i8 zeroext %40, i8 zeroext %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %23
  %46 = load i32, i32* @EBUSY, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %12, align 4
  br label %54

48:                                               ; preds = %23
  %49 = load %struct.cmd_rcvr*, %struct.cmd_rcvr** %11, align 8
  %50 = getelementptr inbounds %struct.cmd_rcvr, %struct.cmd_rcvr* %49, i32 0, i32 3
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = call i32 @list_add_rcu(i32* %50, i32* %52)
  br label %54

54:                                               ; preds = %48, %45
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = call i32 @mutex_unlock(i32* %56)
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load %struct.cmd_rcvr*, %struct.cmd_rcvr** %11, align 8
  %62 = call i32 @kfree(%struct.cmd_rcvr* %61)
  br label %63

63:                                               ; preds = %60, %54
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %63, %20
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local %struct.cmd_rcvr* @kmalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @is_cmd_rcvr_exclusive(%struct.TYPE_6__*, i8 zeroext, i8 zeroext, i32) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.cmd_rcvr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
