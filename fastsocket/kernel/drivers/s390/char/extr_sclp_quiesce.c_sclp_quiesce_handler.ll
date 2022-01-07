; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp_quiesce.c_sclp_quiesce_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp_quiesce.c_sclp_quiesce_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuf_header = type { i32 }

@_machine_restart = common dso_local global i8* null, align 8
@do_machine_quiesce = common dso_local global i8* null, align 8
@old_machine_restart = common dso_local global i8* null, align 8
@_machine_halt = common dso_local global i8* null, align 8
@old_machine_halt = common dso_local global i8* null, align 8
@_machine_power_off = common dso_local global i8* null, align 8
@old_machine_power_off = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evbuf_header*)* @sclp_quiesce_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sclp_quiesce_handler(%struct.evbuf_header* %0) #0 {
  %2 = alloca %struct.evbuf_header*, align 8
  store %struct.evbuf_header* %0, %struct.evbuf_header** %2, align 8
  %3 = load i8*, i8** @_machine_restart, align 8
  %4 = load i8*, i8** @do_machine_quiesce, align 8
  %5 = icmp ne i8* %3, %4
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = load i8*, i8** @_machine_restart, align 8
  store i8* %7, i8** @old_machine_restart, align 8
  %8 = load i8*, i8** @_machine_halt, align 8
  store i8* %8, i8** @old_machine_halt, align 8
  %9 = load i8*, i8** @_machine_power_off, align 8
  store i8* %9, i8** @old_machine_power_off, align 8
  %10 = load i8*, i8** @do_machine_quiesce, align 8
  store i8* %10, i8** @_machine_restart, align 8
  %11 = load i8*, i8** @do_machine_quiesce, align 8
  store i8* %11, i8** @_machine_halt, align 8
  %12 = load i8*, i8** @do_machine_quiesce, align 8
  store i8* %12, i8** @_machine_power_off, align 8
  br label %13

13:                                               ; preds = %6, %1
  %14 = call i32 (...) @ctrl_alt_del()
  ret void
}

declare dso_local i32 @ctrl_alt_del(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
