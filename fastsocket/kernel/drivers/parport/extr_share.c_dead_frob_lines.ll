; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/parport/extr_share.c_dead_frob_lines.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/parport/extr_share.c_dead_frob_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parport = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.parport*, i8, i8)* @dead_frob_lines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @dead_frob_lines(%struct.parport* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.parport*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct.parport* %0, %struct.parport** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  ret i8 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
