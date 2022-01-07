; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/kernel/extr_io_interface_mux.c_clear_group_from_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/kernel/extr_io_interface_mux.c_clear_group_from_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_group = type { i8 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i8, %struct.if_group*)* @clear_group_from_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @clear_group_from_set(i8 zeroext %0, %struct.if_group* %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.if_group*, align 8
  store i8 %0, i8* %3, align 1
  store %struct.if_group* %1, %struct.if_group** %4, align 8
  %5 = load i8, i8* %3, align 1
  %6 = zext i8 %5 to i32
  %7 = load %struct.if_group*, %struct.if_group** %4, align 8
  %8 = getelementptr inbounds %struct.if_group, %struct.if_group* %7, i32 0, i32 0
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  %11 = xor i32 %10, -1
  %12 = and i32 %6, %11
  %13 = trunc i32 %12 to i8
  ret i8 %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
