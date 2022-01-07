; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_offld_prep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_offld_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_sock = type { i32 }

@SK_F_OFFLD_SCHED = common dso_local global i32 0, align 4
@SK_F_CONNECT_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_sock*)* @cnic_offld_prep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_offld_prep(%struct.cnic_sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cnic_sock*, align 8
  store %struct.cnic_sock* %0, %struct.cnic_sock** %3, align 8
  %4 = load i32, i32* @SK_F_OFFLD_SCHED, align 4
  %5 = load %struct.cnic_sock*, %struct.cnic_sock** %3, align 8
  %6 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %5, i32 0, i32 0
  %7 = call i64 @test_and_set_bit(i32 %4, i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %22

10:                                               ; preds = %1
  %11 = load i32, i32* @SK_F_CONNECT_START, align 4
  %12 = load %struct.cnic_sock*, %struct.cnic_sock** %3, align 8
  %13 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %12, i32 0, i32 0
  %14 = call i32 @test_bit(i32 %11, i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %10
  %17 = load i32, i32* @SK_F_OFFLD_SCHED, align 4
  %18 = load %struct.cnic_sock*, %struct.cnic_sock** %3, align 8
  %19 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %18, i32 0, i32 0
  %20 = call i32 @clear_bit(i32 %17, i32* %19)
  store i32 0, i32* %2, align 4
  br label %22

21:                                               ; preds = %10
  store i32 1, i32* %2, align 4
  br label %22

22:                                               ; preds = %21, %16, %9
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
