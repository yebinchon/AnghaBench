; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_toshiba.c_tosh_set_fn_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_toshiba.c_tosh_set_fn_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tosh_id = common dso_local global i32 0, align 4
@tosh_fn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @tosh_set_fn_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tosh_set_fn_port() #0 {
  %1 = load i32, i32* @tosh_id, align 4
  switch i32 %1, label %4 [
    i32 64514, label %2
    i32 64516, label %2
    i32 64521, label %2
    i32 64522, label %2
    i32 64528, label %2
    i32 64529, label %2
    i32 64531, label %2
    i32 64533, label %2
    i32 64538, label %2
    i32 64539, label %2
    i32 64602, label %2
    i32 64520, label %3
    i32 64535, label %3
    i32 64541, label %3
    i32 64721, label %3
    i32 64736, label %3
    i32 64738, label %3
  ]

2:                                                ; preds = %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0
  store i32 98, i32* @tosh_fn, align 4
  br label %5

3:                                                ; preds = %0, %0, %0, %0, %0, %0
  store i32 104, i32* @tosh_fn, align 4
  br label %5

4:                                                ; preds = %0
  store i32 0, i32* @tosh_fn, align 4
  br label %5

5:                                                ; preds = %4, %3, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
