; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-parport.c_i2c_parport_detach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-parport.c_i2c_parport_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_par = type { %struct.i2c_par*, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.parport* }
%struct.parport = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@adapter_list = common dso_local global %struct.i2c_par* null, align 8
@adapter_parm = common dso_local global %struct.TYPE_7__* null, align 8
@type = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parport*)* @i2c_parport_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2c_parport_detach(%struct.parport* %0) #0 {
  %2 = alloca %struct.parport*, align 8
  %3 = alloca %struct.i2c_par*, align 8
  %4 = alloca %struct.i2c_par*, align 8
  store %struct.parport* %0, %struct.parport** %2, align 8
  store %struct.i2c_par* null, %struct.i2c_par** %4, align 8
  %5 = load %struct.i2c_par*, %struct.i2c_par** @adapter_list, align 8
  store %struct.i2c_par* %5, %struct.i2c_par** %3, align 8
  br label %6

6:                                                ; preds = %60, %1
  %7 = load %struct.i2c_par*, %struct.i2c_par** %3, align 8
  %8 = icmp ne %struct.i2c_par* %7, null
  br i1 %8, label %9, label %65

9:                                                ; preds = %6
  %10 = load %struct.i2c_par*, %struct.i2c_par** %3, align 8
  %11 = getelementptr inbounds %struct.i2c_par, %struct.i2c_par* %10, i32 0, i32 1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.parport*, %struct.parport** %13, align 8
  %15 = load %struct.parport*, %struct.parport** %2, align 8
  %16 = icmp eq %struct.parport* %14, %15
  br i1 %16, label %17, label %59

17:                                               ; preds = %9
  %18 = load %struct.i2c_par*, %struct.i2c_par** %3, align 8
  %19 = getelementptr inbounds %struct.i2c_par, %struct.i2c_par* %18, i32 0, i32 2
  %20 = call i32 @i2c_del_adapter(i32* %19)
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** @adapter_parm, align 8
  %22 = load i64, i64* @type, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %17
  %29 = load %struct.parport*, %struct.parport** %2, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** @adapter_parm, align 8
  %31 = load i64, i64* @type, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = call i32 @line_set(%struct.parport* %29, i32 0, %struct.TYPE_6__* %33)
  br label %35

35:                                               ; preds = %28, %17
  %36 = load %struct.i2c_par*, %struct.i2c_par** %3, align 8
  %37 = getelementptr inbounds %struct.i2c_par, %struct.i2c_par* %36, i32 0, i32 1
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = call i32 @parport_release(%struct.TYPE_5__* %38)
  %40 = load %struct.i2c_par*, %struct.i2c_par** %3, align 8
  %41 = getelementptr inbounds %struct.i2c_par, %struct.i2c_par* %40, i32 0, i32 1
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = call i32 @parport_unregister_device(%struct.TYPE_5__* %42)
  %44 = load %struct.i2c_par*, %struct.i2c_par** %4, align 8
  %45 = icmp ne %struct.i2c_par* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %35
  %47 = load %struct.i2c_par*, %struct.i2c_par** %3, align 8
  %48 = getelementptr inbounds %struct.i2c_par, %struct.i2c_par* %47, i32 0, i32 0
  %49 = load %struct.i2c_par*, %struct.i2c_par** %48, align 8
  %50 = load %struct.i2c_par*, %struct.i2c_par** %4, align 8
  %51 = getelementptr inbounds %struct.i2c_par, %struct.i2c_par* %50, i32 0, i32 0
  store %struct.i2c_par* %49, %struct.i2c_par** %51, align 8
  br label %56

52:                                               ; preds = %35
  %53 = load %struct.i2c_par*, %struct.i2c_par** %3, align 8
  %54 = getelementptr inbounds %struct.i2c_par, %struct.i2c_par* %53, i32 0, i32 0
  %55 = load %struct.i2c_par*, %struct.i2c_par** %54, align 8
  store %struct.i2c_par* %55, %struct.i2c_par** @adapter_list, align 8
  br label %56

56:                                               ; preds = %52, %46
  %57 = load %struct.i2c_par*, %struct.i2c_par** %3, align 8
  %58 = call i32 @kfree(%struct.i2c_par* %57)
  br label %65

59:                                               ; preds = %9
  br label %60

60:                                               ; preds = %59
  %61 = load %struct.i2c_par*, %struct.i2c_par** %3, align 8
  store %struct.i2c_par* %61, %struct.i2c_par** %4, align 8
  %62 = load %struct.i2c_par*, %struct.i2c_par** %3, align 8
  %63 = getelementptr inbounds %struct.i2c_par, %struct.i2c_par* %62, i32 0, i32 0
  %64 = load %struct.i2c_par*, %struct.i2c_par** %63, align 8
  store %struct.i2c_par* %64, %struct.i2c_par** %3, align 8
  br label %6

65:                                               ; preds = %56, %6
  ret void
}

declare dso_local i32 @i2c_del_adapter(i32*) #1

declare dso_local i32 @line_set(%struct.parport*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @parport_release(%struct.TYPE_5__*) #1

declare dso_local i32 @parport_unregister_device(%struct.TYPE_5__*) #1

declare dso_local i32 @kfree(%struct.i2c_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
