; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tun.c___tun_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tun.c___tun_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tun_struct = type { i32 }
%struct.tun_file = type { %struct.tun_struct*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tun_struct* (%struct.tun_file*)* @__tun_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tun_struct* @__tun_get(%struct.tun_file* %0) #0 {
  %2 = alloca %struct.tun_file*, align 8
  %3 = alloca %struct.tun_struct*, align 8
  store %struct.tun_file* %0, %struct.tun_file** %2, align 8
  store %struct.tun_struct* null, %struct.tun_struct** %3, align 8
  %4 = load %struct.tun_file*, %struct.tun_file** %2, align 8
  %5 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %4, i32 0, i32 1
  %6 = call i64 @atomic_inc_not_zero(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.tun_file*, %struct.tun_file** %2, align 8
  %10 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %9, i32 0, i32 0
  %11 = load %struct.tun_struct*, %struct.tun_struct** %10, align 8
  store %struct.tun_struct* %11, %struct.tun_struct** %3, align 8
  br label %12

12:                                               ; preds = %8, %1
  %13 = load %struct.tun_struct*, %struct.tun_struct** %3, align 8
  ret %struct.tun_struct* %13
}

declare dso_local i64 @atomic_inc_not_zero(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
