; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_cm_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_cm_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_sock = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@L4_KCQE_OPCODE_VALUE_CLOSE_COMP = common dso_local global i32 0, align 4
@SK_F_PG_OFFLD_COMPLETE = common dso_local global i32 0, align 4
@EALREADY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_sock*)* @cnic_cm_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_cm_close(%struct.cnic_sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cnic_sock*, align 8
  store %struct.cnic_sock* %0, %struct.cnic_sock** %3, align 8
  %4 = load %struct.cnic_sock*, %struct.cnic_sock** %3, align 8
  %5 = call i32 @cnic_in_use(%struct.cnic_sock* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %32

10:                                               ; preds = %1
  %11 = load %struct.cnic_sock*, %struct.cnic_sock** %3, align 8
  %12 = call i64 @cnic_close_prep(%struct.cnic_sock* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = load i32, i32* @L4_KCQE_OPCODE_VALUE_CLOSE_COMP, align 4
  %16 = load %struct.cnic_sock*, %struct.cnic_sock** %3, align 8
  %17 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.cnic_sock*, %struct.cnic_sock** %3, align 8
  %19 = call i32 @cnic_cm_close_req(%struct.cnic_sock* %18)
  store i32 %19, i32* %2, align 4
  br label %32

20:                                               ; preds = %10
  br label %21

21:                                               ; preds = %27, %20
  %22 = load i32, i32* @SK_F_PG_OFFLD_COMPLETE, align 4
  %23 = load %struct.cnic_sock*, %struct.cnic_sock** %3, align 8
  %24 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %23, i32 0, i32 0
  %25 = call i64 @test_bit(i32 %22, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = call i32 @msleep(i32 1)
  br label %21

29:                                               ; preds = %21
  %30 = load i32, i32* @EALREADY, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %29, %14, %7
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @cnic_in_use(%struct.cnic_sock*) #1

declare dso_local i64 @cnic_close_prep(%struct.cnic_sock*) #1

declare dso_local i32 @cnic_cm_close_req(%struct.cnic_sock*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
