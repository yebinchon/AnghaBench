; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tty3270.c_tty3270_activate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tty3270.c_tty3270_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw3270_view = type { i32 }
%struct.tty3270 = type { i32 }

@TTY_UPDATE_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.raw3270_view*)* @tty3270_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tty3270_activate(%struct.raw3270_view* %0) #0 {
  %2 = alloca %struct.raw3270_view*, align 8
  %3 = alloca %struct.tty3270*, align 8
  store %struct.raw3270_view* %0, %struct.raw3270_view** %2, align 8
  %4 = load %struct.raw3270_view*, %struct.raw3270_view** %2, align 8
  %5 = bitcast %struct.raw3270_view* %4 to %struct.tty3270*
  store %struct.tty3270* %5, %struct.tty3270** %3, align 8
  %6 = load i32, i32* @TTY_UPDATE_ALL, align 4
  %7 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %8 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 4
  %9 = load %struct.tty3270*, %struct.tty3270** %3, align 8
  %10 = call i32 @tty3270_set_timer(%struct.tty3270* %9, i32 1)
  ret i32 0
}

declare dso_local i32 @tty3270_set_timer(%struct.tty3270*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
