; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/frv/kernel/extr_gdb-stub.c_gdbstub_check_breakpoint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/frv/kernel/extr_gdb-stub.c_gdbstub_check_breakpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@__debug_frame = common dso_local global %struct.TYPE_4__* null, align 8
@gdbstub_bkpts = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @gdbstub_check_breakpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gdbstub_check_breakpoint() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__debug_frame, align 8
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = sub nsw i32 %5, 4
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %1, align 8
  store i32 255, i32* %2, align 4
  br label %8

8:                                                ; preds = %22, %0
  %9 = load i32, i32* %2, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @gdbstub_bkpts, align 8
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %1, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  br label %25

21:                                               ; preds = %11
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %2, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %2, align 4
  br label %8

25:                                               ; preds = %20, %8
  %26 = load i32, i32* %2, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load i64, i64* %1, align 8
  %30 = trunc i64 %29 to i32
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__debug_frame, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %28, %25
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
