; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_st5481.h_get_buf_nr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_st5481.h_get_buf_nr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.urb**, %struct.urb*)* @get_buf_nr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_buf_nr(%struct.urb** %0, %struct.urb* %1) #0 {
  %3 = alloca %struct.urb**, align 8
  %4 = alloca %struct.urb*, align 8
  store %struct.urb** %0, %struct.urb*** %3, align 8
  store %struct.urb* %1, %struct.urb** %4, align 8
  %5 = load %struct.urb**, %struct.urb*** %3, align 8
  %6 = getelementptr inbounds %struct.urb*, %struct.urb** %5, i64 0
  %7 = load %struct.urb*, %struct.urb** %6, align 8
  %8 = load %struct.urb*, %struct.urb** %4, align 8
  %9 = icmp eq %struct.urb* %7, %8
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, i32 0, i32 1
  ret i32 %11
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
