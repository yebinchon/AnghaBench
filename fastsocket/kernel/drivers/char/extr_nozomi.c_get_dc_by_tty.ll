; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_nozomi.c_get_dc_by_tty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_nozomi.c_get_dc_by_tty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nozomi = type { i32 }
%struct.tty_struct = type { i64 }

@ndevs = common dso_local global %struct.nozomi** null, align 8
@MAX_PORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nozomi* (%struct.tty_struct*)* @get_dc_by_tty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nozomi* @get_dc_by_tty(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %3 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %4 = icmp ne %struct.tty_struct* %3, null
  br i1 %4, label %5, label %14

5:                                                ; preds = %1
  %6 = load %struct.nozomi**, %struct.nozomi*** @ndevs, align 8
  %7 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @MAX_PORT, align 8
  %11 = udiv i64 %9, %10
  %12 = getelementptr inbounds %struct.nozomi*, %struct.nozomi** %6, i64 %11
  %13 = load %struct.nozomi*, %struct.nozomi** %12, align 8
  br label %15

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %14, %5
  %16 = phi %struct.nozomi* [ %13, %5 ], [ null, %14 ]
  ret %struct.nozomi* %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
